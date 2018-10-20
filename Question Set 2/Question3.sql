/*
Question 3: 
First, find which artist has earned the most according to the InvoiceLines?
Now use this artist to find which customer spent the most on this artist. 

*/

-- first step
-- used CTE for simplicity to return Best Selling Artist
-- and then use the data returned to find their best customer
WITH BestSellingArtist AS
(
SELECT sum(il.UnitPrice * il.Quantity) as 'ArtistTotal', a.Name as 'ArtistName', a.ArtistId
FROM InvoiceLine il, Track trk, Album alb, Artist a
WHERE il.TrackId=trk.TrackId and
alb.AlbumId=trk.AlbumId and
a.ArtistId=alb.ArtistId
GROUP BY a.ArtistId
ORDER BY ArtistTotal desc
LIMIT 1
)

SELECT 	bsa.ArtistName,
		bsa.ArtistTotal,
		c.CustomerId    AS 'CustomerId',
		c.FirstName || ' ' || c.LastName AS 'CustomerName',
		SUM(il.Quantity*il.UnitPrice) AS 'CustomerTotal'
FROM 	Artist a 
		JOIN Album alb ON a.ArtistId = alb.ArtistId 
		JOIN Track trk ON trk.AlbumId = alb.AlbumId 
		JOIN InvoiceLine il ON trk.TrackId = il.Trackid 
		JOIN Invoice i ON il.InvoiceId = i.InvoiceId 
		JOIN Customer c ON c.CustomerId = i.CustomerId 
		JOIN BestSellingArtist bsa ON bsa.ArtistId = a.ArtistId
GROUP BY c.CustomerId 
ORDER BY CustomerTotal DESC
limit 1;