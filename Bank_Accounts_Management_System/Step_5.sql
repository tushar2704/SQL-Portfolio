/* Bank Accounts Management System
Step 5
© 2023 Tushar Aggarwal. All rights reserved.
*/
/*Transaction management:*/

/*Inserting a new transaction:*/
INSERT INTO Transactions (account_id, employee_id, transaction_type, amount, transaction_date)
VALUES (1, 2, 'Deposit', 1000.00, '2023-06-01 10:30:00');

/*Adjusting the values in the INSERT statement according to the specific transaction details obtained from example application. The account_id and employee_id represent the corresponding IDs from the related tables.*/

/*Retrieving transaction details:*/
SELECT * FROM Transactions WHERE transaction_id = 1;

/* Now, Replace "transaction_id" with the actual ID of the transaction you want to retrieve. This query will fetch the transaction record with all its details.*/

/*Updating a transaction:*/
UPDATE Transactions
SET amount = 1500.00
WHERE transaction_id = 1;
/*Modifying the amount value to reflect the updated transaction amount, and adjust the WHERE clause to match the transaction_id you wish to update.*/

/*Deleting a transaction:*/
DELETE FROM Transactions WHERE transaction_id = 1;

/*Replacing the "transaction_id" with the ID of the transaction you want to delete. This query will remove the specified transaction record.*/
