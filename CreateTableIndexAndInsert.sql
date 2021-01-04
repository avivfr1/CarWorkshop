CREATE TABLE WorkshopDetails (
    Bn_Number INT PRIMARY KEY NOT NULL,
	Name NVARCHAR (20) NOT NULL,
	Address NVARCHAR (20) NOT NULL,
	Telephone NVARCHAR (20) NOT NULL,
	Manager_Id INT NOT NULL,
	Start_Working_Time TIME NOT NULL,
	End_Working_Time TIME NOT NULL
);

INSERT INTO WorkshopDetails (Bn_Number, Name, Address, Telephone, Manager_Id, Start_Working_Time, End_Working_Time)
VALUES
(1234567890, 'Ahla Bahla', 'Harta St. Lala Land', '0523876429', 71652, '08:00:00', '16:00:00');

CREATE TABLE HourlyPricePerCar (
	Car_Type NVARCHAR (20) NOT NULL,
	Car_Model NVARCHAR (20) NOT NULL,
	Hourly_Work_Price FLOAT NOT NULL
);

INSERT INTO HourlyPricePerCar (Car_Type, Car_Model, Hourly_Work_Price)
VALUES
('Kia', 'Picanto', 100),
('Kia', 'Rio', 150),
('Toyota', 'Corola', 200);

CREATE TABLE CarReplacementPart (
	Car_Type NVARCHAR (20) NOT NULL,
	Car_Model NVARCHAR (20) NOT NULL,
	Part_Number INT NOT NULL,
	Price FLOAT NOT NULL,
	License_Plate INT NOT NULL
);

CREATE INDEX Part_Number_Index
ON CarReplacementPart (Part_Number);

INSERT INTO CarReplacementPart (Car_Type, Car_Model, Part_Number, Price, License_Plate)
VALUES
('Kia', 'Picanto', 29311975, 400, 12345),
('Kia', 'Picanto', 29311976, 200, 12345),
('Kia', 'Picanto', 29311977, 450, 12345),
('Kia', 'Rio', 29311976, 200, 67890),
('Kia', 'Rio', 29311977, 450, 67890),
('Kia', 'Rio', 29311978, 250, 67890),
('Toyota', 'Corola', 29311978, 250, 55555),
('Toyota', 'Corola', 29311979, 390, 55555),
('Toyota', 'Corola', 29311980, 210, 55555);

CREATE TABLE Customer (
    Id INT PRIMARY KEY NOT NULL,
	First_Name NVARCHAR (20) NOT NULL,
	Last_Name NVARCHAR (20) NOT NULL,
	Telephone NVARCHAR (20) NOT NULL
);

INSERT INTO Customer (Id, First_Name, Last_Name, Telephone)
VALUES
(1122, 'Aviv', 'Fridman', '0545457595'),
(1123, 'Dekel', 'Vaknin', '0523876429');

CREATE TABLE Employee (
	Employee_Id INT PRIMARY KEY NOT NULL,
	First_Name NVARCHAR (20) NOT NULL,
	Last_Name NVARCHAR (20) NOT NULL,
	Telephone NVARCHAR (20) NOT NULL,
	Profession NVARCHAR (30) NOT NULL,
	Salary FLOAT NOT NULL,
	Supervisor_Id INT
);

INSERT INTO Employee (Employee_Id, First_Name, Last_Name, Telephone, Profession, Salary, Supervisor_Id)
VALUES
(71652, 'Yossi', 'Eden', '0558976521', 'Manager', 50000, NULL),
(90821, 'Tamir', 'Gal', '0534569078', 'Worker', 10000, 71652),
(18940, 'Ofer', 'Levi', '0524310915', 'Worker', 12000, 71652);

CREATE TABLE CarService (
    License_Plate INT PRIMARY KEY NOT NULL,
	Start_Service DATETIME NOT NULL,
	End_Service DATETIME,
	Status NVARCHAR (30) NOT NULL
);

CREATE INDEX Start_End_Service_Index
ON CarService (Start_Service, End_Service);

INSERT INTO CarService (License_Plate, Start_Service, End_Service, Status)
VALUES
(12345, '2020-01-02 08:00:00', '2020-01-03 08:00:00', 'Fixed'),
(67890, '2020-01-01 08:00:00', NULL, 'In Progress'),
(55555, '2020-01-01 08:00:00', '2020-01-01 14:00:00', 'Fixed');

CREATE TABLE Car (
    License_Plate INT PRIMARY KEY NOT NULL,
	Car_Type NVARCHAR (20) NOT NULL,
	Car_Model NVARCHAR (20) NOT NULL,
	Customer_Id INT NOT NULL
);

CREATE INDEX Model_And_Type_Index
ON Car (Car_Type, Car_Model);

INSERT INTO Car (License_Plate, Car_Type, Car_Model, Customer_Id)
VALUES
(12345, 'Kia', 'Picanto', 1122),
(67890, 'Kia', 'Rio', 1122),
(55555, 'Toyota', 'Corola', 1123);

CREATE TABLE LicensePlateAndEmployeeId (
    License_Plate INT NOT NULL,
	Employee_Id INT NOT NULL
);

INSERT INTO LicensePlateAndEmployeeId (License_Plate, Employee_Id)
VALUES
(12345, 90821),
(12345, 18940),
(67890, 90821),
(67890, 18940),
(55555, 90821),
(55555, 18940);

CREATE TABLE Invoice (
	Bn_Number INT NOT NULL,
	Employee_Id INT NOT NULL,
	Customer_Id NVARCHAR (20) NOT NULL,
	Cost FLOAT NOT NULL
);

INSERT INTO Invoice (Bn_Number, Employee_Id, Customer_Id, Cost)
VALUES
(1234567890, 90821, 1122, 1200),
(1234567890, 18940, 1123, 9000);