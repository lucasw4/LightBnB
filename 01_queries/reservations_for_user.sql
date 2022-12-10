SELECT reservations.id, properties.title, start_date, cost_per_night, avg(rating)
FROM properties 
JOIN reservations ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
JOIN users ON reservations.guest_id = users.id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.id
ORDER BY start_date ASC
LIMIT 10;