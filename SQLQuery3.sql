
select top 10 sum(linetotal)as "soma"
from sales.SalesOrderDetail

select top 10 min(linetotal)as "minimo"
from sales.SalesOrderDetail

select top 10 max(linetotal)as "maximo"
from sales.SalesOrderDetail

select top 10 avg(linetotal)as "media"
from sales.SalesOrderDetail

select *
from Sales.SalesOrderDetail

select SpecialOfferID, sum(UnitPrice) as "soma"
from sales.SalesOrderDetail
group by SpecialOfferID

select SpecialOfferID, UnitPrice
from Sales.SalesOrderDetail
where SpecialOfferID = 9

select ProductID, count(ProductID) as "contagem"
from Sales.SalesOrderDetail
group by ProductID

select color,avg(ListPrice) as "preco"
from Production.Product
where color = 'silver'
group by color

select MiddleName, count(MiddleName) as "contagem"
from Person.Person
group by MiddleName

select ProductID, avg(OrderQty) as "media"
from Sales.SalesOrderDetail
group by ProductID

select top 10 ProductID, sum(LineTotal) as "maximo"
from Sales.SalesOrderDetail
group by ProductID
order by sum(linetotal) desc;

select ProductID, count (productID) as "contagem", avg(orderqty) as "media"
from Production.WorkOrder
group by ProductID

select productid, sum(linetotal) as total
from Sales.SalesOrderDetail
group by ProductID
having sum(LineTotal) between 162000 and 500000

select firstname, count(firstname) as qty
from Person.Person
where Title = 'Mr.'
group by FirstName
having count(firstname) > 10

select stateprovinceid, count(stateprovinceid) as qnty
from Person.Address
group by StateProvinceID
having count(StateProvinceID) > 1000

select productid, avg(linetotal)
from sales.SalesOrderDetail
group by ProductID
having avg(linetotal) < 10000000

select pr.ListPrice, pr.Name, pc.Name
from Production.Product Pr
inner join Production.ProductSubcategory PC on PC.ProductSubcategoryID = pr.ProductSubcategoryID

select pp.BusinessEntityID, pn.Name, pn.PhoneNumberTypeID, pp.PhoneNumber  /* basicamente as duas letras no início, são apenas pra apelidar as colunas de diferentes tabelas, no caso pn = phone number e pp person phone */
from Person.PersonPhone as PP
inner join Person.PhoneNumberType as Pn on Pn.PhoneNumberTypeID = pp.PhoneNumberTypeID

select top 10 pa.AddressID, pa.City, ps.StateProvinceID, ps.Name
from person.Address as PA
inner join Person.StateProvince as ps on ps.StateProvinceID = pa.StateProvinceID