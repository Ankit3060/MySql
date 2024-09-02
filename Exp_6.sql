CREATE DATABASE EXP_6;
USE EXP_6;
CREATE TABLE Empl (
Emp_id int(25) primary key,
Emp_Name varchar(20),
Dept_id int(20) unique,
Dept_Name varchar(30),
Salary int(25) not null,
DOB varchar(20),
DOJ varchar(20),
Address varchar(30),
Ph_no int(15)
);
CREATE table Dept1 (
Dept_id int primary key,
Emp_id int(25) unique,
Dept_Name varchar (20),
Salary int not null,
Dept_Loc varchar(20) unique
);
INSERT INTO Empl values
(15,'ankit',265,'AIML',100000,'29-jan-2002','1-sept-2022','noida',56562545),
(20,'Rajesh',156,'IS',105000,'10-sept-2000','31-aug-2022','patna',51365656),
(56,'Abhi',245,'IT',100000,'08-dec-2007','3-sept-2022','VSKP',6561641),
(55,'hari',256,'IT',103000,'7-dec-2003','3-sept-2022','AMRITSAR',64542641),
(52,'rohit',247,'IS',100000,'08-dec-2002','5-sept-2022','DELHI',65648311);
INSERT INTO Dept1 VALUES
(265,15,'AIML',100000,'B1'),
(156,20,'IS',105000,'B2'),
(245,56,'IT',100000,'B3'),
(256,55,'IT',103000,'D1'),
(247,52,'IS',100000,'D2');
SELECT Empl.Emp_Name, Dept1.Dept_id FROM Empl CROSS JOIN Dept1;
Select * from Empl inner join Dept1;
Select * from Empl CROSS join Dept1;
SELECT * FROM Empl INNER JOIN Dept1
on Empl.Emp_id=Dept1.Dept_id;
SELECT Empl.Emp_id, Dept1.Dept_id
FROM Empl
LEFT JOIN Dept1 ON Empl.Emp_id = Dept1.Emp_id
ORDER BY Empl.Emp_Name;

SELECT Dept1.Dept_id, Empl.Emp_Name
FROM Dept1
RIGHT JOIN Empl ON Dept1.Emp_id = Empl.Emp_id
ORDER BY Dept1.Dept_id;
SELECT Empl.Emp_Name, Dept1.Dept_id
FROM Empl FULL OUTER JOIN Dept1 ON Empl.Emp_id=Dept1.Emp_id
ORDER BY Empl.Emp_name;
SELECT Emp_id,Dept_id,Emp_Name FROM Empl INNER JOIN Dept1 
ON Empl.Emp.id=Dept1.Emp_id;
Select * FROM Empl LEFT JOIN Dept1;
Select * from Empl right join Dept1; 
Select Empl union Dept1;
Select Emp.emp_name,Dept.dept_id from Emp full outer join Dept on Emp.dept_id = Dept.dept_id;
