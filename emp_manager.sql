 create database emp;
 use emp;
 create table employee(empid int,fname varchar(20), lname varchar(20));
 insert into employee values
 (100,'Shree','Rout'),
 (101,'Ani','Patnaik'),
 (102,'Shivi','Marwaha'),
 (103,'Sohali','Baisla'),
 (104,'Deep','Padukone'),
 (105,'Sohil','Tanwar');
 select * from employee;
 create table manager(manager_name varchar(20),empid int);
 insert into manager values
 ('Akshay',100),
 ('Akshay',101),
 ('Joe',102),
 ('Anirudh',103),
 ('Joe',104),
 ('Akshiv',105);
 select * from manager;
