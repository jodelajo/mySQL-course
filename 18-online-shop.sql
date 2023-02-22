-- CREATE DATABASE onlineshop;

-- CREATE TABLE  products (
--     product_name VARCHAR(200),
--     product_price DECIMAL(10,2),
--     description TEXT,
--     amount INT,
--     image VARCHAR(400)
-- )

-- INSERT INTO products (product_name, product_price, description, amount, image) 
-- VALUES ('auto', 24279.99, 'Hele mooie auto', 5, 'https://img.freepik.com/premium-vector/blauwe-sedan-cartoon-afbeelding-generiek-auto-transportvoertuig-in-kleur-eigentijdse-auto-modern-persoonlijk-vervoer-stedelijke-auto-op-witte-achtergrond_151150-2409.jpg');

-- INSERT INTO products (product_name, product_price, description, amount, image) 
-- VALUES ('fiets', 279.99, 'Hele mooie fiets', 23, 'https://www.attractie.com/storage/media/54379bbb-5ccd-40c9-9dda-9a721253a4f2/rm020.40--anno-1900-fiets-(normaal)_1615642393.jpg');

-- INSERT INTO products (product_name, product_price, description, amount, image) 
-- VALUES ('brommer', 1499.99, 'Hele mooie brommer', 80, 'https://www.alblasserdamsnieuws.nl/wordpress/wp-content/uploads/2019/06/6b3e5w9-Large.jpg');

-- mysql
ALTER TABLE products
MODIFY product_name NOT NULL,
MODIFY product_price NOT NULL,
MODIFY amount NOT NULL,
ADD CONSTRAINT amount_postive CHECK (amount > 0);
