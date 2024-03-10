--Using MYSQL

--create database as schema1
create database schema1;
USE schema1;

-- Create Product table
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    SKU VARCHAR(50),
    category_id INT,
    inventory_id INT,
    price DECIMAL(10, 2),
    discount_id INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product_Category table
CREATE TABLE Product_Category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Product_Inventory table
CREATE TABLE Product_Inventory (
    id INT PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Create Discount table
CREATE TABLE Discount (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    discount_percent DECIMAL(5, 2),
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);


-- Add foreign key constraints
ALTER TABLE Product
ADD CONSTRAINT fk_category_id
FOREIGN KEY (category_id) REFERENCES Product_Category(id);

ALTER TABLE Product
ADD CONSTRAINT fk_inventory_id
FOREIGN KEY (inventory_id) REFERENCES Product_Inventory(id);

ALTER TABLE Product
ADD CONSTRAINT fk_discount_id
FOREIGN KEY (discount_id) REFERENCES Discount(id);
