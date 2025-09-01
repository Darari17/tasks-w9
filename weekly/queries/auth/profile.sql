SELECT u.id, u.email, u.role, u.created_at, u.updated_at, p.firstname, p.lastname, p.phone_number 
FROM users u 
LEFT JOIN profile p ON u.id = p.user_id 
WHERE u.id = user_id;