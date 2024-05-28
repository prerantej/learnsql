----procedurs are exact functions
----parameters can be assigned usimg @
----and we need to create procedure by using procedure keyword

--syntax
--create procedure procedurename @parametername paramete_datatype


----create procedure test2 @age int
----as
----select * from emplyoeeDetails
----where emplyoeeDetails.age>@age

----exec test2 @age=31

--we can modify using alter keyword or using the modify option when u right click on it