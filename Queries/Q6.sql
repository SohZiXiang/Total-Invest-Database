/*
    Question 6: Find the most popular financial goals for investors working in the same company and whose age is between 30 to 40 years old.
 */

WITH GoalCounts AS (
    SELECT
        I.Company,
        FG.Goal,
        COUNT(DISTINCT FG.Phone) AS GoalCount
    FROM INVESTOR I, FINANCIAL_GOAL FG
    WHERE I.Phone = FG.Phone
      AND DATEDIFF(YEAR, I.DoB, GETDATE()) BETWEEN 30 AND 40
    GROUP BY I.Company, FG.Goal
)
SELECT
    Company,
    MAX(GoalCount) AS MaxGoalCount
FROM GoalCounts
GROUP BY Company
ORDER BY MaxGoalCount DESC;

