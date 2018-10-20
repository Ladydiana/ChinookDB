# ChinookDB

## Database Schema
![alt text](https://github.com/Ladydiana/ChinookDB/blob/master/DatabaseSchema.png)

## Question List

### Set 1:
- ##### Question 1: 
    Which countries have the most Invoices?
	
	-> Use the Invoice table to determine the countries that have the most invoices. 
	
    -> Provide a table of BillingCountry and Invoices ordered by the number of invoices for each country. 
	
    -> The country with the most invoices should appear first.
		
- ##### Question 2: 
    Which city has the best customers?
	
	-> We would like to throw a promotional Music Festival in the city we made the most money. 
	
    -> Write a query that returns the 1 city that has the highest sum of invoice totals. 
	
    -> Return both the city name and the sum of all invoice totals.
		
- ##### Question 3: 
    Who is the best customer?
	
	-> The customer who has spent the most money will be declared the best customer. 
	
    -> Build a query that returns the person who has spent the most money. 
    
	-> I found the solution by linking the following three: Invoice, InvoiceLine, and Customer tables to retrieve this information, but you can probably do it with fewer!


### Set 2:
- ##### Question 1: 
    Return the email, first name, last name, and Genre of all Rock Music listeners.
	
	-> Return your list ordered alphabetically by email address starting with A. 
    
	-> Can you find a way to deal with duplicate email addresses so no one receives multiple emails? 
- ##### Question 2:
	Who is writing the rock music?
	
	-> Now that we know that our customers love rock music, we can decide which musicians to invite to play at the concert.
	
	-> Let's invite the artists who have written the most rock music in our dataset. 
	
	-> Write a query that returns the Artist name and total track count of the top 10 rock bands. 
- ##### Question 3:
	First, find which artist has earned the most according to the InvoiceLines?
	
	Now use this artist to find which customer spent the most on this artist.

		
### Set 3:
- ##### Question 1: 
	We want to find out the most popular music Genre for each country. 
	
	-> We determine the most popular genre as the genre with the highest amount of purchases. 
	
	-> Write a query that returns each country along with the top Genre. 
	
	-> For countries where the maximum number of purchases is shared return all Genres.
	