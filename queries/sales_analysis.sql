-- Monthly sales analysis by state
SELECT
  state,
  EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
  COUNT(order_id) AS total_orders,
  SUM(payment_value) AS total_revenue
FROM
  `project.dataset.orders`
GROUP BY
  state, month
ORDER BY
  total_revenue DESC;
