Create table Discounts
(
Discounttype Varchar(25) Not Null,
Stor_id int Not Null,
lowqty int,
highqty int,
discount int,
Primary key(Stor_id)
)
Drop table Discounts;
Create table Stores
(
Stor_id int Primary key,
stor_name Varchar(250) Not Null,
stor_address Char(250) Not Null,
city char(250),
state char(250),
zip int
)
Drop table Stores;

Alter table Stores Alter Column stor_name Varchar(100);


Create table Titles
(
title_id varchar(25) Primary key,
title varchar(200) Not Null,
type_ varchar(200) Not Null,
pub_id int,
price decimal(18,2),
advance int,
royalty int,
ytd_sales int,
notes varchar(250),
pubdate datetime
)

Drop table Titles;

Create table Sales
(
Stor_id int,
ord_num varchar(25) Not Null,
ord_date datetime Not Null,
qty int Not Null,
payterms varchar(25),
title_id varchar(25)
)

Drop table Sales;

Create table Authors
(
au_id varchar(25) Primary key,
au_lname varchar(25) Not Null,
au_fname varchar(25) Not Null,
phone varchar(25),
address char(25),
city char(25),
state char(25),
zip int Not Null,
contract int
)


Create table TitleAuthors
(
au_id varchar(25),
title_id varchar(25) Not Null,
au_ord int Not Null,
royaltyper int
)

Drop table Royshed

Create table Royshed
(
title_id varchar(25),
lorange int,
hirange int Not Null,
royalty int Not Null
)

Create table Publishers
(
pub_id int Primary key,
pub_name char(25),
city char(25),
state char(25),
country char(25)
)

Create table Pub_Info
(
pub_id int,
logo char(25) Not Null,
pr_info char(250)
)

Drop table Pub_Info

Create table Employee
(
emp_id varchar(30) Not Null,
fname char(30) Not Null,
minit char(20),
lname char(25),
job_id int,
job_lvl int,
pub_id int,
hire_date datetime
)

Create table Jobs
(
job_id int Not Null,
job_desc char(250),
min_lvl int Not Null,
max_lvl int Not Null,
Job_Code int Not Null
)

Drop table Jobs;


Insert into Stores values(6380,'Eric the Read Books','788 Catamaugus Ave.','Seattle','WA',98056); 

select * from Stores;

Insert into Stores(stor_id,stor_name,stor_address,city,state,zip)Values(7066,'Barnums','567 Pasadena Ave.','Tustin','CA',92789) select @@Rowcount;


Insert into Stores values(7067,'News & Brews','577 First St.','Los Gatos','CA',96745); 
Insert into Stores values(7131,'Doc-U-Mat:Quality Laundry and Books','24-A Avrogado Way','Remulade','WA',98014); 
Insert into Stores values(7896,'Fricative Bookshop','89 Madison St.','Fremont','CA',90019); 
Insert into Stores values(8042,'Bookbeat','679 Carson St.','Portland','OR',89076); 
select * from Stores;

select * from Publishers;

Insert into Publishers Values(736,'New Moon Books',	'Boston',	 'MA',	'USA')
Insert into Publishers Values(877,	    'Binnet & Hardley',	  'Washington', 'DC',	'USA')
Insert into Publishers Values(1389,	'Algodata Infosystems',  'Berkeley',	 'CA',	'USA')
Insert into Publishers Values(1622,	'Five Lakes Publishing', 'Chicago',	 'IL',	'USA')
Insert into Publishers Values(1756,	'Ramona Publishers',	  'Dallas',	 'TX',	'USA')
Insert into Publishers Values(9901,	'GGG&G',	'München',	'NULL',                'Germany')
Insert into Publishers Values(9952,	'Scootney Books',	      'New York',	'NY',	'USA')
Insert into Publishers Values(9999,	'Lucerne Publishing',	  'Paris',	'NULL',	'France')

select * from Pub_Info

