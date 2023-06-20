/* Bank Accounts Management System
Step 6
© 2023 Tushar Aggarwal. All rights reserved.
*/
/*Security and monitoring*/

/*Implementing encryption for sensitive data:
- Using cryptographic functions to encrypt sensitive data such as passwords and financial information.
- PostgreSQL provides various encryption functions like `pgp_sym_encrypt` and `pgp_sym_decrypt` that you can used to encrypt and decrypt data.*/

/*Implementing user activity monitoring and logging:
- Creating a new table to store logs of important events or transactions.
- Whenever a significant transaction or event occurs, insert a new record into the "ActivityLogs" table with relevant information, including the user ID, event type, description, and timestamp.
*/

CREATE TABLE ActivityLogs (
  log_id SERIAL PRIMARY KEY,
  user_id INTEGER,
  event_type VARCHAR(50),
  event_description VARCHAR(200),
  log_date TIMESTAMP
);

-- Insert a log record
INSERT INTO ActivityLogs (user_id, event_type, event_description, log_date)
VALUES (1, 'Transaction', 'Withdrawal of $500', CURRENT_TIMESTAMP);


/*Generating transaction history reports:
- Utilizing SQL queries to generate reports based on transaction history.
*/

SELECT *
FROM Transactions
WHERE account_id = 1
ORDER BY transaction_date DESC;


/*Implementing user access control and permissions:
- Using PostgreSQL's built-in user and role management system controls access and permissions for different users and roles within your system.
- Granting appropriate privileges to users and roles based on their responsibilities and access requirements. */
