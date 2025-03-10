create database HR;
use HR;
select * from hr;
show columns from hr;
-- Analyze the distribution of employees by gender
SELECT GenderCode, COUNT(*) AS Employee_Count,
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr)), 2) AS Percentage
FROM hr
GROUP BY GenderCode
ORDER BY Employee_Count DESC;

-- Create age groups and analyze the distribution of employees across different age brackets.
SELECT Age, COUNT(*) AS Age_count,
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr)), 2) AS Percentage
FROM hr
GROUP BY Age
ORDER BY Age_count desc;

-- Examine the diversity within the organization by analyzing the distribution of employees by race and ethnicity.
SELECT RaceDesc, 
       COUNT(*) AS Employee_Count, 
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr)), 2) AS Percentage
FROM hr
GROUP BY RaceDesc
ORDER BY Employee_Count DESC;

-- Analyze the marital status of employees.
SELECT MaritalDesc, 
       COUNT(*) AS Employee_Count, 
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr)), 2) AS Percentage
FROM hr
GROUP BY MaritalDesc
ORDER BY Employee_Count DESC;

-- performance score
SELECT `Performance Score`, 
       COUNT(*) AS Employee_Count, 
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr)), 2) AS Percentage
FROM hr
GROUP BY `Performance Score`
ORDER BY Employee_Count DESC;

-- Examine the distribution of current employee ratings.
SELECT `Current Employee Rating`, 
       COUNT(*) AS Employee_Count, 
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr)), 2) AS Percentage
FROM hr
GROUP BY `Current Employee Rating`
ORDER BY Employee_Count DESC;

-- Investigate if there is a correlation between performance scores and employee ratings.
SELECT `Performance Score`, 
       AVG(`Current Employee Rating`) AS Average_Employee_Rating,
       COUNT(*) AS Employee_Count
FROM hr
GROUP BY `Performance Score`
ORDER BY Average_Employee_Rating DESC;

-- Analyze the distribution of engagement scores.
SELECT `Engagement Score`, 
       COUNT(*) AS Employee_Count, 
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr)), 2) AS Percentage
FROM hr
GROUP BY `Engagement Score`
ORDER BY Employee_Count DESC;

-- Examine the distribution of satisfaction scores.
SELECT `Satisfaction Score`, 
       COUNT(*) AS Employee_Count, 
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr)), 2) AS Percentage
FROM hr
GROUP BY `Satisfaction Score`
ORDER BY Employee_Count DESC;

-- Analyze the distribution of work-life balance scores.
SELECT `Work-Life Balance Score`, 
       COUNT(*) AS Employee_Count, 
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr)), 2) AS Percentage
FROM hr
GROUP BY `Work-Life Balance Score`
ORDER BY Employee_Count DESC;

-- Analyze the success rates of different training programs (e.g., Completed, Failed, Incomplete).
SELECT `Training Program Name`, 
       `Training Type`, 
       COUNT(*) AS Employee_Count, 
       ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr WHERE `Training Type` IS NOT NULL)), 2) AS Percentage
FROM hr
GROUP BY `Training Program Name`, `Training Type`
ORDER BY `Training Program Name`, Employee_Count DESC;

-- Examine the distribution of training costs and identify the most expensive training programs.
SELECT `Training Program Name`, 
       COUNT(*) AS Employee_Count, 
       AVG(`Training Cost`) AS Average_Cost, 
       SUM(`Training Cost`) AS Total_Cost
FROM hr
GROUP BY `Training Program Name`
ORDER BY Total_Cost DESC;











