CREATE SCHEMA if not exists trainerassigment2;

use trainerassgigment2;

CREATE TABLE  trainer (
  id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(45) NOT NULL,
  lastname VARCHAR(60) NOT NULL,
  subject VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC) VISIBLE
  );

insert into trainer (firstname,lastname,subject)
values("Babis","VoVos","Math1"),
("Takis", "Kontos","Math2"),
("Lolos","Potos","Math3"),
("Makis","Boridis","Math4");

select * from trainer;