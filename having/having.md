---

# SQL HAVING Clause

## Introduction
The HAVING clause in SQL (Structured Query Language) is used to filter records that meet a specific condition after grouping. It is similar to the WHERE clause, but is applied to groups of rows created by the GROUP BY clause rather than individual rows.

## Purpose of the HAVING Clause
The primary purpose of using the HAVING clause in SQL is to filter groups of data based on a specified condition. This is particularly useful when you need to work with aggregated data and ensure that only certain groups of results are included in the final output.

## Syntax
```
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```
Example:
```
SELECT job_title, AVG(salary) AS avg_salary
FROM employeeDetails
INNER JOIN employeeSalary 
ON employeeDetails.empid = employeeSalary.empid
GROUP BY job_title
HAVING AVG(salary) > 40000
ORDER BY avg_salary;
```

## Benefits of Using the HAVING Clause
1. **Filtering Aggregated Data:** The HAVING clause allows you to filter data based on aggregate functions like COUNT, SUM, AVG, MAX, and MIN.
2. **Intermediate Data Handling:** It helps in managing intermediate data that cannot be filtered using the WHERE clause.
3. **Enhanced Query Functionality:** It provides additional filtering capabilities, especially when dealing with grouped data.
4. **Complex Conditions:** The HAVING clause supports complex conditions that involve aggregate functions, providing more control over the results.

## Best Practices
1. **Use with GROUP BY:** Always use the HAVING clause in conjunction with the GROUP BY clause to filter grouped data.
2. **Filter Early:** Where possible, use the WHERE clause to filter rows before they are grouped and aggregated, and then use HAVING to filter the aggregated results.
3. **Understand Performance Impact:** Be mindful of the performance impact, as HAVING can slow down queries if used improperly on large datasets.
4. **Combine with Aggregate Functions:** Use HAVING with aggregate functions to filter groups based on calculated values.

## Code Snippet
```sql
-- Using HAVING clause to filter groups with an average salary greater than 40000
SELECT job_title, AVG(salary) AS avg_salary
FROM employeeDetails
INNER JOIN employeeSalary 
ON employeeDetails.empid = employeeSalary.empid
GROUP BY job_title
HAVING AVG(salary) > 40000
ORDER BY avg_salary;
```

In this example, we are selecting the `job_title` and the average `salary` from the `employeeDetails` table joined with the `employeeSalary` table. We group the results by `job_title`, filter these groups to include only those with an average salary greater than 40,000, and order the results by `avg_salary`.

## References
1. [W3Schools - SQL HAVING](https://www.w3schools.com/sql/sql_having.asp)
2. [Oracle Documentation - HAVING](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/HAVING.html)
3. [SQL Tutorial - HAVING](https://www.sqltutorial.org/sql-having/)

