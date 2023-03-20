-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT * from Dishes
ORDER BY Price;

SELECT * from Dishes
WHERE Type = "Beverage" or Type = "Appetizer"
ORDER BY Type;

SELECT * from Dishes
WHERE Type != "Beverage"
ORDER BY Type;

