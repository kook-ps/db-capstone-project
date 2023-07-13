DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT MAX(Quantity) AS Max_Quantity_in_Order
FROM Orders;
END //