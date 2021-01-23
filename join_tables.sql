SELECT *
FROM closet.garments
left join purchases on 
garments.garment_id = purchases.garment_id;
-- join all data for purchase analysis 