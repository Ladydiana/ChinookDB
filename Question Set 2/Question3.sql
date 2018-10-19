/*
Question 3: 
First, find which artist has earned the most according to the InvoiceLines?
Now use this artist to find which customer spent the most on this artist. 

*/

-- first step
--WITH BestSellingArtist AS
--(
SELECT sum(il.UnitPrice * il.Quantity) as 'Total', a.Name as ArtistName
FROM InvoiceLine il, Track trk, Album alb, Artist a
WHERE il.TrackId=trk.TrackId and
alb.AlbumId=trk.AlbumId and
a.ArtistId=alb.ArtistId
GROUP BY a.ArtistId
ORDER BY Total desc
LIMIT 1
--)

