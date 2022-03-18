--TITLE: Not Referred Employees
--LINK: https://platform.stratascratch.com/coding/9907-not-referred-employees?python=

/*
Not Referred Employees
Find employees that are not referred by the manager id 1.
Output the first name of the employee.
*/

select first_name from employee
    where manager_id<>1;