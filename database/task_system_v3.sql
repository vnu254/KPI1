CREATE DATABASE task_system_v3;
USE task_system_v3;

CREATE TABLE departments(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100)
);

CREATE TABLE users(
id INT AUTO_INCREMENT PRIMARY KEY,
department_id INT,
name VARCHAR(100),
email VARCHAR(100) UNIQUE,
password VARCHAR(255),
role ENUM('admin','manager','employee'),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tasks(
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255),
description TEXT,
creator_id INT,
assignee_id INT,
priority ENUM('low','medium','high'),
status ENUM('new','assigned','processing','review','completed'),
progress INT DEFAULT 0,
start_date DATE,
deadline DATE,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE task_history(
id INT AUTO_INCREMENT PRIMARY KEY,
task_id INT,
user_id INT,
action VARCHAR(255),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE evaluations(
id INT AUTO_INCREMENT PRIMARY KEY,
task_id INT,
score INT,
comment TEXT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE files(
id INT AUTO_INCREMENT PRIMARY KEY,
task_id INT,
filename VARCHAR(255),
uploaded_by INT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
