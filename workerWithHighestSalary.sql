--TITLE: Workers With The Highest Salaries
--LINK: https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?python=


/*
Find the titles of workers that earn the highest salary.
Output the highest-paid title or multiple titles that share the highest salary.
*/


select  
        t.worker_title,
        w.salary
        from
        worker w,
        title t
        where w.worker_id=t.worker_ref_id
        and w.salary=(select max(salary) from worker);