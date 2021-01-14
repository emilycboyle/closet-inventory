CREATE TABLE closet.garments (
    garment_id       serial PRIMARY KEY,
    garment_group    varchar(255) NOT NULL,
    sub_group        varchar(255) NOT NULL,
    colour           varchar(255) not NULL,
    sub_colour       varchar(255),
    brand            varchar(255),
    print            varchar(255),
    in_closet        boolean, 
    season_storage   boolean
);
-- create the table garments with garment information


alter table closet.garments
add column 
item_description varchar(500);
-- add a description column 

-- closet.garments definition

-- Drop table

-- DROP TABLE closet.garments;

CREATE TABLE closet.garments (
	garment_id serial NOT NULL,
	garment_group varchar(255) NOT NULL,
	sub_group varchar(255) NOT NULL,
	colour varchar(255) NOT NULL,
	sub_colour varchar(255) NULL,
	brand varchar(255) NULL,
	print varchar(255) NULL,
	in_closet bool NULL,
	season_storage bool NULL,
	item_description varchar(500) NULL,
	CONSTRAINT garments_pkey PRIMARY KEY (garment_id)
);
-- rewrite garments table with primary key in case of error
