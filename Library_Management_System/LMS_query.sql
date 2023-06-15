-- Active: 1686788664084@@127.0.0.1@5432@SQL-Portfolio
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

/*3)List customers who have never issued a book*/
SELECT * 
FROM customers
WHERE id NOT IN(SELECT customer_id FROM issued_books);

/*4)Update book price by 10% for books issued before Current date*/
UPDATE books
SET price=price*1.1
WHERE id IN (SELECT book_id FROM issued_books JOIN books ON books.id=issued_books.book_id WHERE issue_date < CURRENT_DATE)

/*5)Delete all overdue issued book records*/
DELETE FROM issued_books
WHERE due_date < '2023-07-25' AND return_date IS NULL;

/*6)List total revenue generated from issued books*/
SELECT COUNT(b.price) AS total_revenue
FROM books AS b
JOIN issued_books AS i ON b.id=i.book_id
WHERE i.issue_date IS NOT NULL;

/*7)List the number of copies left for each book*/
SELECT b.title, b.total_copies
FROM books AS b
JOIN issued_books AS i on b.id =i.book_id
WHERE i.issue_date IS NULL;
































