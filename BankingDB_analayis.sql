CREATE DATABASE BankingDB;
USE BankingDB;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);
SHOW DATABASES;
DESC Customer;
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) );
    
    CREATE TABLE Branches (
	BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE AccountBranches (
    AccountID INT,
    BranchID INT,
    AssignmentDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
CREATE DATABASE Banking;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
); 
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) );
    ALTER TABLE Customers
CREATE TABLE Branches (
	BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
    
);
CREATE TABLE AccountBranches (
    AccountID INT,
    BranchID INT,
    AssignmentDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
ALTER TABLE Customers
ADD CONSTRAINT uq_Email UNIQUE (Email);
    DESC Customers;
    INSERT in customer
    (customerID,firstname,lastname,Email,AccountCreationDate,DateofBirth)
    VALUE
    
    (103, 'Amit','Joshi','amit.joshi@gmail.com', '9123456780','1995-03-21','23-03-2022'),
    (104,'sakshi",'patil',sakshi.@gmail.com','8655616758','1862-09-07','2005-09-2021'),
INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000);
use BankingDB;
INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000);
SELECT * from accounts;
INSERT INTO Transactions
(transcationID,AccountID, TransactionDate, Amount, transactionType)
value
(301,201,'2025-06-01',5000,'Credit'),
(302,202,'2025-06-02',6000,'Debit'),
#Branches
INSERT INTO Branches
(BranchID,branchName,BranchAddress,BranchPhone)
VALUE
(402,'Andheri Branch', 'Mumbai Andheri east','932296859');
(403,'Borvali Branch','Mumbai Borvali east',' 8976568727');
USE BankingDB;
INSERT INTO Customers 
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate)
VALUES
(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2025-05-03');
INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000);
SELECT * FROM Customers WHERE CustomerID = 101;
INSERT INTO Customers
 (CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate)
VALUES (101, 'Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', '2025-01-01');
INSERT INTO Accounts 
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000);
INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000);
UPDATE Customers
SET Phone = '9999999999'
WHERE CustomerID = 101;
SELECT * FROM Customers
WHERE CustomerID = 101;
UPDATE Customers
SET Email = 'priya.patil@gmail.com'
WHERE CustomerID = 102;
DELETE FROM Transactions
WHERE TransactionID = 302;
SELECT * FROM Transactions;
DELETE FROM Accounts
WHERE AccountID = 202;
SELECT * FROM Accounts;
#DQL Demonstation #
USE BankingDB;
SELECT * FROM Customers;
SELECT * FROM Accounts;
SELECT* FROM Branches;
SELECT *FROM Transactions;
SELECT *From Loans;
SELECT * From AccountBranches;
CREATE DATABASE SQL_Practice;
USE SQL_Practice;
SELECT *FROM Accounts
WHERE AccountType = 'Savings';
SELECT *FROM Accounts
WHERE Balance >=45000;
SELECT *FROM Transactions
WHERE Amount BETWEEN 5000 AND 20000;
SELECT *FROM Transactions
WHERE Amount>=5000
and amount<=2000;
SELECT *FROM Customers
WHERE CustomerID IN (101,102,103);
SELECT * FROM Customers
WHERE FirstName like 'R%';
SELECT *FROM Customers
ORDER BY FirstName ASC;
SELECT *FROM Customers
ORDER BY FirstName DESC ;
SELECT *FROM Accounts
ORDER BY Balance DESC;
SELECT DISTINCT AccountType
FROM Accounts;
SELECT *FROM Accounts
ORDER BY Balance DESC
 LIMIT 1 OFFSET 1;
 SELECT *FROM Transactions
LIMIT 5 OFFSET 2;
SELECT *FROM Customers
WHERE Phone IS NULL;
SELECT *FROM Customers
WHERE Email IS NOT NULL;
SELECT AccountID,
       Balance,
       CASE
           WHEN Balance >= 50000 THEN 'Premium Account'
           WHEN Balance >= 25000 THEN 'Standard Account'
           ELSE 'Basic Account'
       END AS AccountCategory
FROM Accounts;
SELECT AccountID,
       Balance,
       RANK() OVER (ORDER BY Balance ASC) AS BalanceRank
FROM Accounts;
SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
FROM Transactions;
SELECT TransactionID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;
SELECT* FROM customers
WHERE Firstname LIKE 'A%' ; 
SELECT* FROM customers
WHERE Email LIKE 'gamil%' ;
SELECT* FROM customers
WHERE Lastname LIKE 'KAR%' ;
SELECT* FROM Accounts
WHERE AccountType IN ('Savings','Current');
SELECT* FROM Transactions
WHERE TransactionType IN ('Deposit','Withdrawl');
SELECT *FROM Customers
WHERE CustomerID IN (101,102,105);
SELECT *FROM Customers
ORDER BY LastName ASC;
SELECT *FROM Accounts
ORDER BY Balance DESC;
SELECT *FROM Transactions
ORDER BY TransactionDate DESC;
SELECT *FROM Accounts
ORDER BY Balance DESC
LIMIT 5;
 SELECT *FROM Customers
LIMIT 3;
SELECT *FROM Transactions
LIMIT 5 OFFSET 3;
SELECT *FROM Accounts
WHERE AccountType = 'Savings'
ORDER BY Balance DESC;
SELECT *FROM Customers
WHERE FirstName LIKE 'S%'
LIMIT 5;
SELECT *FROM Transactions
WHERE TransactionType IN ('Deposit','Withdrawal')
ORDER BY TransactionDate DESC; 








