DELIMITER //

CREATE PROCEDURE AddValidBooking(IN bdate DATE, IN tablenum INT)
BEGIN
	DECLARE countrow INT;
    
    START TRANSACTION;
    
    INSERT INTO Bookings(BookingDate, TableNumber)
    VALUES (bdate, tablenum);
    
	SELECT COUNT(*) INTO countrow
    FROM Bookings
    WHERE BookingDate = bdate AND TableNumber = tablenum;
    
    IF countrow > 1 THEN
		SELECT CONCAT("Table ", tablenum, " is already booked - booking cancelled")
			AS Booking_status;
		ROLLBACK;
	ELSE
		SELECT CONCAT("Table ", tablenum, " is available - confirm booking")
			AS Booking_status;
		COMMIT;
    END IF;
END //