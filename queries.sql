-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p.ProductName as ProductName
, c.CategoryName as CategoryName
from product as p
join category as c
on p.CategoryID = c.ID

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.ID
, s.CompanyName
FROM [order] as o
JOIN shipper as s
ON o.ShipVia = s.ID
WHERE o.OrderDate < '2012-08-09'


SELECT p.ProductName as name
, o.quantity
FROM OrderDetail as o
JOIN Product as p
ON o.productID = p.ID
WHERE o.orderID = 10251
ORDER by p.ProductName
LIMIT 3
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.id as Order_ID
, c.CompanyName as Customer_Company_Name
, e.LastName as Employee_Last_Name
FROM [Order] as o
JOIN Customer as c
on o.CustomerID = c.ID
JOIN Employee as e
on o.EmployeeID = e.ID