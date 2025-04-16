SELECT rating, COUNT(*) AS count
FROM reviews
GROUP BY rating
ORDER BY rating;
--

-- --------------------------------------------------------

--
SELECT items.title, COUNT(rental.item_id) AS rental_count
FROM items
JOIN rental ON items.id = rental.item_id
GROUP BY items.title
ORDER BY rental_count DESC
LIMIT 10;
--

-- --------------------------------------------------------

--
SELECT users.first_name, users.last_name, COUNT(conversations.sender_id) AS message_count
FROM users
JOIN conversations ON users.id = conversations.sender_id
GROUP BY users.id
ORDER BY message_count DESC
LIMIT 10;
--

-- --------------------------------------------------------

--
SELECT users.first_name, users.last_name, AVG(reviews.rating) AS average_rating
FROM users
JOIN reviews ON users.id = reviews.user_id
GROUP BY users.id
ORDER BY average_rating DESC;
--

-- --------------------------------------------------------

--
SELECT rental.id, users.first_name, users.last_name, items.title, rental.start_time, rental.end_time
FROM rental
JOIN users ON rental.user_id = users.id
JOIN items ON rental.item_id = items.id;
--

-- --------------------------------------------------------

--
SELECT items.title,
CASE
WHEN items.price > 100 THEN 'غالي'
WHEN items.price > 50 THEN 'متوسط'
ELSE 'رخيص'
END AS price_category
FROM items;