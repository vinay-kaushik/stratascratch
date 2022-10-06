--TITLE: Salary by Education
--LINK: https://platform.stratascratch.com/coding/2100-salary-by-education?code_type=1

select  
    education,
    avg(salary) as ave
from google_salaries
group by 1;