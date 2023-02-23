CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    supervisor_id INT REFERENCES employees(id) ON DELETE SET NULL
);

-- query
SELECT *
FROM employees AS e1
INNER JOIN employees AS e2 ON e1.supervisor_id = e2.id;

-- self referencing many-to-many
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL
);

CREATE TABLE users_friends (
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    friend_id INT,
    FOREIGN KEY (friend_id) REFERENCES users(id) ON DELETE CASCADE,
    CHECK (user_id < friend_id),
    PRIMARY KEY (user_id, friend_id)
);