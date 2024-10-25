USE pet_database;
INSERT INTO  petevent VALUES ("Fluffy", "2020-10-15", "vet", "antibiotics");
INSERT INTO petpet VALUES ("Hammy", "Diane", "hamster", 'M', "2010-10-30", null);
INSERT INTO petevent VALUES ("Hammy", "2020-10-15", "vet", "antibiotics");
UPDATE petevent SET remark="5 kittens, 3 female, 2 male" WHERE petname="Fluffy" and eventdate="1995-05-15";
UPDATE petevent SET petname="Claws" WHERE petname ="Slim" and eventdate="1997-08-03";
UPDATE petpet SET death="2020-09-01" WHERE petname="Puffball";
DELETE FROM petpet where owner = "Harold" and petname="Fluffy";