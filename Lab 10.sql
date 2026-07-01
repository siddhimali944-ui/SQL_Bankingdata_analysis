USE BankingDB;
CREATE VIEW Suspicious_Transactions AS
SELECT TransactionID,CustomerID,TransactionType,Amount FROM Transactions_2
WHERE Amount > 25000;
SELECT *FROM Suspicious_Transactions;
INSERT INTO Transactions_2
(TransactionID, AccountID, CustomerID, TransactionDate, Amount, TransactionType)
VALUES
(315,203,101,'2025-05-21',7000.00,'Deposit'),
(316,204,102,'2025-05-22',84000.00,'Withdrawal');
CREATE OR REPLACE VIEW Suspicious_Transactions AS
SELECT
    t.TransactionID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    c.BranchName,
    t.TransactionType,
    t.Amount
FROM Transactions_2 t
INNER JOIN Customers_2 c
    ON t.CustomerID = c.CustomerID
WHERE t.Amount > 25000;
SELECT
    TransactionID,
    CustomerName,
    BranchName,
    TransactionType,
    Amount
FROM Suspicious_Transactions
ORDER BY Amount DESC;



