
--https://platform.stratascratch.com/coding/9903-employees-with-bonuses?python=
--Easy

/*
Employees With Bonuses
Find employees whose bonus is less than $150.
Output the first name along with the corresponding bonus.
*/

select first_name,
        bonus
    from employee
    where bonus<150;