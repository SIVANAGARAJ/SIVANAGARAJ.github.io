create table tblcustomerAudit
(
OrderAuditID int Identity(1,1) primary key, 
First_Name varchar(max),
Last_Name varchar(max),
Address varchar(max),
City varchar(max),
Country varchar(max),
	Birth_Date varchar(max),
UpdatedBy nvarchar(128),
UpdatedOn datetime
)

create trigger tblTriggerAuditRecord on customer
after update, insert
as
begin
  insert into tblcustomerAudit 
  (First_Name, Last_Name, Address,City,Country,Birth_Date, UpdatedBy, UpdatedOn )
  select i.First_Name, i.Last_Name, i.Address,i.City,i.Country,i.Birth_Date, SUSER_SNAME(), getdate() 
  from  customer t 
  inner join inserted i on t.First_Name=i.First_Name     
end

update customer set City='madurai' where First_Name='arun'

select * from tblcustomerAudit


