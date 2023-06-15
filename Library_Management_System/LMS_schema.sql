-- Active: 1686788664084@@127.0.0.1@5432@SQL-Portfolio
/* Library Management System
Schema & Tables
© 2023 Tushar Aggarwal. All rights reserved.
*/

/* ======================= TABLES ========================*/
CREATE TABLE books(
	id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	author VARCHAR(255) NOT NULL,
	category VARCHAR(255) NOT NULL,
	price DECIMAL(10,2) NOT NUll,
	status VARCHAR(255) NOT NULL,
	total_copies INT NOT NULL
	);

CREATE TABLE customers (
	id SERIAl PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	phone_number VARCHAR(20) NOT NULL
	);

CREATE TABLE issued_books (
	id SERIAL PRIMARY KEY,
	book_id INT NOT NULL REFERENCES books(id),
	customer_id INT NOT NULL REFERENCES customers(id),
	issue_date DATE NOT NULL,
	due_date DATE NOT NULL,
	return_date DATE
	);

/* ======================= INSERTING VALUES ========================*/

INSERT INTO books (title, author, category, price, status, total_copies)
VALUES
    ('Book 1', 'Author 1', 'Fiction', 10.99, 'Available', 5),
    ('Book 2', 'Author 2', 'Non-Fiction', 15.99, 'Available', 3),
    ('Book 3', 'Author 3', 'Science', 12.99, 'Available', 7),
    ('Book 4', 'Author 4', 'Fantasy', 9.99, 'Available', 2),
    ('Book 5', 'Author 5', 'Mystery', 14.99, 'Available', 4),
    ('Book 6', 'Author 6', 'Romance', 11.99, 'Available', 3),
    ('Book 7', 'Author 7', 'Biography', 13.99, 'Available', 6),
    ('Book 8', 'Author 8', 'Thriller', 16.99, 'Available', 2),
    ('Book 9', 'Author 9', 'History', 10.49, 'Available', 8),
    ('Book 10', 'Author 10', 'Self-Help', 14.49, 'Available', 5),
    ('Book 11', 'Author 11', 'Fiction', 12.99, 'Available', 3),
    ('Book 12', 'Author 12', 'Science', 9.99, 'Available', 7),
    ('Book 13', 'Author 13', 'Mystery', 11.99, 'Available', 4),
    ('Book 14', 'Author 14', 'Romance', 15.99, 'Available', 6),
    ('Book 15', 'Author 15', 'Fantasy', 10.99, 'Available', 2),
    ('Book 16', 'Author 16', 'Biography', 13.49, 'Available', 8),
    ('Book 17', 'Author 17', 'Non-Fiction', 16.49, 'Available', 5),
    ('Book 18', 'Author 18', 'Thriller', 12.99, 'Available', 3),
    ('Book 19', 'Author 19', 'History', 9.99, 'Available', 7),
    ('Book 20', 'Author 20', 'Science', 14.99, 'Available', 4),
    ('Book 21', 'Author 21', 'Fiction', 11.99, 'Available', 6),
    ('Book 22', 'Author 22', 'Mystery', 15.49, 'Available', 2),
    ('Book 23', 'Author 23', 'Romance', 17.49, 'Available', 8),
    ('Book 24', 'Author 24', 'Non-Fiction', 13.99, 'Available', 5),
    ('Book 25', 'Author 25', 'Fantasy', 10.99, 'Available', 3),
    ('Book 26', 'Author 26', 'Biography', 12.99, 'Available', 7),
    ('Book 27', 'Author 27', 'Thriller', 16.99, 'Available', 4),
    ('Book 28', 'Author 28', 'Science', 9.99, 'Available', 6),
    ('Book 29', 'Author 29', 'History', 11.49, 'Available', 2),
    ('Book 30', 'Author 30', 'Fiction', 14.49, 'Available', 8),
    ('Book 31', 'Author 31', 'Mystery', 10.99, 'Available', 5),
    ('Book 32', 'Author 32', 'Romance', 12.99, 'Available', 3),
    ('Book 33', 'Author 33', 'Non-Fiction', 15.99, 'Available', 7),
    ('Book 34', 'Author 34', 'Biography', 9.99, 'Available', 4),
    ('Book 35', 'Author 35', 'Fantasy', 13.99, 'Available', 6),
    ('Book 36', 'Author 36', 'Thriller', 11.99, 'Available', 2),
    ('Book 37', 'Author 37', 'History', 16.49, 'Available', 8),
    ('Book 38', 'Author 38', 'Science', 10.49, 'Available', 5),
    ('Book 39', 'Author 39', 'Fiction', 14.99, 'Available', 3),
    ('Book 40', 'Author 40', 'Mystery', 12.99, 'Available', 7),
    ('Book 41', 'Author 41', 'Romance', 9.99, 'Available', 4),
    ('Book 42', 'Author 42', 'Non-Fiction', 11.99, 'Available', 6),
    ('Book 43', 'Author 43', 'Biography', 15.49, 'Available', 2),
    ('Book 44', 'Author 44', 'History', 17.49, 'Available', 8),
    ('Book 45', 'Author 45', 'Fantasy', 13.99, 'Available', 5),
    ('Book 46', 'Author 46', 'Science', 10.99, 'Available', 3),
    ('Book 47', 'Author 47', 'Thriller', 12.99, 'Available', 7),
    ('Book 48', 'Author 48', 'Mystery', 16.99, 'Available', 4),
    ('Book 49', 'Author 49', 'Romance', 9.99, 'Available', 6),
    ('Book 50', 'Author 50', 'Non-Fiction', 11.49, 'Available', 2),
	('Book 51', 'Author 51', 'Fiction', 10.99, 'Available', 5),
    ('Book 52', 'Author 52', 'Non-Fiction', 15.99, 'Available', 3),
    ('Book 53', 'Author 53', 'Science', 12.99, 'Available', 7),
    ('Book 54', 'Author 54', 'Fantasy', 9.99, 'Available', 2),
    ('Book 55', 'Author 55', 'Mystery', 14.99, 'Available', 4),
    ('Book 56', 'Author 56', 'Romance', 11.99, 'Available', 3),
    ('Book 57', 'Author 57', 'Biography', 13.99, 'Available', 6),
    ('Book 58', 'Author 58', 'Thriller', 16.99, 'Available', 2),
    ('Book 59', 'Author 59', 'History', 10.49, 'Available', 8),
    ('Book 60', 'Author 60', 'Self-Help', 14.49, 'Available', 5),
    ('Book 61', 'Author 61', 'Fiction', 12.99, 'Available', 3),
    ('Book 62', 'Author 62', 'Science', 9.99, 'Available', 7),
    ('Book 63', 'Author 63', 'Mystery', 11.99, 'Available', 4),
    ('Book 64', 'Author 64', 'Romance', 15.99, 'Available', 6),
    ('Book 65', 'Author 65', 'Fantasy', 10.99, 'Available', 2),
    ('Book 66', 'Author 66', 'Biography', 13.49, 'Available', 8),
    ('Book 67', 'Author 67', 'Non-Fiction', 16.49, 'Available', 5),
    ('Book 68', 'Author 68', 'Thriller', 12.99, 'Available', 3),
    ('Book 69', 'Author 69', 'History', 9.99, 'Available', 7),
    ('Book 70', 'Author 70', 'Science', 14.99, 'Available', 4),
    ('Book 71', 'Author 71', 'Fiction', 11.99, 'Available', 6),
    ('Book 72', 'Author 72', 'Mystery', 15.49, 'Available', 2),
    ('Book 73', 'Author 73', 'Romance', 17.49, 'Available', 8),
    ('Book 74', 'Author 74', 'Non-Fiction', 13.99, 'Available', 5),
    ('Book 75', 'Author 75', 'Fantasy', 10.99, 'Available', 3),
    ('Book 76', 'Author 76', 'Biography', 12.99, 'Available', 7),
    ('Book 77', 'Author 77', 'Thriller', 16.99, 'Available', 4),
    ('Book 78', 'Author 78', 'Science', 9.99, 'Available', 6),
    ('Book 79', 'Author 79', 'History', 11.49, 'Available', 2),
    ('Book 80', 'Author 80', 'Fiction', 14.49, 'Available', 8),
    ('Book 81', 'Author 81', 'Mystery', 10.99, 'Available', 5),
    ('Book 82', 'Author 82', 'Romance', 12.99, 'Available', 3),
    ('Book 83', 'Author 83', 'Non-Fiction', 15.99, 'Available', 7),
    ('Book 84', 'Author 84', 'Biography', 9.99, 'Available', 4),
    ('Book 85', 'Author 85', 'Fantasy', 13.99, 'Available', 6),
    ('Book 86', 'Author 86', 'Thriller', 11.99, 'Available', 2),
    ('Book 87', 'Author 87', 'History', 16.49, 'Available', 8),
    ('Book 88', 'Author 88', 'Science', 10.49, 'Available', 5),
    ('Book 89', 'Author 89', 'Fiction', 14.99, 'Available', 3),
    ('Book 90', 'Author 90', 'Mystery', 12.99, 'Available', 7),
    ('Book 91', 'Author 91', 'Romance', 9.99, 'Available', 4),
    ('Book 92', 'Author 92', 'Non-Fiction', 11.99, 'Available', 6),
    ('Book 93', 'Author 93', 'Biography', 15.49, 'Available', 2),
    ('Book 94', 'Author 94', 'History', 17.49, 'Available', 8),
    ('Book 95', 'Author 95', 'Fantasy', 13.99, 'Available', 5),
    ('Book 96', 'Author 96', 'Science', 10.99, 'Available', 3),
    ('Book 97', 'Author 97', 'Thriller', 12.99, 'Available', 7),
    ('Book 98', 'Author 98', 'Mystery', 16.99, 'Available', 4),
    ('Book 99', 'Author 99', 'Romance', 9.99, 'Available', 6),
    ('Book 100', 'Author 100', 'Non-Fiction', 11.49, 'Available', 2);

