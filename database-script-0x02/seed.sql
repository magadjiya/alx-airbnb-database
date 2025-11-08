INSERT INTO Users (FirstName, LastName, Email, PasswordHash, PhoneNumber, Roles)
VALUES
('Khadija', 'Umar', 'kumar@example.com', 'hash123', '08012345678', 'Admin'),
('Aminu', 'Abdullahi', 'aminu@example.com', 'hash456', '08087654321', 'Guest'),
('Hassana', 'Mohammed', 'hassana@example.com', 'hash789', '08011223344', 'Host');

INSERT INTO Property (HostID, PropertyName, PropertyDescription, PropertyLocation, PricePerNight)
VALUES
(3, 'Sunny Villa', 'A beautiful villa with sea view.', 'Lagos', 15000),
(3, 'Cozy Apartment', 'Small but comfortable apartment.', 'Abuja', 8000),
(3, 'Colonial Bungalow', 'Spacious old house with a lovely in-built garden.', 'Kaduna', 200000);

INSERT INTO Booking (PropertyID, UserID, StartDate, EndDate, TotalPrice, BookingStatus)
VALUES
(1, 2, '2025-12-10', '2025-12-15', 75000, 'Pending'),
(2, 2, '2025-12-20', '2025-12-22', 16000, 'Confirmed'),
(3, 2, '2025-12-11', '2025-12-14', 600000, 'Canceled');

INSERT INTO Payment (BookingID, Amount, PaymentDate, PaymentMethod)
VALUES
(1, 75000, '2025-11-01', 'Paypal'),
(2, 16000, '2025-11-02', 'CreditCard');

INSERT INTO Review (PropertyID, UserID, Rating, Comment)
VALUES
(1, 2, 5, 'Amazing stay! The villa was perfect.'),
(2, 2, 4, 'Nice apartment, very cozy and clean.');

INSERT INTO Messages (SenderID, RecipientID, MessageBody)
VALUES
(2, 3, 'Hello, I am interested in booking your property.'),
(3, 2, 'Sure! The property is available for your selected dates.');