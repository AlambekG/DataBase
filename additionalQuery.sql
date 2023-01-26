/* - 1. Find all the students who have taken at least 4 courses and attended at least 3 different labs.*/

SELECT student_id
FROM Student
WHERE student_id IN (
    SELECT student_id
    FROM Take_course
    GROUP BY student_id
    HAVING COUNT(*) >= 4
) AND student_id IN (
    SELECT student_id
    FROM ConductExperiment
    GROUP BY student_id
    HAVING COUNT(*) >= 3
);

/*-- 2. Find the graduate students who is assigned to “lab1” lab in “CS” but did not take “course3” course.*/


SELECT student_id
FROM Graduate
WHERE student_id IN (
    SELECT student_id
    FROM Assigned_to
    WHERE lab_name = 'lab1' AND department_name = 'CS'
) AND student_id NOT IN (
    SELECT student_id
    FROM Take_course
    WHERE course_id IN (
        SELECT course_id
        FROM Course as C
        WHERE C.name = 'course3'
    )
);

/*-- 3. Find the Phone number of graduate students belonging to the rich lab. (Rich Lab: Labs with 5 or more pieces of equipment)*/
 
SELECT phone
FROM Person
WHERE person_id IN (
    SELECT person_id
    From Student
    WHERE student_id IN (
        SELECT student_id
        From Assigned_to AS X
        WHERE student_id IN (
            SELECT student_id
            FROM (SELECT lab_Name , department_name FROM Equipment GROUP BY lab_Name, department_name HAVING COUNT(*) >= 5) AS Y
            WHERE X.lab_name=Y.lab_name AND X.department_name = Y.department_name
        )
    )
);