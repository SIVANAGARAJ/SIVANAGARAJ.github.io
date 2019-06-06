Create table Items_Sub
(
Items_id int primary key,
Items_sub_desc Varchar(25) not null,
Item_expiry_Date Date,
Item_creation_Date Date,
Amount int check (Amount>0)
);


Create table Dept
(
Dept_id int primary key,
Dept_Desc Varchar(25) not null
);

Create table Makers
(
Maker_id int primary key,
Maker_Name Varchar(25) not null,
Maker_city Varchar(25),
Maker_address Varchar(25),
Maker_pincode Varchar(25),
Maker_Phone Varchar(25)
);



Create table Items_Table
(
Item_id int primary key,
Item_desc Varchar(25) not null,
Item_sub_in int foreign key references Items_Sub(Items_id),
Quantity int,
Item_Code Varchar(25) unique,
Item_dept_id int foreign key references Dept(Dept_id),
Item_Maker_id int foreign key references Makers(Maker_id),
Booked_Date Date
);

/*2
Table_Makers*/

insert into Makers values(1,'Roda','Mubai','57,North Road',600057,37620927);
insert into Makers values(2,'Marie','Chennai','23,East Road',6000025,43392028);
insert into Makers values(3,'PepsiCo','Delhi','12,1st Cross St',6000021,91-9962567999);
insert into Makers (Maker_id,Maker_Name,Maker_city,Maker_address,Maker_pincode)
values
(4,'Dove','Delhi','13,North Road',2738),
(5,'Roda_A','Simla','787,West',13454);

/*TAble_Dept*/

insert into Dept
values
(1000,'Toileteries'),
(1001,'Eateries');

/*Table_ITem_Sub*/

insert into Items_Sub
values
(50,'Cif','2013-01-01','2012-01-01',100),
(51,'Kele','2013-01-01','2012-01-01',50),
(60,'Borbon','2014-12-01','2011-12-01',200),
(61,'Milk Biscuits','2013-12-01','2011-11-01',200),
(70,'Pepsi','2014-01-01','2010-01-01',50);



/*2.a. 
Insert the First Row of Item table into the table without the columns specied in
the insert clause.*/

Insert into Items_Table values(100,'Soap Liquids',50,2,'PRO100',1000,1,'2012-01-01');


/*2.b
 Insert the Second Row of Item Table into the table with the columns specied in
the insert clause explicitly and conrm the data inserted.*/

Insert into Items_Table (Item_id,Item_desc,Item_sub_in,Quantity,Item_Code,Item_dept_id,Item_Maker_id,Booked_Date) 
values(100,'Soap Liquids',50,3,'PRO100',1000,1,'2012-01-02');

/* For 2b 
Msg 2627, Level 14, State 1, Line 78
Violation of PRIMARY KEY constraint 'PK__Items_Ta__3FB403AC542237DA'. Cannot insert duplicate key in object 'dbo.Items_Table'. The duplicate key value is (100).
The statement has been terminated.*/

/*2.c 
Insert the third row, fourth row and Fifth of items table as it is in the table output*/

Insert into Items_Table(Item_id,Item_desc,Item_sub_in,Quantity,Item_Code,Item_dept_id,Item_Maker_id,Booked_Date) 
values(101,'Biscuits',60,1,'PRO101',1001,2,'2011-12-01'),
(102,'Drinks',70,4,'102DR',1001,3,'2011-10-01'),
(103,'Soap Liquids',51,1,'PRO103',1000,4,'2012-04-02');


/*2.d 
Update the Item Code for the Item Id 102 to PRO102.*/

update Items_Table set Item_Code='PRO102'
where Item_id=102;


/*2.e 
Select the Id and desc and maker id of all the items*/


select Item_id,Item_desc,Item_Maker_id from Items_Table;


/*2.f 
Select the Id , ItemDesc where the quantity is more than 2*/


select Item_id,Item_desc from Items_Table
where Quantity>2;


/*2.g 
Calculate a Quantity increase of 5 for all the items and display them in a new
column and order them by maximum.*/

alter Table Items_Table
Add NewQuantity int;

update Items_Table 
set NewQuantity=Quantity+5;

select NewQuantity from Items_Table
order by NewQuantity desc;

/*OR*/



select *from Items_Table
order by NewQuantity desc;

/*OR*/

select*, (Quantity+5) as NewQuantity from Items_Table order by NewQuantity desc;

/*2.h 
Calculate the Monthly Gross Quantity along with 5 quantity added to all the item
(for example for Item id 100, the qty is 2 for Jan 01, aft qty added is 7, the qty for Jan 02 is 3,
aft qty added is 8, so monthly gross for Jan is 15) in a separate column with the tile Monthly
Gross*/

select sum(NewQuantity) as Monthly_Gross
from Items_Table
group by month(Booked_Date);


/*2.i Display all the items that are brought in 2009*/

insert into Items_Table(Item_id,Item_desc,Item_sub_in,Quantity,Item_Code,Item_dept_id,Item_Maker_id,Booked_Date) 
values
(104,'Biscuits',61,1,'PRO104',1001,2,'2009-03-01');

select *from Items_Table where year (Booked_Date)=2009;


/*2.j Display the items that are brought between 1 Jun 2011 and 1 Dec 2012*/


select *from Items_Table where (Booked_Date) between '2011-06-01' and '2012-12-01';


/*2.k Display the Items that are made by maker Id 2 and the booked date between Jan
2010 and Dec 2011*/

select *from Items_Table where (Item_Maker_id=2) and Booked_Date between '2010-01-01' and '2011-12-31';



/*2.l Display all the item_id,items_desc based on the latest booked date order*/

select Item_id,Item_desc from Items_Table order by Booked_Date;


/*2.m 
Check all the constraints are working (Include screenshots)*/


/*2.n 
Create a table 'items_dup' from 'Items' and perform the following below*/

select *into Items_dup from Items_Table;

/*Delete the Items that are belonging to Maker Id 2 from the table items_dup*/

delete from Items_dup
where Item_Maker_id=2;


/*Delete the Items that are belonging to the Year 2012*/

delete from Items_dup
where year(Booked_Date)='2012';

/*Delete the records from items_dup*/
delete from Items_dup;
