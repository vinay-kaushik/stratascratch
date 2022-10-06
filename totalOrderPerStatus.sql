--TITLE: Total Order Per Status Per Service
--LINK: https://platform.stratascratch.com/coding/2049-total-order-per-status-per-service?code_type=1

select 
    status_of_order,
    service_name,
    sum(number_of_orders)
from uber_orders
    group by 1,2;