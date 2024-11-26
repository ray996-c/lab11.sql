-- Display all rows from the courses table
-- This query retrieves every column and row in the courses table.
SELECT * FROM courses;

-- Display the first 10 rows from the assignments table
-- LIMIT is used to restrict the output to the first 10 rows.
SELECT * FROM assignments
LIMIT 10;

-- Count the total number of courses in the courses table
-- COUNT(*) calculates the number of rows in the table.
SELECT count(*) FROM courses;

-- Find the earliest assignment due date in the assignments table
-- MIN() returns the smallest date value.
SELECT min(due_date) AS earliest_due_date
FROM assignments;

-- Display all courses where the course name starts with "Intro"
-- LIKE is used to match patterns in the course_name column.
SELECT *
FROM courses
WHERE course_name LIKE 'Intro%';

-- Display all assignments that are not completed
-- Filter the rows where the status is not 'Completed' and sort them by due_date.
SELECT *
FROM assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Display assignments for courses starting with 'COMM'
-- Filter assignments that are not completed, have course_id starting with 'COMM',
-- and are due before 2024-12-31, ordered by due_date.
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

-- Display the title and due_date of assignments for the course COMP1234
-- Filter assignments where course_id equals 'COMP1234'.
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- Find the earliest assignment due date in the assignments table
-- MIN() is used to retrieve the smallest date value.
SELECT min(due_date) AS earliest_due_date
FROM assignments;

-- Find the latest assignment due date in the assignments table
-- MAX() is used to retrieve the largest date value.
SELECT max(due_date) AS latest_due_date
FROM assignments;

-- Find the title and course_id of assignments due on 2024-10-08
-- Filter assignments where due_date equals '2024-10-08'.
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- Display the title and due_date of assignments due in October 2024
-- Use LIKE to filter dates starting with '2024-10' (October 2024).
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- Find the most recent due_date of assignments with a status of "Completed"
-- MAX() is used to get the most recent due_date for completed assignments.
SELECT max(due_date) AS most_recent_completed_due_date
FROM assignments
WHERE status = 'Completed';

-- Count the total number of assignments with a status of "Not Started"
-- COUNT(*) is used to calculate the number of rows where status equals 'Not Started'.
SELECT count(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';

-- Find the course_id and course_name of courses that have lab sessions on Tuesday
-- LIKE is used to filter lab_days that start with 'Tue'.
SELECT course_id, course_name
FROM courses
WHERE lab_days LIKE 'Tue%';

-- Join the Courses and Assignments tables on course_id
-- This query matches rows from both tables where course_id is the same
-- and displays relevant columns from each table.
SELECT c.course_id, c.course_name, a.title, a.due_date, a.status
FROM courses c
JOIN assignments a 
  ON c.course_id = a.course_id;
