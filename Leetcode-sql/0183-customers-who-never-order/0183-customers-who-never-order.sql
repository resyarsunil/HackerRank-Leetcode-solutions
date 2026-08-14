# Write your MySQL query statement below

SELECT c.name as Customers from Customers c left join 
Orders d on c.id=d.customerId
where d.customerId   is null;

-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna