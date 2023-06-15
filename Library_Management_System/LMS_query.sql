/* Library Management System
Queries
© 2023 Tushar Aggarwal. All rights reserved.
*/
/* ======================= Query & Solutions ========================*/

/*1)List customers who have overdue books*/
SELECT c.first_name, c.last_name, c.email, c.phone_number, b.title, i.due_date
FROM customers AS c
JOIN issued_books AS i ON c.id = i.customer_id
JOIN books AS b ON i.book_id=b.id
WHERE i.return_date IS NULL AND i.due_date < CURRENT_DATE;

/*2)List the most popular books (most issued)*/
SELECT b.title, COUNT(i.book_id) AS total_issued
FROM issued_books AS i
JOIN books AS b ON i.book_id=b.id
GROUP BY b.title 
ORDER BY total_issued DESC;