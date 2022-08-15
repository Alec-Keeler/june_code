-- Step 1
-- SELECT COUNT(*) AS count FROM cats;

-- Step 2
SELECT MIN(birth_year) AS oldest_meow, name
FROM cats;

-- SELECT
-- name AS oldest_cat,
-- birth_year AS year
-- FROM cats
-- WHERE birth_year IN (
--     SELECT MIN(birth_year)
--     FROM cats);

SELECT MAX(birth_year) AS youngest_meow, name
FROM cats;