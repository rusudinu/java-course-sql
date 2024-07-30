-- check if the database contains a table named 'car'
SELECT EXISTS (
    SELECT 1
    FROM information_schema.tables
    WHERE table_name = 'car'
);

-- check if the table contains only
--  (1, 'BMW', 110000);
-- and (3, 'Benz', 120000);

SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM car
            WHERE (id = 1 AND name = 'BMW' AND price = 110000)
               OR (id = 3 AND name = 'Benz' AND price = 120000)
        ) AND NOT EXISTS (
            SELECT 1
            FROM car
            WHERE (id != 1 AND name != 'BMW' AND price != 110000)
               AND (id != 3 AND name != 'Benz' AND price != 120000)
        ) THEN 'The table contains only the specified rows.'
        ELSE 'The table does not contain only the specified rows.'
    END as result;
