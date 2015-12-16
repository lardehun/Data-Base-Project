USE CarDatabase;

INSERT INTO cars(Color,Type,Year,Price) VALUES ("Red","Volvo","1990-01-11 16:40:00","500");
INSERT INTO cars(Color,Type,Year,Price) VALUES ("Blue","Volvo","1991-01-11 16:40:00","2000");
INSERT INTO cars(Color,Type,Year,Price) VALUES ("Black","Volvo","1992-01-11 16:40:00","50000");
INSERT INTO cars(Color,Type,Year,Price) VALUES ("Yellow","Volvo","1993-01-11 16:40:00","5200");
INSERT INTO cars(Color,Type,Year,Price) VALUES ("Purple","Volvo","1994-01-11 16:40:00","400");

INSERT INTO shops(Location,Owner) VALUES ("Budapest","Kiss Gida");
INSERT INTO shops(Location,Owner) VALUES ("Miskolc","Lorde");
INSERT INTO shops(Location,Owner) VALUES ("Debrecen","Joker");
INSERT INTO shops(Location,Owner) VALUES ("Budapest","Nagy Gida");
INSERT INTO shops(Location,Owner) VALUES ("Budapest","Közepes Gida");

INSERT INTO visiting(Time,Name) VALUES ("2018-01-11 16:40:00","Nagy Jenő");
INSERT INTO visiting(Time,Name) VALUES ("2017-01-11 16:40:00","Kiss Jenő");
INSERT INTO visiting(Time,Name) VALUES ("2016-01-11 16:40:00","Közepes Jenő");
INSERT INTO visiting(Time,Name) VALUES ("2016-07-11 16:40:00","Babi Néni");
INSERT INTO visiting(Time,Name) VALUES ("2016-04-11 16:40:00","Juke City");

INSERT INTO register(CarID,ShopID,TimeID) VALUES (1,1,1);
INSERT INTO register(CarID,ShopID,TimeID) VALUES (1,2,1);
INSERT INTO register(CarID,ShopID,TimeID) VALUES (2,2,2);
INSERT INTO register(CarID,ShopID,TimeID) VALUES (4,1,1);
INSERT INTO register(CarID,ShopID,TimeID) VALUES (3,3,3);