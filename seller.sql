create table seller(
    id_seller VARCHAR(10) PRIMARY KEY NOT NULL,
    seller_username VARCHAR(15),
    seller_firstname VARCHAR(20),
    seller_lastname VARCHAR(20),
    seller_telephone VARCHAR(12),
    seller_email VARCHAR(200),
    seller_password VARCHAR(50),
    seller_address VARCHAR(100)
);