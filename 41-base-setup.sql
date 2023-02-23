-- CREATE DATABASE relations;

-- CREATE TABLE users (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     -- id SERIAL PRIMARY KEY,
--     first_name VARCHAR(250) NOT NULL,
--     last_name VARCHAR(250) NOT NULL,
--     email VARCHAR(250) NOT NULL,
--     address_id INT NOT NULL
-- );

-- CREATE TABLE addresses (
--    id INT PRIMARY KEY AUTO_INCREMENT,
-- --    id SERIAL PRIMARY KEY,
--    street VARCHAR(300) NOT NULL,
--    house_number VARCHAR(50) NOT NULL,
--    city_id INT NOT NULL
-- );

-- CREATE TABLE cities (
--    id INT PRIMARY KEY AUTO_INCREMENT,
-- --    id SERIAL PRIMARY KEY,
--    name VARCHAR(300) NOT NULL
-- );

-- INSERT INTO cities (name)
-- VALUES ('Bontebok'), ('Vlieland'), ('Groningen');

-- INSERT INTO addresses (street, house_number, city_id)
-- VALUES ('Eerste glop', '14', 2), 
-- ('Eerste Compagnonsweg', '15', 1), 
-- ('Zernikepark', '12', 3), 
-- ('Eerste glop', '8', 2);

-- INSERT INTO users (
--     first_name,
--     last_name,
--     email,
--     address_id
-- )
-- VALUES (
--     'Jo',
--     'Haasbroek',
--     'jo@jo.nl',
--     3
-- ),
--  (
--     'Ann',
--     'Kort',
--     'an@kort.nl',
--     1
-- ),
--  (
--     'Toes',
--     'Renier',
--     'toesrenier.nl',
--     4
-- );