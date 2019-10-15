-- select completed_at - started_at as average_assistance_request_duration
-- from assistance_requests
-- limit 1;

SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests; 