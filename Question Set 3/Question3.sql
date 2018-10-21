/*
	Question 3: Write a query that determines the customer that has spent the most on music for each country. 
	
	-> Write a query that returns the country along with the top customer and how much they spent. 
	-> For countries where the top amount spent is shared, provide all customers who spent this amount.

*/

WITH TotalsPerCountry as
(
		SELECT i.BillingCountry, cust.FirstName || ' ' || cust.LastName as CustomerName, sum(i.Total) as TotalSpent
		FROM Invoice i
		JOIN Customer cust ON cust.CustomerId=i.CustomerId
		GROUP BY i.BillingCountry, cust.CustomerId
		ORDER BY i.BillingCountry
)               

SELECT a.BillingCountry, a.CustomerName, a.TotalSpent
FROM  TotalsPerCountry a
WHERE a.TotalSpent = (	SELECT max(TotalSpent) 
										FROM TotalsPerCountry
										WHERE a.BillingCountry=BillingCountry
										GROUP BY BillingCountry 
									 )