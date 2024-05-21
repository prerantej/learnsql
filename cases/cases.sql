select age,salary,job_title,
case
	when job_title='salesman' then salary + (salary*2)
	when job_title='analyst' then salary + (salary*3)
	else salary+(salary*0.5)
end AS salchange
from emplyoeeDetails
join emplyoeesalary
on emplyoeeDetails.empid=emplyoeesalary.empid

--case
--	when
--	else
--end as