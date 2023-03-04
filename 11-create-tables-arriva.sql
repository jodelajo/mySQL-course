-- CREATE DATABASE arriva;

-- CREATE DATABASE restaurant;

-- DROP DATABASE restaurant;
-- DROP DATABASE arriva;
-- DROP TABLE slides;
-- DROP TABLE slidepacksslideshows;
-- DROP TABLE slidepacks;
-- DROP TABLE slideshows;



-- CREATE TABLE Slideshows (
--     id SERIAL PRIMARY KEY,
--     displayName VARCHAR(255) NOT NULL,
--     slideTime INT
-- );

-- CREATE TABLE SlidePacks (
--     id SERIAL PRIMARY KEY,
--     displayName VARCHAR(255) NOT NULL,
--     title VARCHAR(255),
--     expiresAt TIMESTAMP
-- );

-- CREATE TABLE Slides (
--     id SERIAL PRIMARY KEY,
--     time INT,
--     type VARCHAR(255),
--     position INT,
--     publishedAt TIMESTAMP,
--     expiresAt TIMESTAMP,
--     slidePacks_id INT,
--     FOREIGN KEY (slidePacks_id) REFERENCES SlidePacks(id) ON DELETE SET NULL
-- );

-- CREATE TABLE SlidePacksSlideshows (
--     slidepack_id INT,
--     FOREIGN KEY (slidepack_id) REFERENCES SlidePacks(id) ON DELETE CASCADE,
--     slideshow_id INT,
--     FOREIGN KEY (slideshow_id) REFERENCES Slideshows(id) ON DELETE CASCADE,
--     PRIMARY KEY (slidepack_id, slideshow_id),
--     position INT,
--     UNIQUE (slidepack_id, slideshow_id)
-- );