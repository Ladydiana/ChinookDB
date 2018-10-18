/*
Question 3: Who is the best customer?

-> The customer who has spent the most money will be declared the best customer. 
-> Build a query that returns the person who has spent the most money. 
-> I found the solution by linking the following three: Invoice, InvoiceLine, and Customer tables to retrieve this information, but you can probably do it with fewer!

*/

SELECT  FirstName || ' ' || LastName as Name, sum(i.Total) as TotalSpent
FROM Customer c, Invoice i
WHERE c.CustomerId=i.CustomerId
GROUP BY (i.CustomerId)
ORDER BY TotalSpent desc
LIMIT 1;