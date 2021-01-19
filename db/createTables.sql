-- DROP schema IF EXISTS public;
-- create schema if not exists public;
DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS email_addresses;


create table cars (
  id serial primary key,
  make varchar(15),
  model varchar(15),
  color varchar(20),
  year int,
  price varchar(10),
  batteryCapacity varchar(50),
  inventoryImage varchar(50),
  badge varchar(50)
);


create table images (
  id serial primary key,
  -- carId int references cars.id,
  carId int,
  type varchar(10),
  main boolean,
  location varchar(50)
);

CREATE TABLE email_addresses (
    id integer NOT NULL DEFAULT nextval('email_addresses_id_seq'::regclass),
    email_address character varying(75),
    CONSTRAINT email_addresses_pkey PRIMARY KEY (id)
);


--------------------------------------------------------------------------------------------------------------------------------------




INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
	VALUES ('Tesla', 'Model S', 'Black', 2017, '131,150', '100 kWh Performance All-Wheel Drive', '/images/cars/blacks1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Black', 2017, '131,250', '90 kWh Performance All-Wheel Drive', '/images/cars/blacks1.jpg', '/images/p90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'White', 2017, '131,350', '90 kWh All-Wheel Drive', '/images/cars/whites1.jpg', '/images/90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'White', 2017, '131,450', '75 kWh All-Wheel Drive', '/images/cars/whites1.jpg', '/images/75d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Red', 2017, '131,550', '100 kWh Performance All-Wheel Drive', '/images/cars/reds1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Red', 2017, '131,650', '100 kWh Performance All-Wheel Drive', '/images/cars/reds1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Blue', 2017, '131,650', '75 kWh All-Wheel Drive', '/images/cars/blues1.jpg', '/images/75d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Blue', 2017, '131,750', '75 kWh All-Wheel Drive', '/images/cars/blues1.jpg', '/images/75d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Silver', 2017, '131,850', '90 kWh All-Wheel Drive', '/images/cars/silvers1.jpg', '/images/90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Silver', 2017, '131,150', '90 kWh All-Wheel Drive', '/images/cars/silvers1.jpg', '/images/90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Red', 2017, '131,350', '100 kWh Performance All-Wheel Drive', '/images/cars/reds1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Blue', 2017, '131,550', '100 kWh Performance All-Wheel Drive', '/images/cars/blues1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Silver', 2017, '131,750', '100 kWh Performance All-Wheel Drive', '/images/cars/silvers1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'White', 2017, '131,950', '100 kWh PerformanceAll-Wheel Drive', '/images/cars/whites1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Black', 2017, '129,950', '90 kWh Performance All-Wheel Drive', '/images/cars/blacks1.jpg', '/images/p90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model S', 'Blue', 2017, '130,050', '90 kWh Performance All-Wheel Drive', '/images/cars/blues1.jpg', '/images/p90d.svg');



INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
	VALUES ('Tesla', 'Model X', 'Black', 2017, '153,800', '100 kWh Performance All-Wheel Drive', '/images/cars/blackx1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Black', 2017, '98,500', '90 kWh Performance All-Wheel Drive', '/images/cars/blackx1.jpg', '/images/p90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'White', 2017, '98,6200', '100 kWh Performance All-Wheel Drive', '/images/cars/whitex1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'White', 2017, '99,200', '90 kWh Performance All-Wheel Drive', '/images/cars/whitex1.jpg', '/images/p90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Blue', 2017, '99,650', '100 kWh Performance All-Wheel Drive', '/images/cars/bluex1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Blue', 2017, '104,500', '90 kWh Performance All-Wheel Drive', '/images/cars/bluex1.jpg', '/images/p90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Silver', 2017, '110,650', '100 kWh Performance All-Wheel Drive', '/images/cars/silverx1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Silver', 2017, '113,950', '90 kWh Performance All-Wheel Drive', '/images/cars/silverx1.jpg', '/images/p90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Silver', 2017, '131,850', '100 kWh Performance All-Wheel Drive', '/images/cars/silverx1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Black', 2017, '99,150', '90 kWh Performance All-Wheel Drive', '/images/cars/blackx1.jpg', '/images/p90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Blue', 2017, '152,700', '100 kWh Performance All-Wheel Drive', '/images/cars/bluex1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'White', 2017, '113,550', '100 kWh Performance All-Wheel Drive', '/images/cars/whitex1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'White', 2017, '98,900', '100 kWh Performance All-Wheel Drive', '/images/cars/whitex1.jpg', '/images/p100d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Silver', 2017, '153,100', '90 kWh Performance All-Wheel Drive', '/images/cars/silverx1.jpg', '/images/p90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Blue', 2017, '101,500', '90 kWh Performance All-Wheel Drive', '/images/cars/bluex1.jpg', '/images/p90d.svg');
INSERT INTO cars( make, model, color, year, price, batteryCapacity, inventoryImage, badge)
  VALUES ('Tesla', 'Model X', 'Blue', 2017, '101,500', '90 kWh Performance All-Wheel Drive', '/images/cars/bluex1.jpg', '/images/p90d.svg');






INSERT INTO images(carId, type, main, location) VALUES (1, 'car', true, '/images/cars/blacksmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (1, 'car', true, '/images/cars/blacks1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (1, 'car', true, '/images/cars/blacks2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (1, 'car', true, '/images/cars/blacks3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (1, 'car', true, '/images/cars/blacks4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (2, 'car', true, '/images/cars/blacksmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (2, 'car', true, '/images/cars/blacks1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (2, 'car', true, '/images/cars/blacks2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (2, 'car', true, '/images/cars/blacks3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (2, 'car', true, '/images/cars/blacks4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (3, 'car', true, '/images/cars/whitesmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (3, 'car', true, '/images/cars/whites1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (3, 'car', true, '/images/cars/whites2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (3, 'car', true, '/images/cars/whites3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (3, 'car', true, '/images/cars/whites4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (4, 'car', true, '/images/cars/whitesmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (4, 'car', true, '/images/cars/whites1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (4, 'car', true, '/images/cars/whites2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (4, 'car', true, '/images/cars/whites3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (4, 'car', true, '/images/cars/whites4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (5, 'car', true, '/images/cars/redsmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (5, 'car', true, '/images/cars/reds1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (5, 'car', true, '/images/cars/reds2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (5, 'car', true, '/images/cars/reds3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (5, 'car', true, '/images/cars/reds4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (6, 'car', true, '/images/cars/redsmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (6, 'car', true, '/images/cars/reds1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (6, 'car', true, '/images/cars/reds2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (6, 'car', true, '/images/cars/reds3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (6, 'car', true, '/images/cars/reds4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (7, 'car', true, '/images/cars/bluesmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (7, 'car', true, '/images/cars/blues1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (7, 'car', true, '/images/cars/blues2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (7, 'car', true, '/images/cars/blues3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (7, 'car', true, '/images/cars/blues4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (8, 'car', true, '/images/cars/bluesmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (8, 'car', true, '/images/cars/blues1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (8, 'car', true, '/images/cars/blues2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (8, 'car', true, '/images/cars/blues3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (8, 'car', true, '/images/cars/blues4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (9, 'car', true, '/images/cars/silversmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (9, 'car', true, '/images/cars/silvers1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (9, 'car', true, '/images/cars/silvers2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (9, 'car', true, '/images/cars/silvers3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (9, 'car', true, '/images/cars/silvers4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (10, 'car', true, '/images/cars/silversmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (10, 'car', true, '/images/cars/silvers1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (10, 'car', true, '/images/cars/silvers2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (10, 'car', true, '/images/cars/silvers3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (10, 'car', true, '/images/cars/silvers4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (11, 'car', true, '/images/cars/redsmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (11, 'car', true, '/images/cars/reds1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (11, 'car', true, '/images/cars/reds2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (11, 'car', true, '/images/cars/reds3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (11, 'car', true, '/images/cars/reds4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (12, 'car', true, '/images/cars/bluesmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (12, 'car', true, '/images/cars/blues1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (12, 'car', true, '/images/cars/blues2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (12, 'car', true, '/images/cars/blues3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (12, 'car', true, '/images/cars/blues4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (13, 'car', true, '/images/cars/silversmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (13, 'car', true, '/images/cars/silvers1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (13, 'car', true, '/images/cars/silvers2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (13, 'car', true, '/images/cars/silvers3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (13, 'car', true, '/images/cars/silvers4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (14, 'car', true, '/images/cars/whitesmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (14, 'car', true, '/images/cars/whites1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (14, 'car', true, '/images/cars/whites2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (14, 'car', true, '/images/cars/whites3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (14, 'car', true, '/images/cars/whites4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (15, 'car', true, '/images/cars/blacksmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (15, 'car', true, '/images/cars/blacks1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (15, 'car', true, '/images/cars/blacks2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (15, 'car', true, '/images/cars/blacks3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (15, 'car', true, '/images/cars/blacks4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (16, 'car', true, '/images/cars/bluesmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (16, 'car', true, '/images/cars/blues1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (16, 'car', true, '/images/cars/blues2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (16, 'car', true, '/images/cars/blues3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (16, 'car', true, '/images/cars/blues4.jpg');


INSERT INTO images(carId, type, main, location) VALUES (17, 'car', true, '/images/cars/blackxmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (17, 'car', true, '/images/cars/blackx1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (17, 'car', true, '/images/cars/blackx2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (17, 'car', true, '/images/cars/blackx3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (17, 'car', true, '/images/cars/blackx4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (18, 'car', true, '/images/cars/blackxmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (18, 'car', true, '/images/cars/blackx1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (18, 'car', true, '/images/cars/blackx2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (18, 'car', true, '/images/cars/blackx3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (18, 'car', true, '/images/cars/blackx4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (19, 'car', true, '/images/cars/whitexmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (19, 'car', true, '/images/cars/whitex1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (19, 'car', true, '/images/cars/whitex2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (19, 'car', true, '/images/cars/whitex3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (19, 'car', true, '/images/cars/whitex4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (20, 'car', true, '/images/cars/whitexmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (20, 'car', true, '/images/cars/whitex1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (20, 'car', true, '/images/cars/whitex2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (20, 'car', true, '/images/cars/whitex3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (20, 'car', true, '/images/cars/whitex4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (21, 'car', true, '/images/cars/bluexmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (21, 'car', true, '/images/cars/bluex1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (21, 'car', true, '/images/cars/bluex2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (21, 'car', true, '/images/cars/bluex3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (21, 'car', true, '/images/cars/bluex4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (22, 'car', true, '/images/cars/bluexmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (22, 'car', true, '/images/cars/bluex1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (22, 'car', true, '/images/cars/bluex2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (22, 'car', true, '/images/cars/bluex3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (22, 'car', true, '/images/cars/bluex4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (23, 'car', true, '/images/cars/silverxmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (23, 'car', true, '/images/cars/silverx1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (23, 'car', true, '/images/cars/silverx2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (23, 'car', true, '/images/cars/silverx3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (23, 'car', true, '/images/cars/silverx4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (24, 'car', true, '/images/cars/silverxmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (24, 'car', true, '/images/cars/silverx1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (24, 'car', true, '/images/cars/silverx2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (24, 'car', true, '/images/cars/silverx3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (24, 'car', true, '/images/cars/silverx4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (25, 'car', true, '/images/cars/silverxmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (25, 'car', true, '/images/cars/silverx1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (25, 'car', true, '/images/cars/silverx2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (25, 'car', true, '/images/cars/silverx3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (25, 'car', true, '/images/cars/silverx4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (26, 'car', true, '/images/cars/blackxmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (26, 'car', true, '/images/cars/blackx1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (26, 'car', true, '/images/cars/blackx2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (26, 'car', true, '/images/cars/blackx3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (26, 'car', true, '/images/cars/blackx4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (27, 'car', true, '/images/cars/bluexmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (27, 'car', true, '/images/cars/bluex1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (27, 'car', true, '/images/cars/bluex2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (27, 'car', true, '/images/cars/bluex3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (27, 'car', true, '/images/cars/bluex4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (28, 'car', true, '/images/cars/whitexmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (28, 'car', true, '/images/cars/whitex1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (28, 'car', true, '/images/cars/whitex2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (28, 'car', true, '/images/cars/whitex3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (28, 'car', true, '/images/cars/whitex4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (29, 'car', true, '/images/cars/whitexmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (29, 'car', true, '/images/cars/whitex1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (29, 'car', true, '/images/cars/whitex2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (29, 'car', true, '/images/cars/whitex3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (29, 'car', true, '/images/cars/whitex4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (30, 'car', true, '/images/cars/silverxmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (30, 'car', true, '/images/cars/silverx1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (30, 'car', true, '/images/cars/silverx2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (30, 'car', true, '/images/cars/silverx3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (30, 'car', true, '/images/cars/silverx4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (31, 'car', true, '/images/cars/bluexmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (31, 'car', true, '/images/cars/bluex1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (31, 'car', true, '/images/cars/bluex2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (31, 'car', true, '/images/cars/bluex3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (31, 'car', true, '/images/cars/bluex4.jpg');
INSERT INTO images(carId, type, main, location) VALUES (32, 'car', true, '/images/cars/bluexmain.jpg');
INSERT INTO images(carId, type, main, location) VALUES (32, 'car', true, '/images/cars/bluex1.jpg');
INSERT INTO images(carId, type, main, location) VALUES (32, 'car', true, '/images/cars/bluex2.jpg');
INSERT INTO images(carId, type, main, location) VALUES (32, 'car', true, '/images/cars/bluex3.jpg');
INSERT INTO images(carId, type, main, location) VALUES (32, 'car', true, '/images/cars/bluex4.jpg');
