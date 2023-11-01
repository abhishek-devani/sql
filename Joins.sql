use sakila;

-- print the film_table and the language_name;

select f.title, l.name 
	from film f join language l
    on f.language_id = l.language_id;
    
-- Self Join 
-- select b1.name, b2.name
-- 	from buddy b1 join buddy b2
--     on b1.id = b2.buddy_id;

-- multiple join
-- select s.name, b.name, i.name
-- 	from students s join batches b
-- 		on s.b_id = b.id  
-- 			join instructor i
-- 				on s.b_id = i.id;

select f1.title, f2.title from
	film f1 join film f2
    on (f2.release_year <= f1.release_year + 2 OR f2.release_year >= f1.release_year - 2)
    and (f2.rental_rate > f1.rental_rate)
    where f1.title = "Glory tracy";
    
update film set release_year = 2008 where title = "Glory tracy";
    
select title, release_year, rental_rate from film where title = "Glory tracy" or title like "ace gold%"

