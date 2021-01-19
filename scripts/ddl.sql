CREATE TABLE Products
(
    ID int NOT NULL PRIMARY KEY,
    Name VARCHAR(255),
    Price DECIMAL

);

CREATE TABLE Orders
(
    ID int NOT NULL PRIMARY KEY,
    ProductID int FOREIGN KEY REFERENCES Products(ID),
    CustomerID int FOREIGN KEY REFERENCES Customers(ID)
);

CREATE TABLE Customers
(
    ID int NOT NULL PRIMARY KEY,
    Firstname VARCHAR(255),
    Lastname VARCHAR(255),  
    CardNumber int

);