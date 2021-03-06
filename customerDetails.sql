--TITLE: Customer Details
--LINK: https://platform.stratascratch.com/coding/9891-customer-details?python=

select 
    c.first_name,
    c.last_name,
    c.city,
    o.order_details
        from 
    customers c left join orders o
    on c.id=o.cust_id
    order by 1,4;