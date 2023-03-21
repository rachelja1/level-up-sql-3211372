-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.CustomerID, COUNT(o.OrderID) as OrderCount, c.FirstName,
c.LastName, c.Email 
from Orders as o JOIN Customers as c
ON c.CustomerID = o.CustomerID
GROUP BY o.CustomerID
ORDER BY OrderCount desc
LIMIT 6;