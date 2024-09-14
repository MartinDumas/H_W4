SELECT NAME, project_count
FROM (
         SELECT c.NAME, COUNT(p.ID) AS project_count
         FROM client c
                  JOIN project p ON c.ID = p.CLIENT_ID
         GROUP BY c.ID, c.NAME
     ) AS ClientProjects
WHERE project_count = (
    SELECT MAX(project_count)
    FROM (
             SELECT COUNT(p.ID) AS project_count
             FROM project p
             GROUP BY p.CLIENT_ID
         ) AS MaxProjects
);