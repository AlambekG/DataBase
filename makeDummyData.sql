DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyAddress$$
 
CREATE PROCEDURE makeDummyAddress()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 100 DO
        IF i <= 10 THEN
            INSERT INTO Info_Address(address , postal_code)
            VALUES(concat('address',i), i);

        ELSEIF (i <=20 AND i>=11) THEN
            INSERT INTO Info_Address(address , postal_code)
            VALUES(concat('address',i), i);

        ELSEIF (i <=30 AND i>=21) THEN
            INSERT INTO Info_Address(address , postal_code)
            VALUES(concat('address',i), i-20);

        ELSEIF (i <=40 AND i>=31) THEN
            INSERT INTO Info_Address(address , postal_code)
            VALUES(concat('address',i), i-20);

        ELSEIF (i <=50 AND i>=41) THEN
            INSERT INTO Info_Address(address , postal_code)
            VALUES(concat('address',i), i-40);

        ELSEIF (i <=60 AND i>=51) THEN
            INSERT INTO Info_Address(address , postal_code)
            VALUES(concat('address',i), i-40);

        ELSEIF (i <=70 AND i>=61) THEN
            INSERT INTO Info_Address(address , postal_code)
            VALUES(concat('address',i), i-60);

        ELSEIF (i <=80 AND i>=71) THEN
            INSERT INTO Info_Address(address , postal_code)
            VALUES(concat('address',i), i-60);

        ELSEIF (i <=90 AND i>=81) THEN
            INSERT INTO Info_Address(address , postal_code)
            VALUES(concat('address',i), i-80);

        ELSE
            INSERT INTO Info_Address(address , postal_code)
            VALUES(concat('address',i), i-80);

        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyPerson$$
 
CREATE PROCEDURE makeDummyPerson()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 100 DO
        IF i <= 10 THEN
            INSERT INTO Person(person_id , name, address, nation, email, phone)
            VALUES(i+100000,concat('name',i),concat('address',i),'KOREA',concat('email',i),concat('010-','1234-',1000+i));

        ELSEIF (i <=20 AND i>=11) THEN
            INSERT INTO Person(person_id , name, address, nation, email, phone)
            VALUES(i+100000,concat('name',i),concat('address',i),'KOREA',concat('email',i),concat('010-','1234-',1000+i));
            
        ELSEIF (i <=30 AND i>=21) THEN
            INSERT INTO Person(person_id , name, address, nation, email, phone)
            VALUES(i+100000,concat('name',i-20),concat('address',i),'KOREA',concat('email',i),concat('010-','1234-',1000+i));
            

        ELSEIF (i <=40 AND i>=31) THEN
            INSERT INTO Person(person_id , name, address, nation, email, phone)
            VALUES(i+100000,concat('name',i),concat('address',i-10),'USA',concat('email',i),concat('010-','1234-',1000+i));
            

        ELSEIF (i <=50 AND i>=41) THEN
            INSERT INTO Person(person_id , name, address, nation, email, phone)
            VALUES(i+100000,concat('name',i),concat('address',i),'USA',concat('email',i),concat('010-','1234-',1000+i));
            
        ELSEIF (i <=60 AND i>=51) THEN
            INSERT INTO Person(person_id , name, address, nation, email, phone)
            VALUES(i+100000,concat('name',i),concat('address',i),'USA',concat('email',i),concat('010-','1234-',1000+i));
            

        ELSEIF (i <=70 AND i>=61) THEN
            INSERT INTO Person(person_id , name, address, nation, email, phone)
            VALUES(i+100000,concat('name',i),concat('address',i),'GANA',concat('email',i),concat('010-','1234-',1000+i));
            

        ELSEIF (i <=80 AND i>=71) THEN
            INSERT INTO Person(person_id , name, address, nation, email, phone)
            VALUES(i+100000,concat('name',i),concat('address',i),'GANA',concat('email',i),concat('010-','1234-',1000+i));
            
        ELSEIF (i <=90 AND i>=81) THEN
            INSERT INTO Person(person_id , name, address, nation, email, phone)
            VALUES(i+100000,concat('name',i),concat('address',i),'GANA',concat('email',i),concat('010-','1234-',1000+i));
            
        ELSE
            INSERT INTO Person(person_id , name, address, nation, email, phone)
            VALUES(i+100000,concat('name',i),concat('address',i),'JAPAN',concat('email',i),concat('010-','1234-',1000+i));
            
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummySchool$$
 
