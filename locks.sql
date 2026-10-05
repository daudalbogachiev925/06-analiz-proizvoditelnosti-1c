SELECT region, COUNT(*) AS lock_count, SUM(wait_time) AS total_wait
FROM tj_tlock
GROUP BY region
ORDER BY total_wait DESC;
