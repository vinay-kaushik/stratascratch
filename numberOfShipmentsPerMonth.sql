--TITLE: Number of Shipments Per Month
--LINK: https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month?code_type=1

select 
   to_char(shipment_date,'YYYY-MM') as year_month,
   count(distinct (shipment_id||'_'||sub_id)) as uniq_id
    from amazon_shipment
    group by 1;