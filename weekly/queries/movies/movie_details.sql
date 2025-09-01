SELECT m.id, m.backdrop_path, m.overview, m.popularity, m.poster_path, m.release_date, m.duration, m.title, m.director_name, m.created_at, m.updated_at 
FROM movies m 
WHERE m.id = movie_id;