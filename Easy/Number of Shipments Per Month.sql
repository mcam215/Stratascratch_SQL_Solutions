-- Write a query that will calculate the number of shipments per month. The unique key for one shipment is a combination of shipment_id and sub_id. 
-- Output the year_month in format YYYY-MM and the number of shipments in that month.

-- https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month?code_type=1

select 
    count(shipment_id),
    DATE_FORMAT(shipment_date, '%Y-%m') as date_ym
from amazon_shipment
 group by 2
