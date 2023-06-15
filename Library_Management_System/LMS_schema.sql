-- Active: 1686788664084@@127.0.0.1@5432@SQL-Portfolio
/* Library Management System
Schema & Tables
© 2023 Tushar Aggarwal. All rights reserved.
*/

/* ======================= TABLES ========================*/
CREATE TABLE authors (
	id INT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	bio TEXT
	);

CREATE TABLE categories (
	author_id INT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL
	);