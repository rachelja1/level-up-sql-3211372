-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

-- set favourite dish to Quinoa Salmon Salad
UPDATE Customers
SET FavoriteDish = 
  (SELECT d.DishID FROM Dishes as d
  WHERE d.Name = "Quinoa Salmon Salad")
WHERE FirstName = "Cleo" and LastName = "Goldwater";

SELECT * FROM Customers
where FirstName = "Cleo" and LastName = "Goldwater";