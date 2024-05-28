---

# SQL Procedures

## Introduction
Procedures, also known as stored procedures, are a crucial concept in SQL (Structured Query Language) that allow users to encapsulate a set of SQL statements for reuse. These procedures can accept parameters, execute complex logic, and return results, enhancing the modularity and efficiency of database operations.

## Purpose of Procedures
The primary purpose of using procedures in SQL is to encapsulate repetitive tasks, improve code organization, and enhance performance. By defining procedures, users can execute complex logic with a single call, making the codebase more maintainable and reducing redundancy.

## Syntax
1. **Creating a Procedure:**  
   ```
   CREATE PROCEDURE procedure_name @parameter_name parameter_datatype
   AS
   BEGIN
       -- SQL statements
   END;
   ```
   Example:
   ```
   CREATE PROCEDURE GetEmployeeDetails @age INT
   AS
   BEGIN
       SELECT * FROM EmployeeDetails
       WHERE EmployeeDetails.age > @age;
   END;
   ```

2. **Executing a Procedure:**  
   ```
   EXEC procedure_name @parameter_name = value;
   ```
   Example:
   ```
   EXEC GetEmployeeDetails @age = 31;
   ```

3. **Modifying a Procedure:**  
   ```
   ALTER PROCEDURE procedure_name @parameter_name parameter_datatype
   AS
   BEGIN
       -- Modified SQL statements
   END;
   ```
   Example:
   ```
   ALTER PROCEDURE GetEmployeeDetails @age INT
   AS
   BEGIN
       SELECT * FROM EmployeeDetails
       WHERE EmployeeDetails.age >= @age;
   END;
   ```

## Benefits of Using Procedures
1. **Modularity:** Procedures allow users to encapsulate logic, making the codebase more modular and easier to manage.
2. **Reusability:** Procedures can be reused across different parts of the application, reducing code duplication.
3. **Security:** Procedures can help control access to data by providing a layer of abstraction over direct table manipulation.
4. **Performance:** Precompiled procedures can improve performance by reducing parsing and compilation overhead.
5. **Maintainability:** Procedures simplify maintenance by centralizing logic, making updates easier to implement.

## Best Practices
1. **Use Meaningful Names:** Choose descriptive names for procedures to reflect their purpose and functionality.
2. **Parameterize Queries:** Use parameters to make procedures more flexible and reusable.
3. **Document Procedures:** Provide comments and documentation within procedures to aid understanding and maintenance.
4. **Handle Exceptions:** Include error handling to manage exceptions and ensure robust operation.
5. **Optimize Performance:** Regularly review and optimize procedures for performance, especially those executed frequently.

## Code Snippet
```sql
-- Creating a procedure to retrieve employee details based on age
CREATE PROCEDURE GetEmployeeDetails @age INT
AS
BEGIN
    SELECT * FROM EmployeeDetails
    WHERE EmployeeDetails.age > @age;
END;

-- Executing the procedure
EXEC GetEmployeeDetails @age = 31;

-- Modifying the procedure to include employees with the specified age
ALTER PROCEDURE GetEmployeeDetails @age INT
AS
BEGIN
    SELECT * FROM EmployeeDetails
    WHERE EmployeeDetails.age >= @age;
END;

-- Executing the modified procedure
EXEC GetEmployeeDetails @age = 31;
```

In this example, a procedure `GetEmployeeDetails` is created to select employee details for employees older than a specified age. The procedure is then executed with an age parameter of 31. Subsequently, the procedure is modified to include employees who are exactly 31 years old.

## References
1. [W3Schools - SQL Stored Procedures](https://www.w3schools.com/sql/sql_stored_procedures.asp)
2. [Microsoft Docs - CREATE PROCEDURE (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-procedure-transact-sql)
3. [Oracle Documentation - Stored Procedures](https://docs.oracle.com/en/database/oracle/oracle-database/19/lnpls/stored-procedures-and-functions.html)

