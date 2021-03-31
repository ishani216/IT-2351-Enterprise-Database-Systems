-- *****************************************************
-- Ishani Nanavaty, Spring 2021
-- IT 2351 Assignment 4 No1 Prof. Tamerlano
/*This query used format, convert, and cast functions and rounds the decimal point*/
-- *****************************************************
SELECT list_price, FORMAT(list_price, 1) AS List_Price,
CONVERT(list_price, SIGNED) AS Price,
CAST(list_price AS SIGNED) AS Price
FROM products