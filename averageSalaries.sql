--TITLE: Average Salaries
--LINK: https://platform.stratascratch.com/coding/9917-average-salaries?python=

/*
Average Salaries
Compare each employee's salary with the average salary of the corresponding department.
Output the department, first name, and salary of employees along with the average salary of that department.
*/


select 
    department,
    first_name,
    salary,
    avg(salary) over(partition by department) as avg_sal
    from employee
    group by department,first_name,salary;