DELIMITER //

CREATE PROCEDURE CheckBooking(IN bdate DATE, IN tablenum INT)
BEGIN
	DECLARE countrow INT;
	SELECT COUNT(*) INTO countrow
    FROM Bookings
    WHERE BookingDate = bdate AND TableNumber = tablenum;
    
    IF countrow > 0 THEN
		SELECT CONCAT("Table ", tablenum, " is already booked") AS Booking_Status;
	ELSE
		SELECT CONCAT("Table ", tablenum, " is available") AS Booking_Status;
	END IF;
END //