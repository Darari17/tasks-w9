SELECT id, backdrop_path, overview, popularity, poster_path, release_date, duration, title, director_name, created_at, updated_at 
FROM movies 
ORDER BY popularity DESC 
LIMIT 10;