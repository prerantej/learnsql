-- Group By and Order By Operations

1. **Group By:**
   - **Single Operation:**
     ```sql
     SELECT gender, COUNT(gender)
     FROM emplyoeeDetails
     GROUP BY gender;
     ```
     This query groups the data by the 'gender' column and counts the occurrences of each gender category.

   - **Multiple Operations:**
     ```sql
     SELECT gender, age, COUNT(gender)
     FROM emplyoeeDetails
     GROUP BY gender, age;
     ```
     Here, the data is grouped by both 'gender' and 'age' columns, providing a count for each combination of gender and age.

   - **Group By with WHERE Clause:**
     ```sql
     SELECT gender, COUNT(gender)
     FROM emplyoeeDetails
     WHERE age > 31
     GROUP BY gender;
     ```
     This query first filters the data for individuals aged over 31 and then groups the remaining records by gender, providing a count for each gender category.

2. **Order By:**
   - **Single Column Descending Order:**
     ```sql
     SELECT * FROM emplyoeeDetails
     ORDER BY age DESC;
     ```
     This query retrieves all columns from the 'emplyoeeDetails' table and sorts the result set by the 'age' column in descending order.

   - **Multiple Columns Descending Order:**
     ```sql
     SELECT * FROM emplyoeeDetails
     ORDER BY age DESC, gender DESC;
     ```
     Here, the data is sorted first by 'age' in descending order, and then within each age group, it is further sorted by 'gender' in descending order.

   - **Order By with Column Index:**
     ```sql
     SELECT * FROM emplyoeeDetails
     ORDER BY 4 DESC, 5 DESC;
     ```
     This query orders the result set based on the values in the fourth and fifth columns (presumably age and gender) in descending order.
