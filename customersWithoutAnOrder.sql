--TITLE: Find the number of customers without an order.
--LINK: https://platform.stratascratch.com/coding/10089-find-the-number-of-customers-without-an-order?python=


/*
Find the number of customers without an order.
*/

select count(distinct (c.id)) from customers c where c.id not in (select cust_id from orders)
    ;