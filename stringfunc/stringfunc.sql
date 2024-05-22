Use [sql pract];
GO
--CREATE TABLE EmployeeErrors (
--EmployeeID varchar(50)
--,FirstName varchar(50)
--,LastName varchar(50)
--)

--Insert into EmployeeErrors Values 
--('1001  ', 'Jimbo', 'Halbert')
--,('  1002', 'Pamela', 'Beasely')
--,('1005', 'TOby', 'Flenderson - Fired')

--Select *
--From EmployeeErrors

--using trim,ltrim,rtrim
--Select EmployeeID, trim(EmployeeID) as trimid From EmployeeErrors

--Select EmployeeID, ltrim(EmployeeID) as trimid From EmployeeErrors

--Select EmployeeID, rtrim(EmployeeID) as trimid From EmployeeErrors

--using replace

--Select LastName, replace(LastName,'- Fired','') as fixed From EmployeeErrors

--fuzzy matching using substring 

--select substring(err.FirstName,1,3),substring(det.firstname,1,3) from EmployeeErrors as err
--join emplyoeeDetails as det
--on substring(err.FirstName,1,3)=substring(det.firstname,1,3)

--syntax       substring(col,start,end)

--dob
--lastname
--gendr & age


--upper & lower
--select upper(FirstName) from EmployeeErrors
--select lower(LastName) from EmployeeErrors