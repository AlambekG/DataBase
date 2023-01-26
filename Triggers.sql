DELIMITER $$
CREATE TRIGGER changeTeachingProf
BEFORE DELETE
ON Professor
FOR EACH ROW

BEGIN 
    DECLARE delete_id BIGINT UNSIGNED;
    SET delete_id = OLD.professor_id;

    UPDATE Course
    SET professor_id = (SELECT P.professor_id FROM Professor AS P WHERE P.professor_id <> delete_id Limit 1)
    where professor_id=delete_id;
END $$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER changeSuperviseProf
BEFORE DELETE
ON Professor
FOR EACH ROW

BEGIN 
    DECLARE delete_id BIGINT UNSIGNED;
    SET delete_id = OLD.professor_id;

    UPDATE Graduate
    SET professor_id = (SELECT P.professor_id FROM Professor AS P WHERE P.professor_id <> delete_id Limit 1)
    where professor_id=delete_id;
END $$

DELIMITER ;


DELIMITER $$
CREATE TRIGGER onlystart1Person_id
AFTER INSERT
ON Person
FOR EACH ROW

BEGIN 
    DECLARE new_person_id BIGINT UNSIGNED;
    DECLARE new_person_id_to_str VARCHAR(30);
    SET new_person_id = NEW.person_id;
    SET new_person_id_to_str = concat(new_person_id);

    IF new_person_id_to_str NOT LIKE '1%' THEN
        DELETE FROM Person WHERE person_id=new_person_id; 
    END IF;
END $$

DELIMITER ;


DELIMITER $$
CREATE TRIGGER onlystart3student_id
AFTER INSERT
ON Student
FOR EACH ROW

BEGIN 
    DECLARE new_id BIGINT UNSIGNED;
    DECLARE new_id_to_str VARCHAR(30);
    SET new_id = NEW.student_id;
    SET new_id_to_str = concat(new_id);

    IF new_id_to_str NOT LIKE '3%' THEN
        DELETE FROM Student WHERE student_id=new_id; 
    END IF;
END $$

DELIMITER ;


DELIMITER $$
CREATE TRIGGER onlystart2prof_id
AFTER INSERT
ON Professor
FOR EACH ROW

BEGIN 
    DECLARE new_id BIGINT UNSIGNED;
    DECLARE new_id_to_str VARCHAR(30);
    SET new_id = NEW.professor_id;
    SET new_id_to_str = concat(new_id);

    IF new_id_to_str NOT LIKE '2%' THEN
        DELETE FROM Professor WHERE professor_id=new_id; 
    END IF;
END $$

DELIMITER ;

DELIMITER $$
CREATE TRIGGER onlystart4staff_id
AFTER INSERT
ON Staff
FOR EACH ROW

BEGIN 
    DECLARE new_id BIGINT UNSIGNED;
    DECLARE new_id_to_str VARCHAR(30);
    SET new_id = NEW.staff_id;
    SET new_id_to_str = concat(new_id);

    IF new_id_to_str NOT LIKE '4%' THEN
        DELETE FROM Staff WHERE staff_id=new_id; 
    END IF;
END $$

DELIMITER ;


DELIMITER $$
CREATE TRIGGER onlystart5stakeholder_id
AFTER INSERT
ON Stakeholder
FOR EACH ROW

BEGIN 
    DECLARE new_id BIGINT UNSIGNED;
    DECLARE new_id_to_str VARCHAR(30);
    SET new_id = NEW.stakeholder_id;
    SET new_id_to_str = concat(new_id);

    IF new_id_to_str NOT LIKE '5%' THEN
        DELETE FROM Stakeholder WHERE stakeholder_id=new_id; 
    END IF;
END $$

DELIMITER ;