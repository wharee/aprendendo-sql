select count (ProductNumber)
from Production.Product

select count (Size)
from Production.Product

select count (distinct size)
from Production.Product

select top 10 *
from Production.Product

select * 
from person.person
order by FirstName asc

select * 
from person.person
order by FirstName desc

select FirstName, LastName
from person.person
order by FirstName asc, LastName desc 

select top 10 ProductID
from Production.Product
order by ListPrice desc

select top 4 name, ProductNumber
from Production.Product
order by ProductID asc

select *
from HumanResources.Employee
where HireDate between '2009/01/01' and '2010/01/01'
order by HireDate

select *
from person.Person
where BusinessEntityID in (2,7,13)

select *
from person.Person
where FirstName like 'ovi%' 

select *
from person.Person
where FirstName like '%to'

select *
from person.Person
where FirstName like '%essa%'

select count (listprice)
from Production.Product
where ListPrice > 1500

select count (LastName)
from person.Person
where LastName like 'p%'

select count(distinct city)
from Person.Address

select distinct (City)
from Person.Address

select count (*)
from Production.Product
where Color = 'red'
and ListPrice between '500' and '1000' 

select count (*)
from Production.Product
where name like '%road%'