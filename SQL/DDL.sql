CREATE DATABASE college;
use college;
CREATE TABLE department(
	dept_code int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL
);

CREATE TABLE student(
	id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(255) NOT NULL,
    password varchar(60) NOT NULL,
    ssn varchar(20) NOT NULL,
    contact varchar(15) NOT NULL,
    birthdate date NOT NULL,
    gender varchar(10),
    cgpa float,
    image varchar(255) NOT NULL,
    department int NOT NULL
);

CREATE TABLE professor(
	ssn varchar(20) PRIMARY KEY,
    name varchar(255) NOT NULL,
    password varchar(60) NOT NULL,
    contact varchar(15) NOT NULL,
    gender ENUM('male', 'female') NOT null,
    department int NOT NULL

);

CREATE TABLE course(
	course_code varchar(10) PRIMARY KEY,
    name varchar(255) NOT NULL,
    decription text,
    credit_hours int NOT null,
    `level` int NOT null
);

CREATE TABLE course_prerequisites(
	course_code varchar(10) NOT NULL,
    prerequisite_code varchar(10) NOT NULL,
    PRIMARY KEY(course_code, prerequisite_code)
);

CREATE TABLE dept_course(
	course_code varchar(10),
    dept_code int,
    PRIMARY KEY(course_code, dept_code)
);

CREATE TABLE semester_course(
	id int PRIMARY KEY AUTO_INCREMENT,
    semester ENUM('fall', 'spring', 'summer') NOT null,
    `year` varchar(4),
    course_code varchar(10)
);

CREATE TABLE professor_semester_course(
	professor_ssn varchar(20),
    semester_course_id int,
    PRIMARY KEY(professor_ssn, semester_course_id)
);

CREATE TABLE enrollment(
	grade int,
    semester_course_id varchar(20),
    student_id int,
    PRIMARY KEY(grade, semester_course_id, student_id)
);

-- add forigen keys
alter table student
add FOREIGN KEY(department) REFERENCES department(dept_code);

alter table professor
add FOREIGN KEY(department) REFERENCES department(dept_code);

alter table professor_semester_course
add FOREIGN KEY(professor_ssn) REFERENCES professor(ssn);

alter table professor_semester_course
add FOREIGN KEY(semester_course_id) REFERENCES semester_course(id);

alter table course_prerequisites
add FOREIGN KEY(course_code) REFERENCES course(course_code);

alter table course_prerequisites
add FOREIGN KEY(prerequisite_code) REFERENCES course(course_code);

alter table semester_course
add FOREIGN KEY(course_code) REFERENCES course(course_code);

alter table enrollment
add FOREIGN KEY(semester_course_id) REFERENCES semester_course(course_code);

alter table enrollment
add FOREIGN KEY(student_id) REFERENCES student(id);

alter table dept_course
add FOREIGN KEY(course_code) REFERENCES course(course_code);

alter table dept_course
add FOREIGN KEY(dept_code) REFERENCES department(dept_code);
 


-- the longest phone number has 13 digits, so 15 are more than enough
-- dept_code will be only integer of maximum two digits
-- course code will be a string. e.g. ENGJ702
-- on the backend side, we need to ensure that the credit hour for the course is in the range 1 to 5

-- we assume that a semester course can be taught be multiple professors, so we created the professor_course table. Hence the "professor_ssn" attribute in the semester_course table in redundant and has to be removed from the mapping.

-- the enrollment table must reference a "semester course" not a "course"