select *
from person.Person
where BusinessEntityID in (5,6,15)

select *
from HumanResources.Employee
where JobTitle = 'Design Engineer'

select FirstName
from Person.Person
where BusinessEntityID in (select BusinessEntityID from HumanResources.Employee where JobTitle = 'Design Engineer')

select *
from Person.Address
where StateProvinceID in (select StateProvinceID from Person.StateProvince where name = 'Alberta')

select SalesorderId, DATEPART(month,OrderDate) as mes
from sales.SalesOrderHeader

select avg(totaldue) as media, datepart(day,OrderDate) as mes
from sales.SalesOrderHeader
group by DATEPART(day,OrderDate)
order by mes