SELECT
  c.name,
  SUM(oi.unit_price * oi.quantity) AS total_purchase_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.name
ORDER BY total_purchase_amount DESC
LIMIT 5;
