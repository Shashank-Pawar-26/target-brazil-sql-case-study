# 🗂️ Schema Reference – Target Brazil Dataset

This section documents the key tables used in the BigQuery analysis and any preprocessing steps applied.

## 📦 Tables Used

- `orders`: Contains order-level details including timestamps, freight, and delivery info.
- `customers`: Maps customer IDs to geographic locations.
- `payments`: Tracks payment type and value per order.

## 🧹 Data Cleaning Steps

- Removed rows with null `order_delivered_customer_date` and `order_estimated_delivery_date` for delivery analysis.
- Standardized state codes to uppercase.
- Ensured all joins used indexed fields (`customer_id`, `order_id`) for performance.

## 🔗 Relationships

- `orders.customer_id` → `customers.customer_id`
- `orders.order_id` → `payments.order_id`

---

All queries were executed in Google BigQuery using optimized SQL for performance and clarity.
