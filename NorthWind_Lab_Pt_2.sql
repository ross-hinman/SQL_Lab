--Select all records from customers table
SELECT * FROM Customers
--All who live in Paris or London--
Select * From Customers Where City = 'London' or City = 'Paris'
--List of cities where customers are coming from--
Select Distinct City From Customers where City is not Null
--Sorted list of employees' first names--
Select FirstName from Employees Order By FirstName
--average product price--
Select AVG(UnitPrice) from Products 
--show highest price product name--
Select ProductName From Products where UnitPrice = ( Select MAX(UnitPrice) From Products) 
--All employees who have a BA--
Select FirstName, LastName From Employees where Notes Like '%BA%'
--Total for each order--
Select ((UnitPrice-(UnitPrice*Discount))*Quantity) from [Order Details]
--List of employees hired between 1/1/1993 and now--
Select FirstName, LastName from Employees where HireDate >= '1/1/1994' 
--Find how long employees have been working--
Select FirstName, DateDiff(year, HireDate, GetDate()) from Employees
--List of all products sorted by quantity--
Select ProductName From Products Order By UnitsInStock
Select ProductName From Products Order By UnitsInStock DESC; 
--Find all products that are low on stock--
Select ProductName From Products where UnitsInStock < '6'
--List of all discontinued Items--
Select ProductName From Products where Discontinued = '1'
--All Products that have Tofu in them--
Select ProductName from Products where ProductName like '%Tofu%'
--Find product with highest unit price--
Select ProductName from Products where UnitPrice = ( Select MAX(UnitPrice) From Products) 
--List of all employees who got hired after 1993--
Select FirstName, LastName from Employees where HireDate >= '1/1/1993' 
--Get All Employees who have title Ms. and Mrs.--
Select FirstName, LastName from Employees where TitleOfCourtesy = 'Ms.' or TitleOfCourtesy = 'Mrs.'
--Get all employees who have home phone with area code 206--
Select FirstName, LastName from Employees where HomePhone like '%206%'
