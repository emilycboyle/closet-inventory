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
