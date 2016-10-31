/* Populating the student table */
INSERT INTO Author(ID,A_Name)
VALUES ('1','Soren Lauesen'), ('2','Robert Lafore'),
('3','Adam Trachtenberg'), ('4','David Sklar'),
('5','Kevin Tatroe');

INSERT INTO Book(ISBN,Title,Edition,YearIssued)
VALUES ('0672324539','Data Structures and Algorithms in Java','2',2002), 
('0321181433','User Interface Design: A Software Engineering Perspective','1',2004),
('0201745704','Software Requirements: Styles and Techniques','2',2002),
('144936375X','PHP Cookbook: Solutions & Examples for PHP Programmers','3',2014),
('1449392776','Programming PHP','3',2013);

INSERT INTO Copy(barCode,Book_ID) 
VALUES ('1234567', '0672324539'), ('5432122', '0672324539'),
('1237783', '144936375X'), ('8902342', '144936375X'),
('1256231', '0321181433'), ('1117891', '0201745704');

INSERT INTO Authorship(ID,Main,Book_ID,Author_ID)
VALUES ('1',true,'0672324539','2'),('2',true,'0321181433','1'),('3',true,'0201745704','1'),
('4',true,'144936375X','4'),('5',false,'144936375X','3'),('6',true,'1449392776','5');
