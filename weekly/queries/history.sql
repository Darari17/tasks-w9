SELECT o.id, o.qr_code, o.fullname, o.email, o.phone_number, o.created_at, m.title, c.name as cinema_name, t.time, l.location, pm.name as payment_method 
FROM orders o 
JOIN schedules s ON o.schedules_id = s.id 
JOIN movies m ON s.movies_id = m.id 
JOIN cinemas c ON s.cinemas_id = c.id 
JOIN times t ON s.times_id = t.id 
JOIN locations l ON s.locations_id = l.id 
JOIN payments_method pm ON o.payments_id = pm.id 
WHERE o.users_id = user_id 
ORDER BY o.created_at DESC;