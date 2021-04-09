select sum(p.price) as total_spend, p.purchased_from, 
       date_trunc('month', p.purchase_date) as purchase_month
from closet.purchases p 
left join closet.garments on 
p.garment_id = garments.garment_id
group by p.purchased_from, purchase_month 
order by purchase_month desc;
-- total spend per store per month 