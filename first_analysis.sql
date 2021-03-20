SELECT COUNT(*) FROM closet.garments 
WHERE garment_group = 'Top'; 
-- basic query to count no. tops in closet

SELECT COUNT(garment_id) AS garment_no,
             brand
  FROM closet.garments
GROUP BY brand;
-- work out the count for each brand of garments 

SELECT COUNT(purchase_id) AS garment_no,
    purchased_from
FROM closet.purchases
GROUP BY purchased_from;
-- count by purchase location, compare with brand query 

select count(garment_id), date_trunc('month', purchase_date) as purchase_month
from closet.purchases
group by purchase_month
order by purchase_month desc;
-- check purchase per month

select count(p.garment_id) as garments, 
       p.purchased_from,
       date_trunc('month', p.purchase_date) as purchase_month
from closet.purchases p 
group by p.purchased_from,
         purchase_month
order by purchase_month desc;
-- no. garments per month, from each purchase location

select sum(p.price) as total_spend, p.purchased_from
from closet.purchases p 
group by p.purchased_from 
order by total_spend desc;
-- total spend per purchase location