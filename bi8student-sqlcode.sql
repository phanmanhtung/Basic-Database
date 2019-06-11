-- list all attributes of students were born in 1999

SELECT * FROM student
WHERE YEAR(birth_date) = 1999

-- list all students come from Hanoi

SELECT CONCAT(last_name, ' ', first_name) AS full_name
FROM student
WHERE city = 'Ha Noi'

-- list full name and test score in test:Mobile Wireless, order by score descendingly

SELECT date, type, name AS 'subject_name', CONCAT(last_name, ' ', first_name) AS full_name, score
FROM student A INNER JOIN score B ON A.student_id=B.student_id
INNER JOIN test C ON B.test_id=C.test_id
INNER JOIN class D ON C.class_id=D.class_id
WHERE C.test_id = 3
ORDER BY score DESC

-- list all tests and calculations on scores

SELECT type, name AS 'subject_name', AVG(score), MIN(score), MAX(score), MAX(score)-MIN(score) AS 'range'
FROM score A INNER JOIN test B ON A.test_id=B.test_id
INNER JOIN class C ON B.class_id=C.class_id
GROUP BY B.test_id

-- list absent students on certain tests

SELECT date, type, name AS 'subject_name', CONCAT(last_name, ' ', first_name) AS 'absent_students'
FROM absence A INNER JOIN student B ON A.student_id=B.student_id
INNER JOIN test C ON A.test_id=C.test_id
INNER JOIN class D ON C.class_id=D.class_id

-- count number of class

SELECT COUNT(*) FROM class

-- count number of absences for tests

SELECT CONCAT(last_name, ' ', first_name) AS 'full_name', COUNT(B.student_id) AS "Number_of_absence"
FROM student A LEFT OUTER JOIN absence B ON A.student_id=B.student_id
GROUP BY last_name, first_name

-- count how many people absent for each individual test

SELECT date, type, name AS 'subject name', COUNT(C.test_id) AS 'number of absences'
FROM class A INNER JOIN test B ON A.class_id=B.class_id
INNER JOIN absence C ON B.test_id=C.test_id
GROUP BY C.test_id

-- count number of tests students have already taken

SELECT COUNT(*) FROM test

-- Illustrate the performance of Le Nhu Chu Hiep

SELECT type, name AS 'subject name', score
FROM student A INNER JOIN score B ON A.student_id=B.student_id
INNER JOIN test C ON B.test_id=C.test_id
INNER JOIN class D ON C.class_id=D.class_id
WHERE first_name = 'Chu Hiep'
