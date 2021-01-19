INSERT INTO Customers (ID,Firstname, Lastname, CardNumber)
VALUES 
(1,'Elmer', 'Tsai', '12345')
,(2,'Emily','Tsai', '21345')
,(3,'Josh','Wind', '31234');

INSERT INTO Products (ID, Name, Price)
VALUES 
(1,'Apple',10)
,(2,'Banana',5)
,(3,'Pineapple',15.3);

INSERT INTO Orders (ID, ProductID, CustomerID)
VALUES 
(1,2, 2)
,(2,1, 1)
,(3,3, 1);


INSERT INTO Products (ID, Name, Price)
VALUES 
(4,'iPhone',200);

INSERT INTO Customers (ID,Firstname, Lastname, CardNumber)
VALUES 
(4,'Tina', 'Smith', '41235');

INSERT INTO Orders (ID, ProductID, CustomerID)
VALUES 
(4,4, 4)

-- Return all orders by Tina Smith
SELECT Orders.ID, Customers.Firstname, Customers.Lastname
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.ID;

-- Return total revenue by phone
SELECT 200*COUNT(ProductID)
FROM Orders
WHERE ProductID = 4