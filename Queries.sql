SELECT COUNT(*) AS Count_Of_Cars_Handled_In_One_Day
FROM CarService AS CS
WHERE 
CS.Start_Service BETWEEN '2020-01-01 00:00:00' AND '2020-01-01 23:59:59'
OR
CS.End_Service BETWEEN '2020-01-01 00:00:00' AND '2020-01-01 23:59:59';

SELECT C.Car_Type, COUNT(C.Car_Type) AS Amount_Of_Cars_Of_Same_Type
FROM CAR AS C
WHERE C.License_Plate IN
(SELECT License_Plate
FROM CarService AS CS 
WHERE 
CS.Start_Service BETWEEN '2020-01-01 00:00:00' AND '2020-01-31 23:59:59'
OR
CS.End_Service BETWEEN '2020-01-01 00:00:00' AND '2020-01-31 23:59:59')
GROUP BY C.Car_Type
ORDER BY Amount_Of_Cars_Of_Same_Type DESC;

SELECT TOP(10) Part_Number, SUM(Price) AS Total_Cost_For_Replacement_Parts, Count(Part_Number) AS Count_Of_Replacement_Parts,
(SUM(Price) / Count(Part_Number)) AS Cost_For_One_Replacement_Part
FROM CarReplacementPart AS CRP
WHERE
CRP.License_Plate IN
(SELECT License_Plate
FROM CarService AS CS
WHERE 
CS.Start_Service BETWEEN '2020-01-01 00:00:00' AND '2020-01-31 23:59:59'
OR
CS.End_Service BETWEEN '2020-01-01 00:00:00' AND '2020-01-31 23:59:59')
GROUP BY Part_Number
ORDER BY COUNT(Part_Number) DESC;

SELECT ECS.First_Name, ECS.Last_Name, SUM(ECS.Working_Hours) as Total_Working_Hours_In_Month
FROM
(SELECT LPEI.Employee_Id, LPEI.License_Plate, EM.First_Name, EM.Last_Name, DATEDIFF(hour, CS.Start_Service, CS.End_Service) as Working_Hours
FROM ((LicensePlateAndEmployeeId AS LPEI
INNER JOIN Employee AS EM
ON LPEI.Employee_Id = EM.Employee_Id)
INNER JOIN CarService AS CS
ON LPEI.License_Plate = CS.License_Plate)
WHERE CS.Status = 'Fixed') ECS
GROUP BY ECS.First_Name, ECS.Last_Name;