use sakila;

select * from film;

select film_id, title as film_name from film;

select distinct release_year, rating from film;

select 1, "hello world";

select now();

select film_id, length/60 from film;

select * from film_copy;

insert into film_copy (title, description, language_id)
	select title, description, language_id from film;
    
select * from film order by rental_duration asc, title desc;

select * from film LIMIT 5;

select * from film LIMIT 5 offset 10;

select * from film;