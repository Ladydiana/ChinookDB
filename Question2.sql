/*
Question 2: Which city has the best customers?

-> We would like to throw a promotional Music Festival in the city we made the most money. 
-> Write a query that returns the 1 city that has the highest sum of invoice totals. 
-> Return both the city name and the sum of all invoice totals.

*/

SELECT BillingCity as City, sum(Total) as InvoiceTotals
FROM Invoice
GROUP BY BillingCity
ORDER BY InvoiceTotals desc
LIMIT 1;