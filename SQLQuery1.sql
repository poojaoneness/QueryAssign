use WFADotNet
--1.CREATE TABLE 
CREATE TABLE ProductDetail (
           ProductId int not null primary key identity(1,1),
		   Descriptions varchar(30) not null UNIQUE,
		   SetQty int not null
		   CHECK (SetQty = 1 OR SetQty = 5 OR SetQty = 10)
		   DEFAULT 1,
		   Rate decimal(10,2)
		   CHECK (Rate >=51 AND Rate <=5000)
		   )

--2.INSERT 20 RECORDS
INSERT INTO ProductDetail VALUES('ParleG', 5,45.3)
INSERT INTO ProductDetail VALUES('Sunfeast', 1,156.3)
INSERT INTO ProductDetail VALUES('Cocont', 10,100.3)
INSERT INTO ProductDetail VALUES('Cadbury', 5,458.6)
INSERT INTO ProductDetail VALUES('Anmol', 5,145.1)
INSERT INTO ProductDetail VALUES('Patanjali', 10,596.3)
INSERT INTO ProductDetail VALUES('Butter Cracker', 1,556.2)
INSERT INTO ProductDetail VALUES('Unibic ', 10,77.4)
INSERT INTO ProductDetail VALUES('Cheesy', 5,200.3)
INSERT INTO ProductDetail VALUES('McVities', 2,67.5)
INSERT INTO ProductDetail VALUES('Monaco', 8,45.3)
INSERT INTO ProductDetail VALUES('Salt', 4,667.4)
INSERT INTO ProductDetail VALUES('Black', 5,45.3)
INSERT INTO ProductDetail VALUES('Chocklate', 5,95.3)
INSERT INTO ProductDetail VALUES('Horlicks', 6,75.3)
INSERT INTO ProductDetail VALUES('Creame', 9,50.3)
INSERT INTO ProductDetail VALUES('Eggless', 9,45.3)
INSERT INTO ProductDetail VALUES('Jeera', 3,65.3)
INSERT INTO ProductDetail VALUES('FruitB', 5,9.3)
INSERT INTO ProductDetail VALUES('HappyHappy', 20,5.3)

SELECT * FROM ProductDetail

--3.UPDATE ALL THE RATES WITH 10%  RAKE HIKE
UPDATE ProductDetail SET Rate = Rate *1.1
FROM ProductDetail

--4.DELETE LAST RECORDS BY PROVIDING THE ProductID
DELETE FROM ProductDetail
WHERE ProductId = 7

--5.ALTER THE TABLE AND ADD THE FOLLOWING COLUMN
ALTER TABLE ProductDetail  ADD MarginCode char(1)
CHECK (MarginCode='A' OR MarginCode='B' OR MarginCode=NULL)

--6.UPDATE FEW RECORDS TO SET MARGINCODE TO A AND SOME RECORDSMARGINCODE TO B
UPDATE ProductDetail
SET MarginCode = 'A'
WHERE ProductId<6

UPDATE ProductDetail
SET MarginCode = 'B'
WHERE ProductId>12

--7.UPDATE ALL THE SETQTY TO 10 FOR ALL ITEM WHICH HAVE MARGINCODE A AND WHOSE OR 
UPDATE ProductDetail
set SetQty =10
WHERE MarginCode='A' AND SetQty=1

Select * from ProductDetail



