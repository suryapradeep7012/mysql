CREATE DATABASE customer;

use customer;
-- NOT NULL & PRIMARY KEY Constraint
CREATE TABLE Customers (
CustomerID INT NOT NULL PRIMARY KEY,
CustomerName VARCHAR(50) NOT NULL,
Age INT
);

-- UNUQUE Constraint
CREATE TABLE Users(
UserID INT NOT NULL UNIQUE,
Username VARCHAR(50) NOT NULL,
Email VARCHAR(100) UNIQUE
);

-- PRIMARY KEY Constraint separatly define
CREATE TABLE Employees (
EmployeeID INT NOT NULL,
Name VARCHAR(50),
PRIMARY KEY (EmployeeID)
);

-- FOREIGN KEY Constraint (
CREATE TABLE Orders (
OrderID INT NOT NULL,
CustomerID INT,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- CHECK Constraint
CREATE TABLE Persons (
PersonID INT NOT NULL,
Age INT,
CHECK (Age >= 18)
);

-- DEFAULT Constraint
CREATE TABLE Products (
ProductID INT NOT NULL,
ProductName VARCHAR(50),
Price DECIMAL(10, 2) DEFAULT 0.00
);

-- ALTER TABLE to ADD a FOREIGN KEY  Constraint
ALTER TABLE Orders
ADD CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);