INSERT INTO customers (first_name, last_name, email, phone_number)
VALUES
    ('Michael', 'Smith', 'michael.smith@example.com', '111-222-3333'),
    ('Jennifer', 'Johnson', 'jennifer.johnson@example.com', '444-555-6666'),
    ('Christopher', 'Brown', 'christopher.brown@example.com', '777-888-9999'),
    ('Jessica', 'Davis', 'jessica.davis@example.com', '222-333-4444'),
    ('Matthew', 'Miller', 'matthew.miller@example.com', '555-666-7777'),
    ('Amanda', 'Anderson', 'amanda.anderson@example.com', '888-999-0000'),
    ('Andrew', 'Wilson', 'andrew.wilson@example.com', '333-444-5555'),
    ('Emily', 'Thomas', 'emily.thomas@example.com', '666-777-8888'),
    ('Daniel', 'Taylor', 'daniel.taylor@example.com', '999-000-1111'),
    ('Olivia', 'Anderson', 'olivia.anderson@example.com', '444-555-6666'),
    ('Joseph', 'Martinez', 'joseph.martinez@example.com', '777-888-9999'),
    ('Sophia', 'Moore', 'sophia.moore@example.com', '222-333-4444'),
    ('William', 'Lee', 'william.lee@example.com', '555-666-7777'),
    ('Abigail', 'Clark', 'abigail.clark@example.com', '888-999-0000'),
    ('David', 'Lewis', 'david.lewis@example.com', '333-444-5555'),
    ('Elizabeth', 'Hall', 'elizabeth.hall@example.com', '666-777-8888'),
    ('Joshua', 'Young', 'joshua.young@example.com', '999-000-1111'),
    ('Samantha', 'Walker', 'samantha.walker@example.com', '444-555-6666'),
    ('Andrew', 'Allen', 'andrew.allen@example.com', '777-888-9999'),
    ('Natalie', 'Harris', 'natalie.harris@example.com', '222-333-4444'),
    ('James', 'King', 'james.king@example.com', '555-666-7777'),
    ('Isabella', 'Green', 'isabella.green@example.com', '888-999-0000'),
    ('Christopher', 'Hill', 'christopher.hill@example.com', '333-444-5555'),
    ('Grace', 'Baker', 'grace.baker@example.com', '666-777-8888'),
    ('John', 'Walker', 'john.walker@example.com', '999-000-1111'),
    ('Ava', 'Mitchell', 'ava.mitchell@example.com', '444-555-6666'),
    ('Daniel', 'Young', 'daniel.young@example.com', '777-888-9999'),
    ('Madison', 'Hall', 'madison.hall@example.com', '222-333-4444'),
    ('Joseph', 'Morris', 'joseph.morris@example.com', '555-666-7777'),
    ('Sophia', 'Cook', 'sophia.cook@example.com', '888-999-0000'),
    ('Samuel', 'Roberts', 'samuel.roberts@example.com', '333-444-5555'),
    ('Mia', 'Kelly', 'mia.kelly@example.com', '666-777-8888'),
    ('Matthew', 'Wood', 'matthew.wood@example.com', '999-000-1111'),
    ('Emma', 'Price', 'emma.price@example.com', '444-555-6666'),
    ('William', 'Phillips', 'william.phillips@example.com', '777-888-9999'),
    ('Olivia', 'Scott', 'olivia.scott@example.com', '222-333-4444'),
    ('Alexander', 'Howard', 'alexander.howard@example.com', '555-666-7777'),
    ('Sophia', 'Ward', 'sophia.ward@example.com', '888-999-0000'),
    ('James', 'Murphy', 'james.murphy@example.com', '333-444-5555'),
    ('Charlotte', 'Ross', 'charlotte.ross@example.com', '666-777-8888'),
    ('Daniel', 'Robinson', 'daniel.robinson@example.com', '999-000-1111'),
    ('Emily', 'Coleman', 'emily.coleman@example.com', '444-555-6666'),
    ('Jacob', 'Russell', 'jacob.russell@example.com', '777-888-9999'),
    ('Madison', 'Brooks', 'madison.brooks@example.com', '222-333-4444'),
    ('Michael', 'Stewart', 'michael.stewart@example.com', '555-666-7777'),
    ('Ava', 'Sanders', 'ava.sanders@example.com', '888-999-0000'),
    ('Ethan', 'Butler', 'ethan.butler@example.com', '333-444-5555'),
    ('Olivia', 'Ward', 'olivia.ward@example.com', '666-777-8888'),
    ('Jacob', 'Bennett', 'jacob.bennett@example.com', '999-000-1111'),
	 ('Ella', 'Cooper', 'ella.cooper@example.com', '444-555-6666'),
    ('Benjamin', 'Reed', 'benjamin.reed@example.com', '777-888-9999'),
    ('Chloe', 'Ward', 'chloe.ward@example.com', '222-333-4444'),
    ('Samuel', 'Perry', 'samuel.perry@example.com', '555-666-7777'),
    ('Evelyn', 'Butler', 'evelyn.butler@example.com', '888-999-0000'),
    ('Henry', 'Barnes', 'henry.barnes@example.com', '333-444-5555'),
    ('Victoria', 'Coleman', 'victoria.coleman@example.com', '666-777-8888'),
    ('Sebastian', 'Simmons', 'sebastian.simmons@example.com', '999-000-1111'),
    ('Scarlett', 'Powell', 'scarlett.powell@example.com', '444-555-6666'),
    ('Zachary', 'Long', 'zachary.long@example.com', '777-888-9999'),
    ('Addison', 'Parker', 'addison.parker@example.com', '222-333-4444'),
    ('Henry', 'Morgan', 'henry.morgan@example.com', '555-666-7777'),
    ('Nora', 'Evans', 'nora.evans@example.com', '888-999-0000'),
    ('Jackson', 'Phillips', 'jackson.phillips@example.com', '333-444-5555'),
    ('Leah', 'Russell', 'leah.russell@example.com', '666-777-8888'),
    ('David', 'Hayes', 'david.hayes@example.com', '999-000-1111'),
    ('Avery', 'Simmons', 'avery.simmons@example.com', '444-555-6666'),
    ('Gabriel', 'Sanders', 'gabriel.sanders@example.com', '777-888-9999'),
    ('Lily', 'Bryant', 'lily.bryant@example.com', '222-333-4444'),
    ('Owen', 'Nelson', 'owen.nelson@example.com', '555-666-7777'),
    ('Hannah', 'Gonzalez', 'hannah.gonzalez@example.com', '888-999-0000'),
    ('Matthew', 'Reynolds', 'matthew.reynolds@example.com', '333-444-5555'),
    ('Amelia', 'Fisher', 'amelia.fisher@example.com', '666-777-8888'),
    ('Samuel', 'Price', 'samuel.price@example.com', '999-000-1111'),
    ('Aria', 'Wright', 'aria.wright@example.com', '444-555-6666'),
    ('Joseph', 'Morris', 'joseph.morris@example.com', '777-888-9999'),
    ('Grace', 'Harris', 'grace.harris@example.com', '222-333-4444'),
    ('Lucas', 'Henderson', 'lucas.henderson@example.com', '555-666-7777'),
    ('Sofia', 'Mitchell', 'sofia.mitchell@example.com', '888-999-0000'),
    ('Benjamin', 'Thompson', 'benjamin.thompson@example.com', '333-444-5555'),
    ('Mila', 'Young', 'mila.young@example.com', '666-777-8888'),
    ('Daniel', 'Ward', 'daniel.ward@example.com', '999-000-1111'),
    ('Scarlett', 'Stewart', 'scarlett.stewart@example.com', '444-555-6666'),
    ('Carter', 'Kelly', 'carter.kelly@example.com', '777-888-9999'),
    ('Victoria', 'Hall', 'victoria.hall@example.com', '222-333-4444'),
    ('Luke', 'Howard', 'luke.howard@example.com', '555-666-7777'),
    ('Layla', 'Baker', 'layla.baker@example.com', '888-999-0000'),
    ('Gabriel', 'Clark', 'gabriel.clark@example.com', '333-444-5555'),
    ('Aria', 'Lewis', 'aria.lewis@example.com', '666-777-8888'),
    ('Jack', 'Walker', 'jack.walker@example.com', '999-000-1111'),
    ('Penelope', 'Butler', 'penelope.butler@example.com', '444-555-6666'),
    ('William', 'Peterson', 'william.peterson@example.com', '777-888-9999'),
    ('Sofia', 'Ward', 'sofia.ward@example.com', '222-333-4444'),
    ('Daniel', 'Cook', 'daniel.cook@example.com', '555-666-7777'),
    ('Harper', 'Brown', 'harper.brown@example.com', '888-999-0000'),
    ('Andrew', 'Hill', 'andrew.hill@example.com', '333-444-5555'),
    ('Natalie', 'Smith', 'natalie.smith@example.com', '666-777-8888'),
    ('Christopher', 'Ross', 'christopher.ross@example.com', '999-000-1111'),
	('Mason', 'Gonzalez', 'mason.gonzalez@example.com', '444-555-6666'),
    ('Liam', 'Reynolds', 'liam.reynolds@example.com', '777-888-9999'),
    ('Emma', 'Fisher', 'emma.fisher@example.com', '222-333-4444'),
    ('Avery', 'Henderson', 'avery.henderson@example.com', '555-666-7777'),
    ('Elijah', 'Mitchell', 'elijah.mitchell@example.com', '888-999-0000'),
    ('Abigail', 'Morris', 'abigail.morris@example.com', '333-444-5555'),
    ('Evelyn', 'Harris', 'evelyn.harris@example.com', '666-777-8888'),
    ('James', 'Henderson', 'james.henderson@example.com', '999-000-1111'),
    ('Harper', 'Lewis', 'harper.lewis@example.com', '444-555-6666'),
    ('Elizabeth', 'Peterson', 'elizabeth.peterson@example.com', '777-888-9999'),
    ('Charlotte', 'Ward', 'charlotte.ward@example.com', '222-333-4444'),
    ('Elijah', 'Clark', 'elijah.clark@example.com', '555-666-7777'),
    ('Grace', 'Hall', 'grace.hall@example.com', '888-999-0000'),
    ('Lucas', 'Roberts', 'lucas.roberts@example.com', '333-444-5555'),
    ('Luna', 'Baker', 'luna.baker@example.com', '666-777-8888'),
    ('Logan', 'Howard', 'logan.howard@example.com', '999-000-1111'),
    ('Sofia', 'Powell', 'sofia.powell@example.com', '444-555-6666'),
    ('Jackson', 'Sanders', 'jackson.sanders@example.com', '777-888-9999'),
    ('Aria', 'Thompson', 'aria.thompson@example.com', '222-333-4444'),
    ('Alexander', 'Hill', 'alexander.hill@example.com', '555-666-7777'),
    ('Mia', 'Wright', 'mia.wright@example.com', '888-999-0000'),
    ('Ethan', 'Bell', 'ethan.bell@example.com', '333-444-5555'),
    ('Olivia', 'Parker', 'olivia.parker@example.com', '666-777-8888'),
    ('Noah', 'Evans', 'noah.evans@example.com', '999-000-1111'),
    ('Isabella', 'Bryant', 'isabella.bryant@example.com', '444-555-6666'),
    ('Aiden', 'Carter', 'aiden.carter@example.com', '777-888-9999'),
    ('Amelia', 'Nelson', 'amelia.nelson@example.com', '222-333-4444'),
    ('Mason', 'Bennett', 'mason.bennett@example.com', '555-666-7777'),
    ('Mila', 'Cooper', 'mila.cooper@example.com', '888-999-0000'),
    ('Jacob', 'Kelly', 'jacob.kelly@example.com', '333-444-5555'),
    ('Ella', 'Morris', 'ella.morris@example.com', '666-777-8888'),
    ('Ethan', 'Foster', 'ethan.foster@example.com', '999-000-1111'),
    ('Liam', 'Butler', 'liam.butler@example.com', '444-555-6666'),
    ('Ava', 'Simmons', 'ava.simmons@example.com', '777-888-9999'),
    ('Charlotte', 'Cruz', 'charlotte.cruz@example.com', '222-333-4444'),
    ('Mason', 'Bell', 'mason.bell@example.com', '555-666-7777'),
    ('Harper', 'Adams', 'harper.adams@example.com', '888-999-0000'),
    ('Michael', 'Perry', 'michael.perry@example.com', '333-444-5555'),
    ('Sophia', 'Sullivan', 'sophia.sullivan@example.com', '666-777-8888'),
    ('Aiden', 'Gonzalez', 'aiden.gonzalez@example.com', '999-000-1111'),
    ('Isabella', 'Ross', 'isabella.ross@example.com', '444-555-6666'),
    ('Elijah', 'Ward', 'elijah.ward@example.com', '777-888-9999'),
    ('Oliver', 'Gray', 'oliver.gray@example.com', '222-333-4444'),
    ('Ava', 'Adams', 'ava.adams@example.com', '555-666-7777'),
    ('William', 'Turner', 'william.turner@example.com', '888-999-0000'),
    ('Emily', 'Reynolds', 'emily.reynolds@example.com', '333-444-5555'),
    ('Sophia', 'Morgan', 'sophia.morgan@example.com', '666-777-8888'),
    ('Mason', 'Carter', 'mason.carter@example.com', '999-000-1111'),
    ('Olivia', 'Howard', 'olivia.howard@example.com', '444-555-6666'),
    ('James', 'Parker', 'james.parker@example.com', '777-888-9999'),
    ('Ella', 'Hall', 'ella.hall@example.com', '222-333-4444'),
    ('Noah', 'Simmons', 'noah.simmons@example.com', '555-666-7777'),
    ('Emily', 'Stewart', 'emily.stewart@example.com', '888-999-0000'),
    ('Alexander', 'Long', 'alexander.long@example.com', '333-444-5555'),
    ('Avery', 'Hayes', 'avery.hayes@example.com', '666-777-8888'),
    ('Mia', 'Gonzalez', 'mia.gonzalez@example.com', '999-000-1111'),
    ('Charlotte', 'Roberts', 'charlotte.roberts@example.com', '444-555-6666'),
    ('Lucas', 'Hill', 'lucas.hill@example.com', '777-888-9999'),
    ('Amelia', 'Cook', 'amelia.cook@example.com', '222-333-4444'),
    ('Jacob', 'Simmons', 'jacob.simmons@example.com', '555-666-7777'),
    ('Oliver', 'Butler', 'oliver.butler@example.com', '888-999-0000'),
    ('Ella', 'Sanders', 'ella.sanders@example.com', '333-444-5555'),
    ('Michael', 'Adams', 'michael.adams@example.com', '666-777-8888'),
    ('Ethan', 'Powell', 'ethan.powell@example.com', '999-000-1111'),
    ('Avery', 'Perry', 'avery.perry@example.com', '444-555-6666'),
    ('Sophia', 'Cooper', 'sophia.cooper@example.com', '777-888-9999'),
    ('Isabella', 'Cruz', 'isabella.cruz@example.com', '222-333-4444'),
    ('James', 'Bell', 'james.bell@example.com', '555-666-7777'),
    ('Liam', 'Adams', 'liam.adams@example.com', '888-999-0000'),
    ('Ella', 'Gray', 'ella.gray@example.com', '333-444-5555'),
    ('Noah', 'Perry', 'noah.perry@example.com', '666-777-8888'),
    ('Emily', 'Foster', 'emily.foster@example.com', '999-000-1111'),
    ('Olivia', 'Gonzalez', 'olivia.gonzalez@example.com', '444-555-6666'),
    ('Mason', 'Butler', 'mason.butler@example.com', '777-888-9999'),
	('Emma', 'Morgan', 'emma.morgan@example.com', '222-333-4444'),
    ('Oliver', 'Grayson', 'oliver.grayson@example.com', '555-666-7777'),
    ('Sophia', 'Fisher', 'sophia.fisher@example.com', '888-999-0000'),
    ('Elijah', 'Turner', 'elijah.turner@example.com', '333-444-5555'),
    ('Ava', 'Hall', 'ava.hall@example.com', '666-777-8888'),
    ('William', 'Clark', 'william.clark@example.com', '999-000-1111'),
    ('Charlotte', 'Parker', 'charlotte.parker@example.com', '444-555-6666'),
    ('Noah', 'Thompson', 'noah.thompson@example.com', '777-888-9999'),
    ('Amelia', 'Bennett', 'amelia.bennett@example.com', '222-333-4444'),
    ('Liam', 'Ward', 'liam.ward@example.com', '555-666-7777'),
    ('Olivia', 'Nelson', 'olivia.nelson@example.com', '888-999-0000'),
    ('Lucas', 'Roberts', 'lucas.roberts@example.com', '333-444-5555'),
    ('Mia', 'Harris', 'mia.harris@example.com', '666-777-8888'),
    ('Jacob', 'Anderson', 'jacob.anderson@example.com', '999-000-1111'),
    ('Sophia', 'Lee', 'sophia.lee@example.com', '444-555-6666'),
    ('Ethan', 'Gonzalez', 'ethan.gonzalez@example.com', '777-888-9999'),
    ('Isabella', 'Smith', 'isabella.smith@example.com', '222-333-4444'),
    ('Mason', 'Martin', 'mason.martin@example.com', '555-666-7777'),
    ('Ava', 'Young', 'ava.young@example.com', '888-999-0000'),
    ('Oliver', 'Moore', 'oliver.moore@example.com', '333-444-5555'),
    ('Charlotte', 'Walker', 'charlotte.walker@example.com', '666-777-8888'),
    ('Liam', 'White', 'liam.white@example.com', '999-000-1111'),
    ('Emma', 'Baker', 'emma.baker@example.com', '444-555-6666'),
    ('Noah', 'Harris', 'noah.harris@example.com', '777-888-9999'),
    ('Olivia', 'Garcia', 'olivia.garcia@example.com', '222-333-4444'),
    ('Sophia', 'Thomas', 'sophia.thomas@example.com', '555-666-7777'),
    ('Jacob', 'Allen', 'jacob.allen@example.com', '888-999-0000'),
    ('Ava', 'Ward', 'ava.ward@example.com', '333-444-5555'),
    ('Elijah', 'Hernandez', 'elijah.hernandez@example.com', '666-777-8888'),
    ('Emily', 'Clark', 'emily.clark@example.com', '999-000-1111'),
    ('Ethan', 'Lopez', 'ethan.lopez@example.com', '444-555-6666'),
    ('Isabella', 'Hill', 'isabella.hill@example.com', '777-888-9999'),
    ('Lucas', 'Young', 'lucas.young@example.com', '222-333-4444'),
    ('Mia', 'Adams', 'mia.adams@example.com', '555-666-7777'),
    ('Oliver', 'Wright', 'oliver.wright@example.com', '888-999-0000'),
    ('Emma', 'Morris', 'emma.morris@example.com', '333-444-5555'),
    ('Noah', 'King', 'noah.king@example.com', '666-777-8888'),
    ('Sophia', 'Carter', 'sophia.carter@example.com', '999-000-1111'),
    ('Liam', 'Hill', 'liam.hill@example.com', '444-555-6666'),
    ('Ava', 'Turner', 'ava.turner@example.com', '777-888-9999'),
    ('Oliver', 'Brown', 'oliver.brown@example.com', '222-333-4444'),
    ('Emma', 'Stewart', 'emma.stewart@example.com', '555-666-7777'),
    ('Isabella', 'Adams', 'isabella.adams@example.com', '888-999-0000'),
    ('Elijah', 'Miller', 'elijah.miller@example.com', '333-444-5555'),
    ('Sophia', 'Ward', 'sophia.ward@example.com', '666-777-8888'),
    ('Liam', 'Rivera', 'liam.rivera@example.com', '999-000-1111'),
    ('Mia', 'Gonzalez', 'mia.gonzalez@example.com', '444-555-6666'),
    ('Jacob', 'Anderson', 'jacob.anderson@example.com', '777-888-9999'),
    ('Oliver', 'Mitchell', 'oliver.mitchell@example.com', '222-333-4444'),
    ('Emma', 'Harris', 'emma.harris@example.com', '555-666-7777'),
    ('Sophia', 'Lee', 'sophia.lee@example.com', '888-999-0000'),
    ('Elijah', 'Foster', 'elijah.foster@example.com', '333-444-5555'),
    ('Oliver', 'Simmons', 'oliver.simmons@example.com', '666-777-8888'),
    ('Ava', 'Cruz', 'ava.cruz@example.com', '999-000-1111'),
    ('Liam', 'Reed', 'liam.reed@example.com', '444-555-6666'),
    ('Isabella', 'Butler', 'isabella.butler@example.com', '777-888-9999'),
    ('Oliver', 'Garcia', 'oliver.garcia@example.com', '222-333-4444'),
    ('Emma', 'Perez', 'emma.perez@example.com', '555-666-7777'),
    ('Sophia', 'Carter', 'sophia.carter@example.com', '888-999-0000'),
    ('Elijah', 'Turner', 'elijah.turner@example.com', '333-444-5555'),
    ('Ava', 'Allen', 'ava.allen@example.com', '666-777-8888'),
    ('Liam', 'Stewart', 'liam.stewart@example.com', '999-000-1111'),
    ('Isabella', 'Morris', 'isabella.morris@example.com', '444-555-6666'),
    ('Oliver', 'Hill', 'oliver.hill@example.com', '777-888-9999'),
    ('Emma', 'Adams', 'emma.adams@example.com', '222-333-4444'),
    ('Sophia', 'King', 'sophia.king@example.com', '555-666-7777'),
    ('Elijah', 'Ward', 'elijah.ward@example.com', '888-999-0000'),
    ('Oliver', 'Carter', 'oliver.carter@example.com', '333-444-5555'),
    ('Ava', 'Brown', 'ava.brown@example.com', '666-777-8888'),
    ('Liam', 'Mitchell', 'liam.mitchell@example.com', '999-000-1111'),
    ('Emma', 'Gonzalez', 'emma.gonzalez@example.com', '444-555-6666'),
    ('Sophia', 'Reed', 'sophia.reed@example.com', '777-888-9999')
	;

