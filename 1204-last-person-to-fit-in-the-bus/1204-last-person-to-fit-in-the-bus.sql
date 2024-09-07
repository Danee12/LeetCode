# Write your MySQL query statement below
-- -- 서브쿼리 사용
-- SELECT q1.person_name
-- FROM Queue q1
-- WHERE 1000 >= (SELECT SUM(weight) FROM Queue q2 WHERE q2.turn <= q1.turn)
-- ORDER BY turn DESC
-- LIMIT 1
-- ;


-- -- window 함수 사용
-- SELECT person_name
-- FROM (
--     SELECT *, SUM(weight) OVER(ORDER BY turn) AS totalWeight
--     FROM queue
-- ) q1
-- WHERE totalWeight <= 1000
-- ORDER BY totalWeight DESC
-- LIMIT 1;


-- -- JOIN 사용
SELECT 
    q1.person_name
FROM queue q1
    JOIN queue q2
    ON q1.turn >= q2.turn
GROUP BY q1.turn
HAVING sum(q2.weight) <= 1000
ORDER BY q1.turn DESC
LIMIT 1;