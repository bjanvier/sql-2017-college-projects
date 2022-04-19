CREATE TABLE allUsers (
    id int NOT NULL AUTO_INCREMENT,
    email varchar(255),
    password varchar(255),
    admingroup varchar(255),
    isdeleted varchar(255),
    PRIMARY KEY (id)
);