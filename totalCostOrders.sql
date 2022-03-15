--TITLE: Total Cost Of Orders
--LINK: https://platform.stratascratch.com/coding/10183-total-cost-of-orders?python=

/*
Total Cost Of Orders
Find the total cost of each customer's orders. 
Output customer's id, first name, and the total order cost. Order records by customer's first name alphabetically.
*/

select 
    c.id,
    c.first_name,
    sum(o.total_order_cost)  as customer_cost
    from customers c,
        orders o
    where c.id=o.cust_id
    group by c.id,c.first_name
    order by 2;