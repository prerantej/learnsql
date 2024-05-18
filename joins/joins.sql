select * from emplyoeeDetails
inner join emplyoeesalary 
on emplyoeeDetails.empid=emplyoeesalary.empid;

select * from emplyoeeDetails
full outer join emplyoeesalary
on emplyoeeDetails.empid=emplyoeesalary.empid;

select * from emplyoeeDetails
left join emplyoeesalary
on emplyoeeDetails.empid=emplyoeesalary.empid;

select * from emplyoeeDetails
right join emplyoeesalary
on  emplyoeeDetails.empid=emplyoeesalary.empid