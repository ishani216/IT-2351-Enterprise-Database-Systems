select customer_id AS "Customer", order_date AS "Ordered", shipped_date AS "Shipped", shipped_date - order_date AS "Days To Ship" from om.orders
order by customer_id, "Days_To_Ship"