CREATE PROCEDURE makeDummySchool()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 140 DO
        IF i <= 30  THEN
            INSERT INTO Info_School(person_id , school_name)
            VALUES(100000+i,'school_1');

        ELSEIF (i <=60 AND i>=31) THEN
            INSERT INTO Info_School(person_id , school_name)
            VALUES(100000+i-30,'school_2');
            

        ELSEIF (i <=90 AND i>=61) THEN
            INSERT INTO Info_School(person_id , school_name)
            VALUES(100000+i-30,'school_3');
            

        ELSEIF (i <=100 AND i>=91) THEN  
            INSERT INTO Info_School(person_id , school_name)
            VALUES(100000+i-30,'school_3');
            
        ELSEIF (i <=110 AND i>=101) THEN 
            INSERT INTO Info_School(person_id , school_name)
            VALUES(100000+i-40,'school_1');
            
        ELSE
            INSERT INTO Info_School(person_id , school_name)
            VALUES(100000+i-40,'school_4');
            
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyDepartment$$
 
CREATE PROCEDURE makeDummyDepartment()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 8 DO
        IF i =1  THEN
            INSERT INTO Department(department_name , department_number)
            VALUES('CS',101);

        ELSEIF (i=2) THEN
            INSERT INTO Department(department_name , department_number)
            VALUES('EE',102);
    
        ELSEIF (i=3) THEN
            INSERT INTO Department(department_name , department_number)
            VALUES('IE',103);
           
        ELSEIF (i=4) THEN
            INSERT INTO Department(department_name , department_number)
            VALUES('ME',104);  
       
        ELSEIF (i=5) THEN
            INSERT INTO Department(department_name , department_number)
            VALUES('BIO',105);

        ELSEIF (i=6) THEN
            INSERT INTO Department(department_name , department_number)
            VALUES('ECHE',106);

        ELSEIF (i=7) THEN
            INSERT INTO Department(department_name , department_number)
            VALUES('BME',107);

        ELSE
            INSERT INTO Department(department_name , department_number)
            VALUES('MTH',108);
            
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyProfessor$$
 
CREATE PROCEDURE makeDummyProfessor()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 20 DO
        IF i <= 3  THEN
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'CS','Computer science');

        ELSEIF (i=4) THEN
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'CS','Mathematics');
          
    
        ELSEIF (i=5) THEN
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'CS','Electronic engineering');
              
        ELSEIF (i <=7 AND i>=6) THEN
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'EE','Electronic engineering');
          
        ELSEIF (i=8) THEN
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'EE','Computer science');
          

        ELSEIF (i <=10 AND i>=9) THEN
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'IE','Industrial engineering');
            
           
        ELSEIF (i=11) THEN
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'ME','Mechanical engineering');
        
        ELSEIF (i <=13 AND i>=12) THEN
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'BIO','Biotechnology');

        ELSEIF (i <=16 AND i>=14) THEN
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'ECHE','Chemical engineering');

        ELSEIF (i <=18 AND i>=17) THEN
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'BME','Biotechnology');

        ELSE
            INSERT INTO Professor(professor_id , person_id, department_name, major)
            VALUES(200000+i,100000+i,'MTH','Mathematics');
            
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyStudent$$
 
CREATE PROCEDURE makeDummyStudent()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 50 DO
        IF i <= 20  THEN
            INSERT INTO Student(student_id , person_id, year)
            VALUES(300000+i,100020+i,1);

        ELSEIF (i <=35 AND i>=21) THEN
            INSERT INTO Student(student_id , person_id, year)
            VALUES(300000+i,100020+i,2);
        
        ELSEIF (i <=45 AND i>=36) THEN
            INSERT INTO Student(student_id , person_id, year)
            VALUES(300000+i,100020+i,3);
    
        ELSE
            INSERT INTO Student(student_id , person_id, year)
            VALUES(300000+i,100020+i,4);
            
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyStaff$$
 
