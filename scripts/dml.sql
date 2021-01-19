-- 3 customers
INSERT INTO Customers (ID,Firstname, Lastname, CardNumber)
VALUES 
(1,'Elmer', 'Tsai', '12345')
,(2,'Emily','Tsai', '21345')
,(3,'Josh','Wind', '31234');
-- 3 products

INSERT INTO Products (ID, Name, Price)
VALUES 
(1,'Apple',10)
,(2,'Banana',5)
,(3,'Pineapple',15.3);
-- 3 orders

INSERT INTO Orders (ID, ProductID, CustomerID)
VALUES 
(1,2, 2)
,(2,1, 1)
,(3,3, 1);

-- iPhone became a product
INSERT INTO Products (ID, Name, Price)
VALUES 
(4,'iPhone',200);
-- Tina Smith became a customer
INSERT INTO Customers (ID,Firstname, Lastname, CardNumber)
VALUES 
(4,'Tina', 'Smith', '41235');

-- Tina Smith Bought a Phone
INSERT INTO Orders (ID, ProductID, CustomerID)
VALUES 
(4,4, 4)

-- Return all orders by Tina Smith
SELECT Orders.ID, Customers.Firstname, Customers.Lastname
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.ID;

-- Return total revenue by phone.. might need another query to find phone price for robustness 
SELECT 200*COUNT(ProductID)
FROM Orders
WHERE ProductID = 4;

-- Update Phone Price
UPDATE Products
SET Price = 250
WHERE ID = 4;