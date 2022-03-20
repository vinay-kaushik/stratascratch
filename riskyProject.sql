--TITLE: Risky Projects
--LINK: https://platform.stratascratch.com/coding/10304-risky-projects?python=

/*
Risky Projects
Identify projects that are at risk for going overbudget. 
A project is considered to be overbudget if the cost of all employees assigned to the project is greater than the budget of the project. 
You'll need to prorate the cost of the employees to the duration of the project.
 For example, if the budget for a project that takes half a year to complete is $10K, then the total half-year salary of all employees assigned to the project should not exceed $10K. 
 Salary is defined on a yearly basis, so be careful how to calculate salaries for the projects that last less or more than one year.
Output a list of projects that are overbudget with their project name, project budget, and prorated total employee expense (rounded to the next dollar amount).
*/

with project_durations as(
    select *,end_date-start_date as duration from linkedin_projects
),
project_salaries as(
    select p.project_id, sum(e.salary) as total_salary
    from linkedin_emp_projects p,
    linkedin_employees e where p.emp_id=e.id
    group by p.project_id
)
    select 
        pd.title,
        pd.budget,
        ceil((ps.total_salary/365)*pd.duration) as total_cost
    from project_salaries ps,
    project_durations pd
    where pd.id=ps.project_id
    and
    (ps.total_salary/365)*pd.duration > pd.budget
    
;