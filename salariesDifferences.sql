with mkt as (select max(de.salary) as sal1 from db_employee de,db_dept dd
    where de.department_id=dd.id 
    and dd.department='marketing')
,
eng as(
select max(de.salary) as sal2 from db_employee de,db_dept dd
    where de.department_id=dd.id 
    and dd.department='engineering')
select mkt.sal1-eng.sal2 as salary_difference from mkt,eng
; 