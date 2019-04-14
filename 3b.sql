/* 1 */
select  emp.employeeid, (emp.firstname + ', '+emp.lastname) as 'employee name' from [humanresources].vemployee emp
inner join [Sales].SalesPerson sp on emp.EmployeeID =sp.SalesPersonID and sp.bonus=2000

--run
select  emp.employeeid, (emp.firstname + ', '+emp.lastname) as 'employee name',sp.bonus from [humanresources].vemployee emp
inner join [Sales].SalesPerson sp on emp.EmployeeID =sp.SalesPersonID  

/* 2 */

select  emp.employeeid, (emp.firstname + ', '+emp.lastname) as 'employee name', isnull(emp.AddressLine1,'N/A') AS 'address' from [humanresources].vemployee emp
inner join [humanresources].employee emp1 on emp1.EmployeeID =emp.EmployeeID and emp.stateprovincename='CA'