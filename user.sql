create table user(
    id_user VARCHAR(10) PRIMARY KEY NOT NULL,
    user_username VARCHAR(15),
    user_firstname VARCHAR(20),
    user_lastname VARCHAR(20),
    user_telephone VARCHAR(12),
    user_email VARCHAR(200),
    user_password VARCHAR(50),
    user_address VARCHAR(100),
    user_NIK VARCHAR(16),
    user_gender ENUM('Male','Female')
);