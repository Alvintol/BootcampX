SELECT day, count(day) FROM assignments
GROUP BY day
ORDER BY day;