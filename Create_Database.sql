
CREATE DATABASE blinkit_grocery;

USE blinkit_grocery;

CREATE TABLE grocery_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    item_fat_content VARCHAR(20),
    item_identifier VARCHAR(10),
    item_type VARCHAR(30),
    outlet_establishment_year INT,
    outlet_identifier VARCHAR(10),
    outlet_location_type VARCHAR(10),
    outlet_size VARCHAR(10),
    outlet_type VARCHAR(20),
    item_visibility FLOAT,
    item_weight FLOAT,
    sales FLOAT,
    rating INT
);