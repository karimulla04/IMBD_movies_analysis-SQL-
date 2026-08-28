use project_movie_database;

show tables;
describe movies;

describe directors;

-- a)	Can you get all data about movies? 
select * from movies;

-- b)	How do you get all data about directors?
select * from directors;

-- c)	Check how many movies are present in IMDB.
select count(*) as total_movies
from movies;

-- d)	Find these 3 directors: James Cameron ; Luc Besson ; John Woo
select * from directors
where name in ('james cameron','luc besson','john woo');

-- e)	Find all directors with name starting with S.
select * from directors
where name like  's%';

-- f)	Count female directors.
select count(*) from directors
where gender = 1; -- 1 = female

-- g)	Find the name of the 10th first women directors?
select * from directors
where gender = 1
limit 10;

-- h)	What are the 3 most popular movies?
select * from movies
order by popularity desc
limit 3;

-- i)	What are the 3 most bankable movies?
select * from movies
order by budget desc
limit 3;

-- j)	What is the most awarded average vote since the January 1st, 2000?
select * from movies
where release_date >='2000-01-01'
order by vote_average desc
limit 1;

-- k)	Which movie(s) were directed by Brenda Chapman?
SELECT m.original_title, m.title
FROM movies m
JOIN directors d
    ON m.director_id = d.id
where m.director_id  = 4801 ;

-- l) which director made the most movies
select directors.id,directors.name ,
count(movies.id) as movie_count
from directors
join movies
on directors.id = movies.director_id
group by directors.id,directors.name
order by movie_count desc
limit 1 ;


-- m)	Which director is the most bankable?
select d.name,
sum(m.revenue) as bankable
from directors as d
join movies as m
on d.id = m.director_id
group by d.id,d.name
order by bankable desc
limit 1;
