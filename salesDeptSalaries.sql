--TITLE: Sales Dept Salaries
--LINK: https://platform.stratascratch.com/coding/9920-sales-dept-salaries?python=


/*
Sales Dept Salaries
Find employees in the Sales department who achieved a target greater than 150.
Output first names of employees.
Sort records by the first name in descending order.
*/

select 
    first_name
        from employee
        where department='Sales'
        and target>150
        order by first_name desc;