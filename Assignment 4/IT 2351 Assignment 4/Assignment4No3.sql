-- *****************************************************
-- Ishani Nanavaty, Spring 2021
-- IT 2351 Assignment 4 No3 Prof. Tamerlano
/*This query calculates the discount amount after the discount percentage*/
-- *****************************************************
SELECT 
    list_price,
    discount_percent,
    ROUND(list_price * discount_percent / 100,2) AS discount_amount
FROM
    products;