CREATE PROCEDURE makeDummyStaff()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 20 DO
        IF i <= 5  THEN
            INSERT INTO Staff(staff_id , person_id, date_hired, position)
            VALUES(400000+i,100070+i,'2022-10-01','position1');

        ELSEIF (i <=10 AND i>=6) THEN
            INSERT INTO Staff(staff_id , person_id, date_hired, position)
            VALUES(400000+i,100070+i,'2020-05-01','position1');
        
        ELSEIF (i <=15 AND i>=11) THEN
            INSERT INTO Staff(staff_id , person_id, date_hired, position)
            VALUES(400000+i,100070+i,'2020-10-01','position2');
    
        ELSE
            INSERT INTO Staff(staff_id , person_id, date_hired, position)
            VALUES(400000+i,100070+i,'2021-07-01','position3');
            
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyStakeholder$$
 
CREATE PROCEDURE makeDummyStakeholder()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 10 DO
        IF i <= 5  THEN
            INSERT INTO Stakeholder(stakeholder_id , person_id, domain)
            VALUES(500000+i,100090+i,'domain1');

        ELSEIF (i <=8 AND i>=6) THEN
            INSERT INTO Stakeholder(stakeholder_id , person_id, domain)
            VALUES(500000+i,100090+i,'domain2');
    
        ELSE
            INSERT INTO Stakeholder(stakeholder_id , person_id, domain)
            VALUES(500000+i,100090+i,'domain3');
                
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyGraduate$$
 
CREATE PROCEDURE makeDummyGraduate()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 20 DO
        IF i <= 3  THEN
            INSERT INTO Graduate(student_id , research_Topic, professor_id)
            VALUES(300000+i,'research_topic1',200001);

        ELSEIF (i <=5 AND i>=4) THEN
            INSERT INTO Graduate(student_id , research_Topic, professor_id)
            VALUES(300000+i,'research_topic2',200002);

        ELSEIF (i <=10 AND i>=6) THEN
            INSERT INTO Graduate(student_id , research_Topic, professor_id)
            VALUES(300000+i,'research_topic3',200003);

        ELSEIF (i <=12 AND i>=11) THEN
            INSERT INTO Graduate(student_id , research_Topic, professor_id)
            VALUES(300010+i,'research_topic4',200001);

        ELSEIF (i <=15 AND i>=13) THEN
            INSERT INTO Graduate(student_id , research_Topic, professor_id)
            VALUES(300010+i,'research_topic5',200001);

        ELSEIF (i <=19 AND i>=16) THEN
            INSERT INTO Graduate(student_id , research_Topic, professor_id)
            VALUES(300020+i,'research_topic6',200001);

        ELSE
            INSERT INTO Graduate(student_id , research_Topic, professor_id)
            VALUES(300046,'research_topic7',200001);
                
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyUndergraduate$$
 
CREATE PROCEDURE makeDummyUndergraduate()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 30 DO
        IF i <= 10  THEN
            INSERT INTO Undergraduate(student_id)
            VALUES(300010+i);

        ELSEIF (i <=20 AND i>=11) THEN
            INSERT INTO Undergraduate(student_id)
            VALUES(300015+i);
            
        ELSEIF (i <=26 AND i>=21) THEN
            INSERT INTO Undergraduate(student_id)
            VALUES(300019+i);

        ELSE
            INSERT INTO Undergraduate(student_id)
            VALUES(300020+i);
                
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyLaboratory$$
 
CREATE PROCEDURE makeDummyLaboratory()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 30 DO
        IF i <= 5  THEN
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i),'CS',10+i*2,concat('location',i));

        ELSEIF (i <=8 AND i>=6) THEN
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i-5),'EE',10+(i-5)*2,concat('location',i));
            
            
        ELSEIF (i <=10 AND i>=9) THEN
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i-8),'IE',10+(i-8)*2,concat('location',i));
            
        
        ELSEIF (i <=11 AND i>=11) THEN
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i-10),'ME',10+(i-10)*2,concat('location',i));

        ELSEIF (i <=13 AND i>=12) THEN
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i-11),'BIO',10+(i-11)*2,concat('location',i));

        ELSEIF (i <=16 AND i>=14) THEN
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i-13),'ECHE',10+(i-13)*2,concat('location',i));

        ELSEIF (i <=18 AND i>=17) THEN
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i-16),'BME',10+(i-16)*2,concat('location',i));

        ELSEIF (i <=20 AND i>=19) THEN
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i-18),'MTH',10+(i-18)*2,concat('location',i));
        
        ELSEIF (i <=23 AND i>=21) THEN
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i-10),'BIO',10+(i-20)*2,concat('location',i));

        ELSEIF (i <=27 AND i>=24) THEN
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i-13),'ECHE',10+(i-23)*2,concat('location',i));

        ELSE
            INSERT INTO Laboratory(lab_name, department_name, capacity, location)
            VALUES(concat('lab',i-17),'BME',10+(i-23)*2,concat('location',i));
                
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyTechnical_staff$$
 
