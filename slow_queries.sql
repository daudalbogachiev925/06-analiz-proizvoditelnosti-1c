SELECT query_hash, COUNT(*) AS calls,
       AVG(duration) AS avg_ms,
       MAX(duration) AS max_ms
FROM tj_sdbl
GROUP BY query_hash
HAVING AVG(duration) > 1000
ORDER BY avg_ms DESC
LIMIT 50;
