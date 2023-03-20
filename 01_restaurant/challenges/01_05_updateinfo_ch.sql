-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

WITH t AS (
SELECT * FROM Customers
WHERE FirstName = "Taylor" AND LastName = "Jenkins" AND Address = "27170 6th Ave."
);

UPDATE Customers
SET Address = "74 Pine St., New York, NY.",
  City = "New York",
  State = "NY"
WHERE CustomerID = 26;