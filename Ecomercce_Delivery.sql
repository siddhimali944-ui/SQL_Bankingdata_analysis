CREATE DATABASE ecommerce_delivery;
CREATE TABLE Customers_3 (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Delivery (
    DeliveryID INT PRIMARY KEY,
    OrderID INT,
    DeliveryDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
INSERT INTO Customers (CustomerID, Name, Email, Phone, Address)
VALUES (1, 'Siddhi Mali', 'siddhi@gmail.com', '9876543210', 'Mumbai');
DESCRIBE Customers;
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone)
VALUES (1, 'Siddhi', 'Mali', 'siddhi@gmail.com', '9876543210');

INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES (101, 'Laptop', 'Electronics', 55000.00);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES (201, 1, '2025-06-01', 55000.00);

INSERT INTO Delivery (DeliveryID, OrderID, DeliveryDate, Status)
VALUES (301, 201, '2025-06-03', 'Delivered');

DESC Orders;
SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Orders';
SHOW TABLES;
SELECT * FROM Orders;
DROP TABLE Orders;

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    Payment_Status VARCHAR(20),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);
DESCRIBE Orders;
DROP TABLE Orders;

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    Payment_Status VARCHAR(20),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);
SHOW TABLES;
DROP TABLE IF EXISTS Delivery;
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    CustomerID INT,
    Order_Date DATE,
    Payment_Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
DESCRIBE Customers_3;
INSERT INTO Orders (Order_ID, CustomerID, Order_Date, Payment_Status)
VALUES (1001, 1, '2025-06-01', 'Paid');
SELECT * FROM Customers_3;
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone)
VALUES 
(3, 'Amit', 'Patel', 'amit@gmail.com', '9876543212'),
(4, 'Neha', 'Verma', 'neha@gmail.com', '9876543213'),
(5, 'Rohan', 'Mehta', 'rohan@gmail.com', '9876543214'),
(6, 'Priya', 'Singh', 'priya@gmail.com', '9876543215'),
(7, 'Karan', 'Gupta', 'karan@gmail.com', '9876543216'),
(8, 'Anjali', 'Nair', 'anjali@gmail.com', '9876543217'),
(9, 'Vikas', 'Yadav', 'vikas@gmail.com', '9876543218'),
(10, 'Sneha', 'Iyer', 'sneha@gmail.com', '9876543219'),
(11, 'Arjun', 'Reddy', 'arjun@gmail.com', '9876543220'),
(12, 'Pooja', 'Joshi', 'pooja@gmail.com', '9876543221'),
(13, 'Manish', 'Kumar', 'manish@gmail.com', '9876543222'),
(14, 'Kavita', 'Desai', 'kavita@gmail.com', '9876543223'),
(15, 'Suresh', 'Naik', 'suresh@gmail.com', '9876543224'),
(16, 'Meena', 'Kulkarni', 'meena@gmail.com', '9876543225'),
(17, 'Deepak', 'Chopra', 'deepak@gmail.com', '9876543226'),
(18, 'Swati', 'Pandey', 'swati@gmail.com', '9876543227'),
(19, 'Nikhil', 'Agarwal', 'nikhil@gmail.com', '9876543228'),
(20, 'Ritika', 'Bansal', 'ritika@gmail.com', '9876543229'),
(21, 'Ajay', 'Thakur', 'ajay@gmail.com', '9876543230'),
(22, 'Divya', 'Saxena', 'divya@gmail.com', '9876543231');

INSERT INTO Orders (Order_ID, CustomerID, Order_Date, Payment_Status)
VALUES
(1004, 3, '2025-06-04', 'Paid'),
(1005, 4, '2025-06-05', 'Pending'),
(1006, 5, '2025-06-06', 'Failed'),
(1007, 6, '2025-06-07', 'Paid'),
(1008, 7, '2025-06-08', 'Pending'),
(1009, 8, '2025-06-09', 'Paid'),
(1010, 9, '2025-06-10', 'Failed'),
(1011, 10, '2025-06-11', 'Paid'),
(1012, 11, '2025-06-12', 'Pending'),
(1013, 12, '2025-06-13', 'Paid'),
(1014, 13, '2025-06-14', 'Failed'),
(1015, 14, '2025-06-15', 'Paid'),
(1016, 15, '2025-06-16', 'Pending'),
(1017, 16, '2025-06-17', 'Paid'),
(1018, 17, '2025-06-18', 'Failed'),
(1019, 18, '2025-06-19', 'Paid'),
(1020, 19, '2025-06-20', 'Pending'),
(1021, 20, '2025-06-21', 'Paid'),
(1022, 21, '2025-06-22', 'Failed'),
(1023, 22, '2025-06-23', 'Paid');
SELECT * FROM Orders;
SELECT *
FROM Delivery
WHERE Delivery_Date > Expected_Date;
CREATE TABLE Delivery (
    DeliveryID INT PRIMARY KEY,
    Order_ID INT,
    Delivery_Date DATE,
    Expected_Date DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);
INSERT INTO Delivery (DeliveryID, Order_ID, Delivery_Date, Expected_Date, Status)
VALUES
(5, 1006, '2025-06-09', '2025-06-08', 'Late'),
(6, 1007, '2025-06-10', '2025-06-10', 'On Time'),
(7, 1008, '2025-06-11', '2025-06-10', 'Late'),
(8, 1009, '2025-06-12', '2025-06-12', 'On Time'),
(9, 1010, '2025-06-13', '2025-06-12', 'Late'),
(10, 1011, '2025-06-14', '2025-06-14', 'On Time'),
(11, 1012, '2025-06-15', '2025-06-14', 'Late'),
(12, 1013, '2025-06-16', '2025-06-16', 'On Time'),
(13, 1014, '2025-06-17', '2025-06-16', 'Late'),
(14, 1015, '2025-06-18', '2025-06-18', 'On Time'),
(15, 1016, '2025-06-19', '2025-06-18', 'Late'),
(16, 1017, '2025-06-20', '2025-06-20', 'On Time'),
(17, 1018, '2025-06-21', '2025-06-20', 'Late'),
(18, 1019, '2025-06-22', '2025-06-22', 'On Time'),
(19, 1020, '2025-06-23', '2025-06-22', 'Late'),
(20, 1021, '2025-06-24', '2025-06-24', 'On Time'),
(21, 1022, '2025-06-25', '2025-06-24', 'Late'),
(22, 1023, '2025-06-26', '2025-06-26', 'On Time'),
(23, 1024, '2025-06-27', '2025-06-26', 'Late'),
(24, 1025, '2025-06-28', '2025-06-28', 'On Time');
SELECT * FROM Orders;
