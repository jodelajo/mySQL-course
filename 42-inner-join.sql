-- SELECT u.id, first_name, last_name, street, house_number, city_id
-- FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id = a.id;

-- dubble inner join

-- SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
-- FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id = a.id
-- INNER JOIN cities AS c ON a.city_id = c.id;



-- join with filter

-- SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
-- FROM users AS u
-- INNER JOIN addresses AS a ON u.address_id = a.id
-- INNER JOIN cities AS c ON a.city_id = c.id
-- WHERE c.name = 'Vlieland' OR c.name = 'Groningen';



-- join with filter and sort

SELECT u.id, first_name, last_name, street, house_number, c.name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id
WHERE c.name = 'Vlieland' OR c.name = 'Groningen'
ORDER BY u.id DESC;

