CREATE DATABASE ERGASIA;
USE ERGASIA;

CREATE TABLE MENU(MENUNUM INT NOT NULL AUTO_INCREMENT,BREAKFAST 
	VARCHAR(40) NOT NULL, LUNCH VARCHAR(40) NOT NULL, DINNER 	VARCHAR(40) NOT NULL, COST DECIMAL(10,2) NOT NULL, PRIMARY 	KEY(MENUNUM));

CREATE TABLE MESS(MESSNUM INT NOT NULL AUTO_INCREMENT, DATE DATE 	NOT NULL, NO_FOOD INT NOT NULL, CITY VARCHAR(20) NOT NULL, 	STREET VARCHAR(20)NOT NULL, NO_STREET INT NOT NULL, COST 	DECIMAL(10.2), MESSMENUNUM INT NOT NULL ,PRIMARY KEY 	MESSNUM), FOREIGN KEY(MESSMENUNUM) REFERENCES 	MENU(MENUNUM));

CREATE TABLE BENEFICIARY(BENNUM INT NOT NULL AUTO_INCREMENT, 	BENFNAME VARCHAR(20) NOT NULL, BENLNAME VARCHAR(20) NOT 	NULL, BENMESSNUM INT NOT NULL, PRIMARY KEY(BENNUM), 	FOREIGN KEY(BENMESSNUM) REFERENCES MESS(MESSNUM));

CREATE TABLE SPONSOR(SPONSORNUM INT NOT NULL AUTO_INCREMENT, 	NAME VARCHAR(40), PRIMARY KEY(SPONSORNUM)); 

CREATE TABLE SPONSORSHIP(SPONSORSHIP DECIMAL(10,2) NOT NULL, 	SPONSOR INT NOT NULL, FOREIGN KEY(SPONSOR) REFERENCES 	SPONSOR(SPONSORNUM) ,PRIMARY KEY(SPONSORSHIP, SPONSOR));

CREATE TABLE FINANCES(FINSPONUM INT NOT NULL, FINMESSNUM INT NOT 	NULL, FOREIGN KEY(FINSPONUM) REFERENCES 	SPONSOR(SPONSORNUM),FOREIGN KEY(FINMESSNUM) REFERENCES 	MESS(MESSNUM), PRIMARY KEY(FINSPONUM, FINMESSNUM));

CREATE TABLE MESS_NUMBER(NUMBER BIGINT NOT NULL, MNUM INT NOT 	NULL, FOREIGN KEY(MNUM) REFERENCES MESS(MESSNUM) ON DELETE 	CASCADE, PRIMARY KEY(MNUM, NUMBER));

CREATE TABLE DEPARTMENT(DEPNUM INT NOT NULL AUTO_INCREMENT, 	DNAME VARCHAR(40) NOT NULL, DEPMESSNUM INT NOT NULL, 	PRIMARY KEY(DEPNUM), FOREIGN KEY(DEPMESSNUM) REFERENCES 	MESS(MESSNUM));

CREATE TABLE EMPLOYEE(EMPNUM INT NOT NULL AUTO_INCREMENT, FNAME 
	VARCHAR(20) NOT NULL, LNAME VARCHAR(20) NOT NULL, SEX CHAR 	NOT NULL, AGE DATE NOT NULL, SALARY DECIMAL(10.2) NOT 	NULL, STREET VARCHAR(20) NOT NULL, NO_STREET INT NOT NULL, 	POSTAL_CODE INT NOT NULL, SPECIALTY VARCHAR(30) 
	NOT NULL, EMPDEPNUM INT NOT NULL, PRIMARY KEY(EMPNUM), 	FOREIGN KEY(EMPDEPNUM) REFERENCES DEPARTMENT(DEPNUM));

CREATE TABLE EMPLOYEE_NUMBER(NUMBER BIGINT NOT NULL, ENUM INT 	NOT NULL, FOREIGN KEY(ENUM) REFERENCES EMPLOYEE(EMPNUM) ON 	DELETE CASCADE, PRIMARY KEY(ENUM, NUMBER) );


INSERT INTO MENU(BREAKFAST, LUNCH, DINNER, COST) 
	VALUES('OMELETE','KOTOPOULO','MAKARONIA ME KIMA',100.00);
INSERT INTO MESS(DATE, NO_FOOD, CITY, STREET, NO_STREET, COST, 
	MESSMENUNUM) VALUES('2020-11-27', 1200, 'XANTHI', '28is 	OKTWVRIOU', 58, 32350.75, 0001);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, CRITERION, 	BENMESSNUM) VALUES('NIKOS', 'MATSAMPLOKOS',1);
