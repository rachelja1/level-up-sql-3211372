-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

-- count number of copies
SELECT COUNT(DISTINCT BookID) FROM Books
Where Title = "Dracula";
SELECT BookID from Books WHERE Title = "Dracula";

-- one query for solution
SELECT -- count total number of copies
  (SELECT COUNT(DISTINCT BookID) FROM Books
  Where Title = "Dracula") -
-- minus number of checkedout copies - count number of returned dates = null
  (SELECT COUNT(DISTINCT BookID) FROM Loans
  WHERE ReturnedDate is NULL
  AND BookID in 
    (SELECT BookID from Books WHERE Title = "Dracula"))
AS "No. of available copies"
;