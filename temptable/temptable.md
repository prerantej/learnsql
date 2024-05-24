---

# SQL Temporary Tables

## Introduction
Temporary tables in SQL are special types of tables that are used to store intermediate results temporarily. These tables exist only for the duration of a session or a query, and they are automatically dropped once the session ends or the query completes.

## Purpose of Temporary Tables
The primary purpose of using temporary tables is to hold intermediate results, perform complex calculations, and simplify queries. Temporary tables help in breaking down complicated queries into smaller, more manageable parts, improving readability and performance.

## Syntax
1. **Creating a Temporary Table:**  
   ```
   CREATE TABLE #temporary_table_name (
       column1 datatype,
       column2 datatype,
       ...
   );
   ```
   Example:
   ```
   CREATE TABLE #temp_employee_details (
       emp_id INT,
       emp_name VARCHAR(50),
       salary INT
   );
   ```

2. **Inserting Data into a Temporary Table:**  
   ```
   INSERT INTO #temporary_table_name
   SELECT columns FROM table_name WHERE condition;
   ```
   Example:
   ```
   INSERT INTO #temp_employee_details
   SELECT emp_id, emp_name, salary FROM employees WHERE department = 'Sales';
   ```

3. **Selecting Data from a Temporary Table:**  
   ```
   SELECT columns FROM #temporary_table_name;
   ```
   Example:
   ```
   SELECT * FROM #temp_employee_details;
   ```

## Benefits of Using Temporary Tables
1. **Intermediate Data Storage:** Temporary tables store intermediate results, making complex queries easier to manage.
2. **Performance Improvement:** By breaking down large queries, temporary tables can help optimize performance and resource usage.
3. **Simplified Debugging:** Temporary tables make it easier to debug and test different parts of a query separately.
4. **Scoped Lifespan:** Temporary tables only exist for the duration of a session or query, reducing clutter in the database.

## Best Practices
1. **Naming Conventions:** Use clear and consistent naming conventions, prefixed with a hash (#) to indicate temporary tables.
2. **Efficient Use:** Avoid excessive use of temporary tables to prevent unnecessary resource consumption.
3. **Dropping Temporary Tables:** Although temporary tables are automatically dropped at the end of a session, explicitly dropping them when they are no longer needed is a good practice.
4. **Indexing:** If a temporary table holds a large amount of data, consider adding indexes to improve query performance.

## Code Snippet
```sql
-- Creating a temporary table
CREATE TABLE #temp_jobs (
    job_title VARCHAR(50),
    job_count INT,
    avg_salary INT
);

-- Inserting data into the temporary table
INSERT INTO #temp_jobs
SELECT job_title, COUNT(job_title), AVG(salary)
FROM employee_details
JOIN employee_salary
ON employee_details.emp_id = employee_salary.emp_id
GROUP BY job_title;

-- Selecting data from the temporary table
SELECT * FROM #temp_jobs;

-- Dropping the temporary table (optional)
DROP TABLE #temp_jobs;
```

In this example, we create a temporary table `#temp_jobs` to store job titles, the number of jobs, and the average salary for each job. We then insert data into the temporary table using a JOIN operation and a GROUP BY clause. Finally, we select data from the temporary table and drop it when it is no longer needed.

## References
1. [W3Schools - SQL Temporary Tables](https://www.w3schools.com/sql/sql_temp_tables.asp)
2. [Microsoft Docs - Temporary Tables](https://docs.microsoft.com/en-us/sql/relational-databases/tempdb-database/temporary-tables)
3. [SQL Tutorial - Temporary Tables](https://www.sqltutorial.org/sql-temporary-tables/)

---