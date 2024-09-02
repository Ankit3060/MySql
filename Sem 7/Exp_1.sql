CREATE DATABASE Exp_1;
USE Exp_1;
CREATE TABLE Airlines (
Airline_id int primary key,
Airline_Name varchar (30)
);
CREATE TABLE Emps (
Emp_id int(25) primary key,
Emp_Name varchar(20),
Airline_id int(20) unique,
Airline_name varchar(30),
salary int(25) not null, 
DOB varchar(20) not null,
DOJ varchar(20) not null,
Address varchar(30),
ph_no int(15) unique,
FOREIGN KEY (Airline_id) references Airlines(Airline_id)
);
CREATE TABLE Customer (
Cust_TicketID int primary key,
Cust_Name varchar (25),
Cust_Address varchar (25),
Cust_Age varchar (25) not null,
Cust_phone int(20) unique,
Airline_id int(20) unique,
Airline_name varchar(30),
FOREIGN KEY (Airline_id) references Airlines(Airline_id)
);

DESC Airlines;
DESC Emps;
DESC Customer;

INSERT INTO Airlines values
(123,'Air india'),
(456,'Air Asia'),
(789,'Indigo');
SELECT * FROM Airlines;

INSERT INTO Emps VALUES 
(11,'Abhi',123,'Air India',100000,'08/12/2007','5/6/2019','VSKP',12345),
(22,'Rajesh',456,'Air Asia',150000,'10/09/2000','4/6/2020','PATNA',7412),
(33,'Ankit',789,'Indigo',200000,'09/06/2004','6/4/2021','MOHALI',78965);
SELECT * FROM Emps;

INSERT INTO Customer VALUES 
(999,'Gaurang','BARELI',20,74612,123,'Air India'),
(888,'Utkarsh','MIRZAPUR',21,95461,456,'Air Asia'),
(777,'Priyanshu','MIRZAPUR',22,456912,789,'Idigo');
SELECT * FROM Customer;

-- GRANT select,update,delete on Emps to Ankit;
-- REVOKE SELECT,update,delete on Emps from Ankit;
-- SELECT salary from Emps  where salary=150000;
-- SELECT salary from Emps  where salary>100000;
-- SELECT salary from Emps  where salary<150000;
-- SELECT salary from Emps  where salary>=100000;
-- SELECT salary from Emps  where salary<=150000;
-- SELECT Emp_Name from Emps where Emp_Name ='Ankit';

-- Update salary for Ankit and create a savepoint
SAVEPOINT before_update;
UPDATE Emps SET salary = 150000 WHERE Emp_Name = 'Ankit';
SELECT * FROM Emps;

-- Delete Ankit's record and create another savepoint
SAVEPOINT after_update;
DELETE FROM Emps WHERE Emp_id = 33;
SELECT * FROM Emps;

-- Rollback to the state after the salary update
ROLLBACK TO after_update;
SELECT * FROM Emps;

-- Final commit to persist changes
COMMIT;

