-- Customers Table
CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE SalesReps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100),
    office_address TEXT
);

-- Orders Table
CREATE TABLE Orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    sales_rep_id VARCHAR(10),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES SalesReps(sales_rep_id)
);

-- Order Details Table
CREATE TABLE OrderDetails (
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Sample Inserts

INSERT INTO Customers VALUES
('C101', 'Rahul Sharma', 'rahul@gmail.com', 'Mumbai'),
('C102', 'Anita Verma', 'anita@gmail.com', 'Delhi'),
('C103', 'Vikram Rao', 'vikram@gmail.com', 'Hyderabad'),
('C104', 'Priya Singh', 'priya@gmail.com', 'Mumbai'),
('C105', 'Arjun Mehta', 'arjun@gmail.com', 'Pune');

INSERT INTO Products VALUES
('P101', 'Laptop', 'Electronics', 50000),
('P102', 'Phone', 'Electronics', 20000),
('P103', 'Tablet', 'Electronics', 15000),
('P104', 'Headphones', 'Accessories', 2000),
('P105', 'Keyboard', 'Accessories', 1000);

INSERT INTO SalesReps VALUES
('S101', 'Amit Das', 'amit@company.com', 'Delhi Office'),
('S102', 'Neha Kapoor', 'neha@company.com', 'Mumbai HQ'),
('S103', 'Rohit Jain', 'rohit@company.com', 'Bangalore Office'),
('S104', 'Sneha Iyer', 'sneha@company.com', 'Chennai Office'),
('S105', 'Karan Shah', 'karan@company.com', 'Pune Office');

INSERT INTO Orders VALUES
('ORD1', 'C101', 'S101', '2025-01-10'),
('ORD2', 'C102', 'S102', '2025-01-12'),
('ORD3', 'C103', 'S103', '2025-01-15'),
('ORD4', 'C104', 'S104', '2025-01-18'),
('ORD5', 'C105', 'S105', '2025-01-20');

INSERT INTO OrderDetails VALUES
('ORD1', 'P101', 1),
('ORD2', 'P102', 2),
('ORD3', 'P103', 1),
('ORD4', 'P104', 3),
('ORD5', 'P105', 2);
