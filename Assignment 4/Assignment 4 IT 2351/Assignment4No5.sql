-- *****************************************************
-- Ishani Nanavaty, Spring 2021
-- IT 2351 Assignment 4 No5 Prof. Tamerlano
/*This query shows the highest and lowest prices by product for each category*/
-- *****************************************************
SELECT C.category_name, P.product_name,
SUM((OI.item_price+OI.discount_amount)*OI.quantity) AS total_sales,
FIRST_VALUE(P.product_name) OVER(PARTITION BY C.category_name ORDER BY SUM((OI.item_price+OI.discount_amount)*OI.quantity) DESC) AS highest_sales,
LAST_VALUE(P.product_name) OVER(PARTITION BY C.category_name ORDER BY SUM((OI.item_price+OI.discount_amount)*OI.quantity) DESC) AS lowest_sales
FROM (categories C JOIN products P ON C.category_id = P.category_id) JOIN order_items OI ON OI.product_id = P.product_id
GROUP BY C.category_id, C.category_name, P.product_id, P.product_name;
