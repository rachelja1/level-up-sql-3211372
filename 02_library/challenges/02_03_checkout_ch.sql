-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

-- find BookID
SELECT BookID from Books WHERE Barcode = "2855934983";
SELECT BookID from Books WHERE Barcode = "4043822646";

-- find PatronID
SELECT PatronID from Patrons WHERE Email = "jvaan@wisdompets.com";

-- solution - one query
INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES
  ( (SELECT BookID from Books WHERE Barcode = "2855934983"),
    (SELECT PatronID from Patrons WHERE Email = "jvaan@wisdompets.com"),
    "2022-08-25", "2022-09-08"
  ),
  ( (SELECT BookID from Books WHERE Barcode = "4043822646"),
    (SELECT PatronID from Patrons WHERE Email = "jvaan@wisdompets.com"),
    "2022-08-25", "2022-09-08"
  );


SELECT * FROM Loans 
ORDER BY DueDate desc;