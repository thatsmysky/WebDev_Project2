/* Creating the Author table */
CREATE TABLE Author (
ID VARCHAR(10) NOT NULL,
A_Name VARCHAR(250) NOT NULL,
PRIMARY KEY(ID)
);

/* Creating the Book table */
CREATE TABLE Book (
ISBN VARCHAR(15) NOT NULL,
Title VARCHAR(250) NOT NULL,
Edition VARCHAR(10) NOT NULL, 
YearIssued INT,
PRIMARY KEY(ISBN)
);

/* Creating the Copy table */
CREATE TABLE Copy (
barCode VARCHAR(10) NOT NULL, 
Book_ID VARCHAR(15) NOT NULL,
PRIMARY KEY(barCode),
FOREIGN KEY(Book_ID) REFERENCES Book(ISBN)
);

/* Creating the Authorship table, link between book and author */
CREATE TABLE Authorship (
ID INT NOT NULL AUTO_INCREMENT,
Main Boolean, 
Book_ID VARCHAR(15), 
Author_ID VARCHAR(10),
PRIMARY KEY (ID),
FOREIGN KEY (Book_ID) REFERENCES Book(ISBN),
FOREIGN KEY (Author_ID) REFERENCES Author(ID)
);

/* Creating the Member table */
CREATE TABLE Member (
ID INT NOT NULL AUTO_INCREMENT,
M_Name VARCHAR(250) NOT NULL,
Gender ENUM('M','F'),
Email VARCHAR(250) NOT NULL, 
PRIMARY KEY(ID)
);

/* Creating the Loan table, link between copy and member */
CREATE TABLE Loan (
ID INT NOT NULL AUTO_INCREMENT,
copyID VARCHAR(10),
memberID INT,
borrowDate Date,
returnDate Date,
status INT NOT NULL, 
PRIMARY KEY (ID),
FOREIGN KEY (copyID) REFERENCES Copy(barCode),
FOREIGN KEY (memberID) REFERENCES Member(ID)
);
