--Question1
SELECT c.first_name, c.last_name FROM customer c 
INNER JOIN address a ON c.address_id = a.address_id where a.district = 'Texas';

--Question2

SELECT CONCAT(c.first_name, ' ', c.last_name) as full_name,p.amount,p.payment_id, p.staff_id,p.rental_id,
p.payment_date,p.customer_id FROM customer c FULL JOIN 
payment p ON c.customer_id = p.customer_id where p.amount > 6.99;

--Question3
SELECT first_name ,last_name from customer where customer_id in (SELECT customer_id from payment where amount > 175)

--Question4
SELECT c.first_name, c.last_name
FROM customer c FULL JOIN address a ON c.address_id = a.address_id FULL JOIN city ct ON a.city_id = ct.city_id 
FULL JOIN country ON country.country_id = ct.country_id
	WHERE country.country = 'Nepal';

--Question 5

SELECT  s.first_name, s.last_name ,count(p.staff_id)staff_count 
	FROM payment p FULL join staff s on p.staff_id = s.staff_id GROUP BY p.staff_id, s.first_name,s.last_name 
	order by staff_count desc;

--Question 6

SELECT title from film where film_id in (SELECT film_id FROM (SELECT COUNT(actor_id)actor_count, film_id from 
film_actor group by film_id order by actor_count desc)y limit 1)

--Question7

SELECT first_name, last_name from customer where customer_id in 
(SELECT y.customer_id from 
(SELECT count(customer_id)cust,amount,customer_id FROM payment 
WHERE amount > 6.99 group by customer_id,amount,customer_id)y WHERE y.cust = 1)

--Question 8
SELECT *  from category where category_id = (select y.category_id from
(SELECT category_id, count(category_id)cat_count
FROM public.film_category group by category_id order by cat_count desc limit 1)y)