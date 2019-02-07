/*
Assignment 1 : Ryan Salem
*/

/* Question 1 */
select * from sakila.actor
where first_name = "PENELOPE";

/* Question 2 */
select * from sakila.actor
join sakila.film f
on f.title = "ZOOLANDER FICTION"
join sakila.film_actor a
on a.film_id = f.film_id;

/* Question 3 */
select f.title
from sakila.film f
join sakila.film_actor a
on f.film_id = a.film_id
join sakila.actor actor
on actor.first_name = "JENNIFER" 
and actor.last_name = "DAVIS" 
and actor.actor_id = a.actor_id;

/* Question 4 */
select f.title
from sakila.film f
join sakila.inventory i
on f.film_id = i.film_id
join sakila.rental r
on r.inventory_id = i.inventory_id
and r.customer_id = 11
and r.return_date is null;

/* Question 5 */
select f.title
from sakila.film f
join sakila.film_category c
on f.film_id = c.film_id
join category t
on t.category_id = c.category_id
and t.name = "Animation";

/* Question 6 */
select rental_rate 
from sakila.film 
where title = "CLOSER BANG";

/* Question 7 */
select s.first_name, s.last_name
from sakila.staff s
join sakila.rental r
on s.staff_id = r.staff_id
join sakila.inventory i
on i.inventory_id = r.inventory_id
join sakila.film f
on f.film_id = i.film_id 
and f.title = "CHAINSAW UPTOWN"
join sakila.customer c
on c.customer_id = r.customer_id
and c.first_name = "MARIE" 
and c.last_name = "TURNER";