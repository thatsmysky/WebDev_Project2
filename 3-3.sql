SELECT DISTINCT copyID, Book.Title
FROM Loan
INNER JOIN Copy
ON Copy.barCode=Loan.copyID
INNER JOIN Book
ON Book.ISBN=Copy.Book_ID
WHERE (YEAR(borrowDate)>=2010 AND YEAR(returnDate)>=2010) AND 
(YEAR(borrowDate)<=2012 AND YEAR(returnDate) <= 2012);
