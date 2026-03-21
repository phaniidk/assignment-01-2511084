## Anomaly Analysis
1.Insert Anomaly  
In the dataset, product details are stored along with order details. This means a new product cannot be added unless there is an order associated with it.  
Example: A new product cannot be inserted without creating a fake order_id.

2.Update Anomaly  
Customer details such as customer_name and customer_city are repeated across multiple rows. If a customer’s city changes, all rows must be updated. Missing even one row will lead to inconsistent data.  
Example: Same customer_id appears multiple times.

3.Delete Anomaly  
If an order is deleted, all information related to that product or customer in that row may also be lost.  
Example: Deleting the only record of a product removes all its details.

## Normalization Justification
In the given orders_flat.csv dataset, all information such as customers, products, orders, and sales representatives is stored in a single table. While this may seem simple, it leads to significant data redundancy and multiple anomalies.
For example, customer details like customer_name and customer_city are repeated across multiple rows. If a customer’s city changes, it must be updated in every row. Missing even one row causes inconsistent data, which is an update anomaly. Similarly, new products cannot be added without creating an order, which is an insert anomaly. Deleting a row may also remove all information about a product or customer, leading to a delete anomaly.
By normalizing the data into separate tables such as Customers, Products, Sales_Reps, Orders, and Order_Items, redundancy is reduced and each entity is stored only once. Relationships between tables are maintained using foreign keys, ensuring data consistency.
Although normalization increases the number of tables and requires joins, it greatly improves data integrity, scalability, and maintainability. Therefore, normalization is essential and not over-engineering.
