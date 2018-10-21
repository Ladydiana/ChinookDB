# ChinookDB

## Database Schema
![alt text](https://github.com/Ladydiana/ChinookDB/blob/master/DatabaseSchema.png)

## Question List

### Set 1:
- ##### Question 1: 
    Which countries have the most Invoices?
	
	 :bulb: Use the Invoice table to determine the countries that have the most invoices. 
	
     :bulb: Provide a table of BillingCountry and Invoices ordered by the number of invoices for each country. 
	
     :bulb: The country with the most invoices should appear first.
		
- ##### Question 2: 
    Which city has the best customers?
	
	 :bulb: We would like to throw a promotional Music Festival in the city we made the most money. 
	
     :bulb: Write a query that returns the 1 city that has the highest sum of invoice totals. 
	
     :bulb: Return both the city name and the sum of all invoice totals.
		
- ##### Question 3: 
    Who is the best customer?
	
	 :bulb: The customer who has spent the most money will be declared the best customer. 
	
     :bulb: Build a query that returns the person who has spent the most money. 
    
	 :bulb: I found the solution by linking the following three: Invoice, InvoiceLine, and Customer tables to retrieve this information, but you can probably do it with fewer!


### Set 2:
- ##### Question 1: 
    Return the email, first name, last name, and Genre of all Rock Music listeners.
	
	 :bulb: Return your list ordered alphabetically by email address starting with A. 
    
	 :bulb: Can you find a way to deal with duplicate email addresses so no one receives multiple emails? 
- ##### Question 2:
	Who is writing the rock music?
	
	 :bulb: Now that we know that our customers love rock music, we can decide which musicians to invite to play at the concert.
	
	 :bulb: Let's invite the artists who have written the most rock music in our dataset. 
	
	 :bulb: Write a query that returns the Artist name and total track count of the top 10 rock bands. 
- ##### Question 3:
	 :bulb: First, find which artist has earned the most according to the InvoiceLines?
	
	 :bulb: Now use this artist to find which customer spent the most on this artist.

		
### Set 3:
- ##### Question 1: 
	We want to find out the most popular music Genre for each country. 
	
	 :bulb: We determine the most popular genre as the genre with the highest amount of purchases. 
	
	 :bulb: Write a query that returns each country along with the top Genre. 
	
	 :bulb: For countries where the maximum number of purchases is shared return all Genres.
- ##### Question 2:
	Return all the track names that have a song length longer than the average song length. 
	
	:bulb: Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first. 
- ##### Question 3: 
	Write a query that determines the customer that has spent the most on music for each country. 
	
	:bulb: Write a query that returns the country along with the top customer and how much they spent. 
	
	:bulb: For countries where the top amount spent is shared, provide all customers who spent this amount.