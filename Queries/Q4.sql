/*
    Question 4: What is the top three most popular first financial goals for investors in 2024?
 */

WITH FirstGoal AS (
    SELECT
        FG.Phone,
        FG.Goal,
        RANK() OVER (PARTITION BY FG.Phone ORDER BY FG.CreatedDate) as Rank
    FROM FINANCIAL_GOAL FG
)

SELECT TOP 3
    FG.Goal,
    COUNT(*) AS InvestorCount
FROM INVESTOR I, FirstGoal FG
WHERE I.Phone = FG.Phone
GROUP BY FG.Goal
ORDER BY InvestorCount DESC

-- DECLARE @Year int;
-- SET @Year = 2024;
--
-- SELECT TOP 3
--     FG.Goal,
--     COUNT(*) as GoalCount
-- FROM FINANCIAL_GOAL FG, INVESTOR I
-- WHERE FG.Phone = I.Phone
--   AND YEAR(FG.CreatedDate) = @Year
-- GROUP BY FG.Goal
-- ORDER BY GoalCount DESC;