---

# SQL PARTITION BY

## Introduction
The `PARTITION BY` clause is an advanced concept in SQL (Structured Query Language) that is used to divide the result set into partitions and perform computations on each partition independently. This clause is often used with window functions to perform calculations across sets of table rows that are related to the current row.

## Purpose of PARTITION BY
The primary purpose of using `PARTITION BY` is to enhance the capabilities of window functions by allowing users to group data into partitions without aggregating the results. This makes it possible to perform complex calculations and analyses on individual subsets of data within a single query.

## Syntax
1. **Using PARTITION BY with COUNT Function:**
   ```
   SELECT column_name, COUNT(column_name) OVER (PARTITION BY partition_column) AS alias
   FROM table_name;
   ```
   Example:
   ```
   SELECT emp_id, salary, COUNT(emp_id) OVER (PARTITION BY department_id) AS dept_count
   FROM employees;
   ```

2. **Using PARTITION BY with Other Window Functions:**
   ```
   SELECT column_name, 
          window_function() OVER (PARTITION BY partition_column ORDER BY sort_column) AS alias
   FROM table_name;
   ```
   Example:
   ```
   SELECT emp_id, salary, 
          AVG(salary) OVER (PARTITION BY department_id ORDER BY hire_date) AS avg_salary
   FROM employees;
   ```

## Benefits of Using PARTITION BY
1. **Detailed Analysis:** Allows for detailed analysis by performing calculations on individual partitions of data.
2. **Flexibility:** Provides flexibility in query design by enabling complex calculations without altering the underlying data structure.
3. **Enhanced Reporting:** Facilitates advanced reporting scenarios where grouped data needs to be analyzed without aggregation.
4. **Efficient Data Processing:** Optimizes data processing by handling large datasets more efficiently through partitioned calculations.

## Best Practices
1. **Choose Relevant Partition Columns:** Select partition columns that logically group the data for the intended analysis.
2. **Combine with Appropriate Window Functions:** Use `PARTITION BY` with window functions like `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `NTILE()`, `SUM()`, `AVG()`, etc., to achieve the desired results.
3. **Use ORDER BY Wisely:** When needed, use the `ORDER BY` clause within the window function to control the calculation order within each partition.
4. **Optimize Performance:** Be mindful of the performance implications when partitioning large datasets and ensure the query is optimized.

## Code Snippet
```sql
-- Using PARTITION BY to calculate the count of employees by gender
SELECT det.empid, salary, gender, firstname, 
       COUNT(gender) OVER (PARTITION BY gender) AS tgender
FROM employeeDetails det
JOIN employeeSalary sal ON det.empid = sal.empid;
```

In this example, we use `PARTITION BY gender` to count the number of employees by gender. The `COUNT(gender) OVER (PARTITION BY gender)` calculates the count for each partition defined by the `gender` column.

## References
1. [W3Schools - SQL PARTITION BY](https://www.w3schools.com/sql/sql_partition_by.asp)
2. [Oracle Documentation - Window Functions](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/Data-Analytic-Functions.html)
3. [SQL Tutorial - Window Functions](https://www.sqltutorial.org/sql-window-functions/)

---