CREATE PROCEDURE makeDummyTechnical_staff()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 10 DO
        IF i = 1  THEN
            INSERT INTO Technical_staff(staff_id, lab_Name, department_name)
            VALUES(400000+i,'lab1','CS');

        ELSEIF i=2 THEN
            INSERT INTO Technical_staff(staff_id, lab_Name, department_name)
            VALUES(400000+i,'lab1','EE');

        ELSEIF i=3 THEN
            INSERT INTO Technical_staff(staff_id, lab_Name, department_name)
            VALUES(400000+i,'lab1','IE');

        ELSEIF i=4 THEN
            INSERT INTO Technical_staff(staff_id, lab_Name, department_name)
            VALUES(400000+i,'lab1','ME');

        ELSEIF i=5 THEN
            INSERT INTO Technical_staff(staff_id, lab_Name, department_name)
            VALUES(400000+i,'lab1','BIO');

        ELSEIF i=6 THEN
            INSERT INTO Technical_staff(staff_id, lab_Name, department_name)
            VALUES(400000+i,'lab1','ECHE');

        ELSEIF i=7 THEN
            INSERT INTO Technical_staff(staff_id, lab_Name, department_name)
            VALUES(400000+i,'lab1','BME');

        ELSEIF i=8 THEN
            INSERT INTO Technical_staff(staff_id, lab_Name, department_name)
            VALUES(400000+i,'lab1','MTH');

        ELSEIF i=9 THEN
            INSERT INTO Technical_staff(staff_id, lab_Name, department_name)
            VALUES(400000+i,'lab1','CS');

        ELSE
            INSERT INTO Technical_staff(staff_id, lab_Name, department_name)
            VALUES(400000+i,'lab1','CS');

        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyAdministrative_staff$$
 
CREATE PROCEDURE makeDummyAdministrative_staff()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 10 DO

        INSERT INTO Administrative_staff(staff_id)
        VALUES(400010+i);
        
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyAD_manger$$
 
CREATE PROCEDURE makeDummyAD_manger()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 5 DO

        INSERT INTO AD_manger(staff_id)
        VALUES(400010+i);
        
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyCourse$$
 
CREATE PROCEDURE makeDummyCourse()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 10 DO
        IF i <= 3  THEN
            INSERT INTO Course(course_id, name, credit, date_time,professor_ID)
            VALUES(700000+i,concat('course',i),1,'09:00:00',200004+i);

        ELSEIF (i <=6 AND i>=4) THEN
            INSERT INTO Course(course_id, name, credit, date_time,professor_ID)
            VALUES(700000+i,concat('course',i-3),5,'10:30:00',200003+i);
            
        ELSEIF (i <=9 AND i>=7) THEN
            INSERT INTO Course(course_id, name, credit, date_time,professor_ID)
            VALUES(700000+i,concat('course',i-6),5,'13:00:00',200010+i);
            
        ELSE
            INSERT INTO Course(course_id, name, credit, date_time,professor_ID)
            VALUES(700000+i,concat('course',i-9),5,'16:00:00',200005+i);
            
        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyCommentSuggestion$$
 
CREATE PROCEDURE makeDummyCommentSuggestion()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 20 DO
        IF i <= 10  THEN
            INSERT INTO CommentSuggestion(stakeholder_id,date_time,topic)
            VALUES(500000+i,'2022-01-01 12:00:00',concat('topic',i));

        ELSEIF (i<=15 AND i>=11) THEN
            INSERT INTO CommentSuggestion(stakeholder_id,date_time,topic)
            VALUES(500000+i-10,'2022-01-01 13:00:00',concat('topic',i));
        
        ELSE
            INSERT INTO CommentSuggestion(stakeholder_id,date_time,topic)
            VALUES(500000+i-15,'2022-01-01 14:00:00',concat('topic',i));

        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyTeaching_Lab$$
 
