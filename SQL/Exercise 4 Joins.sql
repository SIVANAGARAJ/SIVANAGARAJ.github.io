\* Write a query to display the Customer details and order details of the customers who have ordered between '1996-07-01' and '1997-07-01'.

select cust.ContactName ,cust.Address, ord.OrderID   from customers cust inner join Orders ord
on ord.CustomerID=cust.CustomerID and  OrderDate  between convert(date,  '07-01-1996' ) and
convert(date,  '07-01-1997')

|* 2.	Display the EmployeeID, First name, last name, territory description and region description of the employees who are working in ‘Eastern’ region under ‘Cambridge’ territory.*/

select emp.EmployeeID,emp.FirstName,emp.LastName,ter.TerritoryDescription,reg.RegionDescription from EmployeeTerritories empT 
inner join Employees emp on emp.EmployeeID=empT.EmployeeID
inner join Territories ter on ter.TerritoryID=empT.TerritoryID
inner join Region reg on reg.RegionID=ter.RegionID and reg.RegionDescription like '%eastern%'
and ter.TerritoryDescription like '%cambridge%'

\ * 2	Andrew	Fuller	Cambridge  Eastern */ 

\*3. Display the CustomerID, contactname, orderid, productname and ShipperName in the resultset. Retrieve the orderdetails placed by the customer with the product name under the category ‘Daily Products’ and the order should be shipped via ‘Speedy Express’.*/                                         

select cust.CustomerID,cust.ContactName,ord.OrderID,prd.ProductName,ord.ShipName from customers cust
inner join Orders ord on ord.CustomerID=cust.CustomerID
inner join Order_Details ordd on ord.OrderID=ordd.OrderID
inner join Products prd on prd.ProductID=ordd.ProductID
inner join Categories cat on cat.CategoryID=prd.CategoryID
where cat.CategoryName like '%Daily Products%' and ord.ShipVia like '%speedy express%'

\* 4.	Display the orderid, ProductName, Unitprice, Quantity and New_Discount based on the below condition.*/
a.	If the discount is 0 then calculate the New_Discount as 2% of the Unit price.
b.	If the discount > 0.1 then calculate the New_Discount as 3% of the Unit price.
c.	If the discount < 0.1 then calculate the New_Discount as 4% of the Unit price.
d.	Else calculate the New_Discount as 6% of the Unit price. *//

select ord.OrderID,prd.ProductName ,ordd.UnitPrice,ordd.Quantity,
(case when ordd.Discount=0 then (ordd.UnitPrice*2/100)
	   when  ordd.Discount>0.1 then (ordd.UnitPrice*3/100) 
	   when  ordd.Discount<0.1 then (ordd.UnitPrice*4/100) 
	   else (ordd.UnitPrice*6/100)  end) as New_Discount
 from  Orders ord 
inner join Order_Details ordd on ord.OrderID=ordd.OrderID
inner join Products prd on prd.ProductID=ordd.ProductID

\* 5.	Use the above result set and calculate the cost of each product and name the column as ‘Cost’. (Use the columns Unitprice, Quantity, New_Discount)

select OrderID,ProductName,UnitPrice,Quantity,(UnitPrice*Quantity*New_Discount) as cost from
 (
	select ord.OrderID,prd.ProductName ,ordd.UnitPrice,ordd.Quantity,
	(
	case 
	when ordd.Discount=0 then (ordd.UnitPrice*2/100)
	when  ordd.Discount>0.1 then (ordd.UnitPrice*3/100) 
	when  ordd.Discount<0.1 then (ordd.UnitPrice*4/100) 
	else (ordd.UnitPrice*6/100)  end
	) as New_Discount
	from  Orders ord 
	inner join Order_Details ordd on ord.OrderID=ordd.OrderID
	inner join Products prd on prd.ProductID=ordd.ProductID
	
 ) as a

 \* 6.	Display the CustomerID, Contact Name and Company Name of the customer, who have not placed any orders.*/

 select cust.CustomerID,cust.ContactName,cust.CompanyName from  Customers cust 
left join Orders ord on cust.CustomerID = ord.CustomerID and ord.CustomerID is null

\* 7.	Display Productname, CategoryID, Unitprice, Unitsinstock, unitsonorder, reorderlevel, Supplier_Existence, CompanyName as supplier, contactname as Supplier_Name, Address as Supplier_Address, Phone AS Supplier_Phone. Display the Supplier_Existence based on the conditions mentioned below.*/

a.	If discontinued = 0 then display as ‘Supplier Exists’ else ‘Not Exists’

select prd.ProductName, cat.CategoryID,prd.UnitPrice,prd.UnitsInStock,prd.UnitsOnOrder ,prd.ReorderLevel,
(case when prd.Discontinued=1  then 'Supperlier Exists' else 'Not Exist' end)  as 'Supperlier Existence',
cust.CompanyName as 'supplier',cust.ContactName as 'Supplier Name',Address as Supplier_Address, Phone AS Supplier_Phone
 from customers cust
inner join Orders ord on ord.CustomerID=cust.CustomerID
inner join Order_Details ordd on ord.OrderID=ordd.OrderID
inner join Products prd on prd.ProductID=ordd.ProductID
inner join Categories cat on cat.CategoryID=prd.CategoryID

8.	\* Use the above result and filter for the records ‘Supplier Exists’.
Display the unit of products that are ordered even though units are already in stock, that falls under the categories ‘confections’ and ‘Daily Products’.*/

select prd.ProductName, cat.CategoryID,prd.UnitPrice,prd.UnitsInStock,prd.UnitsOnOrder ,prd.ReorderLevel,
(case when prd.Discontinued=1  then 'Supperlier Exists' else 'Not Exist' end)  as 'Supperlier Existence',
cust.CompanyName as 'supplier',cust.ContactName as 'Supplier Name',Address as Supplier_Address, Phone AS Supplier_Phone
 from customers cust
inner join Orders ord on ord.CustomerID=cust.CustomerID
inner join Order_Details ordd on ord.OrderID=ordd.OrderID
inner join Products prd on prd.ProductID=ordd.ProductID
inner join Categories cat on cat.CategoryID=prd.CategoryID
where cat.CategoryName in ('confection','Daily Products') 

\* 9.	Display the Employee details and their manager details using the table Employees.*/    */ This one wrong *///

 select emp.lastname as 'employee',emp.employeeid,manager.lastname as 'Manager Name'  from employees emp 
inner join employees manager on  emp.employeeid=  manager.employeeid 

|* 10.	Display the employees details who do not have managers.*/

select emp.lastname as 'employee',emp.employeeid from employees emp 
join employees manager on  emp.employeeid=  manager.employeeid  and emp.ReportsTo is null


\* 11.	 Display the Customer details who are attended by the Sales Representatives and the orders were placed after 1996-10-03 and the shipping would be done before 1997-09-30.*/

select ord.*, cust.CompanyName from customers cust inner join orders ord
on cust.CustomerID=ord.CustomerID and ord.OrderDate > convert(date,'10-03-96')
and ord.ShippedDate < convert(date,'09-30-97') 

\* 12. Use the above result set and get the Shipper Details.*/


select OrderID, ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry from (


select ord.*, cust.CompanyName from customers cust inner join orders ord
on cust.CustomerID=ord.CustomerID and ord.OrderDate > convert(date,'10-03-96')
and ord.ShippedDate < convert(date,'09-30-97') )  as aaa   
















	