UPDATE movies 
SET backdrop_path = 'backdrop_value', overview = 'overview_value', popularity = popularity_value, 
poster_path = 'poster_value', release_date = 'release_date_value', duration = duration_value, 
title = 'title_value', director_name = 'director_value', updated_at = CURRENT_TIMESTAMP 
WHERE id = movie_id;