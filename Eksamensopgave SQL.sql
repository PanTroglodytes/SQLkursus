CREATE DATABASE ForlagetKlematis;
USE ForlagetKlematis;

CREATE TABLE bøger (
ISBN bigint NOT NULL,
titel varchar(50) NOT NULL,
forfatter_id int(2) NOT NULL,
udgivelsesdato date,
redaktør_id int(2),
pris decimal(5,2)
);

CREATE TABLE ansatte (
navn varchar(50) NOT NULL,
personale_id int(2),
adresse_id int(2)
);

CREATE TABLE kunder (
firmanavn varchar(50),
att varchar(50) NOT NULL,
kunde_id int(2) NOT NULL,
adresse_id int(2)
);

CREATE TABLE ordrer (
ordrenr int(2) NOT NULL,
kunde_id int(2) NOT NULL,
ordredato date NOT NULL
);

CREATE TABLE ordrelinjer (
ordrenr int(2) NOT NULL,
ISBN bigint(13) NOT NULL,
antal int(2) NOT NULL
);

CREATE TABLE adresser (
adresse_id int(2) NOT NULL,
vej varchar(30),
nummer int(3),
etage varchar(6),
postnummer int(4),
bynavn varchar(20)
);

INSERT INTO bøger VALUES(9788764109504, 'Patchworktæpper og den amerikanske borgerkrig', 1, '2013-08-27', 3, 299.95);
INSERT INTO bøger VALUES(9788764108750, 'Vis mig dit Drivhus', 3, '2012-10-01', 3, 499.95);
INSERT INTO bøger VALUES(9788771393286, 'Frygtelige fakta om gyselige væsener', 2, '2018-06-30', 4, 199.95);
INSERT INTO bøger VALUES(9788764108781, 'den lille grønne for madpakkespisere', 5, '2012-04-01', NULL, 249.95);

INSERT INTO ansatte VALUES('Filippa Gårdbo', 1, 1);
INSERT INTO ansatte VALUES('Claus Dalby', 3, 2);
INSERT INTO ansatte VALUES('Anna Hansson', 2, 3);
INSERT INTO ansatte VALUES('Maria Andersson', 4, 4);
INSERT INTO ansatte VALUES('Kirsten Skaarup', 5, 5);

INSERT INTO kunder VALUES('Arnold Busck', 'Line Bjørn Andersen', 1, 6);
INSERT INTO kunder VALUES('Bog & idé', 'Ann', 2, 7);
INSERT INTO kunder VALUES(NULL, 'Jens Hansen', 3, 8);
INSERT INTO kunder VALUES(NULL, 'Hans Jensen', 4, 9);

INSERT INTO adresser VALUES(6, 'Pilestræde', 52, '1.', 1112, 'København K');
INSERT INTO adresser VALUES(7, 'Mossvej', 2, NULL, 8700, 'Horsens');
INSERT INTO adresser VALUES(8, 'Brøderupvej', 10, NULL, 4733, 'Tappernøje');
INSERT INTO adresser VALUES(9, 'Havgyden', 2, NULL, 6100, 'Haderslev');

INSERT INTO ordrer VALUES(1, 1, '2019-03-01');
INSERT INTO ordrer VALUES(2, 1, '2019-03-02');
INSERT INTO ordrer VALUES(3, 2, '2019-03-17');
INSERT INTO ordrer VALUES(4, 3, '2019-04-01');
INSERT INTO ordrer VALUES(5, 4, '2019-04-12');

INSERT INTO ordrelinjer VALUES(1, 9788764109504, 50);
INSERT INTO ordrelinjer VALUES(1, 9788764108750, 25);
INSERT INTO ordrelinjer VALUES(2, 9788771393286, 10);
INSERT INTO ordrelinjer VALUES(3, 9788764108781, 10);
INSERT INTO ordrelinjer VALUES(3, 9788764108781, 100);
INSERT INTO ordrelinjer VALUES(4, 9788764108750, 1);
INSERT INTO ordrelinjer VALUES(4, 9788764108781, 1);
INSERT INTO ordrelinjer VALUES(5, 9788764109504, 1);
INSERT INTO ordrelinjer VALUES(5, 9788771393286, 1);

