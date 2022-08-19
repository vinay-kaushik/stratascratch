--TITLE: Average Cost Of Each Request
--LINK: https://platform.stratascratch.com/coding/10007-average-cost-of-each-request?code_type=1

/*
Find the average cost of each request status.
Request status can be either 'success' or 'fail'.
Output the request status along with the average cost.
*/

select request_status,avg(monetary_cost) from uber_ride_requests
    group by request_status;