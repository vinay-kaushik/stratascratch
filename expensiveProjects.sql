--TITLE: Expensive Projects
--LINK: https://platform.stratascratch.com/coding/10301-expensive-projects?python=


/*
Expensive Projects
Given a list of projects and employees mapped to each project, calculate by the amount of project budget allocated to each employee . The output should include the project title and the project
 budget per employee rounded to the closest integer. Order your list by projects with the highest budget per employee first.
*/

select 
    mp.title,
    round(avg(mp.budget)/count(msp.emp_id)) as budget_emp_ratio
    -- ,msp.emp_id
    from ms_projects mp,
    ms_emp_projects msp
    where mp.id=msp.project_id
    group by 1
    order by 2 desc;