CREATE PROCEDURE makeDummyTeaching_Lab()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 10 DO
        IF i = 1  THEN
            INSERT INTO Teaching_Lab(lab_name,department_name)
            VALUES(concat('lab',i+10),'BIO');

        ELSEIF i = 2 THEN
            INSERT INTO Teaching_Lab(lab_name,department_name)
            VALUES(concat('lab',i+9),'BME');

        ELSEIF i = 3 THEN
            INSERT INTO Teaching_Lab(lab_name,department_name)
            VALUES(concat('lab',i+8),'ECHE');

        ELSEIF i = 4 THEN
            INSERT INTO Teaching_Lab(lab_name,department_name)
            VALUES(concat('lab',i+8),'BIO');

        ELSEIF i = 5 THEN
            INSERT INTO Teaching_Lab(lab_name,department_name)
            VALUES(concat('lab',i+7),'BME');

        ELSEIF i = 6 THEN
            INSERT INTO Teaching_Lab(lab_name,department_name)
            VALUES(concat('lab',i+6),'ECHE');

        ELSEIF i = 7 THEN
            INSERT INTO Teaching_Lab(lab_name,department_name)
            VALUES(concat('lab',i+6),'BIO');

        ELSEIF i = 8 THEN
            INSERT INTO Teaching_Lab(lab_name,department_name)
            VALUES(concat('lab',i+5),'BME');

        ELSEIF i = 9 THEN
            INSERT INTO Teaching_Lab(lab_name,department_name)
            VALUES(concat('lab',i+4),'ECHE');

        ELSE
            INSERT INTO Teaching_Lab(lab_name,department_name)
            VALUES(concat('lab',i+4),'ECHE');


        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyResearch_Lab$$
 
CREATE PROCEDURE makeDummyResearch_Lab()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 20 DO
        IF i <=5  THEN
            INSERT INTO Research_Lab(lab_name,department_name)
            VALUES(concat('lab',i),'CS');

        ELSEIF (i<=8 AND i>=6) THEN
            INSERT INTO Research_Lab(lab_name,department_name)
            VALUES(concat('lab',i-5),'EE');

        ELSEIF (i<=10 AND i>=9) THEN
            INSERT INTO Research_Lab(lab_name,department_name)
            VALUES(concat('lab',i-8),'IE');

        ELSEIF (i<=11 AND i>=11) THEN
            INSERT INTO Research_Lab(lab_name,department_name)
            VALUES(concat('lab',i-10),'ME');

        ELSEIF (i<=13 AND i>=12) THEN
            INSERT INTO Research_Lab(lab_name,department_name)
            VALUES(concat('lab',i-11),'BIO');

        ELSEIF (i<=16 AND i>=14) THEN
            INSERT INTO Research_Lab(lab_name,department_name)
            VALUES(concat('lab',i-13),'ECHE');

        ELSEIF (i<=18 AND i>=17) THEN
            INSERT INTO Research_Lab(lab_name,department_name)
            VALUES(concat('lab',i-16),'BME');

        ELSE
            INSERT INTO Research_Lab(lab_name,department_name)
            VALUES(concat('lab',i-18),'MTH');


        END IF;
            SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummymodel$$
 
CREATE PROCEDURE makeDummymodel()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 5 DO

        INSERT INTO Model(model_no, model_name)
        VALUES(concat('model-no-',i),concat('model-name-',i));
        
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyMajor$$
 
CREATE PROCEDURE makeDummyMajor()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 90 DO
        IF i<= 20 THEN
            INSERT INTO Major(student_id,major_name)
            VALUES(300000+i,concat('major',i));

        ELSEIF (i<=40 AND i>=21) THEN
            INSERT INTO Major(student_id,major_name)
            VALUES(300000+i-20,concat('major',i));

        ELSEIF (i<=60 AND i>=41) THEN
            INSERT INTO Major(student_id,major_name)
            VALUES(300000+i-20,concat('major',i-40));

        ELSEIF (i<=80 AND i>=61) THEN
            INSERT INTO Major(student_id,major_name)
            VALUES(300000+i-40,concat('major',i-40));

        ELSE
            INSERT INTO Major(student_id,major_name)
            VALUES(300000+i-40,concat('major',i-80));

        END IF;
            SET i = i + 1;

    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyMinor$$
 
