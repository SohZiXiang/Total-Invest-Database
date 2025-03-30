SELECT TOP 3
    fg.Goal,
    COUNT(*) as GoalCount
FROM FINANCIAL_GOAL fg
JOIN INVESTOR i ON fg.Phone = i.Phone
WHERE YEAR(i.DoB) = 2024
GROUP BY fg.Goal
ORDER BY GoalCount DESC;