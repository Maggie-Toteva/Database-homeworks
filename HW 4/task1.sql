USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;
CREATE table petPet (
  petname VARCHAR(20) NOT NULL PRIMARY KEY,
  owner VARCHAR(45),
  species VARCHAR(45),
  gender ENUM('F','M'),
  birth date,
  death date
);

CREATE table petEvent (
  petname VARCHAR(20),
  eventdate date,
  eventtype VARCHAR(15),
  remark VARCHAR(255),
  FOREIGN KEY (petname) REFERENCES petPet (petname),
  PRIMARY KEY (petname, eventdate)
);

