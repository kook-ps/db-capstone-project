DELIMITER //

CREATE PROCEDURE AddBooking(IN bdate DATE, IN tablenum INT, IN custid INT)
BEGIN
	INSERT INTO Bookings(BookingDate, TableNumber, CustomerID)
    VALUES(bdate, tablenum, custid);
END //