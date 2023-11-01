use sakila;

select rental_duration, count(*) from film group by rental_duration;

select release_year, count(*) from film group by release_year;

select count(*), b.name
	from students s join batches b
    group by b.name;
    