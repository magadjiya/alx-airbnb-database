CREATE TABLE Users (
    UserID SERIAL PRIMARY KEY,
    FirstName varchar(30) NOT NULL, 
    LastName varchar(30) NOT NULL, 
    Email varchar(50) UNIQUE NOT NULL, 
    PasswordHash varchar(100) NOT NULL, 
    PhoneNumber varchar(30), 
    Roles varchar(5) CHECK(Role IN('Admin', 'Guest', 'Host')) NOT NULL DEFAULT 'Guest',
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Property (
    PropertyID SERIAL PRIMARY KEY,
    HostID int references Users(UserID),
    PropertyName varchar(50) NOT NULL,
    PropertyDescription text,
    PropertyLocation varchar(225),
    PricePerNight int,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Booking (
    BookingID SERIAL PRIMARY KEY,
    PropertyID int references Property(PropertyID),
    UserID int references Users(UserID),
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    TotalPrice NUMERIC(10,2) NOT NULL,
    BookingStatus varchar(9) CHECK (ROLE IN('Pending', 'Confirmed', 'Canceled')),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Payment (
    PaymentID SERIAL PRIMARY KEY,
    BookingID int references Booking(BookingID),
    Amount int,
    PaymentDate DATE NOT NULL,
    PaymentMethod varchar(10) CHECK(ROLE IN('Paypal', 'Stripe', 'CreditCard')) DEFAULT 'CreditCard'
);

CREATE TABLE Review (
    ReviewID SERIAL PRIMARY KEY,
    PropertyID int references Property(PropertyID),
    UserID int references Users(UserID),
    Rating int CONSTRAINT rating_check CHECK (Rating BETWEEN 1 to 5),
    Comment text,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Messages (
    MessageID SERIAL PRIMARY KEY,
    SenderID int references Users(UserID),
    RecipientID int references Users(UserID),
    MessageBody text,
    SentAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);