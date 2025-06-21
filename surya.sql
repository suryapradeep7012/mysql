-- 1. cretae database name 
create database customer;

use customer;
 -- 2. Create an initial table
CREATE TABLE Customers(
CustomerID INT PRIMARY KEY,
Name VARCHAR(100),
DateOfBirth DATE
);
-- 3. Add a new column 'Email'
ALTER TABLE Customers
ADD Email VARCHAR(255);
-- 4. Modify the 'DateOfBirth' column to store only the year
ALTER TABLE Customers
MODIFY COLUMN DateOfBirth YEAR;

-- 5. Rename the column 'Name' to 'FullName'
ALTER TABLE Customers
RENAME COLUMN Name TO FullName;

-- 6.  Add a primary key constraint on ‘CustomerID’ (if not already)
-- This is usually redundant if defined in CREATE, but shown here for demo
ALTER TABLE Customers
ADD CONSTRAINT PK_Customers_CustomerID PRIMARY KEY (CustomerID); 

-- 7. Drop the column ‘Email’
ALTER TABLE Customers
DROP COLUMN Email;
-- 8.  Drop the primary key constraint
ALTER TABLE Customers
DROP CONSTRAINT PK_Customers_CustomerID;

-- 9. Rename the table itself from 'Customers' to 'Clients'
ALTER TABLE Customers
RENAME TO Clients; 