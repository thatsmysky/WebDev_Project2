SELECT author.A_Name
FROM author
INNER JOIN authorship
ON author.ID = authorship.Author_ID
INNER JOIN book
ON authorship.Book_ID = book.ISBN
WHERE book.YearIssued = '2002';
