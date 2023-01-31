CREATE DATABASE Clothing_store;

Use Clothing_store;
-- create a store database
CREATE TABLE store (
    id INTEGER PRIMARY KEY AUTO_INCREMENT, 
    item Text, 
    color Text, 
    quantity INTEGER, 
    price INTEGER
);

Insert INTO store VALUES (id, "hat", "red", 45, 213);
Insert INTO store (item, color,quantity,price) VALUES ("sherpa jacket", "blue", 7, 35);
Insert INTO store (item, color,quantity,price) VALUES ("shirt", "orange", 34, 145);
Insert INTO store (item, color,quantity,price) VALUES ("socks", "green", 7, 45);
Insert INTO store (item, color,quantity,price) VALUES ("winter jacket", "yellow", 7, 23);
Insert INTO store (item, color,quantity,price) VALUES ("undershirt", "black", 64, 4);
Insert INTO store (item, color,quantity,price) VALUES ("stripped jacket", "blue", 7, 5);
Insert INTO store (item, color,quantity,price) VALUES ("Texas hat", "red", 86, 234);
Insert INTO store (item, color,quantity,price) VALUES ("Texas pants", "blue", 32, 44);
Insert INTO store (item, color,quantity,price) VALUES ( "clemson shirt", "black", 7, 25);
Insert INTO store (item, color,quantity,price) VALUES ( "vest", "black", 34, 34);
Insert INTO store (item, color,quantity,price) VALUES ( "heated vest", "black", 7, 45);
Insert INTO store (item, color,quantity,price) VALUES ( "shoes", "white", 12, 478);
Insert INTO store (item, color,quantity,price) VALUES ( "dress", "blue", 57, 45);
Insert INTO store (item, color,quantity,price) VALUES ( "boots", "black", 39, 56);
Insert INTO store (item, color,quantity,price) VALUES ("helment", "black", 39, 56);

-- display the database ordered by price. 
SELECT * FROM store 
ORDER BY Price DESC;

-- display avg price of red items
SELECT 
    AVG(price) "Avg price of Red items"
FROM 
    store
WHERE 
    color = "red";

-- total number of items per color
SELECT 
    color, SUM(quantity) "Quantity of color"
FROM 
    store
GROUP BY (color);

ALTER TABLE store MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT;

CREATE DATABASE NASA_Astronauts;