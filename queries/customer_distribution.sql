-- Customer distribution by state
SELECT
  customer_state AS state,
  COUNT(DISTINCT customer_id) AS unique_customers
FROM
  `project.dataset.customers`
GROUP BY
  customer_state
ORDER BY
  unique_customers DESC;
