--TITLE: Find the number of inspections per day
--LINK: https://platform.stratascratch.com/coding/9704-find-the-number-of-inspections-per-day?python=


/*

Find the number of inspections per day.
Output the result along with the date of the activity.
Order results based on the activity date in the ascending order.
*/

select 
    activity_date,
    count(service_description)
    from los_angeles_restaurant_health_inspections
    group by activity_date
    order by 2;