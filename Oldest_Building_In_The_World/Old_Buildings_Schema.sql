-- Active: 1686788664084@@127.0.0.1@5432@oldest_building
/* Oldest_Building_In_The_World
Schema & Tables
© 2023 Tushar Aggarwal. All rights reserved.
*/
CREATE DATABASE oldest_building;

/* ======================= TABLES ========================*/
CREATE TABLE categories (
    category_code VARCHAR (10), --Code for the category of the business
    category VARCHAR (50)
    );

CREATE TABLE countries(
    country_code VARCHAR (3), --ISO 3166-1 3-letter country code
    country VARCHAR (50), --Name of the country
    continent VARCHAR(50)
    );

CREATE TABLE business (
    business VARCHAR (100), --Name of Business
    year_founded INT , --Year the business was founded
    category_code VARCHAR(10), -- Code for the category of the business
    country_code VARCHAR(3) --ISO 3166-1 3-letter country code
    );


