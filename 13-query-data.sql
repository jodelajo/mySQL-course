-- SELECT s.id, s.type, ps.displayname FROM slides AS s
-- INNER JOIN slidepacks AS ps ON ps.id = s.slidepacks_id;

-- SELECT COUNT(slidepack_id) OVER(PARTITION BY slideshow_name),

-- FROM (
--     SELECT COUNT(s.id) AS amount_slides, 
--     sp.displayname AS slidepack_name, 
--     so.displayname AS slideshow_name,
--     sp.id AS slidepack_id 
--     FROM slidepacks AS sp
--     LEFT JOIN slides AS s ON s.slidepacks_id = sp.id
--     LEFT JOIN slidepacksslideshows AS ss ON ss.slidepack_id = sp.id
--     LEFT JOIN slideshows AS so ON ss.slideshow_id = so.id
--     GROUP BY sp.displayname, so.displayname, sp.id
--     ORDER BY sp.id
--     ) AS slidepack_slideshow_table;


SELECT COUNT(s.id) AS amount_slides, 
sp.displayname AS slidepack_name, 
COUNT(slidepack_id) OVER(PARTITION BY so.id) AS amount_slidepacks,
so.displayname AS slideshow_name
FROM slidepacks AS sp
LEFT JOIN slides AS s ON s.slidepacks_id = sp.id
LEFT JOIN slidepacksslideshows AS ss ON ss.slidepack_id = sp.id
LEFT JOIN slideshows AS so ON ss.slideshow_id = so.id
GROUP BY sp.displayname, so.displayname, sp.id, ss.slidepack_id, so.id
ORDER BY so.displayname;

-- SELECT booking_date
-- FROM bookings
-- GROUP BY booking_date
-- HAVING SUM(amount_billed) = (
--     SELECT MIN(daily_sum)
--     FROM (
--         SELECT booking_date, SUM(amount_billed) AS daily_sum
--         FROM bookings
--         GROUP BY booking_date
--     ) AS daily_table
-- );


-- SELECT booking_date, amount_tipped, amount_billed, SUM(amount_tipped) 
-- OVER(PARTITION BY booking_date ORDER BY amount_billed)
-- FROM bookings;

-- SELECT 
-- COUNT(sp.id) AS amount_slidepacks, 
-- ss.displayname AS ssDisplayname 
-- FROM slideshows AS ss
-- LEFT JOIN slidepacksslideshows AS ssss ON ssss.slidepack_id = ss.id
-- LEFT JOIN slidepacks AS sp ON ssss.slidepack_id = sp.id
-- GROUP BY sp.displayname, ss.displayname;



-- SELECT ss.displayname AS slideshow_displayname, sp.displayname AS slidepack_displayname,
-- COUNT(sp.id) AS amount_slidepacks
-- FROM slideshows AS ss
-- INNER JOIN slidepacksslideshows AS spss ON spss.slideshow_id = ss.id
-- INNER JOIN slidepacks AS sp ON spss.slidepack_id = sp.id
-- GROUP BY ss.displayname, sp.displayname, sp.id;

-- SELECT MIN(daily_sum)
-- FROM (
--     SELECT booking_date, SUM(amount_billed) AS daily_sum
--     FROM bookings
--     GROUP BY booking_date
-- ) AS daily_table;




-- SELECT booking_date, amount_tipped, RANK() 
-- OVER(PARTITION BY booking_date ORDER BY amount_tipped DESC NULLS LAST)
-- FROM bookings;

-- SELECT COUNT(DISTINCT booking_date) FROM bookings;

-- SELECT sp.displayname, sp.title, s.displayname AS slideshow_displayname, slides.type FROM slidepacks AS sp
-- LEFT JOIN slidepacksslideshows AS ss ON ss.slidepack_id = sp.id
-- LEFT JOIN slides AS slides ON sp.id = slides.slidepacks_id
-- LEFT JOIN slideshows AS s ON ss.slideshow_id = s.id;




