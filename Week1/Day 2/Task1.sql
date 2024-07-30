create Database company;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Salary INT NOT NULL CHECK (Salary > 0), -- Constraint to check if Salary is above 0
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'CSE'),
(2, 'MAchenical'),
(3, 'IT'),
(4, 'AIML'),
(5, 'Cloud');


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(1, 'John', 'Doe', 'john.doe@company.com', 60000, 1),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 2),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 1),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 3),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 2),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 3),
(7, 'Robert', 'Miller', 'robert.miller@company.com', 70000, 4),
(8, 'Jessica', 'Wilson', 'jessica.wilson@company.com', 65000, 4),
(9, 'Daniel', 'Anderson', 'daniel.anderson@company.com', 72000, 3),
(10, 'Ashley', 'Taylor', 'ashley.taylor@company.com', 58000, 2),
(11, 'William', 'Brown', 'william.brown@company.com', 78000, 1),
(12, 'Sophia', 'Davis', 'sophia.davis@company.com', 62000, 5);

-- Attempt to insert a new employee with a non-existent DepartmentID (Foreign Key Constraint Violation)
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(13, 'Anmol', 'PAndey', 'Anmol.PAndey@company.com', 1000, 6);

-- Attempt to insert a duplicate email address (Unique Constraint Violation)
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(14, 'Swati', 'Gupta', 'jane.smith@company.com', 300, 2);

-- Attempt to delete a department that is still referenced by an employee (Foreign Key Constraint Violation)
DELETE FROM Departments WHERE DepartmentID = 5;

-- Attempt to update an employee's DepartmentID to a non-existent value (Foreign Key Constraint Violation)
UPDATE Employees SET DepartmentID = 10 WHERE EmployeeID = 1;