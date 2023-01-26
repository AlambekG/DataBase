
/*--a) Identify all Stakeholders who have provided at least two comments or suggestions.*/

SELECT stakeholder_id
FROM CommentSuggestion 
GROUP BY stakeholder_id 
HAVING COUNT(*) >= 2;

/*--b) Identify Undergraduate students who take over 15 credits and conduct experiments in three different labs. */

select Y.student_id 
from (select student_id from Take_course as T, Course as C where T.course_id = C.course_id Group by student_id Having SUM(credit) > 15) as X , (select student_id from ConductExperiment as C group by student_id Having count(*)=3) as Y 
where X.student_id = Y.student_id;

/*--c) Find all the graduate students who take research labs of the CS department. */

select student_id 
from Assigned_to as X 
where X.department_name='CS';

/*--d) List all the Equipment belonging to a particular Lab.  (Change lab_Name and department_name as needed.)*/

select lab_Name , department_name , equipment_id, model_no  
from Equipment AS E 
where lab_Name = 'lab1' AND department_name = 'BIO';

/*--e) Find all Professors who address at least 5 different research topics.*/

select professor_id 
from Graduate as G 
Group by professor_id 
Having Count(DISTINCT research_Topic )>=5;