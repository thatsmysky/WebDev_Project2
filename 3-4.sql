SELECT DISTINCT Member.ID, Member.M_Name, copyID, Book.Title
FROM Loan
INNER JOIN Copy
ON Copy.barCode=Loan.copyID
INNER JOIN Book
ON Book.ISBN=Copy.Book_ID
INNER JOIN Member
ON Member.ID=Loan.memberID
WHERE Loan.status='1';
