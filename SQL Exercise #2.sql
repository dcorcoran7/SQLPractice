/*Write the sql statement that returns a list of active customers by full address.  Sorted by country, city and last name. How many active customers do we have?*/
Select country, city, last_name, address
From sakila.address
Join sakila.customer
	On address.address_id = customer.address_id
Join sakila.city
	On address.city_id = city.city_id
Join sakila.country
	On city.country_id = country.country_id
Where active = 1
Order By country, city, last_name;
/*584 Active Customers*/

/*Write the sql statement that returns a list of rental dates looking from today, back into history, and the count of rented films per day. How many days did we have movies rented?*/
Select rental_date as "Date", count(rental_id) as "Count"
From sakila.rental
Group By CAST(rental_date as DATE)
Order By rental_date ASC;
/*41 rental days*/

/*Write the sql statement that returns a list all films rented in our history. How many titles did you find?*/
Select count(Distinct title) as "Count of Unique Films Rented"
From sakila.film
Join sakila.inventory
	On film.film_id = inventory.film_id
Join sakila.rental
	On inventory.inventory_id = rental.inventory_id;
/*958 different titles were rented in the history of the database*/

/*Write the sql statement that returns the title of the movie that was most rented in June, 2005.  How many times was it rented?*/
Select title, count(title) as "Count"
From sakila.film
Join sakila.inventory
	On film.film_id = inventory.film_id
Join sakila.rental
	On inventory.inventory_id = rental.inventory_id
Where rental_date >= "2005-06-01 00:00:00" and rental_date < "2005-07-01 00:00:00"
Group By title
Order by count(title) desc;
/*Timberland Sky was rented 7 times in June 2005*/

/*Write the sql statement that returns the highest revenue day we had in the past.  How much did we make?  What was the highest revenue date?*/
 Select payment_date, sum(amount) as "Daily Revenue"
 From sakila.payment
 Join sakila.rental
	On payment.payment_date = rental.rental_date
Group by CAST(payment_date As DATE)
Order By sum(amount) desc;
/*$93580.76 on 2006-02-14*/

