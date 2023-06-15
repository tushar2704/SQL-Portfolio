# Library_Management_System
© 2023 Tushar Aggarwal. All rights reserved.

The Library Management System is a project aimed at creating an efficient system for managing a library's operations. This system allows users to issue books, search for different books and their titles, and provides detailed information about the books available in the library. By automating these processes, it eliminates the need for manual record-keeping and offers a user-friendly experience.

## Project Idea

The main objective of this project is to develop a comprehensive library management system that simplifies the management of books within a library. This system maintains a centralized database of books, including their details such as title, price, status, and the total number of books available. It streamlines the borrowing process and provides users with easy access to information, making it an efficient alternative to the traditional manual recording system.

## SQL Queries Examples

As part of this project, several SQL queries are utilized to interact with the database and retrieve information. Here are a few examples:

1. Retrieve all books from the database:
```sql
SELECT * FROM books;
```

2. Search for books by title:
```sql
SELECT * FROM books WHERE title LIKE '%keyword%';
```

3. Check the availability of a specific book:
```sql
SELECT * FROM books WHERE title = 'Book Title' AND status = 'Available';
```

4. Update the status of a book after it has been issued:
```sql
UPDATE books SET status = 'Issued' WHERE book_id = '123';
```

5. Insert a new book into the database:
```sql
INSERT INTO books (title, price, status, quantity) VALUES ('Book Title', 29.99, 'Available', 5);
```

Please note that these queries are just examples, and the actual queries used in the project may vary based on the specific requirements.

## Features

The Library Management System is designed with the following features in mind:

- User-friendly interface for easy navigation and interaction.
- Comprehensive entry for each book, containing details such as title, price, status, and quantity.
- Efficient search functionality to allow users to find books by their titles.
- Streamlined book issuing process to facilitate borrowing and returning.
- Centralized database to store and manage book information.
- Automated tracking of available books in the library.

By incorporating these features, the Library Management System aims to provide an efficient and user-friendly solution for managing library operations.

## Conclusion

The Library Management System is an automated solution that simplifies the management of books within a library. It offers a user-friendly interface, extensive book details, and efficient search functionality. By utilizing SQL queries, it interacts with a database to store and retrieve information effectively. With this system in place, the process of book management becomes more streamlined and convenient for both library staff and users.
The `books` table stores information about books available in the library.
--------------------------------------------
# Library Management System - Schema created

## Table: books

The `books` table stores information about books available in the library.

### Columns

| Column Name    | Data Type    | Constraints | Description                              |
|----------------|--------------|-------------|------------------------------------------|
| id             | SERIAL       | PRIMARY KEY | Unique identifier for the book            |
| title          | VARCHAR(255) | NOT NULL    | Title of the book                         |
| author         | VARCHAR(255) | NOT NULL    | Author of the book                        |
| category       | VARCHAR(255) | NOT NULL    | Category of the book                      |
| price          | DECIMAL(10,2)| NOT NULL    | Price of the book                         |
| status         | VARCHAR(255) | NOT NULL    | Status of the book (e.g., available, sold) |
| total_copies   | INT          | NOT NULL    | Total number of copies available           |

## Table: customers

The `customers` table stores information about the library customers.

### Columns

| Column Name    | Data Type    | Constraints | Description                              |
|----------------|--------------|-------------|------------------------------------------|
| id             | SERIAL       | PRIMARY KEY | Unique identifier for the customer        |
| first_name     | VARCHAR(255) | NOT NULL    | First name of the customer                |
| last_name      | VARCHAR(255) | NOT NULL    | Last name of the customer                 |
| email          | VARCHAR(255) | NOT NULL    | Email address of the customer             |
| phone_number   | VARCHAR(20)  | NOT NULL    | Phone number of the customer              |

## Table: issued_books

The `issued_books` table stores information about the books issued by customers.

### Columns

| Column Name    | Data Type    | Constraints       | Description                             |
|----------------|--------------|-------------------|-----------------------------------------|
| id             | SERIAL       | PRIMARY KEY       | Unique identifier for the issued book    |
| book_id        | INT          | NOT NULL          | Foreign key referencing books(id)        |
| customer_id    | INT          | NOT NULL          | Foreign key referencing customers(id)    |
| issue_date     | DATE         | NOT NULL          | Date when the book was issued            |
| due_date       | DATE         | NOT NULL          | Due date for returning the book          |
| return_date    | DATE         |                   | Date when the book was returned (optional)|
----