use sakila;

select * from film;

insert into film (`title`, `description`, `release_year`, `language_id`)
	values ('demo', 'dec...', 2006, 1);
    
CREATE TABLE film_copy (
	film_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	title VARCHAR(128) NOT NULL,
	description TEXT DEFAULT NULL,
	release_year YEAR DEFAULT NULL,
	language_id TINYINT UNSIGNED NOT NULL,
	original_language_id TINYINT UNSIGNED DEFAULT NULL,
	rental_duration TINYINT UNSIGNED NOT NULL DEFAULT 3,
	rental_rate DECIMAL(4,2) NOT NULL DEFAULT 4.99,
	length SMALLINT UNSIGNED DEFAULT NULL,
	replacement_cost DECIMAL(5,2) NOT NULL DEFAULT 19.99,
	rating ENUM('G','PG','PG-13','R','NC-17') DEFAULT 'G',
	special_features SET('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') DEFAULT NULL,
	last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (film_id)
);
