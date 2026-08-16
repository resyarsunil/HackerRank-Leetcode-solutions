# Write your MySQL query statement below

select d.name as 'Department', e.name as 'Employee', e.salary as 'Salary'
from Employee e join Department d on e.departmentId  = d.id  
where 3 > (
    select count(distinct e2.salary) from Employee e2
    where e2.departmentId = e.departmentId
    and e2.salary > e.salary

);

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna