--TITLE: Customer Orders and Details
--LINK: https://platform.stratascratch.com/coding/9908-customer-orders-and-details?python=

/*
Customer Orders and Details
Find the number of orders, the number of customers, and the total cost of orders for each city. Only include cities that have made at least 5 orders and count all customers in each city even if they did not place an order.

Output each calculation along with the corresponding city name.
*/

select  
    c.city,
    count(distinct c.id) as customer_per_city,
    count(o.id) as orders_per_city,
    sum(o.total_order_cost) as ttl
    -- count(o.order_details) over(partition by c.city) as orders_per_city
    from customers c left join 
    orders o
    on c.id=o.cust_id
    group by city
    having count(o.id)>=5
    ;