use WFADotNet
--1.CREATE TABLE 
CREATE TABLE ProductData (
           ProductId int not null primary key identity(1,1),
		   Descriptions varchar(30) not null UNIQUE,
		   SetQty int not null
		   CHECK (SetQty = 1 OR SetQty = 5 OR SetQty = 10)
		   DEFAULT 1,
		   Rate decimal(10,2)
		   CHECK (Rate >=51 AND Rate <=5000)
		   )

--2.INSERT 20 RECORDS
INSERT INTO ProductData VALUES('ParleG', 5,56.3)
INSERT INTO ProductData VALUES('Sunfeast', 1,100.3)
INSERT INTO ProductData VALUES('Cocont', 5,59.3)
INSERT INTO ProductData VALUES('Cadbury', 10,458.6)
INSERT INTO ProductData VALUES('Anmol', 5,145.1)
INSERT INTO ProductData VALUES('Patanjali', 5,596.3)
INSERT INTO ProductData VALUES('Butter Cracker', 10,556.2)
INSERT INTO ProductData VALUES('Unibic ', 1,77.4)
INSERT INTO ProductData VALUES('Cheesy', 10,200.3)
INSERT INTO ProductData VALUES('McVities', 5,67.5)
INSERT INTO ProductData VALUES('Monaco', 5,45.3)
INSERT INTO ProductData VALUES('Salt', 4,667.4)
INSERT INTO ProductData VALUES('Black', 5,45.3)
INSERT INTO ProductData VALUES('Chocklate', 5,95.3)
INSERT INTO ProductData VALUES('Horlicks', 6,75.3)
INSERT INTO ProductData VALUES('Creame', 5,50.3)
INSERT INTO ProductData VALUES('Eggless', 9,45.3)
INSERT INTO ProductData VALUES('Jeera', 3,65.3)
INSERT INTO ProductData VALUES('FruitB', 5,9.3)
INSERT INTO ProductData VALUES('HappyHappy', 20,5.3)


SELECT * FROM ProductData

--3.UPDATE ALL THE RATES WITH 10%  RAKE HIKE
UPDATE ProductData SET Rate = Rate *1.1
FROM ProductData

--4.DELETE LAST RECORDS BY PROVIDING THE ProductID
DELETE FROM ProductData
WHERE ProductId = 7

--5.ALTER THE TABLE AND ADD THE FOLLOWING COLUMN
ALTER TABLE ProductData ADD MarginCode char(1)
CHECK (MarginCode='A' OR MarginCode='B' OR MarginCode=NULL)

--6.UPDATE FEW RECORDS TO SET MARGINCODE TO A AND SOME RECORDS MARGINCODE TO B
UPDATE ProductData
SET MarginCode = 'A'
WHERE ProductId<6

UPDATE ProductData
SET MarginCode = 'B'
WHERE ProductId>12

--7.UPDATE ALL THE SETQTY TO 10 FOR ALL ITEM WHICH HAVE MARGINCODE A AND WHOSE OR 
UPDATE ProductData
set SetQty =10
WHERE MarginCode='A' AND SetQty=1


INSERT INTO ProductData VALUES('Happy', 5,100.3,'C')
