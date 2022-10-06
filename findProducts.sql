--TITLE: Find products
--LINK: https://platform.stratascratch.com/coding/2068-find-products?code_type=1


with product_sales as (
select 
    product_id,
    avg(cost_in_dollars) as avg_sales_price
from facebook_sales
     
    group by 1
    having count(product_id)>=2
    and  avg(cost_in_dollars)>=3)
select 
    ps.product_id,
    ps.avg_sales_price,
    fp.brand_name 
    from product_sales ps, facebook_products fp
    where fp.product_id=ps.product_id;