SELECT Customers.CustomerID, Customers.Name, OrderID, TotalCost, MenuName, CourseName
FROM Customers INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Menus
ON Menus.MenuID = Orders.MenuID
INNER JOIN Menuitemns
ON Menus.MenuID = Menuitemns.MenuID;