INSERT INTO issued_books (book_id, customer_id, issue_date, due_date)
VALUES
    (1, 1, '2023-06-15', '2023-06-22'),
    (2, 2, '2023-06-16', '2023-06-23'),
    (3, 3, '2023-06-17', '2023-06-24'),
    (4, 4, '2023-06-18', '2023-06-25'),
    (5, 5, '2023-06-19', '2023-06-26'),
    (6, 6, '2023-06-20', '2023-06-27'),
    (7, 7, '2023-06-21', '2023-06-28'),
    (8, 8, '2023-06-22', '2023-06-29'),
    (9, 9, '2023-06-23', '2023-06-30'),
    (10, 10, '2023-06-24', '2023-07-01'),
    (11, 11, '2023-06-25', '2023-07-02'),
    (12, 12, '2023-06-26', '2023-07-03'),
    (13, 13, '2023-06-27', '2023-07-04'),
    (14, 14, '2023-06-28', '2023-07-05'),
    (15, 15, '2023-06-29', '2023-07-06'),
    (16, 16, '2023-06-30', '2023-07-07'),
    (17, 17, '2023-07-01', '2023-07-08'),
    (18, 18, '2023-07-02', '2023-07-09'),
    (19, 19, '2023-07-03', '2023-07-10'),
    (20, 20, '2023-07-04', '2023-07-11'),
    (21, 21, '2023-07-05', '2023-07-12'),
    (22, 22, '2023-07-06', '2023-07-13'),
    (23, 23, '2023-07-07', '2023-07-14'),
    (24, 24, '2023-07-08', '2023-07-15'),
    (25, 25, '2023-07-09', '2023-07-16'),
    (26, 26, '2023-07-10', '2023-07-17'),
    (27, 27, '2023-07-11', '2023-07-18'),
    (28, 28, '2023-07-12', '2023-07-19'),
    (29, 29, '2023-07-13', '2023-07-20'),
    (30, 30, '2023-07-14', '2023-07-21'),
    (31, 31, '2023-07-15', '2023-07-22'),
    (32, 32, '2023-07-16', '2023-07-23'),
    (33, 33, '2023-07-17', '2023-07-24'),
    (34, 34, '2023-07-18', '2023-07-25'),
    (35, 35, '2023-07-19', '2023-07-26'),
    (36, 36, '2023-07-20', '2023-07-27'),
    (37, 37, '2023-07-21', '2023-07-28'),
    (38, 38, '2023-07-22', '2023-07-29'),
    (39, 39, '2023-07-23', '2023-07-30'),
    (40, 40, '2023-07-24', '2023-07-31'),
    (41, 41, '2023-07-25', '2023-08-01'),
    (42, 42, '2023-07-26', '2023-08-02'),
    (43, 43, '2023-07-27', '2023-08-03'),
    (44, 44, '2023-07-28', '2023-08-04'),
    (45, 45, '2023-07-29', '2023-08-05'),
    (46, 46, '2023-07-30', '2023-08-06'),
    (47, 47, '2023-07-31', '2023-08-07'),
    (48, 48, '2023-08-01', '2023-08-08'),
    (49, 49, '2023-08-02', '2023-08-09'),
    (50, 50, '2023-08-03', '2023-08-10'),
	(51, 51, '2023-08-04', '2023-08-11'),
    (52, 52, '2023-08-05', '2023-08-12'),
    (53, 53, '2023-08-06', '2023-08-13'),
    (54, 54, '2023-08-07', '2023-08-14'),
    (55, 55, '2023-08-08', '2023-08-15'),
    (56, 56, '2023-08-09', '2023-08-16'),
    (57, 57, '2023-08-10', '2023-08-17'),
    (58, 58, '2023-08-11', '2023-08-18'),
    (59, 59, '2023-08-12', '2023-08-19'),
    (60, 60, '2023-08-13', '2023-08-20'),
    (61, 61, '2023-08-14', '2023-08-21'),
    (62, 62, '2023-08-15', '2023-08-22'),
    (63, 63, '2023-08-16', '2023-08-23'),
    (64, 64, '2023-08-17', '2023-08-24'),
    (65, 65, '2023-08-18', '2023-08-25'),
    (66, 66, '2023-08-19', '2023-08-26'),
    (67, 67, '2023-08-20', '2023-08-27'),
    (68, 68, '2023-08-21', '2023-08-28'),
    (69, 69, '2023-08-22', '2023-08-29'),
    (70, 70, '2023-08-23', '2023-08-30'),
    (71, 71, '2023-08-24', '2023-08-31'),
    (72, 72, '2023-08-25', '2023-09-01'),
    (73, 73, '2023-08-26', '2023-09-02'),
    (74, 74, '2023-08-27', '2023-09-03'),
    (75, 75, '2023-08-28', '2023-09-04'),
    (76, 76, '2023-08-29', '2023-09-05'),
    (77, 77, '2023-08-30', '2023-09-06'),
    (78, 78, '2023-08-31', '2023-09-07'),
    (79, 79, '2023-09-01', '2023-09-08'),
    (80, 80, '2023-09-02', '2023-09-09'),
    (81, 81, '2023-09-03', '2023-09-10'),
    (82, 82, '2023-09-04', '2023-09-11'),
    (83, 83, '2023-09-05', '2023-09-12'),
    (84, 84, '2023-09-06', '2023-09-13'),
    (85, 85, '2023-09-07', '2023-09-14'),
    (86, 86, '2023-09-08', '2023-09-15'),
    (87, 87, '2023-09-09', '2023-09-16'),
    (88, 88, '2023-09-10', '2023-09-17'),
    (89, 89, '2023-09-11', '2023-09-18'),
    (90, 90, '2023-09-12', '2023-09-19'),
    (91, 91, '2023-09-13', '2023-09-20'),
    (92, 92, '2023-09-14', '2023-09-21'),
    (93, 93, '2023-09-15', '2023-09-22'),
    (94, 94, '2023-09-16', '2023-09-23'),
    (95, 95, '2023-09-17', '2023-09-24'),
    (96, 96, '2023-09-18', '2023-09-25'),
    (97, 97, '2023-09-19', '2023-09-26'),
    (98, 98, '2023-09-20', '2023-09-27'),
    (99, 99, '2023-09-21', '2023-09-28'),
    (100, 100, '2023-09-22', '2023-09-29'),
	(101, 101, '2023-09-23', '2023-09-30'),
    (102, 102, '2023-09-24', '2023-10-01'),
    (103, 103, '2023-09-25', '2023-10-02'),
    (104, 104, '2023-09-26', '2023-10-03'),
    (105, 105, '2023-09-27', '2023-10-04'),
    (106, 106, '2023-09-28', '2023-10-05'),
    (107, 107, '2023-09-29', '2023-10-06'),
    (108, 108, '2023-09-30', '2023-10-07'),
    (109, 109, '2023-10-01', '2023-10-08'),
    (110, 110, '2023-10-02', '2023-10-09'),
    (111, 111, '2023-10-03', '2023-10-10'),
    (112, 112, '2023-10-04', '2023-10-11'),
    (113, 113, '2023-10-05', '2023-10-12'),
    (114, 114, '2023-10-06', '2023-10-13'),
    (115, 115, '2023-10-07', '2023-10-14'),
    (116, 116, '2023-10-08', '2023-10-15'),
    (117, 117, '2023-10-09', '2023-10-16'),
    (118, 118, '2023-10-10', '2023-10-17'),
    (119, 119, '2023-10-11', '2023-10-18'),
    (120, 120, '2023-10-12', '2023-10-19'),
    (121, 121, '2023-10-13', '2023-10-20'),
    (122, 122, '2023-10-14', '2023-10-21'),
    (123, 123, '2023-10-15', '2023-10-22'),
    (124, 124, '2023-10-16', '2023-10-23'),
    (125, 125, '2023-10-17', '2023-10-24'),
    (126, 126, '2023-10-18', '2023-10-25'),
    (127, 127, '2023-10-19', '2023-10-26'),
    (128, 128, '2023-10-20', '2023-10-27'),
    (129, 129, '2023-10-21', '2023-10-28'),
    (130, 130, '2023-10-22', '2023-10-29'),
    (131, 131, '2023-10-23', '2023-10-30'),
    (132, 132, '2023-10-24', '2023-10-31'),
    (133, 133, '2023-10-25', '2023-11-01'),
    (134, 134, '2023-10-26', '2023-11-02'),
    (135, 135, '2023-10-27', '2023-11-03'),
    (136, 136, '2023-10-28', '2023-11-04'),
    (137, 137, '2023-10-29', '2023-11-05'),
    (138, 138, '2023-10-30', '2023-11-06'),
    (139, 139, '2023-10-31', '2023-11-07'),
    (140, 140, '2023-11-01', '2023-11-08'),
    (141, 141, '2023-11-02', '2023-11-09'),
    (142, 142, '2023-11-03', '2023-11-10'),
    (143, 143, '2023-11-04', '2023-11-11'),
    (144, 144, '2023-11-05', '2023-11-12'),
    (145, 145, '2023-11-06', '2023-11-13'),
    (146, 146, '2023-11-07', '2023-11-14'),
    (147, 147, '2023-11-08', '2023-11-15'),
    (148, 148, '2023-11-09', '2023-11-16'),
    (149, 149, '2023-11-10', '2023-11-17'),
    (150, 150, '2023-11-11', '2023-11-18')
	;


UPDATE books
SET status = 'Issued', total_copies = total_copies - 1
WHERE id = 1;


UPDATE issued_books
SET return_date = '2023-06-20'
WHERE id = 1;


UPDATE books
SET status = 'Available', total_copies = total_copies + 1
WHERE id = 1;
