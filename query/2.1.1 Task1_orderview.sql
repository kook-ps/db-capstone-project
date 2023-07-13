CREATE VIEW OrdersView AS 
SELECT OrderID, Quantity, TotalCost 
FROM littlelemondb.orders 
WHERE Quantity > 2; 