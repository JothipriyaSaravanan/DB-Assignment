# 1.Explain the relationship between the "Product" and "Product_Category" entities:

The relationship between "Product" and "Product_Category" is a many-to-one relationship. This means that multiple products can belong to the 
same category, but each product belongs to only one category. For example, a "Laptop" and a "Smartphone" might both belong to the "Electronics" 
category. This relationship is typically represented by a foreign key in the "Product" table that references the primary key of the 
"Product_Category" table.

# 2.How could you ensure that each product in the "Product" table has a valid category assigned to it?

To ensure that each product in the "Product" table has a valid category assigned to it, can use "foreign key constraints". 
When creating the "Product" table, can define the "category_id" column as a foreign key that references the "id" column in the "Product_Category"
table. This constraint will validate whether the value entered into the "category_id" column exists as a primary key in the "Product_Category" 
table or not.

Query to define the foreign key constraint in SQL (MySql):

ALTER TABLE Product
ADD CONSTRAINT fk_category_id
FOREIGN KEY (category_id) REFERENCES Product_Category(id);

By applying this constraint, any attempt to insert or update a product with a category_id that does not exist in the "Product_Category" 
table will be rejected and this will ensuring that each product always has a valid category assigned to it.





