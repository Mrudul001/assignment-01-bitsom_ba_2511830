## Anomaly Analysis

### Insert Anomaly
In the flat table, new product data cannot be added unless it is associated with an order.

Example:
Columns: product_id, product_name, category, unit_price  
If a new product (e.g., P999 - Mouse) is introduced but no order exists, it cannot be inserted.

Issue: Product information depends on order existence.

---

### Update Anomaly
Customer and product data are repeated across multiple rows.

Example:
If a customer appears in multiple orders, their email is stored multiple times.  
Updating the email requires modifying multiple rows.

Issue: Redundant data leads to inconsistency.

---

### Delete Anomaly
Deleting a row may remove important related data.

Example:
If a product appears in only one order row and that row is deleted, the product information is lost.

Issue: Loss of important data.

---

## Normalization Justification

Keeping all data in a single table may seem simple, but it leads to redundancy and data integrity issues. In the given dataset, customer, product, and sales representative details are repeated across multiple rows for each order. This causes update anomalies, where a single change (such as updating a customer’s email) must be applied to multiple rows. If even one row is missed, inconsistent data results.

Similarly, product details such as name and price are duplicated. Any price change requires multiple updates, increasing the risk of errors. Delete anomalies also occur when removing an order deletes the only record of a product or customer, leading to unintended data loss.

By normalizing the database into separate tables such as Customers, Products, Orders, and Sales Representatives, redundancy is eliminated. Each entity is stored only once, and relationships are maintained using foreign keys. This improves data consistency, reduces storage duplication, and simplifies maintenance.

Therefore, normalization is not over-engineering but a necessary design approach for ensuring accurate, scalable, and reliable database systems.
