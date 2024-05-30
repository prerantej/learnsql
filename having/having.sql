--having clause
--used when some data cant be returned as they might be intermediate data 
--there we use having clause

select job_title,avg(salary)as avgsal from emplyoeeDetails
inner join emplyoeesalary 
on emplyoeeDetails.empid=emplyoeesalary.empid
group by job_title
having avg(salary)>40000
order by avgsal
