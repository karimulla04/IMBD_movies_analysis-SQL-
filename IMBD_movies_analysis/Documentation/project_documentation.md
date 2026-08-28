# IMDb Movies SQL Analysis — Project Documentation

## 1. Objective
Analyze an IMDb movies and directors database using SQL and extract useful
insights about movie popularity, ratings, revenue, and director performance.

## 2. Dataset
The database contains two tables:
- directors
- movies

The tables are connected through `movies.director_id` and `directors.id`.

## 3. Analysis Performed
The project contains 13 assigned problem queries covering:
- Basic data retrieval
- Filtering
- Pattern matching
- Counting
- Ranking
- Revenue analysis
- Date filtering
- Table joins
- Grouping and aggregation

## 4. Main SQL Techniques
`SELECT`, `WHERE`, `IN`, `LIKE`, `COUNT()`, `SUM()`, `ORDER BY`,
`LIMIT`, `GROUP BY`, and `JOIN`.

## 5. Interpretation
- Popular movies are ranked using the `popularity` column.
- Bankable movies are interpreted as movies with the highest `revenue`.
- The most bankable director is the director with the highest sum of movie
  revenue.
- Female directors are identified using `gender = 1`.

## 6. Data Quality / Limitation
The supplied database contains Brenda Chapman in the directors table, but the
assigned Brenda Chapman movie query returned no matching movie. This is treated
as a limitation of the supplied dataset.

## 7. Deliverables
- SQL query script
- README
- Project documentation
- Space for screenshots/results

## 8. GitHub Presentation
Before uploading:
1. Remove all credentials from files and screenshots.
2. Add the SQL script.
3. Add the README.
4. Add screenshots of important query results.
5. Commit with a clear message such as:
   `Add IMDb movies SQL analysis project`
