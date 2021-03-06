/****** Script for SelectTopNRows command from SSMS  ******/
--All Records from Customer
SELECT * FROM Customers
--All countries from customer
SELECT Distinct Country From Customers
--All records from customers with ID Bl
SELECT * From Customers Where CustomerID LIKE 'BL%'
--First 100 records of orders table
SELECT TOP (100) * From Orders
--Customers in specific postal codes
Select ContactName from Customers where PostalCode = '1010' or PostalCode = '3012' or PostalCode = '12209' or PostalCode = '05023'
--Orders where shipRegion is not Null
Select * From Orders where ShipRegion is Not NULL
--Customer order by country then city
Select * From Customers Order By Country, City
--Add new customer to customers table
INSERT INTO [dbo].[Customers]
           ([CustomerID]
           ,[CompanyName]
           ,[ContactName]
           ,[ContactTitle]
           ,[Address]
           ,[City]
           ,[Region]
           ,[PostalCode]
           ,[Country]
           ,[Phone]
           ,[Fax])
     VALUES
           (8675,
           'Fricken Good Chicken',
           'Henry Nuggets',
           'Dr.',
           '1429 Feather-Friend Dr.',
           'Foulville',
           'North America',
           '73189',
           'United States',
           '18003457892',
           '8669593652')
GO
--Change France to EuroZone in Orders COMEBACK!!
Update Orders Set ShipRegion = 'EuroZone' where ShipCountry = 'France'

--Delete orders of quantity 1
Delete from [Order Details] where Quantity = 1

--Calculate average, max, and min of quantity at orderdetails
Select Min(Quantity) from [Order Details] 
Select Max(Quantity) from [Order Details]
Select AVG(Quantity) from [Order Details]

--Avg, min, and max grouped by order id
Select Min(Quantity) from [Order Details] Group By OrderId
Select Max(Quantity) from [Order Details] Group By OrderId
Select AVG(Quantity) from [Order Details] Group By OrderId

--Find customer that placed order 10290
Select CustomerID from Orders where OrderID = '10290'

--Do an inner join, left join, right join
Select Orders.CustomerID, Customers.CustomerID from Orders Inner Join Customers on Orders.CustomerID = Customers.CustomerID
Select Customers.CustomerID, Orders.CustomerID from Customers Left Join Orders on Customers.CustomerID = Orders.CustomerID
Select Orders.CustomerID, Customers.CustomerID from Orders Right Join Customers on Orders.CustomerID = Customers.CustomerID

--Get employee first name who don't report to anyone
Select FirstName from Employees where ReportsTo is Null

--Get employee first name who report to Andrew
Select FirstName From Employees where ReportsTo =2 