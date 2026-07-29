-- 1. Display all customers
SELECT * FROM Customers;

-- 2. Display customer names and cities
SELECT Name, City
FROM Customers;

-- 3. Find customers from North Carolina
SELECT *
FROM Customers
WHERE State = 'NC';

-- 4. Sort customers by name
SELECT *
FROM Customers
ORDER BY Name;

-- 5. Count customers by state
SELECT State, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY State
ORDER BY TotalCustomers DESC;

-- 6. Count customers by city
SELECT City, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City
ORDER BY TotalCustomers DESC;

-- 7. Display the first 10 customers
SELECT *
FROM Customers
LIMIT 10;
