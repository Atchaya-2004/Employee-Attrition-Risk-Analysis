CREATE DATABASE employee_attrition_project;
USE employee_attrition_project;
SELECT * FROM employees;
SELECT COUNT(*) FROM employees;
DESCRIBE employees;


SELECT COUNT(*) AS Total_Employees
FROM employees;

SELECT Attrition, COUNT(*) AS LEFTEMP
FROM employees
GROUP BY Attrition;

SELECT Department, COUNT(*) AS Total_emp
FROM employees
GROUP BY Department
ORDER BY Total_emp DESC;

SELECT Department,
       Attrition,
       COUNT(*) AS Employee_Count
FROM employees
GROUP BY Department, Attrition
ORDER BY Department;
 
 SELECT OverTime,
       Attrition,
       COUNT(*) AS Employee_Count
FROM employees
GROUP BY OverTime, Attrition;

SELECT JobSatisfaction,
       Attrition,
       COUNT(*) AS Employee_Count
FROM employees
GROUP BY JobSatisfaction, Attrition
ORDER BY JobSatisfaction; 

SELECT YearsSinceLastPromotion,
       COUNT(*) AS Employee_Count
FROM employees
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;

SELECT DistanceFromHome,
       COUNT(*) AS Employee_Count
FROM employees
GROUP BY DistanceFromHome
ORDER BY DistanceFromHome;

SELECT Department,
       AVG(MonthlyIncome) AS Avg_Income
FROM employees
GROUP BY Department;

CREATE VIEW employee_risk_score AS
SELECT
    EmployeeNumber,
    Department,
    MonthlyIncome,
    Attrition,
    OverTime,
    JobSatisfaction,
    DistanceFromHome,
    YearsSinceLastPromotion,

    (
        CASE WHEN OverTime = 'Yes' THEN 2 ELSE 0 END +
        CASE WHEN JobSatisfaction <= 2 THEN 2 ELSE 0 END +
        CASE WHEN DistanceFromHome > 15 THEN 1 ELSE 0 END +
        CASE WHEN YearsSinceLastPromotion >= 3 THEN 2 ELSE 0 END
    ) AS RiskScore

FROM employees;

SELECT *
FROM employee_risk_score
LIMIT 10;

CREATE VIEW employee_risk AS
SELECT *,
CASE
    WHEN RiskScore <= 2 THEN 'Low'
    WHEN RiskScore <= 5 THEN 'Medium'
    ELSE 'High'
END AS RiskTier
FROM employee_risk_score;

SELECT *
FROM employee_risk
LIMIT 10;

SELECT
    RiskTier,
    Attrition,
    COUNT(*) AS Employee_Count
FROM employee_risk
GROUP BY RiskTier, Attrition
ORDER BY RiskTier, Attrition;

DROP VIEW employee_risk;
DROP VIEW employee_risk_score;

CREATE VIEW employee_risk_score AS
SELECT
    EmployeeNumber,
    Department,
    MonthlyIncome,
    Attrition,
    OverTime,
    JobSatisfaction,
    DistanceFromHome,
    YearsSinceLastPromotion,
    WorkLifeBalance,
    EnvironmentSatisfaction,
    BusinessTravel,

    (
        CASE WHEN OverTime = 'Yes' THEN 2 ELSE 0 END +
        CASE WHEN JobSatisfaction <= 2 THEN 2 ELSE 0 END +
        CASE WHEN DistanceFromHome > 15 THEN 1 ELSE 0 END +
        CASE WHEN YearsSinceLastPromotion >= 3 THEN 2 ELSE 0 END +
        CASE WHEN WorkLifeBalance <= 2 THEN 1 ELSE 0 END +
        CASE WHEN EnvironmentSatisfaction <= 2 THEN 1 ELSE 0 END +
        CASE WHEN BusinessTravel = 'Travel_Frequently' THEN 1 ELSE 0 END
    ) AS RiskScore

FROM employees;

CREATE VIEW employee_risk AS
SELECT *,
CASE
    WHEN RiskScore <= 3 THEN 'Low'
    WHEN RiskScore <= 6 THEN 'Medium'
    ELSE 'High'
END AS RiskTier
FROM employee_risk_score;

SELECT
    RiskTier,
    Attrition,
    COUNT(*) AS Employee_Count
FROM employee_risk
GROUP BY RiskTier, Attrition
ORDER BY RiskTier, Attrition;

SELECT Department, COUNT(*) AS High_Risk_Employees
FROM High_Risk_Employees
WHERE RiskTier = 'High'
GROUP BY Department
ORDER BY Employee_Count DESC;


