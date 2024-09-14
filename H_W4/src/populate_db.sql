INSERT INTO worker (NAME, BIRTHDAY, LEVEL, SALARY) VALUES
   ('John Doe', '1990-05-15', 'Junior', 1500),
   ('Jane Smith', '1985-07-23', 'Senior', 6500),
   ('Alice Johnson', '1993-02-10', 'Middle', 3000),
   ('Bob Brown', '2000-11-05', 'Trainee', 900),
   ('Charlie Davis', '1980-08-20', 'Senior', 7000),
   ('Diana Evans', '1995-12-30', 'Junior', 1200),
   ('Evan Green', '1991-03-25', 'Middle', 3500),
   ('Fiona Harris', '1998-04-10', 'Trainee', 950),
   ('George Clark', '1975-09-15', 'Senior', 8000),
   ('Helen Lewis', '1988-06-18', 'Middle', 4000);


INSERT INTO client (NAME) VALUES
  ('Client A'),
  ('Client B'),
  ('Client C'),
  ('Client D'),
  ('Client E');


INSERT INTO project (CLIENT_ID, START_DATE, FINISH_DATE) VALUES
     (1, '2023-01-01', '2023-03-01'),
     (2, '2023-02-15', '2023-05-15'),
     (3, '2023-03-01', '2023-06-01'),
     (4, '2023-04-01', '2023-09-01'),
     (5, '2023-05-01', '2023-07-01'),
     (1, '2023-06-01', '2023-08-01'),
     (2, '2023-07-01', '2023-09-01'),
     (3, '2023-08-01', '2023-11-01'),
     (4, '2023-09-01', '2023-12-01'),
     (5, '2023-10-01', '2024-01-01');


INSERT INTO project_worker (PROJECT_ID, WORKER_ID) VALUES
       (1, 1), (1, 2), (1, 3),
       (2, 4), (2, 5),
       (3, 6), (3, 7), (3, 8),
       (4, 9), (4, 10),
       (5, 1), (5, 3), (5, 5),
       (6, 2), (6, 4), (6, 6),
       (7, 8), (7, 9),
       (8, 10), (8, 1), (8, 2),
       (9, 3), (9, 4), (9, 5),
       (10, 6), (10, 7), (10, 8);
