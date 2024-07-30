-- Check if the 'owner' table contains the specified entries
SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM owner
            WHERE (name = 'Alice' AND age = 25)
               OR (name = 'Bob' AND age = 30)
        ) THEN 'Owner entries exist.'
        ELSE 'Owner entries do not exist.'
    END as owner_check;


