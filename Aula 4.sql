select A.ContactName, B.ContactName
from Customers A, Customers B
where A.Region = B.Region

select A.firstname, a.hiredate, b.firstname, b.hiredate
from Employees A, Employees B
where datepart (year,a.HireDate) = DATEPART(YEAR,b.HireDate)

select A.productid, A.discount, b.productid, b.discount
from [Order Details] A, [Order Details] B
where A.Discount = B.Discount


