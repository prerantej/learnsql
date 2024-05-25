---

# SQL Common Table Expressions (CTEs)

## Introduction
Common Table Expressions (CTEs) are a powerful feature in SQL (Structured Query Language) that allows users to create temporary result sets that can be referenced within a SELECT, INSERT, UPDATE, or DELETE statement. CTEs improve the readability and structure of complex queries.

## Purpose of CTEs
The primary purpose of using CTEs is to simplify complex queries by breaking them down into smaller, more manageable parts. CTEs enhance query readability and maintainability, making it easier to understand and debug SQL code.

## Syntax
1. **Defining a CTE:**  
   ```
   WITH cte_name AS (
       SELECT column1, column2, ...
       FROM table_name
       WHERE condition
   )
   SELECT columns FROM cte_name;
   ```
   Example:
   ```
   WITH EmployeeCTE AS (
       SELECT emp_id, emp_name, salary
       FROM employees
       WHERE salary > 50000
   )
   SELECT * FROM EmployeeCTE;
   ```

## Benefits of Using CTEs
1. **Readability:** CTEs improve the readability of SQL queries by breaking down complex queries into simpler, more understandable parts.
2. **Reusability:** CTEs allow users to reference the same temporary result set multiple times within a query.
3. **Recursive Queries:** CTEs support recursive queries, which are useful for hierarchical data and tree structures.
4. **Modularity:** CTEs promote modularity in SQL code, making it easier to test and debug individual parts of a query.

## Best Practices
1. **Meaningful Names:** Use descriptive names for CTEs that reflect the content or purpose of the result set.
2. **Keep CTEs Simple:** While CTEs can simplify complex queries, avoid creating overly complex CTEs that can become hard to understand.
3. **Limit CTE Scope:** Use CTEs for intermediate results that are used within a single query. Avoid using them for temporary storage across multiple queries.
4. **Document CTEs:** Add comments to explain the purpose and logic of each CTE, especially in complex queries.

## Code Snippet
```sql
-- Using a CTE to calculate average salary by gender
WITH CTE_Emp AS (
    SELECT det.empid, det.firstname, det.gender, sal.salary,
           COUNT(gender) OVER (PARTITION BY gender) AS GenderCount,
           AVG(salary) OVER (PARTITION BY gender) AS AvgSalary
    FROM employeeDetails det
    JOIN employeeSalary sal ON det.empid = sal.empid
    WHERE sal.salary > 45000
)
SELECT * FROM CTE_Emp;
```

In this example, we use a CTE named `CTE_Emp` to select employee details and calculate the count and average salary by gender. The CTE simplifies the query by encapsulating the logic in a named, reusable component.

## References
1. [W3Schools - SQL CTE](https://www.w3schools.com/sql/sql_cte.asp)
2. [Microsoft Docs - Common Table Expressions](https://docs.microsoft.com/en-us/sql/t-sql/queries/with-common-table-expression-transact-sql)
3. [SQL Tutorial - Common Table Expressions](https://www.sqltutorial.org/sql-cte/)

---