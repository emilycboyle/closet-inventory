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