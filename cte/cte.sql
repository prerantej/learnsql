--cte== common table expression
-- function like
-- but a table is returned 
-- with statement is used

-- syntax
-- with ctename as (
--				select blah blah
--				)
--select * form ctename

--note we need use the select statement to retrieve the dat 
--right affter we created the cte
--eg:

with cte_emp as(select det.empid,salary,gender,firstname,
count(gender) over (partition by gender) as tgender, avg(salary) over (partition by gender) as avgsal
from emplyoeeDetails as det
join emplyoeesalary as sal
on det.empid=sal.empid
where salary>45000
)
select * from cte_emp
