# Write your MySQL query statement below
# select distinct m.name as name
# from employee e join employee m
# on m.id = e.managerid
# group by m.id
# having count(*) >= 5

select name from employee 
where id in 
(select managerId from Employee
group by managerId
having count(managerId)>=5) 

# SELECT      E2.name
# FROM        Employee E1, Employee E2
# WHERE       E1.managerId  = E2.id  
# GROUP BY    E1.managerId
# HAVING      COUNT(E1.managerId) >= 5 






