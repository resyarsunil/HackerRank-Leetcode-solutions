# Write your MySQL query statement below

select e.name as Employee from 
Employee e join Employee m on e.managerId   = m.id   
where e.salary > m.salary;


-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna