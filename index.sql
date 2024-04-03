SELECT DISTINCT (column) FROM tableName  (//Removes duplicate rows. Only the first occurence is returned)
SELECT COUNT(DISTINCT department) FROM employees;
COUNT(*)  counts all rows in a table including those with null values in any column
COUNT(column_name) counts the occurence of non-null values in a specific column. It ignore null values.