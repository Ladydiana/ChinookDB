/*
	Question 1: We want to find out the most popular music Genre for each country. 
	-> We determine the most popular genre as the genre with the highest amount of purchases. 
	-> Write a query that returns each country along with the top Genre. 
	-> For countries where the maximum number of purchases is shared return all Genres.

*/


--used CTEs for cleanliness to first return a list of all genres in each country
--and then narrow that list to only the most popular
WITH CountryGenPopularityList AS
(SELECT count(*) as Popularity, gen.Name as GenreName, i.BillingCountry as Country
FROM 	InvoiceLine il
		JOIN Track trk ON trk.TrackId=il.TrackId
		JOIN Genre gen ON gen.GenreId=trk.GenreId
		JOIN Invoice i ON il.InvoiceId=i.InvoiceId
GROUP BY Country, gen.GenreId)

SELECT cgpl.Country, cgpl.GenreName, cgpl.Popularity 
FROM CountryGenPopularityList cgpl
WHERE 	cgpl.Popularity = (SELECT 	max(Popularity) FROM CountryGenPopularityList 
									WHERE cgpl.Country=Country
									GROUP BY Country
									)
ORDER BY Country
		







