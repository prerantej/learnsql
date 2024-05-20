---

# SQL Union

## Introduction
The `UNION` operator in SQL (Structured Query Language) is used to combine the result sets of two or more `SELECT` statements. It ensures that the results are distinct, merging data from multiple tables or queries into a single comprehensive result set.

## Purpose of UNION
The primary purpose of using the `UNION` operator is to aggregate data from different queries into a single result set. This is particularly useful when data is spread across multiple tables or when you need to execute separate queries that should be combined for analysis or reporting.

## Syntax
1. **Basic UNION Syntax:**
   ```
   SELECT column_name(s) FROM table1
   UNION
   SELECT column_name(s) FROM table2;
   ```
   Example:
   ```
   SELECT empid, gender, age FROM employeeDetails
   UNION
   SELECT empid, gender, age FROM employeeSalary;
   ```

2. **UNION ALL Syntax:**
   ```
   SELECT column_name(s) FROM table1
   UNION ALL
   SELECT column_name(s) FROM table2;
   ```
   Example:
   ```
   SELECT empid, gender, age FROM employeeDetails
   UNION ALL
   SELECT empid, gender, age FROM employeeSalary;
   ```

## Differences between UNION and UNION ALL
1. **UNION:** Removes duplicate records from the result set.
2. **UNION ALL:** Includes all records, including duplicates, providing a complete dataset.

## Benefits of Using UNION
1. **Combining Results:** `UNION` allows you to combine results from multiple queries, making it easier to analyze data from different sources.
2. **Simplifying Queries:** By merging result sets, you can simplify complex reporting and data analysis tasks.
3. **Data Integrity:** Ensures that the merged result set is distinct, preventing duplicate records with the `UNION` operator.

## Best Practices
1. **Column Alignment:** Ensure that the number of columns and their data types match across all `SELECT` statements in a `UNION`.
2. **Consistent Naming:** Use consistent column names and aliases for clarity and maintainability.
3. **Performance Considerations:** Use `UNION ALL` when you do not need to remove duplicates, as it is more efficient.
4. **Filtering Data:** Apply appropriate `WHERE` clauses in each `SELECT` statement to filter data before the union to improve performance.

## Code Snippet
```sql
-- Using UNION to combine employee details and salary information
SELECT empid, gender, age FROM employeeDetails
UNION
SELECT empid, gender, age FROM employeeSalary;
```

In this example, we are selecting the `empid`, `gender`, and `age` columns from both the `employeeDetails` and `employeeSalary` tables and combining their results into a single set using `UNION`.

## References
1. [W3Schools - SQL UNION](https://www.w3schools.com/sql/sql_union.asp)
2. [Oracle Documentation - UNION Operator](https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/UNION.html)
3. [SQL Tutorial - SQL UNION](https://www.sqltutorial.org/sql-union/)

---