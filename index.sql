SELECT DISTINCT (column) FROM tableName  (//Removes duplicate rows. Only the first occurence is returned)
SELECT COUNT(DISTINCT department) FROM employees;
COUNT(*)  counts all rows in a table including those with null values in any column
COUNT(column_name) counts the occurence of non-null values in a specific column. It ignore null values.
<> not equal t0
BETWEEN operator
SELECT * FROM employees WHERE department IN('HR', 'Finance', 'Admin')
SELECT * FROM employees WHERE department = 'Finance' OR department = 'Marketing'
SELECT * FROM employees WHERE department = 'AAA' ORDER BY first_name DESC;
SELECT employee_id, first_name, last_name FROM employees WHERE salary BETWEEN 40000 AND 60000
SELECT * FROM payment WHERE payment_date BETWEEN '2021-03-03' AND '2021-03-15'

wildcard characters: special characters used to represent one or more characters in a pattern. 
%: represents any sequence of character
_: represents a single character
[]: represents a character class allowing you to match any single character within the specified set

SELECT employee_id, first_name, last_name FROM employees WHERE salary NOT BETWEEN 40000 AND 60000

aggregate functions are special functions that perorm calculations on as set of values an return a single values as a result. 

SELECT MIN(replacement_cost), MAX(replacement_cost) FROM film
SELECT ROUND(AVG(replacement_cost), 3) FROM film
SELECT SUM(replacement_cost) FROM film
SELECT customer_id FROM pament GROUP BY customer_id
SELECT customer_id, staff_id, SUM(amount) FROM payment GROUP BY customer_id, staff_id ORDER BY SUM(amount)
SELECT DATE(payment_date) FROM payment GROUP BY DATE(payment_date) ORDER BY SUM(amount)

WHERE clause filters individual rows before they are grouped, while the HAVING clause filters groups of rows after they have been grouped

use WHERE to filter individual rows before groupting and having to filter groups after aggregation