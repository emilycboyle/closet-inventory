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