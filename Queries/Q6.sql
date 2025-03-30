/*
    Question 6: Find the most popular financial goals for investors working in the same company and whose age is between 30 to 40 years old.
 */

SELECT
    I.Company,
    FG.Goal,
    COUNT(*) as GoalCount
FROM INVESTOR I
JOIN FINANCIAL_GOAL FG ON I.Phone = FG.Phone
WHERE DATEDIFF(YEAR, I.DoB, GETDATE()) BETWEEN 30 AND 40
GROUP BY I.Company, FG.Goal
ORDER BY I.Company, GoalCount DESC;