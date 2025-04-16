INSERT INTO roles (role_name) VALUES 
('renter'), 
('owner'), 
('admin');

INSERT INTO Users (full_name, email, password, role_id ,phone_number) VALUES 
('John Doe', 'john@example.com', 'password', 1,55545),  -- Admin
('Alice Smith', 'alice@example.com', 'password', 2,44515),  -- Customer
('Bob Johnson', 'bob@example.com', 'password', 3,54411);  -- Renter


SELECT * FROM Roles;

SELECT Users.user_ID, users.full_name, Roles.role_name 
FROM Users 
JOIN roles ON Users.role_ID = roles.role_ID;