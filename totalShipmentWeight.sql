--TITLE: Total Shipment Weight
--LINK: https://platform.stratascratch.com/coding/2058-total-shipment-weight?code_type=1

select 
    *,
    sum(weight) over(partition by shipment_id) as total_weight
    from amazon_shipment a
    ;