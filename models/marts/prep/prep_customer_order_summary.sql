SELECT
    c.customer_id,
    c.name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity * oi.price) AS total_spent
FROM {{ ref('stg_customers') }} c
LEFT JOIN {{ ref('stg_orders') }} o ON c.customer_id = o.customer_id
LEFT JOIN {{ ref('stg_order_items') }} oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.name