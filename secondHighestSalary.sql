--TITLE: Second Highest Salary
--LINK: https://platform.stratascratch.com/coding/9892-second-highest-salary?python=

/*
Second Highest Salary
Find the second highest salary of employees.
*/

with tmp as(
select 
    salary,
    dense_rank() over(order by salary desc) as rnk
    from employee)
select salary from tmp where rnk=2;