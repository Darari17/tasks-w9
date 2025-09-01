SELECT s.id, s.seat_code 
FROM seats s 
JOIN orders_seats os ON s.id = os.seats_id 
JOIN orders o ON os.orders_id = o.id 
WHERE o.schedules_id = schedule_id;