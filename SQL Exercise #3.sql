/*“I have neither given nor received unauthorized assistance on this assignment.”*/

/*Write the sql statement that returns a list of store's cities and countries. Where are they located (city and country)?  Show your results.*/
Select city, country
From sakila.store
Join sakila.address
	On store.address_id = address.address_id
Join sakila.city
	On city.city_id = address.city_id
Join sakila.country
	On city.country_id = country.country_id
;
/*
Lethbridge	Canada
Woodridge	Australia
*/

/*Write the sql statement that returns the total revenue for those stores.  Show your results including store number, city and country.*/
Select store.store_id, city, country, Sum(amount) as "Total Revenue"
From sakila.store
Join sakila.address
	On store.address_id = address.address_id
Join sakila.city
	On city.city_id = address.city_id
Join sakila.country
	On city.country_id = country.country_id
Join sakila.staff
	On store.store_id = staff.store_id
Join sakila.payment
	On staff.staff_id = payment.staff_id
Group by store.store_id;
/*
1	Lethbridge	Canada	33489.47
2	Woodridge	Australia	33927.04
*/

/*Write the sql statement that returns the total revenue per year for those stores.  Show your results including store number, city and country.*/
Select store.store_id, city, country, Sum(amount) as "Total Revenue", YEAR(payment_date) as "Year"
From sakila.store
Join sakila.address
	On store.address_id = address.address_id
Join sakila.city
	On city.city_id = address.city_id
Join sakila.country
	On city.country_id = country.country_id
Join sakila.staff
	On store.store_id = staff.store_id
Join sakila.payment
	On staff.staff_id = payment.staff_id
Group by YEAR(payment_date), store.store_id;
/*
1	Lethbridge	Canada	33255.38	2005
2	Woodridge	Australia	33646.95	2005
1	Lethbridge	Canada	234.09	2006
2	Woodridge	Australia	280.09	2006
*/

/*Write the sql statement that returns the average revenue per month regardless of store.  Show your results including store number, city and country.*/
Select MONTH(payment_date) as "Month", (sum(amount) / count(Distinct store.store_id)) as "Average Revenue"
From sakila.store
Join sakila.address
	On store.address_id = address.address_id
Join sakila.city
	On city.city_id = address.city_id
Join sakila.country
	On city.country_id = country.country_id
Join sakila.staff
	On store.store_id = staff.store_id
Join sakila.payment
	On staff.staff_id = payment.staff_id
Group by Month(payment_date);
/*
2	257.090000
5	2412.215000
6	4815.940000
7	14186.945000
8	12036.065000
*/

/*Write the sql statement that returns the revenue for the day of the week for those stores, regardless of year or month.  Show your results including store number, city and country.  Start the list on Sunday.*/
Select store.store_id, city, country, Sum(amount) as "Total Revenue", DAYOFWEEK(payment_date) as "Day of Week"
From sakila.store
Join sakila.address
	On store.address_id = address.address_id
Join sakila.city
	On city.city_id = address.city_id
Join sakila.country
	On city.country_id = country.country_id
Join sakila.staff
	On store.store_id = staff.store_id
Join sakila.payment
	On staff.staff_id = payment.staff_id
Group by DAYOFWEEK(payment_date), store.store_id;
/*
'1', 'Lethbridge', 'Canada', '4747.56', '1'
'2', 'Woodridge', 'Australia', '4998.24', '1'
'1', 'Lethbridge', 'Canada', '4694.61', '2'
'2', 'Woodridge', 'Australia', '4650.92', '2'
'1', 'Lethbridge', 'Canada', '5086.65', '3'
'2', 'Woodridge', 'Australia', '5133.70', '3'
'1', 'Lethbridge', 'Canada', '4708.60', '4'
'2', 'Woodridge', 'Australia', '4557.09', '4'
'1', 'Lethbridge', 'Canada', '4709.84', '5'
'2', 'Woodridge', 'Australia', '4626.16', '5'
'1', 'Lethbridge', 'Canada', '4596.87', '6'
'2', 'Woodridge', 'Australia', '4969.40', '6'
'1', 'Lethbridge', 'Canada', '4945.34', '7'
'2', 'Woodridge', 'Australia', '4991.53', '7'

*/
