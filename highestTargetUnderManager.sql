--TITLE: Highest Target Under Manager
--LINK: https://platform.stratascratch.com/coding/9905-highest-target-under-manager?python=


/*
Highest Target Under Manager
Find the highest target achieved by the employee or employees who works under the manager id 13. Output the first name of the employee and target achieved. 
The solution should show the highest target achieved under manager_id=13 and which employee(s) achieved it.
*/

with tmp as(
select 
    first_name,
    target,
    dense_rank() over(order by target desc) as rnk
    from 
    salesforce_employees 
    where 
    manager_id=13)
select first_name,target from tmp where rnk=1;