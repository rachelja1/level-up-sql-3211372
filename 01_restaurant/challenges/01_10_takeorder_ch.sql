-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- find customer
SELECT * FROM Customers
WHERE FirstName = "Loretta" and LastName = "Hundey" and Address = "6939 Elka Place";

-- create order record
INSERT INTO Orders (CustomerID, OrderDate)
VALUES (70, "2022-09-20 14:00:00");
SELECT * From Orders WHERE CustomerID = 70 and OrderDate = "2022-09-20 14:00:00";

-- add items to the order
SELECT d.DishID, d.Name, d.Price from Dishes as d
WHERE d.Name in ("House Salad", "Mini Cheeseburgers", "Tropical Blue Smoothie");

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES
  (1001, (SELECT DishID FROM Dishes WHERE Name = "House Salad")),
  (1001, (SELECT DishID FROM Dishes WHERE Name = "Mini Cheeseburgers")),
  (1001, (SELECT DishID FROM Dishes WHERE Name = "Tropical Blue Smoothie"))
;

SELECT * FROM OrdersDishes WHERE OrderID = 1001

-- calculate total price
SELECT sum(d.Price) FROM OrdersDishes as o inner join Dishes as d
ON o.DishID = d.DishID
WHERE o.OrderID = 1001;