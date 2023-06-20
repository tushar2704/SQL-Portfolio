/* Bank Accounts Management System
user_registration
© 2023 Tushar Aggarwal. All rights reserved.
*/

/*Creating the "Users" table:*/
CREATE TABLE Users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(100) NOT NULL,
  name VARCHAR(100) NOT NULL,
  address VARCHAR(200),
  contact_details VARCHAR(100)
);

/*Implementing user registration:*/
INSERT INTO Users (username, password, name, address, contact_details)
VALUES ('john_doe', 'password123', 'John Doe', '123 Main Street', 'john@example.com');

/* Replacement can be done, example values with the actual user input received from the registration form.*/

/*Implementing user login:*/
SELECT user_id, username, name, address, contact_details
FROM Users
WHERE username = 'john_doe' AND password = 'password123';


--Executing this query and check the result. If a row is returned, it means the login credentials are valid, and you can proceed with authentication.

/*---------STEP 4----------*/
/*Managing user records*/

/*Inserting a new user record:*/
INSERT INTO Users (username, password, name, address, contact_details)
VALUES ('jane_smith', 'password456', 'Jane Smith', '456 Elm Street', 'jane@example.com');

/*Replacing the example values with the actual user input obtained from your application's user management form.*/

/*Updating an existing user record:*/
UPDATE Users
SET address = '789 Oak Avenue', contact_details = 'jane@example.com'
WHERE user_id = 1;

/*Modifying the address and contact details values to match the updated information provided by the user. The WHERE clause specifies the user_id of the record to be updated.*/

/*Deleting a user record:*/

DELETE FROM Users WHERE user_id = 1;

/*This code will remove the user record with user_id = 1. Adjust the WHERE clause accordingly based on the user_id of the record.

Ensure to have appropriate validation and security checks in your application code to handle user input and prevent unauthorized access or malicious actions.

This demonstrate basic CRUD (Create, Read, Update, Delete) operations for managing user records in PostgreSQL.*/



