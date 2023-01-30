CREATE DATABASE Clothing_store;

Use Clothing_store;
-- create a store database
CREATE TABLE store (
    id INTEGER PRIMARY KEY, 
    item Text, 
    color Text, 
    quanity INTEGER, 
    price INTEGER
);

Insert INTO store VALUES (1, "hat", "red", 45, 213);
Insert INTO store VALUES (2, "sherpa jacket", "blue", 7, 35);
Insert INTO store VALUES (3, "shirt", "orange", 34, 145);
Insert INTO store VALUES (4, "socks", "green", 7, 45);
Insert INTO store VALUES (5, "winter jacket", "yellow", 7, 23);
Insert INTO store VALUES (6, "undershirt", "black", 64, 4);
Insert INTO store VALUES (7, "stripped jacket", "blue", 7, 5);
Insert INTO store VALUES (8, "Texas hat", "red", 86, 234);
Insert INTO store VALUES (9, "Texas pants", "blue", 32, 44);
Insert INTO store VALUES (10, "clemson shirt", "black", 7, 25);
Insert INTO store VALUES (11, "vest", "black", 34, 34);
Insert INTO store VALUES (12, "heated vest", "black", 7, 45);
Insert INTO store VALUES (13, "shoes", "white", 12, 478);
Insert INTO store VALUES (14, "dress", "blue", 57, 45);
Insert INTO store VALUES (15, "boots", "black", 39, 56);

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

