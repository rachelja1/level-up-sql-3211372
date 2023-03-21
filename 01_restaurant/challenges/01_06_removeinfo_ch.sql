-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT * from Customers as c join Reservations as r 
ON r.CustomerID = c.CustomerID
WHERE c.FirstName = "Norby" and r.Date > "2022-07-24";

DELETE FROM Reservaitons WHERE ReservationID = 2000;

-- or 
UPDATE Reservations SET Date = NULL WHERE ReservationID = 2000;