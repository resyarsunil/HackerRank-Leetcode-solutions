# Write your MySQL query statement below

select d.name as 'Department', e.name as 'Employee', e.salary as 'Salary'
from Employee e join Department d on e.departmentId = d.id
where e.salary = 
(select max(e2.salary) from employee e2 where e.departmentId = e2.departmentId);

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna