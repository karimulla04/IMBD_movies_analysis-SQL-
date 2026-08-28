# IMDb Movies SQL Analysis

## Project Overview
This project analyzes an IMDb-style movies and directors database using MySQL.
The objective is to answer a set of business/problem questions about movies,
ratings, popularity, revenue, and directors.

## Tools
- MySQL
- MySQL Workbench
- SQL

## Database Structure

### directors
- `id` — Director ID / Primary Key
- `name` — Director name
- `gender` — 1 = Female, 0/2 = Male
- `uid` — Director unique ID
- `department` — Department

### movies
- `id` — Movie ID / Primary Key
- `original_title` — Original movie title
- `budget` — Movie budget
- `popularity` — Movie popularity
- `release_date` — Release date
- `revenue` — Movie revenue
- `title` — Movie title
- `vote_average` — Average movie rating
- `vote_count` — Number of votes
- `overview` — Movie description
- `tagline` — Movie tagline
- `uid` — Movie unique ID
- `director_id` — Director ID

## Relationship
`movies.director_id = directors.id`

## Problem Queries

## a)	Can you get all data about movies? 
```sql
select * from movies;
```

## b)	How do you get all data about directors?
```sql
select * from directors;
```

## c)	Check how many movies are present in IMDB.
```sql
select count(*) as total_movies
from movies;
```

## d)	Find these 3 directors: James Cameron ; Luc Besson ; John Woo
```sql
select * from directors
where name in ('james cameron','luc besson','john woo');
```

## e)	Find all directors with name starting with S.
```sql
select * from directors
where name like  's%';
```

## f)	Count female directors.
```sql
select count(*) from directors
where gender = 1; -- 1 = female
```

## g)	Find the name of the 10th first women directors?
```sql
select * from directors
where gender = 1
limit 10;
```

## h)	What are the 3 most popular movies?
```sql
select * from movies
order by popularity desc
limit 3;
```

## i)	What are the 3 most bankable movies?
```sql
select * from movies
order by budget desc
limit 3;
```
## j)	What is the most awarded average vote since the January 1st, 2000?
```sql
select * from movies
where release_date >='2000-01-01'
order by vote_average desc
limit 1;
```
## k)	Which movie(s) were directed by Brenda Chapman?
```sql
select m.original_title, m.title
FROM movies m
JOIN directors d
    ON m.director_id = d.id
where m.director_id  = 4801 ;
```

## l) which director made the most movies
```sql
select directors.id,directors.name ,
count(movies.id) as movie_count
from directors
join movies
on directors.id = movies.director_id
group by directors.id,directors.name
order by movie_count desc
limit 1 ;
```


## m)	Which director is the most bankable?
```sql
select d.name,
sum(m.revenue) as bankable
from directors as d
join movies as m
on d.id = m.director_id
group by d.id,d.name
order by bankable desc
limit 1;
```

## SQL Concepts Demonstrated
- SELECT and projection
- WHERE filtering
- IN
- LIKE
- COUNT
- SUM
- ORDER BY
- LIMIT
- GROUP BY
- INNER JOIN
- Aggregate analysis

## Key Business Questions
This project answers:
1. How many movies are in the database?
2. Which directors are in the requested list?
3. Which directors have names beginning with S?
4. How many female directors are present?
5. Which movies are most popular?
6. Which movies generate the most revenue?
7. Which highly rated movie was released from 2000 onward?
8. Which director has made the most movies?
9. Which director has generated the highest total revenue?

## Data Limitation
The supplied database contains a Brenda Chapman record in `directors`, but the
Brenda Chapman query returned no matching movie. The project does not fabricate
or insert missing movie data.

