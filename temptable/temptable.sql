--temp tables
--same as cte but rather as a function can be used later on as another table

--syntax:
--create table #temptable()

--thats it.... its just a hash
--eg:

create table #temptable (
job varchar(50),
noofjob int,
avgsal  int,
)

select * from #temptable

insert into #temptable
select job_title,count(job_title),AVG(salary) from emplyoeeDetails
join emplyoeesalary
on emplyoeeDetails.empid=emplyoeesalary.empid
group by job_title
