--group by and order by 
--it can be single operation or multiple
select * from emplyoeeDetails;

select gender, count(gender)
from emplyoeeDetails group by gender;

select gender,age, count(gender)
from emplyoeeDetails group by gender,age;

select gender, count(gender)
from emplyoeeDetails
where age>31
group by gender;

select * from emplyoeeDetails order by age desc;

select * from emplyoeeDetails order by age desc,gender desc;

select * from emplyoeeDetails order by 4 desc, 5 desc;



