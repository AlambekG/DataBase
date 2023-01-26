CREATE TABLE Info_Address(
    address     VARCHAR(100),
    postal_code INT NOT NULL,
    PRIMARY KEY(address)
);
CREATE TABLE Person(
    person_id   BIGINT UNSIGNED,
    name        VARCHAR(50) NOT NULL,
    address     VARCHAR(100),
    nation      VARCHAR(30) NOT NULL,
    email       VARCHAR(50) NOT NULL, 
    phone       VARCHAR(30) ,
    PRIMARY KEY(person_id),
    FOREIGN KEY(address) REFERENCES Info_Address(address) ON UPDATE CASCADE ON DELETE SET NULL
);
CREATE TABLE Info_School(
    person_id   BIGINT UNSIGNED,
    school_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(person_id,school_name),
    FOREIGN KEY(person_id) REFERENCES Person(person_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Department(
    department_name VARCHAR(30),
    department_number   INT NOT NULL,
    PRIMARY KEY(department_name)
);
CREATE TABLE Professor(
    professor_id    BIGINT UNSIGNED,
    person_id       BIGINT UNSIGNED NOT NULL,
    department_name VARCHAR(30),
    major           VARCHAR(30) NOT NULL,
    PRIMARY KEY(professor_id),
    FOREIGN KEY(person_id) REFERENCES Person(person_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(department_name) REFERENCES Department(department_name) ON UPDATE CASCADE ON DELETE SET NULL
);
CREATE TABLE Student(
    student_id    BIGINT UNSIGNED,
    person_id     BIGINT UNSIGNED NOT NULL,
    year          INT NOT NULL,
    PRIMARY KEY(student_id),
    FOREIGN KEY(person_id) REFERENCES Person(person_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Staff(
    staff_id    BIGINT UNSIGNED,
    person_id   BIGINT UNSIGNED NOT NULL,
    date_hired  DATE NOT NULL,
    position    VARCHAR(30) NOT NULL,
    PRIMARY KEY(staff_id),
    FOREIGN KEY(person_id) REFERENCES Person(person_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Stakeholder(
    stakeholder_id    BIGINT UNSIGNED,
    person_id   BIGINT UNSIGNED NOT NULL,
    domain    VARCHAR(30) NOT NULL,
    PRIMARY KEY(stakeholder_id),
    FOREIGN KEY(person_id) REFERENCES Person(person_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Graduate(
    student_id      BIGINT UNSIGNED,
    research_Topic  VARCHAR(100) NOT NULL,
    professor_id    BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY(student_id),
    FOREIGN KEY(professor_id) REFERENCES Professor(professor_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY(student_id) REFERENCES Student(student_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Undergraduate(
    student_id  BIGINT UNSIGNED,
    PRIMARY KEY(student_id),
    FOREIGN KEY(student_id) REFERENCES Student(student_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Laboratory(
    lab_name    VARCHAR(30),
    department_name VARCHAR(30),
    capacity    INT NOT NULL,
    location    VARCHAR(100) NOT NULL,
    PRIMARY KEY(lab_name,department_name),
    FOREIGN KEY(department_name) REFERENCES Department(department_name) ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE Technical_staff(
    staff_id    BIGINT UNSIGNED,
    lab_Name    VARCHAR(30) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    PRIMARY KEY(staff_id),
    FOREIGN KEY(staff_id) REFERENCES Staff(staff_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(lab_name, department_name) REFERENCES Laboratory(lab_name,department_name) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Administrative_staff(
    staff_id    BIGINT UNSIGNED,
    PRIMARY KEY(staff_id),
    FOREIGN KEY(staff_id) REFERENCES Staff(staff_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE AD_manger(
    staff_id BIGINT UNSIGNED,
    PRIMARY KEY(staff_id),
    FOREIGN KEY(staff_id) REFERENCES Administrative_staff(staff_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Course(
    course_id   BIGINT UNSIGNED,
    name       VARCHAR(30) NOT NULL,
    credit      INT NOT NULL,
    date_time   TIME NOT NULL,
    professor_id   BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY(course_id),
    FOREIGN KEY(professor_id) REFERENCES Professor(professor_id) ON UPDATE CASCADE ON DELETE RESTRICT 
);
CREATE TABLE CommentSuggestion(
    stakeholder_id BIGINT UNSIGNED,
    date_time      TIMESTAMP,
    topic          VARCHAR(100),
    PRIMARY KEY(stakeholder_id, date_Time, topic),
    FOREIGN KEY(stakeholder_id) REFERENCES Stakeholder(stakeholder_id) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Teaching_Lab(
    lab_name    VARCHAR(30),
    department_name VARCHAR(30),
    PRIMARY KEY(lab_name,department_name),
    FOREIGN KEY(lab_name,department_name) REFERENCES Laboratory(lab_name,department_name) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Research_Lab(
    lab_name    VARCHAR(30),
    department_name VARCHAR(30),
    PRIMARY KEY(Lab_Name,Department_Name),
    FOREIGN KEY(lab_name,department_name) REFERENCES Laboratory(lab_name,department_name) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Model(
    model_no    VARCHAR(30),
    model_name  VARCHAR(30) NOT NULL,
    PRIMARY KEY(model_no)
);
CREATE TABLE Equipment(
    lab_Name    VARCHAR(30),
    department_name VARCHAR(30),
    equipment_id    BIGINT UNSIGNED,
    model_no    VARCHAR(30) NOT NULL,
    date_purchased  DATE NOT NULL,
    PRIMARY KEY(lab_name,department_name,equipment_id),
    FOREIGN KEY(lab_name,department_name) REFERENCES Laboratory(lab_name,department_name) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(model_no) REFERENCES Model(model_no) ON UPDATE CASCADE ON DELETE CASCADE  
);
CREATE TABLE Major(
    student_id  BIGINT UNSIGNED,
    major_name  VARCHAR(30),
    PRIMARY KEY(student_id, major_name),
    FOREIGN KEY(student_id) REFERENCES Student(student_id) ON UPDATE CASCADE ON DELETE CASCADE 
);
CREATE TABLE Minor(
    student_id  BIGINT UNSIGNED,
    minor_name  VARCHAR(30),
    PRIMARY KEY(student_id, minor_name),
    FOREIGN KEY(student_id) REFERENCES Student(student_id) ON UPDATE CASCADE ON DELETE CASCADE 
);
CREATE TABLE ConductExperiment(
    student_id  BIGINT UNSIGNED,
    lab_name    VARCHAR(30),
    department_name VARCHAR(30),
    attendance_date DATE NOT NULL,
    PRIMARY KEY(student_id,lab_name,department_name),
    FOREIGN KEY(student_id) REFERENCES Undergraduate(student_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(lab_name,department_name) REFERENCES Teaching_Lab(lab_name,department_name) ON UPDATE CASCADE ON DELETE CASCADE  
);
CREATE TABLE Assigned_to(
    student_id  BIGINT UNSIGNED,
    lab_name    VARCHAR(30),
    department_name VARCHAR(30),
    PRIMARY KEY(student_id,lab_name,department_name),
    FOREIGN KEY(student_id) REFERENCES Graduate(student_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(lab_name,department_name) REFERENCES Research_Lab(lab_name,department_name) ON UPDATE CASCADE ON DELETE CASCADE 
);
CREATE TABLE Hire(
    professor_id    BIGINT UNSIGNED,
    ad_manger_id    BIGINT UNSIGNED,
    PRIMARY KEY(professor_id,ad_manger_id),
    FOREIGN KEY(professor_id) REFERENCES Professor(professor_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(ad_manger_id) REFERENCES AD_manger(staff_id)ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Take_course(
    student_id  BIGINT UNSIGNED,
    course_id   BIGINT UNSIGNED,
    PRIMARY KEY(student_id,course_id),
    FOREIGN KEY(student_id) REFERENCES Student(student_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(course_id) REFERENCES Course(course_id) ON UPDATE CASCADE ON DELETE CASCADE
);