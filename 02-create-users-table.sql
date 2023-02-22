-- Postgressql + ENUM => create a custom type first
--CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'un-employed');

CREATE TABLE users (
    full_name VARCHAR(200),
    yearly_salary INT,
   -- current_status ENUM('employed', 'self-employed', 'un-employed') --MYSQL syntax
   current_status employment_status
);