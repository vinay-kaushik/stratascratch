--TITLE: Weight For First Shipment
--LINK: https://platform.stratascratch.com/coding/2057-weight-for-first-shipment?code_type=1   


select 
    shipment_id,
    weight
from amazon_shipment
   where (shipment_id,shipment_date)  in (
    select shipment_id, min(shipment_date) from amazon_shipment group by 1
   );