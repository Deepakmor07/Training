create database revature;
use revature;

create table emp(
id int primary key,
name varchar(50),
age tinyint
);

drop table emp;

create table student(
s_id int primary key,
s_name varchar(50),
s_age tinyint
);
insert into student(s_id,s_name,s_age)value(1,"Ram",21),(2,"Shamam",21);
select*from student;

alter table student add phone_number varchar(30);