Insert into Pub_Info Values(736,	'Newmoon.bmp',	'This is sample text data for New Moon Books	 publisher 0736 in the pubs database. New Moon Books is located in Boston	 Massachusetts.')
Insert into Pub_Info Values(877,	'Binnet.bmp','This is sample text data for Binnet & Hardley	 publisher 0877 in the pubs database. Binnet & Hardley is located in Washington	 D.C.')
Insert into Pub_Info Values(1389,	'Algodata.bmp',	'This is sample text data for Algodata Infosystems	 publisher 1389 in the pubs database. Algodata Infosystems is located in Berkeley	 California.')
Insert into Pub_Info Values(1622,	'5lakes.bmp',	'This is sample text data for Five Lakes Publishing	 publisher 1622 in the pubs database. Five Lakes Publishing is located in Chicago	 Illinois.')
Insert into Pub_Info Values(1756,	'Ramona.bmp',	'This is sample text data for Ramona Publishers	 publisher 1756 in the pubs database. Ramona Publishers is located in Dallas	 Texas.')			
Insert into Pub_Info Values(9901,	'Gggg.bmp',	'This is sample text data for GGG&G	 publisher 9901 in the pubs database. GGG&G is located in München	 Germany.')			
Insert into Pub_Info Values(9952,	'Scootney.bmp',	'This is sample text data for Scootney Books	 publisher 9952 in the pubs database. Scootney Books is located in New York City	 New York.')			
Insert into Pub_Info Values(9999,	'Lucerne.bmp',	'This is sample text data for Lucerne Publishing	 publisher 9999 in the pubs database. Lucerne Publishing is located in Paris	 France.')	


Insert into Discounts Values('Initial Customer',	6380,	110,	NULL,	10.5)
Insert into Discounts Values('Volume Discount',	7131,	100,	1000,	6.7)
Insert into Discounts Values('Customer Discount',	8042,	23,	NULL,	5)



DROP TABLE Stores;

SELECT * FROM Royshed;


\* a. Insert the First Row of stores table into the table without the columns specied in the
insert clause.*/

Insert into Stores Values(6380,'Eric the Read Books','788 Catamaugus Ave.','Seattle','WA',98056)

\*b. Insert the Second Row of stores Table into the table with the columns specied in the
insert clause explicitly and conrm the data inserted.*/

Insert into Stores (stor_id,stor_name,stor_address,city,state,zip)Values(7066,'Barnum''s','567 Pasadena Ave.','Tustin','CA',92789) select @@Rowcount;

\* c. Insert all other rows into Stores table as it is in the table output

Insert into Stores Values(7067,'News & Brews','577 First St.','Los Gatos','CA',96745)
Insert into Stores Values(7131,'Doc-U-Mat: Quality Laundry and Books','24-A Avrogado Way','Remulade','WA',98014)
Insert into Stores Values(7896,'Fricative Bookshop','89 Madison St.','Fremont','CA',90019)
Insert into Stores Values(8042,'Bookbeat','679 Carson St.','Portland','OR',89076)
select * from Stores;


\* 3. Insert the data into all the tables using the data in the excel sheet attached.
select * from Stores;
select * from Publishers;
select * from Pub_Info;
select * from Discounts;
select * from Titles;
select * from Royshed;
select * from Sales;
select * from Authors;
select * from Jobs;
select * from Employee;


\* 4. Update column lorange in the table Royshed from 0 to 100

Update Royshed set lorange=100 where lorange=0;

select * from Royshed;

\* 5. Update au_ord from 2 to 1 when the title_id is ‘BU1111’ and ‘TC7777’ in the table
TitleAuthors.

Update TitleAuthors set au_ord=1 where title_id In('BU1111', 'TC7777');

\* 6. Try inserting Null into column Discount Type in the table Discounts. Display the error
message.

Update Discounts set discounttype=NULL;
Msg 515, Level 16, State 2, Line 220
Cannot insert the value NULL into column 'Discounttype', table 'T5_Vijayakumar.dbo.Discounts'; column does not allow nulls. UPDATE fails.
The statement has been terminated.

\* 7.  Check all the constraints are working by inserting sample data and show the result
set.


select * from Stores;
select * from Publishers;
select * from Pub_Info;
select * from Discounts;
select * from Titles;
select * from Royshed;
select * from Sales;
select * from Authors;
select * from Jobs;
select * from Employee;

\* 8. Create a table Jobs_Dup and perform the following.

select * Into Jobs_Dup from Jobs;

\* a. Delete the jobs that have min_lvl as 175

Delete from Jobs_Dup where min_lvl=175;

select * from Jobs_Dup;

\* b. Delete the jobs whose job_desc is publisher and Editor.

Delete from Jobs_Dup where job_desc In('Publisher','Editor');
select * from Jobs_Dup;

\* c. Delete the records from Jobs_Dup

Delete from Jobs_Dup;

select * from Jobs_Dup;

\* 9. Display the employee rst name and lastname who were hired after 1992

Select fname,lname from Employee where hire_date>year(1992);

\* 10. Display the titles that were published between Jun 1991 and Jun 1994

Select title from Titles where pubdate between '06/01/91' and '06/30/94';







