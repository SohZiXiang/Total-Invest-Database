/*
    Question 6: Find the most popular financial goals for investors working in the same company and whose age is between 30 to 40 years old.
 */

WITH FinancialGoalForEachCompany AS (
                SELECT Company, Goal, Count(*) AS GoalCounts
                FROM INVESTOR I, FINANCIAL_GOAL FG
                WHERE I.Phone = FG.Phone
                AND DATEDIFF(YEAR, I.DoB, GETDATE()) BETWEEN 30 AND 40
                GROUP BY Company, Goal
)
SELECT DISTINCT Company, Goal, GoalCounts
FROM (
    SELECT *,
           RANK() OVER (PARTITION BY Company ORDER BY GoalCounts DESC) AS rk
    FROM FinancialGoalForEachCompany
) AS ranked
WHERE rk = 1;


