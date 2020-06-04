CREATE TABLE `my_db`.`price` (
  `cusips` VARCHAR(5) NOT NULL,
  `open` INT NULL,
  `close` INT NULL,
  `high` INT NULL,
  `low` INT NULL,
  PRIMARY KEY (`cusips`));

INSERT INTO `my_db`.`price`(cusips,open,close,high,low) VALUES ('aaba',55,54,60,50);
INSERT INTO `my_db`.`price`(cusips,open,close,high,low) VALUES ('bbb',32,43,50,25);
INSERT INTO `my_db`.`price`(cusips,open,close,high,low) VALUES ('ccc',88,95,100,89);
INSERT INTO `my_db`.`price`(cusips,open,close,high,low) VALUES ('ddd',16,15,16,16);
INSERT INTO `my_db`.`price`(cusips,open,close,high,low) VALUES ('eeabe',34,25,34,20);

SELECT * FROM my_db.price;

select cusips
from my_db.price p
where low between 30 and 50;

select cusips
from my_db.price p
where cusips like '%ab%';

select cusips
from my_db.price p
where open >30 or low <50;

select cusips
from my_db.price p
where high >30 or low <50;

