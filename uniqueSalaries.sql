--TITLE: Unique Salaries
--LINK: https://platform.stratascratch.com/coding/9898-unique-salaries?python=

/*
Unique Salaries
Find the top three unique salaries for each department. Output the department name and the top 
3 unique salaries by each department. Order your results alphabetically by department and then by highest salary to lowest.
*/
with tmp as (
select 
    department,
     salary,
    dense_rank() over(partition by department order by salary desc) as rnk
    
from twitter_employee
)
select 
    distinct department ,
     salary
    from tmp
    where rnk<=3
    order by department
    ;