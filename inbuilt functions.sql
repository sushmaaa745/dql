-- Use the 'food' database
USE food;

# String Functions
/* String functions in SQL are used to manipulate and operate on string data.
   These functions provide various operations such as concatenation, substring extraction,
   pattern matching, and string manipulation. */

-- A) CHAR_LENGTH(str): Returns the length of the given string in characters.
SELECT CHAR_LENGTH('Delicious Pizza') AS length_of_string;

-- B) ASCII(str): Returns the ASCII code value of the leftmost character in the string.
SELECT ASCII('P') AS ascii_of_P;
SELECT ASCII('Pizza') AS ascii_of_Pizza;

-- C) CONCAT(str1, str2, ...): Concatenates two or more string values together.
SELECT CONCAT('Delicious', ' ', 'Pizza') AS concatenated_string;

-- D) INSTR(str, substr): Returns the position of the first occurrence of the substring in the string.
SELECT INSTR('Delicious Pizza', 'Pizza') AS position_of_Pizza;
SELECT INSTR('Delicious Pizza', 'Burger') AS position_of_Burger;

-- E) LCASE(str) or LOWER(str): Converts the given string to lowercase.
SELECT LCASE('DELICIOUS') AS lowercase_string;
SELECT LOWER('PizzaHut') AS lowercase_pizzahut;

-- F) UCASE(str) or UPPER(str): Converts the given string to uppercase.
SELECT UCASE('delicious') AS uppercase_string;
SELECT UPPER('PizzaHut') AS uppercase_pizzahut;

-- G) SUBSTR(str, start, length): Extracts a substring from the string starting at the position and with the length.
SELECT SUBSTR('Delicious Pizza', 11, 5) AS substring_pizza;
SELECT SUBSTR('Delicious Pizza', 1, 9) AS substring_delicious;

-- H) LPAD(str, len, padstr): Pads the string on the left side with the padstr string to make the total length equal to len.
SELECT LPAD('Pizza', 10, '*') AS lpad_pizza;

-- I) RPAD(str, len, padstr): Pads the string on the right side with the padstr string to make the total length equal to len.
SELECT RPAD('Pizza', 10, '*') AS rpad_pizza;

-- J) TRIM(str), RTRIM(str), LTRIM(str): Removes leading and/or trailing spaces from the string.
SELECT TRIM('   Delicious Pizza   ') AS trimmed_string;
SELECT RTRIM('   Delicious Pizza   ') AS rtrimmed_string;
SELECT LTRIM('   Delicious Pizza   ') AS ltrimmed_string;

# Date and Time Functions
/* Date and time functions in SQL are used to manipulate and perform operations on date and time data types.
   These functions help you extract components from date and time values, perform calculations, and format date and time information. */

-- A) CURRENT_DATE(): Returns the current date in the format 'YYYY-MM-DD'.
SELECT CURRENT_DATE() AS today;

-- B) DATEDIFF(date1, date2): Returns the number of days between two date values.
SELECT DATEDIFF('2024-07-01', '2024-06-15') AS days_difference;

-- C) DATE(expression): Extracts the date part from a date or datetime expression.
SELECT DATE('2024-06-15 12:34:56') AS date_only;

-- D) CURRENT_TIME(): Returns the current time in the format 'HH:MM:SS'.
SELECT CURRENT_TIME() AS current_time;

-- E) LAST_DAY(date): Returns the last day of the month for a given date.
SELECT LAST_DAY('2024-06-01') AS last_day_of_june;


-- F) ADDDATE(date, interval): Adds a time interval to a date value and returns the new date.
SELECT ADDDATE('2024-06-15', INTERVAL 7 DAY) AS date_one_week_later;

# Numeric Functions
/* Numeric functions in SQL are used to perform various mathematical operations and calculations on numeric data types.
   These functions help you manipulate and analyze numerical data in your database tables. */

-- A) AVG(expression): Returns the average value of the non-null values in a group.
SELECT AVG(price) AS average_price FROM menu_items;

-- B) COUNT(expression): Returns the number of non-null values in a group.
SELECT COUNT(*) AS total_menu_items FROM menu_items;

-- C) POW(base, exponent): Returns the value of base raised to the power of exponent.
SELECT POW(3, 4) AS power_result;

-- D) MIN(expression): Returns the minimum value in a group.
SELECT MIN(price) AS minimum_price FROM menu_items;

