CREATE DATABASE Exp_2;
use Exp_2;
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
(15,'ankit',265,'AIML',100000,'29-jan-2002','1-sept-2022','noida',56562545),
(20,'Rajesh',156,'IS',105000,'10-sept-2000','31-aug-2022','patna',51365656),
(56,'Abhi',245,'IT',100000,'08-dec-2007','3-sept-2022','VSKP',6561641),
(55,'hari',256,'IT',103000,'7-dec-2003','3-sept-2022','AMRITSAR',64542641),
(52,'rohit',247,'IS',100000,'08-dec-2002','5-sept-2022','DELHI',65648311),
(62,'Gaurang',248,'AIML',100000,'7-Feb-2003','3-Aug-2022','Bareli',9452631),
(58,'Shreyash',255,'AIML',106000,'17-July-2002','3-sept-2022','Pune',42681641),
(63,'Utkarsh',235,'IT',101000,'17-Sept-2002','2-sept-2022','Mirzapur',9898641),
(61,'Aditya',225,'IT',101000,'1-Feb-2002','2-sept-2022','Ambala',8641241),
(69,'Naman',235,'IT',100000,'1-Mar-2000','4-sept-2022','Agra',26594216),
(67,'Basim',269,'AIML',106000,'20-Feb-2002','1-sept-2022','Gorakhpur',8641241);
SELECT * FROM Employee;
desc Employee;
Alter table Employee add Email_id varchar(40);
desc Employee;
Alter table Employee modify Emp_id int primary key;
desc Employee;
Alter table Employee drop Email_id;
desc Employee;
create table student (
Stud_Name varchar(25),
Stud_id int(25)
);
desc student;
ALTER TABLE student RENAME to std;
desc std;
TRUNCATE table std;