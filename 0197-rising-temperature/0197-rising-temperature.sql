# Write your MySQL query statement below
SELECT today.id
FROM Weather today 
    INNER JOIN Weather yesterday
    ON DATE_ADD(yesterday.recordDate, INTERVAL 1 DAY) = today.recordDate
WHERE today.temperature > yesterday.temperature;