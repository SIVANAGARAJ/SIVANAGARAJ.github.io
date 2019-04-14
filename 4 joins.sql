 /*  1 */
select cust.ContactName ,cust.Address, ord.OrderID   from customers cust inner join Orders ord
on ord.CustomerID=cust.CustomerID and convert(varchar, OrderDate, 105) >= convert(date,  '01-07-1996') and
convert(varchar, OrderDate, 105) <= convert(date,  '01-07-1997')

--or

select cust.ContactName ,cust.Address, ord.OrderID   from customers cust inner join Orders ord
on ord.CustomerID=cust.CustomerID and  OrderDate  between convert(date,  '01-07-1996' ) and
convert(date,  '01-07-1997')

 /*  2 */
select emp.EmployeeID,emp.FirstName,emp.LastName,ter.TerritoryDescription from EmployeeTerritories empT 
inner join Employees emp on emp.EmployeeID=empT.EmployeeID
inner join Territories ter on ter.TerritoryID=empT.TerritoryID
inner join Region reg on reg.RegionID=ter.RegionID and     reg.RegionDescription like '%eastern%'  --or reg.RegionDescription ='Eastern' 
and ter.TerritoryDescription like '%cambridge%'


--3


select cust.CustomerID,cust.ContactName,ord.OrderID,prd.ProductName,ord.ShipName from customers cust
inner join Orders ord on ord.CustomerID=cust.CustomerID
inner join Order_Details ordd on ord.OrderID=ordd.OrderID
inner join Products prd on prd.ProductID=ordd.ProductID
inner join Categories cat on cat.CategoryID=prd.CategoryID
where cat.CategoryName like '%Daily Products%' and ord.ShipVia like '%speedy express%'


--4


select ord.OrderID,prd.ProductName ,ordd.UnitPrice,ordd.Quantity,
(case when ordd.Discount=0 then (ordd.UnitPrice*2/100)
	   when  ordd.Discount>0.1 then (ordd.UnitPrice*3/100) 
	   when  ordd.Discount<0.1 then (ordd.UnitPrice*4/100) 
	   else (ordd.UnitPrice*6/100)  end) as New_Discount
 from  Orders ord 
inner join Order_Details ordd on ord.OrderID=ordd.OrderID
inner join Products prd on prd.ProductID=ordd.ProductID


--5


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
 
 
 --6
 
select cust.CustomerID,cust.ContactName,cust.CompanyName from  Customers cust 
left join Orders ord on cust.CustomerID = ord.CustomerID and ord.CustomerID is null


--7

select prd.ProductName, cat.CategoryID,prd.UnitPrice,prd.UnitsInStock,prd.UnitsOnOrder ,prd.ReorderLevel,
(case when prd.Discontinued=1  then 'Supperlier Exists' else 'Not Exist' end)  as 'Supperlier Existence',
cust.CompanyName as 'supplier',cust.ContactName as 'Supplier Name',Address as Supplier_Address, Phone AS Supplier_Phone
 from customers cust
inner join Orders ord on ord.CustomerID=cust.CustomerID
inner join Order_Details ordd on ord.OrderID=ordd.OrderID
inner join Products prd on prd.ProductID=ordd.ProductID
inner join Categories cat on cat.CategoryID=prd.CategoryID

--8

--1
 
 select * from (
select prd.ProductName, cat.CategoryID,prd.UnitPrice,prd.UnitsInStock,prd.UnitsOnOrder ,prd.ReorderLevel,
(case when prd.Discontinued=1  then 'Supperlier Exists' else 'Not Exist' end)  as 'Supperlier Existence',
cust.CompanyName as 'supplier',cust.ContactName as 'Supplier Name',Address as Supplier_Address, Phone AS Supplier_Phone
 from customers cust
inner join Orders ord on ord.CustomerID=cust.CustomerID
inner join Order_Details ordd on ord.OrderID=ordd.OrderID
inner join Products prd on prd.ProductID=ordd.ProductID
inner join Categories cat on cat.CategoryID=prd.CategoryID) as a where [Supperlier Existence]=1

--2


select prd.ProductName, cat.CategoryID,prd.UnitPrice,prd.UnitsInStock,prd.UnitsOnOrder ,prd.ReorderLevel,
(case when prd.Discontinued=1  then 'Supperlier Exists' else 'Not Exist' end)  as 'Supperlier Existence',
cust.CompanyName as 'supplier',cust.ContactName as 'Supplier Name',Address as Supplier_Address, Phone AS Supplier_Phone
 from customers cust
inner join Orders ord on ord.CustomerID=cust.CustomerID
inner join Order_Details ordd on ord.OrderID=ordd.OrderID
inner join Products prd on prd.ProductID=ordd.ProductID
inner join Categories cat on cat.CategoryID=prd.CategoryID
where cat.CategoryName in ('confection','Daily Products') 




--9

 select emp.lastname as 'employee',emp.employeeid,manager.lastname as 'Manager Name'  from employees emp 
inner join employees manager on  emp.employeeid=  manager.employeeid 

--10
 select emp.lastname as 'employee',emp.employeeid,manager.lastname as 'Manager Name'  from employees emp 
left join employees manager on  emp.employeeid=  manager.employeeid  and emp.ReportsTo is null


--11


select ord.*, cust.CompanyName from customers cust inner join orders ord
on cust.CustomerID=ord.CustomerID and ord.OrderDate > convert(date,'1996-10-03')
and ord.ShippedDate < convert(date,'1997-09-30') 



--12




select OrderID, ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry from (


select ord.*, cust.CompanyName from customers cust inner join orders ord
on cust.CustomerID=ord.CustomerID and ord.OrderDate > convert(date,'1996-10-03')
and ord.ShippedDate < convert(date,'1997-09-30') 



)   as aaa  
 
  
