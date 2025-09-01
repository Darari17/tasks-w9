SELECT id, backdrop_path, overview, popularity, poster_path, release_date, duration, title, director_name, created_at, updated_at 
FROM movies 
WHERE release_date > CURRENT_DATE 
ORDER BY release_date ASC 
LIMIT 10;