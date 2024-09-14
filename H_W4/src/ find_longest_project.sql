WITH ProjectDuration AS (
    SELECT ID,
           EXTRACT(YEAR FROM FINISH_DATE) * 12 + EXTRACT(MONTH FROM FINISH_DATE) -
           (EXTRACT(YEAR FROM START_DATE) * 12 + EXTRACT(MONTH FROM START_DATE)) AS month_count
    FROM project
),
     MaxDuration AS (
         SELECT MAX(month_count) AS max_month_count
         FROM ProjectDuration
     )
SELECT ID, month_count
FROM ProjectDuration
WHERE month_count = (SELECT max_month_count FROM MaxDuration);
