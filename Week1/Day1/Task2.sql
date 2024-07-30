create database School_management;
use School_management;
create table students(
student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    date_of_birth DATE
    );
select * from students;

create table courses(
	cousre_id int,
    course_name varchar(20),
    course_description text,
    credits int
    );
alter table students
add column grade varchar(2);

alter table students
modify column phone_number varchar(15);

insert into students(first_name, last_name, email, phone_number, date_of_birth, grade)
values
("Virat" , "Sharma" , "Virat@revature.com" , 9989862708 , '2002-11-01', "A"),
("Vishal" , "More" , "Vishal@revature.com" , 9110552356 , '2000-02-23' , "A"),
("Mrinank" , "Chandana" , "Mrinank@revature.com" , 9765678932 , '2004-09-13' , "A");


insert into courses(cousre_id, course_name, course_description, credits)
values
('1','English', 'Comprehension', 4),
('2','Physics', 'Quantum', 3),
('3','Chemistry', 'Reaction', 4),
('4','Hindi', 'Sangam', 3),
('5','Mathematics', 'Intergration', 2);



SELECT first_name, last_name, email FROM students;

drop table student;

drop database School_management;