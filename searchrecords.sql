/* Movies in fantasy/adventure genre that have received an 'A' rating given from 5/11-5/22 */ 

SELECT DISTINCT m.movieID, m.title, m.year
FROM movies m, rate r, genres g
WHERE m.movieID = r.movieID
	AND r.movieID = g.movieID
	AND r.grade = 'A'
	AND g.gName IN('Fantasy','Adventure')
	AND r.reviewDATE >= DATE '2024-05-11'
	AND r.reviewDATE <= DATE '2024-05-22';

/* List the user who has rated the most movies (group by) */ 

SELECT userID, COUNT(DISTINCT movieID) AS num_rated_movies
FROM rate
GROUP BY userID
HAVING COUNT(DISTINCT movieID) = ( 
	SELECT MAX(movie_count)
	FROM ( 
		SELECT COUNT(DISTINCT movieID) AS movie_count
		FROM rate
		GROUP BY userID
	)max_counts
);

/* List movies that have not been rated (Minus) */ 

SELECT m.movieID, m.title, m.year
FROM movies m 
MINUS 
SELECT r.movieID, m.title, m.year
FROM rate r, movies m 
WHERE r.movieID = m.movieID; 


/* Comedy Movies that have been given an 'A' rating and have not been rated by user 'u9' (Reccomendation) */

SELECT m.movieID, m.title, m.year, 'Comedy' AS genre, 'A' AS grade
FROM movies m 
JOIN genres g ON m.movieID = g.movieID AND g.gName = 'Comedy'
WHERE NOT EXISTS ( 
	SELECT * 
	FROM rate r 
	WHERE r.userID = 'u9'
	AND r.movieID = m.movieID
);

