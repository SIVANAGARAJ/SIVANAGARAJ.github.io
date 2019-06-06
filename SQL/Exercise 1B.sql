\* 1. Calculate a price increase of 5 for all the titles and display them in a new column and
order them by maximum using the table Titles.
select *,(price+5) as 'New Price' from Titles Order by 'New Price' desc;

\* 2. Display the stores that are situated in the state ‘WA’
select * from Stores where state='WA';

\* 3. Display the store_id that provides least discount.
select stor_id from Discounts where discount=(select Min(discount) from Discounts)

\* 4.Try to Update type from ‘Undecided’ to Null in the table Titles. And show the result/
error.*\

Update Titles set type_=Null where type_='Undecided'

Msg 515, Level 16, State 2, Line 13
Cannot insert the value NULL into column 'type_', table 'T5_Vijayakumar.dbo.Titles'; column does not allow nulls. UPDATE fails.
The statement has been terminated.

\* 5. Update Royalty to 20 in the table Titles, when the pub_date is between Jun 1991 and
Oct 1991.

Update Titles set royalty=20 where pubdate between '06/01/1991' and '10/31/1991'

(8 row(s) affected)


\* 6. Increment lowqty by 2 when the discounttype is ‘Customer Discount’ and display that
as ‘Incremented lowqty’.


select (lowqty+2) as 'Incremented lowqty' from Discounts where discounttype='Customer Discount' 

\* 7. Display the title_id where lorange and hirange are greater than 1000.*/

select title_id from Royshed where lorange>1000 and hirange>1000


\* 8. Display the Pulishers ID and Name who are not in USA.
select pub_id,pub_name from Publishers where country Not In('USA')

\* 9. Display the job Desc when ¼ of the Max_lvl is equal to min_lvl from the table Jobs.
select job_desc from Jobs where (0.25*max_lvl)=min_lvl 


\* Display the Employee Fname and lname when minit = NULL
select fname,lname from Employee where minit is Null
