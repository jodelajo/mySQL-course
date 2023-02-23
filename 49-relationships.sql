

DROP TABLE intranet_accounts;
DROP TABLE projects;
DROP TABLE employees;
DROP TABLE teams;
DROP TABLE buildings;





-- CREATE TABLE buildings (
--     -- id INT PRIMARY KEY AUTO_INCREMENT,
--     id SERIAL PRIMARY KEY,
--     building_name VARCHAR(100) NOT NULL
-- );

-- CREATE TABLE teams (
--     -- id INT PRIMARY KEY AUTO_INCREMENT,
--     id SERIAL PRIMARY KEY,
--     team_name VARCHAR(100) NOT NULL,
--     building_id INT,
--     FOREIGN KEY (building_id) REFERENCES buildings(id) ON DELETE SET NULL
-- );

-- CREATE TABLE employees (
--     -- id INT PRIMARY KEY AUTO_INCREMENT,
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(300) NOT NULL,
--     last_name VARCHAR(300) NOT NULL,
--     birthdate DATE NOT NULL,
--     -- email VARCHAR(200) REFERENCES intranet_accounts ON DELETE 
--     email VARCHAR(200) UNIQUE NOT NULL,
--     team_id INT,
--     FOREIGN KEY (team_id) REFERENCES teams(id) ON DELETE SET NULL
-- );

-- CREATE TABLE intranet_accounts (
--     -- id INT PRIMARY KEY AUTO_INCREMENT,
--     id SERIAL PRIMARY KEY,
--     email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE,
--     password VARCHAR(200) NOT NULL
-- );


-- CREATE TABLE projects (
--     -- id INT PRIMARY KEY AUTO_INCREMENT,
--     id SERIAL PRIMARY KEY,
--     title VARCHAR(200) NOT NULL,
--     deadline DATE,
--     employee_id INT,
--     FOREIGN KEY (employee_id) REFERENCES employees(id)
-- );

-- -- INSERT INTO employees (first_name, last_name, birthdate, email)
-- -- VALUES ('Jo', 'Haas', '1974-02-24', 'jo@jo.nl');

-- -- INSERT INTO intranet_accounts (email, password)
-- -- VALUES ('jo@jo.nl', 'welkom');