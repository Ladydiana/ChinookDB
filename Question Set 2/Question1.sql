/*
Question 1: Return the email, first name, last name, and Genre of all Rock Music listeners.
 
-> Return your list ordered alphabetically by email address starting with A. 
-> Can you find a way to deal with duplicate email addresses so no one receives multiple emails? 

*/

SELECT distinct cust.email as Email, cust.FirstName as FirstName, cust.LastName as LastName, gen.name as Name
FROM Genre gen, Track trk, InvoiceLine il, Invoice inv, Customer cust
WHERE gen.name='Rock' and
gen.GenreId=trk.GenreId and
trk.TrackId=il.TrackId and
il.InvoiceId=inv.InvoiceId and
inv.CustomerId=cust.CustomerId
ORDER BY Email;