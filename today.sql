/* 7  */

 with result as (
SELECT ( DATEADD(mm,DATEDIFF(mm,0,'01/01/2005')+1,0)-DATEPART(dw,DATEADD(mm,DATEDIFF(mm,0,'01/01/2005')+1,0)) ) as  LastSaturday

	   )

select * from result


/* 8  */

select ID_psg,Name,DATEDIFF(d,first,last) as 'elapsed' from (
select pass.ID_psg,pass.name, max(trp.date) as 'last', min(trp.date) as 'first' from Passenger pass inner join Pass_in_trip trp
on pass.ID_psg=trp.ID_psg
group by pass.ID_psg,pass.name  ) a

/*9 */

select Plane,town_from,town_to, DATEDIFF(SECOND,time_out,time_in)/60 as 'Minutes',DATEDIFF(SECOND,time_out,time_in)%60 as 'Seconds'   from Trip
where town_from='Rostov' and town_to='Moscow'