INSERT INTO SPONSOR(NAME) VALUES('VIOLOGIKOI XYMOI LAKONIA');
INSERT INTO SPONSOR(NAME) VALUES( 'DIMITRIS GIANAKOPOULOS');
INSERT INTO SPONSORSHIP VALUES(7000.00 ,2);
INSERT INTO FINANCES VALUES(1, 1);
INSERT INTO FINANCES VALUES(2, 1);
INSERT INTO MESS_NUMBER VALUES(6980831010, 1); 
INSERT INTO MESS_NUMBER VALUES(2431077777, 1);
INSERT INTO DEPARTMENT(DNAME, DEPMESSNUM) VALUES ('DEPARTMENT OF 
	LOGISTICS', 1);
INSERT INTO DEPARTMENT(DNAME, DEPMESSNUM) VALUES ('KITCHEN 	STAFF', 1);
INSERT INTO DEPARTMENT(DNAME, DEPMESSNUM) VALUES ('DEPARTMENT OF 
	MARKETING', 1);
INSERT INTO DEPARTMENT(DNAME, DEPMESSNUM) VALUES ('CLEAN 	STAFF' , 1);
INSERT INTO EMPLOYEE(FNAME, LNAME ,SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM 	VALUES('VANYAN', 'VAZGEN', 'M', '1997-5-24', 1465, 	'OLYMPOU', 10, 67100, 'MARKETING', 3);
INSERT INTO EMPLOYEE(FNAME, LNAME ,SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('NIKOS', 'KOUKOS', 'M', '1993-8-2', 
	300, 'XARILAOU', 57, 67100, 'CLEANER', 4);
INSERT INTO EMPLOYEE(FNAME, LNAME ,SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('MARIA', 'XATZIPANAGI', 'F', '2003-5-17', 850, 	'KARAOLI', 4, 67100, 'COOK', 2);
INSERT INTO EMPLOYEE(FNAME, LNAME ,SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('ANTONIS', 'KOUTSOURAS', 'M', '1997-11-14', 1800, 	'EGNATIAS', 62, 67100, 'LOGISTIC', 1);
INSERT INTO EMPLOYEE(FNAME, LNAME ,SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('GIANNIS', 'KOKKOROS', 'M', '1997-10-11', 1200, 	'TSIMISKI', 20, 67100, 'COOK', 2);
INSERT INTO EMPLOYEE_NUMBER VALUES(6982001420, 1);
INSERT INTO EMPLOYEE_NUMBER VALUES(2731075000, 1);
INSERT INTO EMPLOYEE_NUMBER VALUES(2731075350, 2);
INSERT INTO EMPLOYEE_NUMBER VALUES(6982012320, 2);
INSERT INTO EMPLOYEE_NUMBER VALUES(6982012962, 3);
INSERT INTO EMPLOYEE_NUMBER VALUES(2731092350, 3);
INSERT INTO EMPLOYEE_NUMBER VALUES(2731096350, 4);
INSERT INTO EMPLOYEE_NUMBER VALUES(6934282962, 4);
INSERT INTO EMPLOYEE_NUMBER VALUES(6934287426, 5);
INSERT INTO EMPLOYEE_NUMBER VALUES(2731000564, 5);
INSERT INTO MENU(BREAKFAST, LUNCH, DINNER, COST) VALUES ('AUGO 	MATI', 'MOSXARI ME RYZI', 'MAKARONIA ME KOKKINI SALTSA', 	40);
INSERT INTO MENU(BREAKFAST, LUNCH, DINNER, COST) VALUES 	('KROUASAN KAI XYMO', 'FAKES', 'GIDA VRASTI', 60 );
INSERT INTO MENU(BREAKFAST, LUNCH, DINNER, COST) VALUES 	('TONOSALATA', 'MOSXARI KOKKINISTO', 'KOTOPOULO ME RYZI', 	120);
INSERT INTO MENU(BREAKFAST, LUNCH, DINNER, COST) VALUES 	('SFOLIATES', 'MPIFTEKI ME PATATES', 'PIZZA',50) ;
INSERT INTO MESS(DATE, NO_FOOD, CITY, STREET,NO_STREET, COST, 
	MESSMENUNUM) VALUES('2020-11-30', 10000, 'KYPSELI', 	'KEFALLHNIAS', 20, 500000, 5);
INSERT INTO MESS(DATE, NO_FOOD, CITY, STREET,NO_STREET, COST, 
	MESSMENUNUM) VALUES('2020-11-29', 4000, 'SPARTI', 	'LEONIDOU', 2,480000, 4);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('DIMITRA', 'AYLWNITOY',1);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('MARIA', 'MIXALOPOULOU', 1);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('MARIA', 'ALEXAKI', 1);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('GIWRGOS', 'PLAKIAS',1);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME , BENMESSNUM) 
	VALUES('GIWRGOS', 'LIAGOS',2);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('GIANNIS', 'LIAGAS', 2);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('GIANNIS', 'PARIOS' ,2);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('KOSTAS', 'PANAGIWTOPOYLOS',2); 
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('ALEXANDROS', 'PANAGIWTOPOYLOS', 2);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('XRISTINA', 'PADOPOULOU', 3); 
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('GIOPGIA', 'PADOPOULOU', 3);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('XRHSTOS', 'IGNATIOU',3);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('XRHSTOS', 'GIWRGAKIS', 3);
INSERT INTO BENEFICIARY(BENFNAME, BENLNAME, BENMESSNUM) 
	VALUES('VAGGELIS', 'TSIPAS', 3);
INSERT INTO MESS_NUMBER VALUES(6947686954, 2);
INSERT INTO MESS_NUMBER VALUES(6977382956, 3);
INSERT INTO MESS_NUMBER VALUES(27310002310, 3);
INSERT INTO MESS_NUMBER VALUES(2109567108, 2);
INSERT INTO SPONSOR(NAME) VALUE('TSIMENTA OLYMPOS'); 
INSERT INTO SPONSOR(NAME) VALUE('GEORGE KARELLIAS');
INSERT INTO SPONSOR(NAME) VALUE('AFOI AGGELOPOULOI');
INSERT INTO SPONSOR(NAME) VALUE('VAGGELIS MARINAKIS');
INSERT INTO SPONSOR(NAME) VALUE('KOSTAS AGELAKOS');
INSERT INTO SPONSOR(NAME) VALUE('MARIANNA VARDINOGIANNI');
INSERT INTO SPONSOR(NAME) VALUE('IDRYMA ONASI');
INSERT INTO SPONSOR(NAME) VALUE('GIORGOS KAPSALAKOS');
INSERT INTO SPONSORSHIP VALUES(2000, 3);
INSERT INTO SPONSORSHIP VALUES(45000, 4);
INSERT INTO SPONSORSHIP VALUES(12000, 5);
INSERT INTO SPONSORSHIP VALUES(19000, 6);
INSERT INTO SPONSORSHIP VALUES(25500, 7);
INSERT INTO SPONSORSHIP VALUES(59500, 8);
INSERT INTO SPONSORSHIP VALUES(50000, 9);
INSERT INTO SPONSORSHIP VALUES(145000, 10);
INSERT INTO SPONSORSHIP VALUES(20000, 10);
INSERT INTO SPONSORSHIP VALUES(23000, 9);
INSERT INTO SPONSORSHIP VALUES(2000, 9);
INSERT INTO SPONSORSHIP VALUES(8000, 5);
INSERT INTO SPONSORSHIP VALUES(7000, 5);
INSERT INTO SPONSORSHIP VALUES(17000, 2);
INSERT INTO FINANCES VALUES(1 ,3);
INSERT INTO FINANCES VALUES(2 ,1);
INSERT INTO FINANCES VALUES(3 ,2);
INSERT INTO FINANCES VALUES(4 ,2);
INSERT INTO FINANCES VALUES(5 ,2);
INSERT INTO FINANCES VALUES(6 ,3);
INSERT INTO FINANCES VALUES(7 ,1);
INSERT INTO FINANCES VALUES(8 ,1);
INSERT INTO FINANCES VALUES(9 ,1);
INSERT INTO FINANCES VALUES(10 ,3);
INSERT INTO DEPARTMENT(DNAME, DEPMESSNUM) VALUES('DEPARTMENT OF 
	LOGISTICS', 2);
INSERT INTO DEPARTMENT(DNAME,DEPMESSNUM) VALUES('DEPARTMENT OF 
	LOGISTICS', 3);
INSERT INTO DEPARTMENT(DNAME,DEPMESSNUM) VALUES('KITCHEN STAFF', 	2);
INSERT INTO DEPARTMENT(DNAME,DEPMESSNUM) VALUES('KITCHEN STAFF', 	3);
INSERT INTO DEPARTMENT(DNAME,DEPMESSNUM) VALUES('CLEANING 	STAFF', 2);
INSERT INTO DEPARTMENT(DNAME, DEPMESSNUM) VALUES('CLEANING 	STAFF', 3);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM 	VALUES('MARKOS', 'STEFANIDIS', 'M', '1997-5-20', 1800, 	'BYZANTIOY', 20 ,23100, 'COOK', 7);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('GIANNIS', 'PAVLIDIS', 'M', '1997-9-10', 1200, 	'OTHONOS', 45 ,23100, 'COOK', 7);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('PARIS', 'AIDINIDIS', 'M', '1997-3-17', 1000, 	'TSIMISKI', 15 ,67100, 'CLEANER', 9);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('EUGENIOS', 'KAKALOS', 'M', '1997-6-19', 700, 	'DAGLI', 8 ,67100, 'MARKETING', 3);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('DIMITRIS', 'DERVISHI', 'M', '1997-2-9', 900, 	'PALAIOLOGOU', 8 ,67100, 'LOGISTIC', 5);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('DIMITRIS', 'PAPAGIANNIS', 'M', '1997-8-19', 850, 	'PALAIOLOGOU', 4 ,67100, 'LOGISTIC', 5);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('ELENI', 'KOUTROUMANI', 'F', '1997-3-27', 600, 	'SPARTIS', 15 ,67100, 'CLEANER', 9);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('ELENI', 'KOUTROUMPI', 'F', '1993-5-27', 600, 	'KARAISKAKI', 10 ,27100, 'CLEANER', 4);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('IWANNA', 'XATZIDOU', 'F', '1993-5-27', 900, 	'EIRINIS', 16 ,47100, 'LOGISTIC', 6);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('XRHSTOS', 'KWSTANTAROS', 'M', '1990-2-12', 850, 	'PLATANISTA', 10 ,47100, 'LOGISTIC', 6);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('XRHSTOS', 'KWSTANTAROS', 'M', '1990-2-15', 850, 	'PLATANISTA', 10 ,47100, 'LOGISTIC', 6);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('VAGGELIS', 'KWSTANTARAKOS', 'M', '1991-1-5', 650, 	'PLATANISTA', 1 ,27100, 'CLEANER', 10);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('ELENI', 'KARAXALIOU', 'F', '1989-1-18', 600, 	'PAIANIAS', 1 ,27100, 'CLEANER', 10);
INSERT INTO EMPLOYEE(FNAME, LNAME, SEX, AGE, SALARY, STREET, 	NO_STREET, POSTAL_CODE, SPECIALTY, EMPDEPNUM) 	VALUES('DIMITRIS', 'KARATZALIS', 'M', '1999-10-28', 950, 	'KYPROU', 30 ,67100, 'COOK', 8);
INSERT INTO EMPLOYEE_NUMBER VALUE(6938671210, 6);
INSERT INTO EMPLOYEE_NUMBER VALUE(6938671440, 7);
INSERT INTO EMPLOYEE_NUMBER VALUE(6938345621, 8);
INSERT INTO EMPLOYEE_NUMBER VALUE(6908345621, 9);
INSERT INTO EMPLOYEE_NUMBER VALUE(2310345621, 7);
INSERT INTO EMPLOYEE_NUMBER VALUE(2310303601, 8);
INSERT INTO EMPLOYEE_NUMBER VALUE(6910455601, 10);
INSERT INTO EMPLOYEE_NUMBER VALUE(6950455321, 11);
INSERT INTO EMPLOYEE_NUMBER VALUE(6950455000, 12);
INSERT INTO EMPLOYEE_NUMBER VALUE(6955475020, 12);
INSERT INTO EMPLOYEE_NUMBER VALUE(6955475999, 13);
INSERT INTO EMPLOYEE_NUMBER VALUE(6946823699, 13);
INSERT INTO EMPLOYEE_NUMBER VALUE(6946825243, 14);
INSERT INTO EMPLOYEE_NUMBER VALUE(6940082523, 15);
INSERT INTO EMPLOYEE_NUMBER VALUE(6943482523, 16);
INSERT INTO EMPLOYEE_NUMBER VALUE(6943485230, 17);
INSERT INTO EMPLOYEE_NUMBER VALUE(6943721230, 18);
INSERT INTO EMPLOYEE_NUMBER VALUE(2731067100, 18);
INSERT INTO EMPLOYEE_NUMBER VALUE(6910303601, 19);