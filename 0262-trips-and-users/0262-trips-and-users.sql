# case checks every rows
select t.request_at as 'Day', 
Round(sum(case 
              when t.status in ('cancelled_by_driver', 'cancelled_by_client')
              then 1
              else 0
          end)/count(*),2) as 'Cancellation Rate'
from Trips t join Users u on t.client_id = u.users_id
join Users d on t.driver_id = d.users_id
where u.banned = 'No'and 
      d.banned = 'No'
AND t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
group by t.request_at;


-- Synced seamlessly with LeetHub Pro
-- Pro features: https://bit.ly/leethubpro | Free version: https://bit.ly/leethubv4
-- Get it here: https://chromewebstore.google.com/detail/bcilpkkbokcopmabingnndookdogmbna