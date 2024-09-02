CREATE DATABASE LAB;
USE LAB;
CREATE TABLE Customer(
C_id int(255) primary key,
C_Name varchar(255) not null,
C_Address varchar(255) not null,
loan_no int(255) unique,
Account_id int(255) unique
);
Desc Customer;
CREATE TABLE Loan(
loan_no int(255) primary key,
payment_mode varchar(255) not null,
Amount int(255) not null,
FOREIGN KEY (loan_no) references customer(loan_no)
);
Desc Loan;
CREATE TABLE Accounts(
Account_id int(255) primary key,
balance int(255) check(balance>=2000),
FOREIGN KEY (Account_id) references Customer(Account_id)
);
Desc Accounts;
INSERT INTO Customer values
(123,'Ankit','Patna',1234,12345),
(456,'Hari','Amritsar',4567,45678),
(789,'Rohit','Sivan',7891,78912),
(101,'Shreyas','Mumbai',1012,10123),
(102,'Aditya','Narnol',1023,10234),
(103,'Gaurang','Bareli',1034,10345),
(104,'Utkarsh','Mirzapur',1045,10456);
SELECT * FROM Customer;
INSERT INTO Loan values
(1234,'Online',12345),
(4567,'Offline',45678),
(7891,'Offline',78912),
(1012,'Online',10123),
(1023,'Offline',10234),
(1034,'Online',10345),
(1045,'Offline',10456);
Select * from Loan;
INSERT INTO Accounts values
(12345,105000),
(45678,50000),
(78912,70000),
(10123,60000),
(10234,3000),
(10345,19999),
(10456,20000);
SELECT * FROM Accounts;
