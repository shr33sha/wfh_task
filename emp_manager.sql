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

SELECT manager.manager_name, employee.empid, employee.fname, employee.lname
FROM manager
JOIN employee ON manager.empid = employee.empid
ORDER BY manager.manager_name;

SELECT manager_name, COUNT(empid) AS employee_count
FROM manager
WHERE manager_name = 'Akshay'
GROUP BY manager_name;

SELECT manager_name, COUNT(empid) AS employee_count
FROM manager
GROUP BY manager_name;

SELECT manager.manager_name, employee.empid, employee.fname, employee.lname
FROM manager
JOIN employee ON manager.empid = employee.empid
ORDER BY manager.manager_name;

SELECT employee.empid, employee.fname, employee.lname
FROM employee
LEFT JOIN manager ON employee.empid = manager.empid
WHERE manager.empid IS NULL;

DELIMITER $$

CREATE FUNCTION get_full_name(emp_id INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE full_name VARCHAR(50);
    
    SELECT CONCAT(fname, ' ', lname) INTO full_name
    FROM employee
    WHERE empid = emp_id;
    
    RETURN full_name;
END$$

DELIMITER ;
SELECT get_full_name(100);
