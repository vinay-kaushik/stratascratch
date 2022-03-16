--TITLE: Highest Cost Orders
--LINK: https://platform.stratascratch.com/coding/9915-highest-cost-orders?python=

/*
Highest Cost Orders
Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. If customer had more than one order on a certain day, sum the order costs on daily basis. Output their first name, total cost of their items, and the date.
 
 For simplicity, you can assume that every first name in the dataset is unique.
*/

with tmp as(
select 
    c.first_name as first_name,
    sum(o.total_order_cost) as total,
    o.order_date as order_date
    from 
    customers c,
    orders o
    where c.id=o.cust_id
    and 
    o.order_date between '2019-02-01' and '2019-05-01'
    group by 1,3
    order by 2 desc)
select first_name,total,order_date from tmp where total=(select max(total) from tmp);