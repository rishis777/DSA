# Write your MySQL query statement below
SELECT c.name as Customers
FROM customers as c
LEFT JOIN orders as o 
ON o.customerID = c.id
where o.id is NULL