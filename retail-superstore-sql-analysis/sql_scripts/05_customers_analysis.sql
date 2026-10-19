SELECT 
    customer_id,
    customer_name,
    segment,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales), 2) AS total_spent,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY customer_id, customer_name, segment
ORDER BY total_spent DESC
LIMIT 10;
