-- Check if the 'doll' table contains the specified entries
SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM doll
            WHERE (name = 'Elsa' AND price = 20 AND owner_id = 1)
               OR (name = 'Anna' AND price = 15 AND owner_id = 1)
        ) THEN 'Doll entries exist.'
        ELSE 'Doll entries do not exist.'
    END as doll_check;
