-- Dimension: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day INT,
    month INT,
    year INT,
    month_name VARCHAR(20)
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id VARCHAR(10) PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50)
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- INSERT CLEANED DATA

-- Dates (standardized format)
INSERT INTO dim_date VALUES
(1, '2024-01-01', 1, 1, 2024, 'January'),
(2, '2024-02-01', 1, 2, 2024, 'February'),
(3, '2024-03-01', 1, 3, 2024, 'March');

-- Stores
INSERT INTO dim_store VALUES
('S1', 'Store A', 'Mumbai', 'Maharashtra'),
('S2', 'Store B', 'Delhi', 'Delhi'),
('S3', 'Store C', 'Hyderabad', 'Telangana');

-- Products (category standardized)
INSERT INTO dim_product VALUES
('P1', 'Laptop', 'Electronics'),
('P2', 'T-Shirt', 'Clothing'),
('P3', 'Rice', 'Groceries');

-- Fact Sales (10 rows)
INSERT INTO fact_sales VALUES
(1, 1, 'S1', 'P1', 1, 50000),
(2, 1, 'S2', 'P2', 3, 1500),
(3, 1, 'S3', 'P3', 5, 500),
(4, 2, 'S1', 'P1', 2, 100000),
(5, 2, 'S2', 'P2', 2, 1000),
(6, 2, 'S3', 'P3', 4, 400),
(7, 3, 'S1', 'P1', 1, 50000),
(8, 3, 'S2', 'P2', 4, 2000),
(9, 3, 'S3', 'P3', 6, 600),
(10, 3, 'S1', 'P2', 2, 1000);