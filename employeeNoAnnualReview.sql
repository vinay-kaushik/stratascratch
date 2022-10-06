--TITLE: Employees' Without Annual Review
--LINK: https://platform.stratascratch.com/coding/2043-employees-without-annual-review?code_type=1  


with employee_with_no_annual as 
(
select 
    id
from uber_employees
    where id not in (select emp_id from uber_annual_review))
    
select ue.first_name,ue.last_name,ue.hire_date,ue.termination_date
    from uber_employees ue, employee_with_no_annual ew
    where ue.id=ew.id
    order by 3;