#GROUP BY , ORDER BY, HAVING BY
-- GROUP BY : The GROUP BY clause is used to group rows with the same values in specified columns into summary rows.
-- A) GROUP BY using HAVING
-- Find the number of orders for each dish, having more than 10 orders
SELECT dish_id, COUNT(*) AS order_count
FROM orders
GROUP BY dish_id
HAVING order_count > 10;
-- GROUP BY using CONCAT
SELECT cuisine, GROUP_CONCAT(DISTINCT ingredient_name) AS ingredient_names
FROM ingredients
JOIN dishes ON ingredients.dish_id = dishes.dish_id
GROUP BY cuisine;
-- GROUP BY with aggregate functions
-- Find the average price of dishes for each restaurant
SELECT restaurant_id, AVG(price) AS avg_price
FROM dishes
GROUP BY restaurant_id;

-- HAVING BY : Filters groups in a query based on a specified condition after grouping.
--  Find the restaurants where the total number of dishes is greater than 5
SELECT restaurant_id, COUNT(dish_id) AS dish_count
FROM dishes
GROUP BY restaurant_id
HAVING COUNT(dish_id) > 5;
-- Find the customers who have placed orders with a total amount greater than 200
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 200;
-- Find dishes that have a preparation time between 15 and 30 minutes and are served in Italian restaurants
SELECT dish_id, dish_name, prep_time
FROM dishes
WHERE cuisine = 'Italian'
GROUP BY dish_id, dish_name, prep_time
HAVING prep_time BETWEEN 15 AND 30;
-- Find the ingredients used in more than 3 different dishes
SELECT ingredient_id, ingredient_name, COUNT(dish_id) AS dish_count
FROM ingredients
GROUP BY ingredient_id, ingredient_name
HAVING COUNT(dish_id) > 3;
-- average dish price greater than 20
SELECT cuisine, AVG(price) AS avg_price
FROM dishes
GROUP BY cuisine
HAVING AVG(price) > 20;
-- orders with a total number of items greater than 5
SELECT order_id, COUNT(item_id) AS item_count
FROM order_items
GROUP BY order_id
HAVING COUNT(item_id) > 5;
-- chefs who prepare dishes with an average rating greater than 4.5
SELECT chef_id, AVG(rating) AS avg_rating
FROM dishes
GROUP BY chef_id
HAVING AVG(rating) > 4.5;
-- dishes that have a total number of orders between 50 and 100
SELECT dish_id, dish_name, COUNT(order_id) AS order_count
FROM orders
JOIN order_items ON orders.order_id = order_items.order_id
GROUP BY dish_id, dish_name
HAVING COUNT(order_id) BETWEEN 50 AND 100;
-- suppliers who supply more than 1000 units of ingredients
SELECT supplier_id, SUM(quantity) AS total_units
FROM ingredient_supplies
GROUP BY supplier_id
HAVING SUM(quantity) > 1000;

-- ORDER BY : ORDER BY clause is employed to sort the result set of a query based on one or more columns,
--            either in ascending (ASC) or descending (DESC) order, allowing users to organize the data in a meaningful sequence
-- BASIC
-- Retrieve all dishes ordered by their preparation time
SELECT dish_id, dish_name, prep_time
FROM dishes
ORDER BY prep_time;
-- ASCENDING 
-- Retrieve all ingredients ordered by their cost in ascending order
SELECT ingredient_id, ingredient_name, cost
FROM ingredients
ORDER BY cost ASC; 
-- DESCENDING
-- Retrieve all orders ordered by the order amount in descending order
SELECT order_id, customer_id, total_amount
FROM orders
ORDER BY total_amount DESC;
-- multiple coloumn ordering 
SELECT dish_id, dish_name, cuisine, price
FROM dishes
ORDER BY cuisine ASC, price DESC;
-- Conditional Ordering 
SELECT dish_id, dish_name, is_vegetarian
FROM dishes
ORDER BY is_vegetarian DESC, dish_name ASC;
-- ordering by calculated columns
SELECT dish_id, dish_name, price, calories, (price / calories) AS price_per_calorie
FROM dishes
ORDER BY price_per_calorie DESC;
-- null handling in ordering
SELECT dish_id, dish_name, price
FROM dishes
ORDER BY price IS NULL ASC, price ASC;


