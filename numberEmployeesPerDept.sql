--TITLE: Number of Employees Per Department
--LINK: https://platform.stratascratch.com/coding/9906-number-of-employees-per-department?python=

/*
Number of Employees Per Department
Find the number of employees in each department.
Output the department name along with the corresponding number of employees.
Sort records based on the number of employees in descending order.
*/

select 
    department,
    count(*)
    from employee
    group by 1 
    order by 2 desc;