CREATE PROCEDURE makeDummyMinor()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 90 DO
        IF i<= 20 THEN
            INSERT INTO Minor(student_id,minor_name)
            VALUES(300000+i,concat('minor',i));

        ELSEIF (i<=40 AND i>=21) THEN
            INSERT INTO Minor(student_id,minor_name)
            VALUES(300000+i-20,concat('minor',i));

        ELSEIF (i<=60 AND i>=41) THEN
            INSERT INTO Minor(student_id,minor_name)
            VALUES(300000+i-20,concat('minor',i-40));

        ELSEIF (i<=80 AND i>=61) THEN
            INSERT INTO Minor(student_id,minor_name)
            VALUES(300000+i-40,concat('minor',i-40));

        ELSE
            INSERT INTO Minor(student_id,minor_name)
            VALUES(300000+i-40,concat('minor',i-80));

        END IF;
            SET i = i + 1;

    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyConductExperiment$$
 
CREATE PROCEDURE makeDummyConductExperiment()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 20 DO
        IF i<= 5 THEN
            INSERT INTO ConductExperiment(student_id,lab_name, department_name, attendance_date)
            VALUES(300010+i,'lab11','BIO','2022-11-01');

        ELSEIF (i<=10 AND i>=6) THEN
            INSERT INTO ConductExperiment(student_id,lab_name, department_name, attendance_date)
            VALUES(300005+i,'lab12','ECHE','2022-11-02');
            
        ELSEIF (i<=15 AND i>=11) THEN
            INSERT INTO ConductExperiment(student_id,lab_name, department_name, attendance_date)
            VALUES(300000+i,'lab13','BME','2022-11-03');    

        ELSE
            INSERT INTO ConductExperiment(student_id,lab_name, department_name, attendance_date)
            VALUES(300025+i,'lab14','ECHE','2022-11-04');
        
        END IF;
            SET i = i + 1;

    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyAssigned_to$$
 
CREATE PROCEDURE makeDummyAssigned_to()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 20 DO
        IF i<= 5 THEN
            INSERT INTO Assigned_to(student_id,lab_name, department_name)
            VALUES(300000+i,'lab1','CS');

        ELSEIF (i<=10 AND i>=6) THEN
            INSERT INTO Assigned_to(student_id,lab_name, department_name)
            VALUES(300000+i,'lab2','CS');
           
    
        ELSEIF (i<=15 AND i>=11) THEN
            INSERT INTO Assigned_to(student_id,lab_name, department_name)
            VALUES(300010+i,'lab3','ECHE');

        ELSEIF (i<=19 AND i>=16) THEN
            INSERT INTO Assigned_to(student_id,lab_name, department_name)
            VALUES(300020+i,'lab2','EE');
               
        ELSE
            INSERT INTO Assigned_to(student_id,lab_name, department_name)
            VALUES(300046,'lab1','ME');
            
        
        END IF;
            SET i = i + 1;

    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyHire$$
 
CREATE PROCEDURE makeDummyHire()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 20 DO
        IF i<= 5 THEN
            INSERT INTO Hire(professor_id, ad_manger_id)
            VALUES(200000+i,400011);

        ELSEIF (i<=10 AND i>=6) THEN
            INSERT INTO Hire(professor_id, ad_manger_id)
            VALUES(200000+i-5,400012);
            
        ELSEIF (i<=15 AND i>=11) THEN
            INSERT INTO Hire(professor_id, ad_manger_id)
            VALUES(200000+i,400011);
                   
        ELSE
            INSERT INTO Hire(professor_id, ad_manger_id)
            VALUES(200000+i,400011);
           
        END IF;
            SET i = i + 1;

    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyTake_course$$
 
