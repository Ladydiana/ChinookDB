/*
Question 2: Who is writing the rock music? 

-> Now that we know that our customers love rock music, we can decide which musicians to invite to play at the concert.
-> Let's invite the artists who have written the most rock music in our dataset. 
-> Write a query that returns the Artist name and total track count of the top 10 rock bands. 

*/

SELECT a.Name as ArtistName, count(*) as TotalTrackCount 
FROM Artist a, Album alb, Track trk, Genre gen  
WHERE 
a.ArtistId=alb.ArtistId and
trk.AlbumId=alb.AlbumId and
gen.GenreId=trk.GenreId and
gen.Name='Rock'
GROUP BY a.ArtistId
ORDER BY TotalTrackCount desc
LIMIT 10;