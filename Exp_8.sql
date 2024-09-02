CREATE DATABASE Exp_8;
use Exp_8;
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
select * From Employee;
Select Emp_id,Emp_Name,dept_id from Employee where salary=(select salary from Employee where Emp_id=55);
create table Emp_1 (
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
insert into Emp_1(select * from Employee);
select * from Emp_1;
insert into Emp_1(select * from Employee where Emp_id=69);
select * from Emp_1;
Select Emp_id,Emp_Name,salary,dept_id from Employee where salary in (60000,90000);
Select Emp_id,Emp_Name,salary,dept_id from Employee where salary not in (60000,90000);
SELECT Emp_id , salary,dept_id FROM Employee WHERE salary = ANY 
(SELECT salary FROM Emp_1 WHERE Emp_Name= 'Shreyash');
SELECT Emp_id , salary,dept_id FROM Employee WHERE salary = all 
(SELECT salary FROM Emp_1 WHERE Emp_Name= 'ankit');
Select Emp_id,Emp_Name,salary,dept_id from Employee where salary in 
(select salry from Employee where salary=90000);
