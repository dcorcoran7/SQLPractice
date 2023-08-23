/*“I have neither given nor received unauthorized assistance on this assignment.”*/

/*Write the sql statement that returns a list of actors with either the first name as "Groucho" or the last name "Marx". Include the actor_id in your field list. How many rows were found?*/
Select actor_id, first_name, last_name 
From sakila.actor 
Where first_name = "Groucho" Or last_name = "Marx";
/*4 rows returned*/

/*Write the sql statement that returns a list of films acted by the actors you found in Question 1 with first name "Groucho" or last name "Marx" combination without showing duplicates. How many rows were found?*/
Select Distinct title
From sakila.film
Join sakila.film_actor
	On film.film_id = film_actor.film_id
Join sakila.actor
	On film_actor.actor_id = actor.actor_id
Where first_name = "Groucho" Or last_name = "Marx";
/*108 rows returned*/

/*You suspect that the names were mixed up at some point, and you know that "Groucho Marx" only acts in classics, therefore. Write the sql statement that returns a list of classic films that you suspect Grouch Marx was the actor.  (That either had first name "Groucho" or last name "Marx".)  How many rows were found?*/
Select Distinct title
From sakila.film
Join sakila.film_actor
	On film.film_id = film_actor.film_id
Join sakila.actor
	On film_actor.actor_id = actor.actor_id
Join sakila.film_category
	On film.film_id = film_category.film_id
Where category_Id = "4" And (first_name = "Groucho" Or last_name = "Marx");
/*6 rows returned*/

/*Write the sql statement that will UPDATE the first name of only those films to Groucho.  (Wrap your UPDATE around a START TRANSACTION and ROLLBACK to make sure that you keep the original data.)  How many rows were affected?*/
Start Transaction;
Update sakila.actor
Set actor.first_name = "Groucho"
Where actor.last_name = "Marx" And actor.actor_id In (Select film_actor.actor_id
		From sakila.film_actor
		Join sakila.film
			On film.film_id = film_actor.film_id
		Join sakila.film_category
			On film.film_id = film_category.film_id
		Join sakila.category
			On category.category_id = film_category.category_id
		Where film_category.category_Id = "4");
Rollback;
/*1 row affected*/

/*Write the sql statement that will UPDATE the last name of only those films to Marx.  (Wrap your UPDATE around a START TRANSACTION and ROLLBACK to make sure that you keep the original data.)  How many rows were affected?*/
Start Transaction;
Update sakila.actor
Set actor.last_name = "Marx"
Where actor.first_name = "Groucho" And actor.actor_id In (Select film_actor.actor_id
		From sakila.film_actor
		Join sakila.film
			On film.film_id = film_actor.film_id
		Join sakila.film_category
			On film.film_id = film_category.film_id
		Join sakila.category
			On category.category_id = film_category.category_id
		Where film_category.category_Id = "4");
Rollback;
/*2 rows affected*/