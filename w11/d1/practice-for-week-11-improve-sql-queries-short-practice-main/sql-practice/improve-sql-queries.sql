----------
-- Step 0 - Create a Query 
----------
-- Query: Select all cats that have a toy with an id of 5

    -- Your code here

-- Paste your results below (as a comment):

EXPLAIN QUERY PLAN
SELECT * FROM cats
JOIN cat_toys ON (cat_toys.cat_id = cats.id)
WHERE cat_toys.toy_id = 5;

-- Benchmark timing: .003sec

----------
-- Step 1 - Analyze the Query
----------
-- Query:

    -- Your code here

-- Paste your results below (as a comment):
-- QUERY PLAN
--SCAN TABLE cat_toys
--SEARCH TABLE cats USING INTEGER PRIMARY KEY (rowid=?)
-- Run Time: real 0.003 user 0.000177 sys 0.000593

-- What do your results mean?

    -- Was this a SEARCH or SCAN?


    -- What does that mean?




----------
-- Step 2 - Time the Query to get a baseline
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here

-- Paste your results below (as a comment):




----------
-- Step 3 - Add an index and analyze how the query is executing
----------

-- Create index:

    -- Your code here
    create index idx_cat_toys_toy_id on cat_toys(toy_id);

-- Analyze Query:
    -- Your code here

-- Paste your results below (as a comment):


-- Analyze Results:

    -- Is the new index being applied in this query?


-- QUERY PLAN
--SEARCH TABLE cat_toys USING INDEX idx_cat_toys_toy_id (toy_id=?)
--SEARCH TABLE cats USING INTEGER PRIMARY KEY (rowid=?)
-- Run Time: real 0.000 user 0.000137 sys 0.000022

----------
-- Step 4 - Re-time the query using the new index
----------
-- Query (to be used in the sqlite CLI):

    -- Your code here

-- Paste your results below (as a comment):


-- Analyze Results:
    -- Are you still getting the correct query results?


    -- Did the execution time improve (decrease)?


    -- Do you see any other opportunities for making this query more efficient?


---------------------------------
-- Notes From Further Exploration
---------------------------------