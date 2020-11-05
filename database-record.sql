CREATE DATABASE atn;
-----
USE atn;
-----
CREATE TABLE Customer(
   CuID serial PRIMARY KEY NOT NULL,
   CuName varchar(50) NOT NULL,
   CuPhone varchar(10) NOT NULL);
-----
CREATE TABLE Supplier(
  SuID serial PRIMARY KEY NOT NULL,
  SuPhone char(10) NOT NULL,
  SuAddress varchar(100) NOT NULL);
-----
CREATE TABLE Catalogue(
  Category varchar(50) PRIMARY KEY NOT NULL);

 -----
CREATE TABLE Agency(
  AgID serial PRIMARY KEY NOT NULL,
  AgPhone char(10) NOT NULL,
  AgAddress varchar(50) NULL
);
-----
CREATE TABLE Users(
  UsId serial PRIMARY KEY NOT NULL,
  UsName varchar(50) NOT NULL,
  UsPassword varchar(50) NOT NULL,
  UsLevel int NOT NUll,
  AgID int NOT NULL,
  FOREIGN KEY (AgID) references Agency(AgID)
);
-----
CREATE TABLE Orders(
  OrID serial PRIMARY KEY NOT NULL,
  CuID int NOT NULL,
  AgID int NOT NULL,
  OrderDate date NOT NULL,
  FOREIGN KEY (CuID) references Customer(CuID),
  FOREIGN KEY (AgID) references Agency(AgID)
);
----
CREATE TABLE Product(
  ProID char(7) PRIMARY KEY NOT NULL,
  Category varchar(50) NOT NULL,
  SuID int NOT NULL,
  ProName varchar(50) NOT NULL,
  ProPrice money NOT NULL,
  FOREIGN KEY (Category) references Catalogue(Category),
  FOREIGN KEY (SuID) references Supplier(SuID)
);
-----
CREATE TABLE ProductOrder(
  OrID int NOT NULL,
  ProID char(7) NOT NULL,
  Quantity int NOT NULL,
  PRIMARY KEY (OrID, ProID),
  FOREIGN KEY (OrID) references Orders(OrID),
  FOREIGN KEY (ProID) references Product(ProID)
);
----
INSERT INTO Customer(CuName, CuPhone) VALUES('Duy','0909350915');
INSERT INTO  Customer(CuName, CuPhone) VALUES('Thanh','0919322852');
INSERT INTO  Customer(CuName, CuPhone) VALUES('Tinh','0909350915');
INSERT INTO  Customer(CuName, CuPhone) VALUES('Lam','0909350915');
INSERT INTO  Customer(CuName, CuPhone) VALUES('Khang','0909350236');
INSERT INTO  Customer(CuName, CuPhone) VALUES('Hieu','0909350978');
INSERT INTO  Customer(CuName, CuPhone) VALUES('Phu','1531351151');
INSERT INTO  Customer(CuName, CuPhone) VALUES('Linh','9596258525');
INSERT INTO  Customer(CuName, CuPhone) VALUES('Than','9217217227');
INSERT INTO  Customer(CuName, CuPhone) VALUES('Chung','7256427627');
-----
INSERT INTO   Supplier(SuPhone, SuAddress) VALUES('0694232521','Califonia,USA');
INSERT INTO   Supplier(SuPhone, SuAddress) VALUES('0354452145','Taipei,Taiwan');
INSERT INTO   Supplier(SuPhone, SuAddress) VALUES('0485356625','Tokyo,Japan');
INSERT INTO   Supplier(SuPhone, SuAddress) VALUES('0685356625','Manila,Philippines');
INSERT INTO   Supplier(SuPhone, SuAddress) VALUES('0185356625','Moscow,Russia');
INSERT INTO   Supplier(SuPhone, SuAddress) VALUES('0281561655','London,England');
INSERT INTO   Supplier(SuPhone, SuAddress) VALUES('0386266662','Paris,France');
INSERT INTO   Supplier(SuPhone, SuAddress) VALUES('0927273422','Brussel,Belgium');
INSERT INTO   Supplier(SuPhone, SuAddress) VALUES('0104624666','Vienna,Austria');
INSERT INTO   Supplier(SuPhone, SuAddress) VALUES('0305424646','Kuala Lumpua, Malaysia');
-----
INSERT INTO Catalogue(Category) VALUES('Action figures');
INSERT INTO Catalogue(Category) VALUES('Animals');
INSERT INTO Catalogue(Category) VALUES('Cars and radio controlled');
-----
INSERT INTO Agency(AgPhone, AgAddress) VALUES ('0312345848','HCM city');
INSERT INTO Agency(AgPhone, AgAddress) VALUES ('0494962626','Da Nang City');
INSERT INTO Agency(AgPhone, AgAddress) VALUES ('0295959595','Hue');
INSERT INTO Agency(AgPhone, AgAddress) VALUES ('0918948488','Dien Bien');
INSERT INTO Agency(AgPhone, AgAddress) VALUES ('0651565645','Hai Duong');
INSERT INTO Agency(AgPhone, AgAddress) VALUES ('0184894844','Thai Binh');
INSERT INTO Agency(AgPhone, AgAddress) VALUES ('0519959959','Lam Dong');
INSERT INTO Agency(AgPhone, AgAddress) VALUES ('0729292299','Kontum');
INSERT INTO Agency(AgPhone, AgAddress) VALUES ('0395959599','Gia Lai');
INSERT INTO Agency(AgPhone, AgAddress) VALUES ('0826262626','Can Tho');
-----
INSERT INTO Users(UsName, UsPassword, UsLevel, AgID) VALUES ('ngochan','anything',1,1);
INSERT INTO Users(UsName, UsPassword, UsLevel, AgID) VALUES ('linhchi','example',0,2);
INSERT INTO Users(UsName, UsPassword, UsLevel, AgID) VALUES ('thongphong','hammer',0,3);
INSERT INTO Users(UsName, UsPassword, UsLevel, AgID) VALUES ('hoanhi','classes',0,4);
INSERT INTO Users(UsName, UsPassword, UsLevel, AgID) VALUES ('hoanglong','easygoing',0,5);
INSERT INTO Users(UsName, UsPassword, UsLevel, AgID) VALUES ('vansinh','director',0,6);
INSERT INTO Users(UsName, UsPassword, UsLevel, AgID) VALUES ('vantam','sassyman',0,7);
INSERT INTO Users(UsName, UsPassword, UsLevel, AgID) VALUES ('tuandung','angrybaldeagle',0,8);
INSERT INTO Users(UsName, UsPassword, UsLevel, AgID) VALUES ('vanson','boringschool',0,9);
INSERT INTO Users(UsName, UsPassword, UsLevel, AgID) VALUES ('nguyenkhang','classmate',0,10);
-----
INSERT INTO Orders(CuID, AgID, OrderDate) VALUES(1,1,'2019-02-28');
INSERT INTO Orders(CuID, AgID, OrderDate) VALUES(2,2,'2018-12-24');
INSERT INTO Orders(CuID, AgID, OrderDate) VALUES(3,3,'2019-02-14');
INSERT INTO Orders(CuID, AgID, OrderDate) VALUES(4,4,'2019-08-19');
INSERT INTO Orders(CuID, AgID, OrderDate) VALUES(5,5,'2019-12-12');
INSERT INTO Orders(CuID, AgID, OrderDate) VALUES(6,6,'2019-06-20');
INSERT INTO Orders(CuID, AgID, OrderDate) VALUES(7,7,'2019-11-22');
INSERT INTO Orders(CuID, AgID, OrderDate) VALUES(8,8,'2019-06-30');
INSERT INTO Orders(CuID, AgID, OrderDate) VALUES(9,9,'2019-03-28');
INSERT INTO Orders(CuID, AgID, OrderDate) VALUES(10,10,'2019-04-14');
-----
INSERT INTO Product(ProID, Category, SuID, ProName, ProPrice) VALUES('7896282','Action figures',1,'Buzz lightyear',350000);
INSERT INTO Product(ProID, Category, SuID, ProName, ProPrice) VALUES('7563282','Animals',2,'Bag of plastic animal statues',30000);
INSERT INTO Product(ProID, Category, SuID, ProName, ProPrice) VALUES('7358215','Cars and radio controlled',3,'Controlled racing car',1699000);
INSERT INTO Product(ProID, Category, SuID, ProName, ProPrice) VALUES('7358151','Construction toys',4,'Lego chima lion gate',2700000);
INSERT INTO Product(ProID, Category, SuID, ProName, ProPrice) VALUES('8262488','Creative toys',5,'Lego creator box',4690000);
INSERT INTO Product(ProID, Category, SuID, ProName, ProPrice) VALUES('1516156','Dolls',6,'Barbie',250000);
INSERT INTO Product(ProID, Category, SuID, ProName, ProPrice) VALUES('7315125','Educational toys',7,'Writting board for children',90000);
INSERT INTO Product(ProID, Category, SuID, ProName, ProPrice) VALUES('9226455','Electronic toys',8,'Lego technic',4500000);
INSERT INTO Product(ProID, Category, SuID, ProName, ProPrice) VALUES('1338848','Food-related toys',9,'Cooking toys',300000);
INSERT INTO Product(ProID, Category, SuID, ProName, ProPrice) VALUES('5626959','Puzzle',10,'Jenga',150000);
-----
INSERT INTO ProductOrder(OrID, ProID, Quantity) VALUES(1,'7896282',1);
INSERT INTO ProductOrder(OrID, ProID, Quantity) VALUES(2,'7563282',1);
INSERT INTO ProductOrder(OrID, ProID, Quantity) VALUES(3,'7358215',1);
INSERT INTO ProductOrder(OrID, ProID, Quantity) VALUES(4,'7358151',1);
INSERT INTO ProductOrder(OrID, ProID, Quantity) VALUES(5,'8262488',1);
INSERT INTO ProductOrder(OrID, ProID, Quantity) VALUES(6,'1516156',1);
INSERT INTO ProductOrder(OrID, ProID, Quantity) VALUES(7,'7315125',1);
INSERT INTO ProductOrder(OrID, ProID, Quantity) VALUES(8,'9226455',1);
INSERT INTO ProductOrder(OrID, ProID, Quantity) VALUES(9,'1338848',1);
INSERT INTO ProductOrder(OrID, ProID, Quantity) VALUES(10,'5626959',1);
