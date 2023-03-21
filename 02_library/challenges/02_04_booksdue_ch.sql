-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT b.Title, l.DueDate, p.FirstName, p.LastName, p.Email
FROM Books as b 
  JOIN Loans as l ON b.BookID = l.BookID
  JOIN Patrons as p ON l.PatronID = p.PatronID
WHERE l.DueDate = "2022-07-13"
AND l.ReturnedDate is NULL;