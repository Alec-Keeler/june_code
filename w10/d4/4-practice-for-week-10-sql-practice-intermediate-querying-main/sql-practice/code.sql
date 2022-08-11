-- Query 1
-- SELECT title, num_sold FROM albums WHERE num_sold >= 100000;

--Query 2
-- SELECT * FROM albums WHERE year BETWEEN 2018 AND 2020;

-- Query 3
-- SELECT title, band_id FROM albums
--   WHERE band_id <= 4 AND band_id != 2;

-- SELECT * FROM albums WHERE band_id IN (1, 3, 4);

-- Query 4
-- SELECT * FROM albums WHERE title LIKE 'the%';

-- Query 5
-- SELECT * FROM albums ORDER BY num_sold DESC LIMIT 2;

-- Query 6
-- SELECT * FROM albums ORDER BY num_sold DESC LIMIT 2 OFFSET 2;