CREATE PROCEDURE makeDummyTake_course()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 100 DO
        IF i <= 10 THEN
            INSERT INTO Take_course(student_id, course_id)
            VALUES(300000+i,700001);

        ELSEIF (i<=20 AND i>=11) THEN
            INSERT INTO Take_course(student_id, course_id)
            VALUES(300000+i-10,700002);

        ELSEIF (i<=30 AND i>=21) THEN
            INSERT INTO Take_course(student_id, course_id)
            VALUES(300000+i-10,700003);

        ELSEIF (i<=40 AND i>=31) THEN
            INSERT INTO Take_course(student_id, course_id)
            VALUES(300000+i-20,700004);

        ELSEIF (i<=50 AND i>=41) THEN
            INSERT INTO Take_course(student_id, course_id)
            VALUES(300000+i-30,700005);

        ELSEIF (i<=60 AND i>=51) THEN
            INSERT INTO Take_course(student_id, course_id)
            VALUES(300000+i-40,700006);

        ELSEIF (i<=70 AND i>=61) THEN
            INSERT INTO Take_course(student_id, course_id)
            VALUES(300000+i-30,700007);

        ELSEIF (i<=80 AND i>=71) THEN
            INSERT INTO Take_course(student_id, course_id)
            VALUES(300000+i-50,700008);

        ELSEIF (i<=90 AND i>=81) THEN
            INSERT INTO Take_course(student_id, course_id)
            VALUES(300000+i-50,700009);

        ELSE
            INSERT INTO Take_course(student_id, course_id)
            VALUES(300000+i-50,700010);

        END IF;
            SET i = i + 1;

    END WHILE;
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS makeDummyEquipment$$
 
CREATE PROCEDURE makeDummyEquipment()
BEGIN
    DECLARE i INT DEFAULT 1;
        
    WHILE i <= 40 DO
        IF i<= 3 THEN
            INSERT INTO Equipment(lab_name, department_name, equipment_id, model_no, date_purchased)
            VALUES('lab1','BIO',800000+i,concat('model-no-',i),'2009-10-18');

        ELSEIF (i<=6 AND i>=4) THEN
            INSERT INTO Equipment(lab_name, department_name, equipment_id, model_no, date_purchased)
            VALUES('lab11','BIO',800000+i-3,concat('model-no-',i-1),'2007-10-18');

        ELSEIF (i<=20 AND i>=7) THEN
            INSERT INTO Equipment(lab_name, department_name, equipment_id, model_no, date_purchased)
            VALUES('lab2','CS',800000+i-6,concat('model-no-',3),'2005-05-12');

        ELSEIF (i<=25 AND i>=21) THEN
            INSERT INTO Equipment(lab_name, department_name, equipment_id, model_no, date_purchased)
            VALUES('lab3','CS',800000+i-20,concat('model-no-',i-20),'2015-05-05');

        ELSEIF (i<=30 AND i>=26) THEN
            INSERT INTO Equipment(lab_name, department_name, equipment_id, model_no, date_purchased)
            VALUES('lab1','EE',800000+i-25,concat('model-no-',2),'2014-12-25');
           
        ELSEIF (i<=35 AND i>=31) THEN
            INSERT INTO Equipment(lab_name, department_name, equipment_id, model_no, date_purchased)
            VALUES('lab13','BME',800000+i-30,concat('model-no-',i-30),'2022-01-04');
           
        ELSE
            INSERT INTO Equipment(lab_name, department_name, equipment_id, model_no, date_purchased)
            VALUES('lab14','ECHE',800000+i-35,concat('model-no-',1),'2022-11-11');
         
           
        END IF;
            SET i = i + 1;

    END WHILE;
END$$
DELIMITER ;


CALL makeDummyAddress;
CALL makeDummyPerson;
CALL makeDummySchool;
CALL makeDummyDepartment;
CALL makeDummyProfessor;
CALL makeDummyStudent;
CALL makeDummyStaff;
CALL makeDummyStakeholder;
CALL makeDummyGraduate;
CALL makeDummyUndergraduate;
CALL makeDummyLaboratory;
CALL makeDummyTechnical_staff;
CALL makeDummyAdministrative_staff;
CALL makeDummyAD_manger;
CALL makeDummyCourse;
CALL makeDummyCommentSuggestion;
CALL makeDummyTeaching_Lab;
CALL makeDummyResearch_Lab;
CALL makeDummymodel;
CALL makeDummyMajor;
CALL makeDummyMinor;
CALL makeDummyConductExperiment;
CALL makeDummyAssigned_to;
CALL makeDummyHire;
CALL makeDummyTake_course;
CALL makeDummyEquipment;