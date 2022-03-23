--TITLE: The Most Expensive Products Per Category
--LINK: https://platform.stratascratch.com/coding/9607-the-most-expensive-products-per-category?python=

/*
The Most Expensive Products Per Category
Find the most expensive products on Amazon for each product category. Output category and the price (as a number)
*/
select 
    (price::money::numeric),
    product_category,
    product_name
    from 
    innerwear_amazon_com
    where price::money::numeric in (select
    max(price::money::numeric) from innerwear_amazon_com
    group by product_category)
    ;