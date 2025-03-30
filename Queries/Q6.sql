SELECT
    i.Company,
    fg.Goal,
    COUNT(*) as GoalCount
FROM INVESTOR i
JOIN FINANCIAL_GOAL fg ON i.Phone = fg.Phone
WHERE DATEDIFF(YEAR, i.DoB, GETDATE()) BETWEEN 30 AND 40
GROUP BY i.Company, fg.Goal
ORDER BY i.Company, GoalCount DESC;