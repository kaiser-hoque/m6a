SELECT
  c.category_name,
  SUM(oi.unit_price * oi.quantity) AS total_revenue
FROM categories c
INNER JOIN products p ON c.category_id = p.category_id
INNER JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY c.category_name
ORDER BY total_revenue DESC;
