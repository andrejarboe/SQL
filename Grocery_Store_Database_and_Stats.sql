CREATE TABLE store (id INTEGER PRIMARY KEY, item Text, color Text, quanity INTEGER, price INTEGER);

Insert INTO store VALUES (1, "hat", "red", 7, 213);
Insert INTO store VALUES (2, "jacket", "blue", 7, 23);
Insert INTO store VALUES (3, "shirt", "blue", 7, 145);
Insert INTO store VALUES (4, "socks", "blue", 7, 45);
Insert INTO store VALUES (5, "winter jacket", "blue", 7, 23);
Insert INTO store VALUES (6, "undershirt", "blue", 7, 4);
Insert INTO store VALUES (7, "stripped jacket", "blue", 7, 5);
Insert INTO store VALUES (8, "Texas hat", "blue", 7, 234);
Insert INTO store VALUES (9, "Texas pants", "blue", 7, 44);
Insert INTO store VALUES (10, "clemson shirt", "blue", 7, 4325);
Insert INTO store VALUES (11, "vest", "blue", 7, 34);
Insert INTO store VALUES (12, "heated vest", "blue", 7, 45);
Insert INTO store VALUES (13, "shoes", "blue", 7, 478);
Insert INTO store VALUES (14, "dress", "blue", 7, 45);
Insert INTO store VALUES (15, "boots", "blue", 7, 56);

SELECT price, item FROM store GROUP BY price;