
-- insert user
INSERT INTO users (email, password, role, created_at) VALUES
('farid@email.com', 'farid12345', 'user', CURRENT_TIMESTAMP),
('rhamadhan@email.com', 'rhamadhan12345', 'user', CURRENT_TIMESTAMP),
('darari@email.com', 'darari12345', 'user', CURRENT_TIMESTAMP);

-- insert proffile
INSERT INTO profile (user_id, firstname, lastname, phone_number) VALUES
(1, 'Farid', 'farid', '081234567001'),
(2, 'Rhamadhan', 'rhamadhan', '081234567002'),
(3, 'Darari', 'darari', '081234567003');

-- insert movies
INSERT INTO movies (backdrop_path, overview, popularity, poster_path, release_date, duration, title, director_name, created_at) VALUES
('/backdrop_avengers.jpg', 'Superhero team up to save the world from Thanos', 95, '/poster_avengers.jpg', '2024-05-01', 150, 'Avengers: Endgame', 'Russo Brothers', CURRENT_TIMESTAMP),
('/backdrop_joker.jpg', 'Origin story of Arthur Fleck becoming the Joker', 88, '/poster_joker.jpg', '2024-04-15', 122, 'Joker', 'Todd Phillips', CURRENT_TIMESTAMP),
('/backdrop_inception.jpg', 'A thief who steals corporate secrets through dream-sharing technology', 92, '/poster_inception.jpg', '2024-06-20', 148, 'Inception', 'Christopher Nolan', CURRENT_TIMESTAMP),
('/backdrop_parasite.jpg', 'Greed and class discrimination threaten the newly formed symbiotic relationship', 89, '/poster_parasite.jpg', '2024-03-10', 132, 'Parasite', 'Bong Joon-ho', CURRENT_TIMESTAMP),
('/backdrop_dune.jpg', 'Paul Atreides continues his journey on Arrakis', 91, '/poster_dune.jpg', '2024-07-05', 155, 'Dune: Part Two', 'Denis Villeneuve', CURRENT_TIMESTAMP);

-- insert genres
INSERT INTO genres (name) VALUES
('Action'),
('Drama'),
('Sci-Fi'),
('Thriller'),
('Comedy');

-- insert untuk movie genres
INSERT INTO movies_genres (movies_id, genres_id) VALUES
(1, 1), (1, 3),
(2, 2), (2, 4),
(3, 1), (3, 3), 
(4, 2), (4, 4), 
(5, 1), (5, 3); 

-- insert cast
INSERT INTO casts (name) VALUES
('Robert Downey Jr.'),
('Joaquin Phoenix'),
('Leonardo DiCaprio'),
('Song Kang-ho'),
('Timothée Chalamet');

-- insert movie cast
INSERT INTO movies_casts (movies_id, casts_id) VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5); 

-- insert cinema
INSERT INTO cinemas (name) VALUES
('CGV Grand Indonesia'),
('XXI Plaza Senayan'),
('Cinema 21 Central Park'),
('IMAX Taman Anggrek'),
('Premiere Senayan City');

-- insert time
INSERT INTO times (time) VALUES
('09:00:00'),
('12:00:00'),
('15:00:00'),
('18:00:00'),
('21:00:00');

-- insert location
INSERT INTO locations (location) VALUES
('Jakarta Pusat'),
('Jakarta Selatan'),
('Jakarta Barat'),
('Jakarta Utara'),
('Jakarta Timur');

-- insert payment
INSERT INTO payments_method (name) VALUES
('Credit Card'),
('Debit Card'),
('E-Wallet'),
('Bank Transfer'),
('Cash');

-- insert seat
INSERT INTO seats (seat_code) VALUES
('A1'), ('A2'), ('A3'), ('A4'), ('A5');

-- insert schedule
INSERT INTO schedules (movies_id, cinemas_id, times_id, locations_id, date) VALUES
(1, 1, 1, 1, '2024-08-15'),
(2, 2, 2, 2, '2024-08-16'),
(3, 3, 3, 3, '2024-08-17'),
(4, 4, 4, 4, '2024-08-18'),
(5, 5, 5, 5, '2024-08-19');

-- insert orrder
INSERT INTO orders (qr_code, users_id, schedules_id, payments_id, fullname, email, phone_number, created_at) VALUES
('QR001_AVG', 1, 1, 1, 'Farid farid', 'farid@email.com', '081234567001', CURRENT_TIMESTAMP),
('QR002_JKR', 2, 2, 2, 'Rhamadhan rhamadhan', 'rhamadhan@email.com', '081234567002', CURRENT_TIMESTAMP),
('QR003_INC', 3, 3, 3, 'Darari darari', 'darari@email.com', '081234567003', CURRENT_TIMESTAMP);


-- insert order seats
INSERT INTO orders_seats (orders_id, seats_id) VALUES
(1, 1), (1, 2),
(2, 3),       
(3, 4), (3, 5);      