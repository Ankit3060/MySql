CREATE DATABASE Exp_7;
use Exp_7;
CREATE TABLE Employee (
Emp_id int(25),
Emp_Name varchar(20),
dept_id int(20),
dept_name varchar(30),
salary int(25),
DOB varchar(20),
DOJ varchar(20),
Address varchar(30),
ph_no int(15)
);
INSERT INTO Employee values
(15,'ankit',265,'AIML',10000,'29-jan-2002','1-sept-2022','NOIDA',56562545),
(20,'Rajesh',156,'IS',5000,'10-sept-2000','31-aug-2022','PATNA',51365656),
(56,'Abhi',245,'IT',20000,'08-dec-2007','3-sept-2022','VSKP',6561641),
(55,'hari',256,'IT',30000,'7-dec-2003','3-sept-2022','AMRITSAR',64542641),
(52,'rohit',247,'IS',40000,'08-dec-2002','5-sept-2022','DELHI',65648311),
(62,'Gaurang',248,'AIML',50000,'7-Feb-2003','3-Aug-2022','DELHI',9452631),
(58,'Shreyash',255,'AIML',60000,'17-July-2002','3-sept-2022','NOIDA',42681641),
(63,'Utkarsh',235,'IT',70000,'17-Sept-2002','2-sept-2022','PATNA',9898641),
(61,'Aditya',225,'IT',80000,'1-Feb-2002','2-sept-2022','DELHI',8641241),
(69,'Naman',235,'IT',90000,'1-Mar-2000','4-sept-2022','VSKP',26594216),
(67,'Basim',269,'AIML',100000,'20-Feb-2002','1-sept-2022','AMRITSAR',8641241);
SELECT * from Employee;
SELECT COUNT(*) FROM Employee;
SELECT COUNT(Emp_Name) FROM Employee;
SELECT MAX(Salary) AS "Max Salary" FROM Employee;
SELECT MIN(Salary) AS "Min Salary"  FROM Employee;
SELECT SUM(Salary) AS "Sum Salary"  FROM Employee;
SELECT AVG(Salary) AS "Avg Salary" FROM Employee;
SELECT Salary, Emp_Name FROM Employee GROUP BY Address;
SELECT MAX(Salary) , Emp_Name FROM Employee HAVING MAX(Salary)>30000;
SELECT Emp_Name  from Employee ORDER BY Salary;
SELECT Emp_Name,GROUP_CONCAT(Salary) FROM Employee GROUP BY Emp_Name;
SELECT Salary , Address,GROUP_CONCAT(Emp_Name) AS "Employee" FROM employee group by Emp_id;