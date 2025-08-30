SELECT m.id, m.backdrop_path, m.overview, m.popularity, m.poster_path, m.release_date, m.duration, m.title, m.director_name, m.created_at, m.updated_at 
FROM movies m 
JOIN movies_genres mg ON m.id = mg.movies_id 
JOIN genres g ON mg.genres_id = g.id 
WHERE m.title ILIKE '%search_term%' OR g.name ILIKE '%search_term%' 
GROUP BY m.id 
ORDER BY m.created_at DESC 
LIMIT 10 OFFSET 0;