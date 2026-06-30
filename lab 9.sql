USE BankingDB;
SELECT TransactionID,
    CustomerID,
    TransactionType,Amount FROM Transactions_2 WHERE Amount > (
    SELECT AVG(Amount)
    FROM Transactions_2
);
	ALTER TABLE Customers_2
ADD BranchName VARCHAR(100);
SELECT
    t.TransactionID,
    t.CustomerID,
    (
        SELECT CONCAT(c.FirstName, ' ', c.LastName)
        FROM Customers_2 c
        WHERE c.CustomerID = t.CustomerID
    ) AS CustomerName,
    (
        SELECT c.BranchName
        FROM Customers_2 c
        WHERE c.CustomerID = t.CustomerID
    ) AS BranchName,
    t.TransactionType,
    t.Amount
FROM Transactions_2 t
ORDER BY BranchName, t.CustomerID;

SELECT* FROM Customers_2;
INSERT Customers_2
Values(109,'Siddhi','Mali','siddhimali944@gmail.com','5623894711','2025-05-01','1999-06-05','Dadar');
INSERT INTO Transactions_2
(TransactionID, AccountID, CustomerID, TransactionDate, Amount, TransactionType)
VALUES
(313,201,109,'2025-05-01',5000.00,'Deposit'),
(314,202,109,'2025-05-02',11000.00,'Withdrawal');

SELECT * FROM CUSTOMERS_2;
SELECT * FROM TRANSACTIONS_2;
