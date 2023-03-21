-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT Title, Barcode
FROM Books
WHERE Published BETWEEN 1890 AND 1899
-- not in table of unavailable copies
AND BookID NOT IN (
  SELECT BookID
  FROM Loans
  WHERE ReturnedDate is NULL
  AND 1890 < Published < 1899
  )
ORDER BY Title
;