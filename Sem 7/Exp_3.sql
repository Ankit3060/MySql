CREATE DATABASE Exp_3;
USE Exp_3;

CREATE TABLE flight (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(10) NOT NULL,
    departure_city VARCHAR(50) NOT NULL,
    arrival_city VARCHAR(50) NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL
);


INSERT INTO flight (flight_id, flight_number, departure_city, arrival_city, departure_time, arrival_time)
VALUES
(1, 'AA101', 'New York', 'Los Angeles', '2024-08-22 08:00:00', '2024-08-22 11:00:00'),
(2, 'BA202', 'London', 'New York', '2024-08-22 14:00:00', '2024-08-22 17:00:00'),
(3, 'DL303', 'Atlanta', 'Chicago', '2024-08-22 09:30:00', '2024-08-22 11:00:00');

SELECT * FROM flight;

LOCK TABLES flight READ;

UNLOCK TABLES;

LOCK TABLES flight WRITE;

UNLOCK TABLES;

SELECT * FROM flight;