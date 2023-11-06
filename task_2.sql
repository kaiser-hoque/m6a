SELECT
  oi.product_name,
  oi.quantity,
  oi.unit_price * oi.quantity AS total_amount
FROM order_items oi
INNER JOIN orders o ON oi.order_id = o.order_id
ORDER BY o.order_id ASC;
