use sakila;

-- creating an index

create index idx_film_title_release_year on
	film(title, release_year);

explain analyze select * from film where title = "ACADEMY DINOSAUR";

-- -> Index lookup on film using idx_title 
-- 	(title='ACADEMY DINOSAUR')  (cost=0.35 rows=1) 
--     (actual time=0.0223..0.0256 rows=1 loops=1)
 