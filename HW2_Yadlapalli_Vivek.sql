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

select sum(close)/count(*) as 'Average Close Price'
from my_db.price;

select sum(high)/count(*) as 'Average High Price'
from my_db.price p
where p.high > 40;