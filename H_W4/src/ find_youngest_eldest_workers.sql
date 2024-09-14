WITH AgeStats AS (
    SELECT
        NAME,
        BIRTHDAY,
        CASE
            WHEN BIRTHDAY = (SELECT MIN(BIRTHDAY) FROM worker) THEN 'YOUNGEST'
            WHEN BIRTHDAY = (SELECT MAX(BIRTHDAY) FROM worker) THEN 'OLDEST'
            END AS TYPE
    FROM worker
)
SELECT TYPE, NAME, BIRTHDAY
FROM AgeStats
WHERE TYPE IS NOT NULL
ORDER BY TYPE, NAME;
