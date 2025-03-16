-- Insert data for admins
INSERT INTO admins (admin_id, name, email, password) VALUES
(1, 'Admin One', 'admin1@example.com', 'password'),
(2, 'Admin Two', 'admin2@example.com', 'password');

-- Insert data for users
INSERT INTO users (user_id, admin_id, name, phone_number, email, password, role_type, address, scores) VALUES
(1, NULL, 'User One', '1234567890', 'user1@example.com', 'pass1', 'buyer', 'Address 1', 100),
(2, NULL, 'User Two', '0987654321', 'user2@example.com', 'pass2', 'seller', 'Address 2', 200);

-- Insert data for categories
INSERT INTO categories (category_id, category_name, category_description) VALUES
(1, 'Electronics', 'Devices and gadgets'),
(2, 'Books', 'Various books and literature');

-- Insert data for items
INSERT INTO items (item_id, category_id, owner_id, item_image, title, item_description, price, status, creation_time) VALUES
(1, 1, 2, 'image1.jpg', 'Smartphone', 'Latest model smartphone', 699.99, 'available', CURRENT_TIMESTAMP),
(2, 2, 2, 'image2.jpg', 'Novel', 'Best-selling novel', 19.99, 'available', CURRENT_TIMESTAMP);

-- Insert data for cart
INSERT INTO cart (cart_id, item_id, user_id, quantity) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2);

-- Insert data for booking
INSERT INTO booking (booking_id, item_id, user_id, rental_date, rental_time, status, card_number, booking_time) VALUES
(1, 1, 1, '2024-03-12', '10:00:00', 'confirmed', '1234-5678-9012-3456', CURRENT_TIMESTAMP);

-- Insert data for tracking_details
INSERT INTO tracking_details (tracking_id, booking_id, name, phone, email, address, city) VALUES
(1, 1, 'User One', '1234567890', 'user1@example.com', 'Address 1', 'City A');

-- Insert data for reviews
INSERT INTO reviews (review_id, item_id, user_name, comment, rating, date_posted) VALUES
(1, 1, 'User One', 'Great product!', 5, CURRENT_TIMESTAMP);


ALTER TABLE conversations DROP COLUMN label;

