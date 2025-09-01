SELECT s.id, s.date, m.title, c.name as cinema_name, t.time, l.location 
FROM schedules s 
JOIN movies m ON s.movies_id = m.id 
JOIN cinemas c ON s.cinemas_id = c.id 
JOIN times t ON s.times_id = t.id 
JOIN locations l ON s.locations_id = l.id 
WHERE s.movies_id = movie_id 
ORDER BY s.date, t.time;