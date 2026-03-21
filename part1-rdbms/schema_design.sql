CREATE TABLE Customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

CREATE TABLE Products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Sales_Reps (
    sales_rep_id VARCHAR(20) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100),
    office_address VARCHAR(200)
);

CREATE TABLE Orders (
    order_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20),
    sales_rep_id VARCHAR(20),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES Sales_Reps(sales_rep_id)
);

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id VARCHAR(20),
    product_id VARCHAR(20),
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


INSERT INTO Customers VALUES
('C1','Ravi','ravi@gmail.com','Mumbai'),
('C2','Anita','anita@gmail.com','Delhi'),
('C3','Rahul','rahul@gmail.com','Mumbai'),
('C4','Priya','priya@gmail.com','Chennai'),
('C5','Arjun','arjun@gmail.com','Hyderabad');


INSERT INTO Products VALUES
('P1','Laptop','Electronics',50000),
('P2','Mouse','Electronics',500),
('P3','Keyboard','Electronics',1500),
('P4','Monitor','Electronics',10000),
('P5','Printer','Electronics',8000);

INSERT INTO Sales_Reps VALUES
('S1','Amit','amit@gmail.com','Hyderabad'),
('S2','Neha','neha@gmail.com','Delhi'),
('S3','Karan','karan@gmail.com','Mumbai'),
('S4','Sneha','sneha@gmail.com','Chennai'),
('S5','Raj','raj@gmail.com','Bangalore');

INSERT INTO Orders VALUES
('O1','C1','S1','2024-01-01'),
('O2','C2','S2','2024-01-02'),
('O3','C3','S1','2024-01-03'),
('O4','C4','S3','2024-01-04'),
('O5','C5','S2','2024-01-05');

INSERT INTO Order_Items (order_id, product_id, quantity) VALUES
('O1','P1',1),
('O1','P2',2),
('O2','P3',1),
('O3','P4',1),
('O4','P5',1);
