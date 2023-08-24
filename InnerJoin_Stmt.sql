USE LittleLemonDB;

SELECT Customer.CustomerID, Customer.FullName, Orders.OrderID, Orders.TotalCost, Menu.Course, Menu.Cuisine
FROM Customer INNER JOIN Orders
ON Customer.CustomerID = Orders.CustomerID
INNER JOIN Menu ON Orders.MenuID = Menu.MenuID
WHERE TotalCost > 150
ORDER BY TotalCost;