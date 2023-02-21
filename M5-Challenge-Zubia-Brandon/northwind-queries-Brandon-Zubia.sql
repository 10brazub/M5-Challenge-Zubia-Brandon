-- Categories of the products
SELECT category 
FROM products;

-- Products made by Dell
SELECT *
FROM products
WHERE product_name
LIKE "Dell %";

-- All the orders shipped to Pennsylvania
SELECT *
FROM orders
WHERE ship_state = 'Pennsylvania';

-- First and last name of all employees with last names stating with W
SELECT first_name, last_name
FROM employees
WHERE last_name 
LIKE "W%";

-- All customers with zipcodes starting with 55
SELECT * 
FROM customers
WHERE postal_code 
LIKE "55%";

-- All customers with zipcodes ending with 0
SELECT * 
FROM customers
WHERE postal_code 
LIKE "%0";

-- First name, last name, and email for all customers with a ".org" email address
SELECT first_name, last_name, email
FROM customers
WHERE email
LIKE "%.org";


--  First name, last name, and phone number for all customers from the 202 area code
SELECT first_name, last_name, phone 
FROM customers
WHERE phone 
LIKE "%202%";


--  First name, last name, and phone number for all customers from the 202 area code, ordered by last name, first name
SELECT first_name, last_name, phone 
FROM customers
WHERE phone 
LIKE "%202%"
ORDER BY last_name ASC, first_name ASC;