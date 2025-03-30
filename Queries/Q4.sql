/*
    Question 4: What is the top three most popular first financial goals for investors in 2024?
 */

DECLARE @Year int;
SET @Year = 2024;

SELECT TOP 3
    FG.Goal,
    COUNT(*) as GoalCount
FROM FINANCIAL_GOAL FG, INVESTOR I
WHERE FG.Phone = I.Phone AND
      YEAR(FG.CreatedDate) = @Year
GROUP BY FG.Goal
ORDER BY GoalCount DESC;