SELECT Book.Title,COUNT(Book_ID)
FROM Copy
INNER JOIN Book
WHERE Book.ISBN = Copy.Book_ID
GROUP BY Book_ID;
