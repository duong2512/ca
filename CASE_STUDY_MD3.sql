CREATE DATABASE CASE_STUDY_MD3;
USE CASE_STUDY_MD3;

CREATE TABLE customer (
    userName VARCHAR(50) PRIMARY KEY,
    passWord VARCHAR(100),
    fullName VARCHAR(50),
    birthDay VARCHAR(100),
    idCart VARCHAR(50),
    homeTown VARCHAR(25),
    phoneNumber VARCHAR(25),
    email VARCHAR(50),
    wallet DOUBLE
);

CREATE TABLE sector (
    idKV INT PRIMARY KEY,
    province VARCHAR(50),
    district VARCHAR(50),
    subDistrict VARCHAR(50)
);

CREATE TABLE apartment (
    idCH INT PRIMARY KEY,
    address VARCHAR(100),
    price DOUBLE,
    area DOUBLE,
    picture VARCHAR(1000),
    status VARCHAR(100),
    description VARCHAR(100),
    datePost DATE,
    classify VARCHAR(50),
    userName VARCHAR(50),
    idKV INT,
    FOREIGN KEY (userName)
        REFERENCES customer (userName),
	FOREIGN KEY (idKV)
        REFERENCES sector (idKV)
);
drop database CASE_STUDY_MD3;
