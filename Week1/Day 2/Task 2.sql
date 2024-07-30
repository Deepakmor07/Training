create database Company2;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY, -- 5 Question 
    DepartmentName VARCHAR(50) NOT NULL
);


INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Marketing'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR');

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE, -- 2 Question
    Salary INT NOT NULL CHECK (Salary > 0),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) -- 3 Question
);

-- Sample Records for Employees Table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(1, 'John', 'Doe', 'john.doe@company.com', 60000, 1),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 2),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 1),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 3),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 2),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 3);

-- Create Projects Table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) -- 4 Question
);


INSERT INTO Projects (ProjectID, ProjectName, DepartmentID) VALUES
(1, 'Project A', 1),
(2, 'Project B', 2),
(3, 'Project C', 3),
(4, 'Project D', 4),
(5, 'Project E', 5);

-- Practice Questions

-- 1. 
ALTER TABLE Employees
ADD CONSTRAINT chk_Salary CHECK (Salary > 0);

-- 6
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID)
VALUES (7, 'Alice', 'Green', 'alice.green@company.com', 70000, 999); 

-- 7. 
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID)
VALUES (8, 'Bob', 'White', 'john.doe@company.com', 68000, 1); 
-- 8
DELETE FROM Departments WHERE DepartmentID = 1; 

-- 9. 
UPDATE Employees
SET DepartmentID = 999
WHERE EmployeeID = 1; 
