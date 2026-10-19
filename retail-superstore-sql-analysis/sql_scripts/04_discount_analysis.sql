SELECT 
    discount,
    COUNT(order_id) AS total_transactions,
    ROUND(AVG(sales), 2) AS avg_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY discount
ORDER BY discount;
