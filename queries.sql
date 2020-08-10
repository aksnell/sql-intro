CREATE TABLE Employees (
    FullName TEXT NOT NULL,
    Salary INT,
    JobPosition TEXT,
    PhoneExtension TEXT,
    IsPartTime BOOL
)

INSERT INTO Employees (FullName, Salary, JobPosition, PhoneExtension, IsPartTime) VALUES
    ("Steve", 1700, "Manager", "732", FALSE),
    ("Lazy Larry", 1700, "Manager", "732", FALSE),
    ("Steve", 1700, "Cook", "732", TRUE),
    ("Steve", 550, "Cook", "732", TRUE);

SELECT * FROM Employees;

SELECT FullName, PhoneExtension FROM Employees;

INSERT INTO Employees (FullName, Salary, JobPosition, PhoneExtension, IsPartTime) VALUES
    ("Steve", 450, "Software Developer", "732", FALSE);

UPDATE Employees
SET Salary = 500
WHERE JobPosition = 'cook'

DELETE FROM Employees WHERE FullName = 'Lazy Larry';

CREATE TABLE Departments (
    Id SERIAL PRIMARY KEY,
    DepartmentName STRING,
    Building STRING
)

ALTER TABLE Employees ADD COLUMN DepartmentId INTEGER NULL REFERENCES Departments (Id);

CREATE TABLE Orders (
    Id SERIAL PRIMARY KEY,
    OrderNumber TEXT,
    DatePlaced DATETIME,
    Email TEXT
)

CREATE TABLE Products (
    Price DOUBLE,
    Name TEXT,
    Description TEXT,
    QuantityInStock INT
)

CREATE TABLE ProductOrders (
    Id SERIAL PRIMARY KEY,
    OrderQuantity INT,
    OrderId INTEGER REFERENCES Orders (Id),
    ProductId INTEGER REFERENCES Products (Id)
)

INSERT INTO Departments (DepartmentName, Building) VALUES
    ("Development", "Main"),
    ("Marketing", "North");


INSERT INTO Employees (FullName, Salary, JobPosition, PhoneExtension, IsPartTime) VALUES
    ("Tim Smith", 40000, "Programmer", "123", FALSE, 1),
    ("Barbara Ramsay", 80000, "Manager", "234", FALSE, 1),
    ("Tom Jones", 32000, "Admin", "456", TRUE, 2);

INSERT INTO Products (Price, Name, Description, QuantityInStock) VALUES
    (12.45, "Widget", "The Original Widget", 100),
    (99.99, "Flowbee", "Perfect for haircuts", 3);

INSERT INTO Orders (OrderNumber, DatePlaced, Email) VALUES
    ("X529", "Jan 1st, 2020 at 4:55PM", "person@example.com");

INSERT INTO ProduceOrders (OrderQuantity, OrderId, ProductId) VALUES
    (3, 1, 1),
    (2, 1, 1);


SELECT *
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentsId = Departments.Id


SELECT Employees.PhoneExtension
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentsId = Departments.Id

SELECT *
FROM Orders
JOIN ProductOrders ON ProductOrders.OrderId = Order.Id
JOIN Products ON Products.Id = ProductOrders.ProductId

DELETE FROM ProductOrders
LEFT JOIN Orders ON Orders.Id = ProductOrders.Id
LEFT JOIN Products ON Products.Id = ProductOrds.Id
WHERE Orders.OrderNumber = 'X529' AND Products.Name = 'Flowbee'

