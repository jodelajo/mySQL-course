-- CREATE TABLE conversations (
--     user_name VARCHAR(200),
--     employer_name VARCHAR(250),
--     message TEXT,
--     date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE employers(
--     company_name VARCHAR(250),
--     company_address VARCHAR(300),
--     -- yearly_revenue FLOAT
--     yearly_revenue NUMERIC(5,2),
--     is_hiring BOOLEAN DEFAULT FALSE
-- );



-- postgres
-- ALTER TABLE conversations
-- ALTER COLUMN date_sent SET DEFAULT TIMESTAMP;
-- ALTER TABLE employers
-- ALTER COLUMN is_hiring SET DEFAULT FALSE;

-- ALTER TABLE users
-- ALTER COLUMN full_name SET NOT NULL,
-- ALTER COLUMN current_status SET NOT NULL;



-- mysql
-- ALTER TABLE conversations
-- MODIFY date_sent TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- ALTER TABLE employers
-- MODIFY COLUMN is_hiring BOOLEAN NOT NULL DEFAULT FALSE;

ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(250) NOT NULL,
MODIFY COLUMN current_status  ENUM('employed', 'self-employed', 'un-employed') NOT NULL;