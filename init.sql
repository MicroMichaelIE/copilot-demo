-- Create the database if it doesn't exist BRO!
CREATE DATABASE IF NOT EXISTS copilot_db;
USE copilot_db;

-- Drop table if it exists BRO!
DROP TABLE IF EXISTS persons;

-- Create persons table BRO!
CREATE TABLE persons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    age INT,
    gender ENUM('M', 'F', 'Other'),
    email VARCHAR(100),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert some sample data BRO!
INSERT INTO persons (name, surname, age, gender, email) VALUES
    ('John', 'Doe', 25, 'M', 'john.doe@example.com'),
    ('Jane', 'Smith', 30, 'F', 'jane.smith@example.com'),
    ('Alex', 'Johnson', 35, 'Other', 'alex.j@example.com'),
    ('Sarah', 'Williams', 28, 'F', 'sarah.w@example.com'),
    ('Mike', 'Brown', 42, 'M', 'mike.b@example.com');