/*“I have neither given nor received unauthorized assistance on this assignment.”*/

/*Write the sql statement that returns a list of all actors names sorted by last name, then by first name.*/
Select last_name,first_name 
From sakila.actor;

/*Write the sql statement that returns a list of all films rated R.  How many rows returned?*/
Select title
From sakila.film
Where rating = "R";
/*195 rows returned*/

/*Write the sql statement that returns a list of all films that are category “Action”.  How many rows returned?*/
Select title, category_id
From sakila.film
Inner Join sakila.film_category
	On film.film_id = film_category.film_id
Where category_id = 1;
/*64 Rows Returned*/

/*Write the sql statement that returns a list of all films that have the string “SIDE” in their name.  How many rows returned?*/
Select title
From sakila.film
Where title Like "%side%";
/*6 Rows Returned*/

/*Write the sql statement that returns just the count of films under 90 minutes and name it ShortFilms.  a) How many rows returned? and b) What is the short film count.*/
Select count(length) As "ShortFilms"
From sakila.film
Where length < 90;
/*1 Row Returned*/
/*320 Films*/

