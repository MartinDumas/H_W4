WITH ProjectDuration AS (
    SELECT ID AS PROJECT_ID,
           EXTRACT(YEAR FROM FINISH_DATE) * 12 + EXTRACT(MONTH FROM FINISH_DATE) -
           (EXTRACT(YEAR FROM START_DATE) * 12 + EXTRACT(MONTH FROM START_DATE)) AS month_count
    FROM project
),
     WorkerSalaries AS (
         SELECT pw.PROJECT_ID,
                SUM(w.SALARY) AS total_salary
         FROM project_worker pw
                  JOIN worker w ON pw.WORKER_ID = w.ID
         GROUP BY pw.PROJECT_ID
     ),
     ProjectPrices AS (
         SELECT pd.PROJECT_ID,
                pd.month_count,
                ws.total_salary,
                pd.month_count * ws.total_salary AS project_price
         FROM ProjectDuration pd
                  JOIN WorkerSalaries ws ON pd.PROJECT_ID = ws.PROJECT_ID
     )
SELECT p.ID AS PROJECT_ID,
       p.CLIENT_ID,
       pd.month_count AS DURATION_MONTHS,
       ws.total_salary AS TOTAL_SALARY,
       pp.project_price AS PROJECT_PRICE
FROM ProjectPrices pp
         JOIN project p ON pp.PROJECT_ID = p.ID
         JOIN ProjectDuration pd ON pp.PROJECT_ID = pd.PROJECT_ID
         JOIN WorkerSalaries ws ON pp.PROJECT_ID = ws.PROJECT_ID;
