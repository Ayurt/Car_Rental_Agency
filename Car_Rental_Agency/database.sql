-- Create the car rental database
CREATE DATABASE IF NOT EXISTS car_rental_db;
USE car_rental_db;

-- Create a table to store user login information
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    user_type ENUM('customer', 'agency') NOT NULL DEFAULT 'customer'
);

CREATE TABLE IF NOT EXISTS addcar (
    id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(255) NOT NULL,
    number VARCHAR(20) NOT NULL,
    capacity INT NOT NULL,
    rent DECIMAL(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS rented (
    id INT AUTO_INCREMENT PRIMARY KEY,
    model VARCHAR(255) NOT NULL,
    number VARCHAR(20) NOT NULL,
    capacity INT NOT NULL,
    rent DECIMAL(10, 2) NOT NULL
);

