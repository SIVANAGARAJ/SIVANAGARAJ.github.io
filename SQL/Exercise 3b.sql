select table_name, column_name,* from information_schema.columns 
where column_name like '%sub%';

select table_name, column_name,* from information_schema.columns 
where column_name like '%sale%';

1.


SELECT HumanResources.vEmployeeDepartment.EmployeeID, CONCAT (FirstName, LastName) as employee_name
from HumanResources.vEmployeeDepartment
left join HumanResources.EmployeePayHistory on HumanResources.vEmployeeDepartment.EmployeeID = HumanResources.EmployeePayHistory.EmployeeID
left join Sales.SalesPerson on Sales.SalesPerson.SalesPersonID = HumanResources.vEmployeeDepartment.EmployeeID
where Department = 'sales' and Bonus = 2000;


2.

select concat (HumanResources.vEmployee.AddressLine1,',',HumanResources.vEmployee.AddressLine2,',',HumanResources.vEmployee.City) as address_,
case
when HumanResources.vEmployee.AddressLine2 is null then 'N/A'
end as address_																					
from HumanResources.vEmployee
left join Person.Address on HumanResources.vEmployee.PostalCode = Person.Address.PostalCode
left join Person.StateProvince on Person.Address.StateProvinceID = Person.StateProvince.StateProvinceID;


3.

select Production.Product.Name, Sales.SalesOrderDetail.SalesOrderID from Production.Product
left join Sales.SalesOrderDetail on Production.Product.ProductID = Sales.SalesOrderDetail.ProductID;


4.


5.A)

select HumanResources.Employee.employeeid, concat (HumanResources.vEmployee.firstname,' ',HumanResources.vEmployee.lastname) as employeename, managerid, concat (t1.firstname,' ',t1.lastname) as managername
from HumanResources.vEmployee
join HumanResources.Employee on HumanResources.Employee.employeeid = HumanResources.vEmployee.employeeid
inner join HumanResources.vEmployee as t1 on HumanResources.Employee.employeeid = HumanResources.vEmployee.employeeid;

B)


select distinct (HumanResources.Employee.employeeid), concat (HumanResources.vEmployee.firstname,' ',HumanResources.vEmployee.lastname) as employeename
from HumanResources.vEmployee
join HumanResources.Employee on HumanResources.Employee.employeeid = HumanResources.vEmployee.employeeid
inner join HumanResources.vEmployee as t1 on HumanResources.Employee.employeeid = HumanResources.vEmployee.employeeid
where HumanResources.Employee.managerid is null;




6.


A)


select Production.Product.productid,Production.Product.name as product_name, Purchasing.vVendor.name as vendor_name
from Production.Product
join Production.ProductSubcategory on Production.Product.productsubcategoryid = Production.ProductSubcategory.productsubcategoryid
join Purchasing.ProductVendor on Production.Product.productid = Purchasing.ProductVendor.productid
join Purchasing.vVendor on Purchasing.ProductVendor.vendorid = Purchasing.vVendor.vendorid
where Production.ProductSubcategory.productsubcategoryid = 15;

B)

select  Production.Product.productid, count(Production.Product.productid) as no_of_vendors
from Production.Product
join Purchasing.ProductVendor on Production.Product.productid = Purchasing.ProductVendor.productid
group by Production.Product.productid
having count (Production.Product.productid) >1 ;


7.

select Sales.Customer.customerid
from Sales.Customer
join Sales.Store on Sales.Store.customerid = Sales.Customer.customerid
where Sales.Customer.customerid <> Sales.Store.customerid;

8.

select Production.Product.productid, (Production.Product.listprice - Production.Product.standardcost) as salescost
from Production.Product
join Production.ProductListPriceHistory on Production.ProductListPriceHistory.productid = Production.Product.productid
where Production.Product.productid = 718 and (Production.Product.listprice - Production.Product.standardcost) < Production.ProductListPriceHistory.listprice;


9.

select * from Sales.SalesOrderHeader
select * from Sales.SalesOrderDetail
select * from Production.Product
select * from Production.vProductAndDescription

select productnumber, description, (Sales.SalesOrderDetail.orderqty * Sales.SalesOrderDetail.unitprice) as sales
from Production.Product
join Production.vProductAndDescription on Production.Product.productid = Production.vProductAndDescription.productid
join Sales.SalesOrderDetail on Production.Product.productid = Sales.SalesOrderDetail.productid
join Sales.SalesOrderHeader on Sales.SalesOrderDetail.salesorderid = Sales.SalesOrderHeader.salesorderid
where year (shipdate) = 2001;


10.

select productnumber, Production.vProductAndDescription.name, (Sales.SalesOrderDetail.orderqty * Sales.SalesOrderDetail.unitprice) as sales,
case
when year (shipdate) = 2001 then  (Sales.SalesOrderDetail.orderqty * Sales.SalesOrderDetail.unitprice)
end as sales_2001,
case 
when year (shipdate) = 2001 then  (Sales.SalesOrderDetail.orderqty * Sales.SalesOrderDetail.unitprice)
end as sales_2002,
case
when year (shipdate) = 2003 then  (Sales.SalesOrderDetail.orderqty * Sales.SalesOrderDetail.unitprice)
end as sales_2003
from Production.Product
join Production.vProductAndDescription on Production.Product.productid = Production.vProductAndDescription.productid
join Sales.SalesOrderDetail on Production.Product.productid = Sales.SalesOrderDetail.productid
join Sales.SalesOrderHeader on Sales.SalesOrderDetail.salesorderid = Sales.SalesOrderHeader.salesorderid;
