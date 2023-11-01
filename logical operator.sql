use sakila;

select title, rating from film where rating = 'g';

select * from film where release_year = 2006 and rental_duration = 3;

select * from film where rating = 'g' and release_year = 2006;

select * from film where (not rating = 'g') or (not release_year = 2006);

select * from film where film_id in(1, 2, 3);
    
select * from film where not (rating = 'pg-13' or rating = 'r');

select * from film where rating not in ('PG-13', 'R');

select * from film where release_year between 2001 and 2006;

select * from film where rental_duration between 3 and 4;

select * from film where title like '%love%';