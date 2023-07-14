DELIMITER //

CREATE PROCEDURE UpdateBooking(IN bid INT, IN bdate DATE)
BEGIN
	UPDATE Bookings
    SET BookingDate = bdate
    WHERE BookingID = bid;
    
    SELECT CONCAT("Booking ", bid, " updated") AS Confirmation;
END //