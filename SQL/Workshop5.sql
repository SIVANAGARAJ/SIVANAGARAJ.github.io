use northwind

/* 1. */
select P.ProductName,S.CompanyName as SupplierName from Products P join Suppliers S on 
P.SupplierID=S.SupplierID


/* 2.*/

select P.ProductName,C.CategoryName,S.CompanyName as SupplierName from products P join Categories C
on P.CategoryID=C.CategoryID join Suppliers S on P.SupplierID=S.SupplierID

/* 3. */

Select O.Orderid,C.ContactName,OD.Quantity from Customers C join Orders O
on C.CustomerID=O.CustomerID join Order_Details OD on O.OrderID=OD.OrderID Group by O.Orderid,C.ContactName,OD.Quantity

OR

Select O.Orderid,C.ContactName,Sum(OD.Quantity) from Customers C join Orders O
on C.CustomerID=O.CustomerID join Order_Details OD on O.OrderID=OD.OrderID Group by O.Orderid,C.ContactName


/* 4. */

Select O.Orderid,C.ContactName,S.Companyname as 'Shipping Company Name',O.Shipcountry from Customers C join Orders O 
on C.CustomerID=O.CustomerID join Shippers S on S.ShipperID=O.Shipvia where O.Shipcountry='Brazil'


/* 5. */

select O.OrderID,C.ContactName,E.FirstName+LastName as EmployeeName,OD.UnitPrice*Discount as TotalAmount from Customers C join Orders O
on C.CustomerID=O.CustomerID join Employees E on E.EmployeeID=C.EmployeeID join Order_Details OD on O.orderID=OD.orderID

select * from Order_details
select * from Employees
select * from Customers
select * from Orders







