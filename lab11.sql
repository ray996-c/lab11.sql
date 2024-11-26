SELECT * FROM assignments;
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';
SELECT min(due_date) AS earliest_due_date
FROM assignments;
SELECT max(due_date) AS latest_due_date
FROM assignments;
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';
SELECT max(due_date) AS most_recent_completed_due_date
FROM assignments
WHERE status = 'Completed';
SELECT * FROM courses;
SELECT * FROM assignments

-- Count the total number of assignments with a status of "Not Started"
SELECT count(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';

-- Join the Courses and Assignments tables on course_id
SELECT c.course_id, c.course_name, a.title, a.due_date, a.status
FROM courses c
JOIN assignments a 
  ON c.course_id = a.course_id;

