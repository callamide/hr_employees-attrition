
-- check for the employeer with Doctorate degree with age less that 40--
select *
from `hr_employee-attrition`
where ï»¿Age < 40
having Education = "Doctor";

-- count the number of both Male and Female--
select Gender, COUNT(*) AS COUNT
from `hr_employee-attrition`
GROUP BY Gender;

-- count the Educational level for each department--
SELECT Department, Education, COUNT(*) AS COUNT
FROM `hr_employee-attrition`
Group by Department, Education
Order by Department;

-- perforance rating for each of the Department--
SELECT Department, PerformanceRating, COUNT(*) AS COUNT
FROM`hr_employee-attrition`
GROUP BY Department , PerformanceRating
ORDER BY Department;

-- check the number of employees across the job role--
SELECT JobRole, COUNT(*) AS COUNT
FROM `hr_employee-attrition`
Group by JobRole;

-- Attrition rate--
SELECT Attrition, COUNT(*) AS count
FROM `hr_employee-attrition`
GROUP BY Attrition;

-- the distribution of attrition across job role--
SELECT JobRole, COUNT(*) AS Attrition_rate
FROM `hr_employee-attrition`
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Attrition_rate DESC;

-- calcualte the average monthly rate and income across the job role --
SELECT JobRole,
    AVG(Monthlyrate) AS Avg_Monthlyrate,
    AVG(MonthlyIncome) AS Avg_MonthlyIncome
FROM `hr_employee-attrition`
GROUP BY JobRole
ORDER BY Avg_Monthlyincome DESC;

-- calcualte the average monthly rate and income across the job role and department --
SELECT 
    Department,
    JobRole,
    AVG(Monthlyrate) AS Avg_Monthlyrate,
    AVG(MonthlyIncome) AS Avg_MonthlyIcome
FROM
    `hr_employee-attrition`
GROUP BY Department , JobRole
ORDER BY Avg_Monthlyrate DESC;

-- attrition with age-- 
SELECT ï»¿Age, Attrition, COUNT(*) AS Attrition_rate
FROM `hr_employee-attrition`
WHERE Attrition = 'Yes'
GROUP BY ï»¿Age
ORDER BY Attrition_rate DESC;

-- using the age range and to konw the attrition-- 
SELECT 
CASE 
WHEN ï»¿Age BETWEEN 18 AND 24 THEN '18-24'
WHEN ï»¿Age BETWEEN 25 AND 34 THEN '25-34'
WHEN ï»¿Age BETWEEN 35 AND 44 THEN '35-44'
WHEN ï»¿Age BETWEEN 45 AND 54 THEN '45-54'
WHEN ï»¿Age BETWEEN 55 AND 60 THEN '55-60'
else '60+'
END AS Agerange, Attrition, count(*) as count
from `hr_employee-attrition`
where ï»¿Age <= 60 
group by Agerange, Attrition
order by Agerange; 

-- attrition across department--
select Department, Attrition, count(*) as Department_attrition
from `hr_employee-attrition`
group by Department, Attrition
order by Department;

-- attrition across education level
select Education, Attrition, count(*) as Education_attrition
from `hr_employee-attrition`
group by Education, Attrition
order by Education

-- Attrition across gender
select Gender, Attrition, count(*) as Gender_attrition
from `hr_employee-attrition`
group by Gender, Attrition
order by Gender;


