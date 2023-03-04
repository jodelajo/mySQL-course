-- SELECT * FROM sales
-- WHERE customer_name != 'Max Schwarz';

SELECT * FROM sales
WHERE date_fullfilled - date_created <= 5;


-- when using timestamps:

-- SELECT * FROM sales
-- WHERE EXTRACT(DAY FROM date_fullfilled - date_created) <= 5;