# Write your MySQL query statement below
select (
 select distinct salary
 from Employee 
 order by salary desc
 limit 1 offset 1
 ) as "SecondHighestSalary";

 # Here, The OFFSET clause tells the database how many rows to skip from the top of your newly sorted list.
 #The LIMIT clause controls how many rows the database is allowed to return after skipping

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna