select *
from person.Person as pp
left join sales.PersonCreditCard as pc
on pp.BusinessEntityID=pc.BusinessEntityID
where pc.BusinessEntityID is null

select [ProductID], [Name], [ProductNumber]
from Production.Product
where name like '%Chain%'
union
select [ProductID], [Name], [ProductNumber]
from Production.Product
where name like '%Decal%'
