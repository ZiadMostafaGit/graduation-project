CREATE TABLE users (
    user_id INT PRIMARY KEY,
    admin_id INT,
    name VARCHAR(100),
    phone_number VARCHAR(12),
    email VARCHAR(55) UNIQUE,
    password VARCHAR(8),
    role_type enum ('renter','customer'),
    address TEXT,
    scores INT
);

CREATE TABLE admins (
    admin_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(50) UNIQUE,
    password VARCHAR(8)
);

CREATE TABLE conversations (
    conversation_id INT PRIMARY KEY,
    participant1 INT,
    participant2 INT,
    creation_time TIMESTAMP,
    FOREIGN KEY (participant1) REFERENCES users(user_id),
    FOREIGN KEY (participant2) REFERENCES users(user_id)
);

CREATE TABLE messages (
    message_id INT PRIMARY KEY,
    conversation_id INT,
    sender_id INT,
    body TEXT,
    creation_time TIMESTAMP,
    FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id),
    FOREIGN KEY (sender_id) REFERENCES users(user_id)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100),
    category_description TEXT
);

CREATE TABLE items (
    item_id INT PRIMARY KEY,
    category_id INT,
    owner_id INT,
    item_image VARCHAR(255),
    title VARCHAR(50),
    item_description TEXT,
    price DECIMAL(6,2),
    status enum ('available' , 'unavailable'),
    creation_time TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (owner_id) REFERENCES users(user_id)
);

CREATE TABLE cart (
    cart_id INT PRIMARY KEY,
    item_id INT,
    user_id INT,
    quantity INT,
    FOREIGN KEY (item_id) REFERENCES items(item_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE booking (
    booking_id INT PRIMARY KEY,
    item_id INT,
    user_id INT,
    rental_date DATE,
    rental_time TIME,
    status VARCHAR(50),
    card_number VARCHAR(20),
    booking_time TIMESTAMP,
    FOREIGN KEY (item_id) REFERENCES items(item_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE tracking_details (
    tracking_id INT PRIMARY KEY,
    booking_id INT,
    name VARCHAR(100),
    phone VARCHAR(12),
    email VARCHAR(55),
    address TEXT,
    city VARCHAR(100),
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);

CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    item_id INT,
    user_name VARCHAR(100),
    comment TEXT,
    rating INT,
    date_posted TIMESTAMP,
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);