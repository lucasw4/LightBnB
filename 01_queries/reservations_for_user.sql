SELECT reservations.id as reservation_id, reservations.start_date as reservation_start_date, properties.cost_per_night as cost_per_night, avg(property_reviews.rating) as avg_rating
FROM properties 
JOIN reservations ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
JOIN users ON reservations.guest_id = users.id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.id
ORDER BY start_date ASC;