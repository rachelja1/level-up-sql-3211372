-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

-- find customer
SELECT * from Customers
WHERE FirstName = "Sam" and LastName = "McAdams";
-- does not exist

INSERT INTO Customers
  (FirstName, LastName, Email)
VALUES (
  "Sam", "McAdams", "smac@kinetecoinc.com"
);

INSERT INTO Reservations
  (CustomerID, Date, PartySize)
VALUES
  (102, "2022-08-12 18:00:00", 5)
;

SELECT c.FirstName, c.LastName, c.Email, r.Date, r.PartySize
FROM Customers c join Reservations r
ON c.CustomerID = r.CustomerID
WHERE c.Email = "smac@kinetecoinc.com";