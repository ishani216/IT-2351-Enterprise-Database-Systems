-- *****************************************************
-- Ishani Nanavaty, Spring 2021
-- IT 2351 Assignment 4 No6 Prof. Tamerlano
/*In this query I created a view of the data. The discount amount and final amounts for the quantity of the
product in the order is displayed in the results. I keep getting an error with the CREATE VIEW
since the table already exists so I put drop view instead. So I decided to specify with the first letter of the table.*/
-- *****************************************************
DROP VIEW order_item_products;
SELECT O.order_id, O.order_date, O.tax_amount, O.ship_date, product_name, item_price, discount_amount, (item_price-discount_amount) 
AS final_price, quantity, (item_price-discount_amount)*quantity AS item_total
FROM Orders O, Order_Items OI, Products P
WHERE O.order_id = OI.order_id AND OI.product_id = P.product_id;