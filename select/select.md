The SQL `SELECT` statement is one of the fundamental commands used in querying databases. It retrieves data from one or more database tables and returns the result set based on specified criteria.

`SELECT` statements performing various operations on the `[sql pract].[dbo].[emplyoeesalary]` table. Let's break down each one:

1. **`SELECT DISTINCT (empid)`**: This query selects unique employee IDs (`empid`) from the `[sql pract].[dbo].[emplyoeesalary]` table, removing any duplicate entries.

2. **`SELECT AVG(salary)`**: This query calculates the average salary of all employees listed in the `[sql pract].[dbo].[emplyoeesalary]` table.

3. **`SELECT MAX(salary)`**: This query retrieves the highest (maximum) salary present in the `[sql pract].[dbo].[emplyoeesalary]` table.

4. **`SELECT MIN(salary)`**: This query retrieves the lowest (minimum) salary present in the `[sql pract].[dbo].[emplyoeesalary]` table.

5. **`SELECT COUNT(salary)`**: This query counts the number of records in the `[sql pract].[dbo].[emplyoeesalary]` table. Specifically, it counts the number of non-null salary values.

6. **`SELECT MIN(salary) AS minimumsal`**: This query is similar to the previous minimum salary query, but it assigns an alias (`minimumsal`) to the result, making it easier to reference.

Now, let's provide some inputs to illustrate how you might use these queries:

- If you want to see a list of all distinct employee IDs:
  ```sql
  SELECT DISTINCT empid FROM [sql pract].[dbo].[emplyoeesalary];
