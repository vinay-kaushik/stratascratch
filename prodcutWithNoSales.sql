--TITLE: Products with No Sales
--LINK: https://platform.stratascratch.com/coding/2109-products-with-no-sales?code_type=1

select 
    prod_sku_id,
    market_name
    from dim_product
    where prod_sku_id not in (select distinct prod_sku_id from fct_customer_sales)  