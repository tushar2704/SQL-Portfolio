/* Library Management System
Schema & Tables
© 2023 Tushar Aggarwal. All rights reserved.
*/

/* ======================= TABLES ========================*/

CREATE TABLE publisher (
	PublisherName VARCHAR(100) PRIMARY KEY NOT NULL,
	PublisherAddress VARCHAR(200) NOT NULL,
	PublisherPhone VARCHAR(50) NOT NULL
	);
	
CREATE TABLE book (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(150) NOT NULL,
	PublisherName VARCHAR (100) NOT NULL CONSTRAINT fk_publisher_name1 FOREIGN KEY REFERENCES publisher(PublisherName) ON UPDATE CASCADE ON DELETE CASCADE,
	);

CREATE TABLE library_branch (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY(100,1),
	BorrowerName VARCHAR(100) NOT NULL,
	BorrowerAddress VARCHAR(200) NOT NULL,
	BorrowerPhone VARCHAR (50) NOT NULL,
	);
	
CREATE TABLE borrower (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY(100,1),
	BorrowerName VARCHAR(100) NOT NULL,
	BorrowerAddress VARCHAR(200) NOT NULL,
	BorrowerPhone VARCHAR(50) NOT NULL,
	);
	
CREATE TABLE book_copies (
	CopiesID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BookID INT NOT NULL CONSTRAINT fk_book_id2 FOREIGN KEY REFERENCES book(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
	BranchID INT NOT NULL CONSTRAINT fk_branch_id2 FOREIGN KEY REFERENCES library_branch(BranchID) ON UPDATE CASCADE ON DELETE CASCADE,
	NoOfCoppies INT NOT NULL,
	);
	
CREATE TABLE book_authors (
	AuthorID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	BookID INT NOT NULL CONSTRAINT fk_book_id3 FOREIGN KEY REFERENCES book(BookID) ON UPDATE CASCADE ON DELETE CASCADE,
	AuthorName VARCHAR(50) NOT NULL,
	);
	
/*======================== END TABLES ======================*/