-- E) MAX(expression): Returns the maximum value in a group.
SELECT MAX(price) AS maximum_price FROM menu_items;

-- F) ROUND(number, [decimals]): Rounds a number to a specified number of decimal places.
SELECT ROUND(3.14159, 2) AS rounded_number;
SELECT ROUND(3.14159) AS rounded_integer;

-- G) SQRT(number): Returns the square root of a non-negative number.
SELECT SQRT(64) AS square_root;

-- H) FLOOR(number): Returns the largest integer value that is less than or equal to the given number.
SELECT FLOOR(4.9) AS floored_value;
SELECT FLOOR(-4.9) AS floored_negative_value;

# QUESTIONS TO PRACTICE
/* String Functions:

1) What is the purpose of the CONCAT() function in SQL? Give an example of how to use it.
2) Explain the difference between LCASE() and LOWER() functions. Which one would you prefer to use and why?
3) How would you extract a substring from the 5th position to the 10th position (inclusive) from the string "Hello, World!"?
4) What is the purpose of the LPAD() and RPAD() functions? Provide an example of how to use them.
5) Write a SQL query to trim both leading and trailing spaces from the string ' Hello, World! '.

Date and Time Functions:

1) What is the difference between CURRENT_DATE() and SYSDATE() functions?
2) How would you calculate the number of days between two dates, say '2023-06-15' and '2023-07-20'?
3) Explain the purpose of the LAST_DAY() function with an example.
4) Write a SQL query to add 3 months to the current date.
5) How would you extract the time component (hours, minutes, seconds) from a datetime value?

Numeric Functions:

1) What is the difference between AVG() and COUNT() functions? When would you use each of them?
2) Write a SQL query to calculate the square root of 144.
3) How would you round the number 3.14159 to two decimal places?
4) Explain the purpose of the MIN() and MAX() functions. Give an example of how to use them with the GROUP BY clause.
5) Write a SQL query to calculate the power of 2 raised to the 5th power. */

# ANSWERS
/*
String Functions:

1) The CONCAT() function is used to concatenate (combine) two or more string values.
   Example: SELECT CONCAT('Delicious', ' ', 'Pizza'); will output "Delicious Pizza".
2) Both LCASE() and LOWER() convert a string to lowercase letters. LOWER() is the standard SQL function,
   while LCASE() is a MySQL-specific alias. It's generally recommended to use LOWER() for better portability
   across different databases.
3) To extract a substring from the 5th position to the 10th position (inclusive) from "Hello, World!",
   you can use the SUBSTR() function: SELECT SUBSTR('Hello, World!', 5, 6); This will output "o, Wor".
4) The LPAD() function pads a string with a specified string on the left side to make it a certain length.
   RPAD() does the same but on the right side. Example: SELECT LPAD('Pizza', 10, '*'); will output "*****Pizza".
5) To trim both leading and trailing spaces from ' Hello, World! ', you can use the TRIM() function:
   SELECT TRIM(' Hello, World! '); This will output "Hello, World!".

Date and Time Functions:

1) CURRENT_DATE() returns the current date, while SYSDATE() returns the current date and time.
2) To calculate the number of days between '2023-06-15' and '2023-07-20', you can use the DATEDIFF() function:
   SELECT DATEDIFF('2023-07-20', '2023-06-15'); This will output 35.
3) The LAST_DAY() function returns the last day of the month for a given date.
   Example: SELECT LAST_DAY('2023-05-01'); will output "2023-05-31".
4) To add 3 months to the current date, you can use the ADDDATE() or DATE_ADD() function:
   SELECT ADDDATE(CURRENT_DATE(), INTERVAL 3 MONTH);
5) To extract the time component from a datetime value, you can use the TIME() function:
   SELECT TIME('2023-05-01 12:34:56'); This will output "12:34:56".

Numeric Functions:
 
 1)  SELECT AVG(price) AS average_price FROM food_products;
 2)  SELECT COUNT(*) AS total_products FROM food_products;
 3)  SELECT SQRT(144) AS square_root;
 4)  SELECT ROUND(3.14159, 2) AS rounded_number;
 -- most expensive food products
 5)  SELECT category, MIN(price) AS min_price, MAX(price) AS max_price
FROM food_products
GROUP BY category;
6)   SELECT POW(2, 5) AS power_result;
