# Write your MySQL query statement below
SELECT Project.project_id , ROUND(SUM(e.experience_years) / count(e.experience_years),2) AS average_years
FROM Project
JOIN Employee e
ON Project.employee_id = e.employee_id
GROUP BY project_id;