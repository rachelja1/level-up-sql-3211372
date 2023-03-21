-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT p.FirstName,p.LastName, COUNT(DISTINCT LoanID) as numLoans
FROM Loans as l
JOIN Patrons as p
ON l.PatronID = p.PatronID
GROUP BY p.PatronID
ORDER BY numLoans
LIMIT 15;