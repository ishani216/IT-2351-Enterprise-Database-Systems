-- *****************************************************
-- Ishani Nanavaty, Spring 2021
-- IT 2351 Assignment 4 No2 Prof. Tamerlano
/*This query returns information about the domain and email address*/
-- *****************************************************
SELECT email_address, length(email_address) as Length, locate("@", email_address) as "@", substring(email_address, 1, locate("@", email_address)-1) as Username, substring(email_address, locate("@", email_address)+1) as Domain
from customers;


