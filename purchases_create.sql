CREATE TABLE closet.purchases (
    purchase_id      serial PRIMARY KEY,
    garment_id       serial,
    purchase_date    date,
    purchased_from   varchar(255) not NULL,
    price            integer,
    thrifted         boolean
);
-- create table purchases for purchase information

alter table closet.purchases 
add column 
sale boolean;
-- add in a sale column 

-- closet.purchases definition

-- Drop table

-- DROP TABLE closet.purchases;

CREATE TABLE closet.purchases (
	purchase_id serial NOT NULL,
	garment_id serial NOT NULL,
	purchase_date date NULL,
	purchased_from varchar(255) NOT NULL,
	price int4 NULL,
	thrifted bool NULL,
	sale bool NULL,
	CONSTRAINT purchases_pkey PRIMARY KEY (purchase_id)
);


-- closet.purchases foreign keys

ALTER TABLE closet.purchases ADD CONSTRAINT purchases_fk FOREIGN KEY (garment_id) REFERENCES closet.garments(garment_id) ON UPDATE CASCADE ON DELETE CASCADE;
-- rewrite purchases table in case of error

