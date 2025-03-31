/*
    Question 4: What is the top three most popular first financial goals for investors in 2024?
 */

DECLARE @Year int;
SET @Year = 2024;

WITH FirstGoal AS (
    SELECT
        FG.Phone,
        FG.Goal,
        RANK() OVER (PARTITION BY FG.Phone ORDER BY FG.CreatedDateTime) as Rank
    FROM FINANCIAL_GOAL FG
    WHERE YEAR(FG.CreatedDateTime) = @Year
)
SELECT TOP 3 FG.Goal, COUNT(*) AS InvestorCount
FROM FirstGoal FG
 WHERE FG.Rank = 1
GROUP BY FG.Goal
ORDER BY InvestorCount DESC


-- DECLARE @Year int;
-- SET @Year = 2024;
--
-- SELECT
--     FG.Goal,
--     COUNT(*) as GoalCount
-- FROM FINANCIAL_GOAL FG, INVESTOR I
-- WHERE FG.Phone = I.Phone
--   AND YEAR(FG.CreatedDateTime) = @Year
-- GROUP BY FG.Goal
-- ORDER BY GoalCount DESC;
