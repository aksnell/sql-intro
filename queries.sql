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
