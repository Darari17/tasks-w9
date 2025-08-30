INSERT INTO users (email, password, role, created_at, updated_at) 
VALUES ('email_user', 'password_user', 'user', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) 
RETURNING id, email, role, created_at, updated_at;