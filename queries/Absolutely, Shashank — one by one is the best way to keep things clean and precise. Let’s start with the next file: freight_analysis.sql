-- Freight cost distribution by state
SELECT
  c.customer_state AS state,
  ROUND(AVG(o.freight_value), 2) AS avg_freight_cost,
  COUNT(o.order_id) AS total_orders
FROM
  `project.dataset.orders` o
JOIN
  `project.dataset.customers` c
ON
  o.customer_id = c.customer_id
GROUP BY
  state
ORDER BY
  avg_freight_cost DESC;
