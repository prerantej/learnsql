select empid,gender,age from emplyoeeDetails
union						 
select * from emplyoeesalary					


--if u have to combine 2 tables without having a common column then we use union but the number columns
--that are retrieved of both tables should be of same number and also data type 
--union ==== used to do the above without duplication
--union all ==== used to do the above with duplication
