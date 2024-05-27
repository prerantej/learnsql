--partition by 
--this is used in place of group by  in order to get details for each and every row
--eg

select det.empid,salary,gender,firstname,count(gender) over (partition by gender) as tgender
from emplyoeeDetails as det
join emplyoeesalary as sal
on det.empid=sal.empid

--syntax==
--over (partition by column)