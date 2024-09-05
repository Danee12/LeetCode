# Write your MySQL query statement below
SELECT distinct(L1.num) AS ConsecutiveNums
FROM Logs as L1
    JOIN Logs as L2 on L1.id = L2.id +1
    LEFT JOIN Logs as L3 on L1.id = L3.id +2
    WHERE L1.num = L2.num and L1.num = L3.num;