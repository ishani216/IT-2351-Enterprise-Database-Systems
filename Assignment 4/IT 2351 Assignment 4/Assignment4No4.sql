-- *****************************************************
-- Ishani Nanavaty, Spring 2021
-- IT 2351 Assignment 4 No4 Prof. Tamerlano
/*In this query I added two extra days to the order date, the date difference between 
the order date and shipping date, and the results are only for March 2018*/
-- *****************************************************
SELECT order_id, order_date, 
DATE_ADD(order_date, INTERVAL 2 DAY) AS 'approx_ship_date', 
ship_date, 
DATEDIFF(ship_date, order_date) AS 'days_to_ship'
FROM Orders
WHERE ship_date is not null
AND MONTH(order_date) = 3 AND YEAR(order_date) = 2018