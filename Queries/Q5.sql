
-- Get all the Monthly TopUps for 2024, at the beginning of the month
/*
    Question 5: Find investors who consistently top up their investment at the beginning of every month (dollar-cost averaging) in 2024 for at least one of their portfolios.
 */

DECLARE @Year INT, @Type VARCHAR(10);
SET @Year = 2024;
SET @Type = 'TopUp';

WITH MonthlyTopUps AS (
    SELECT
        I.Phone,
        I.Name,
        COUNT(DISTINCT MONTH(st.Date)) as TopUpMonths
    FROM INVESTOR I, PORTFOLIO P, STOCK_IN_PORTFOLIO SIP, STOCK_TRANSACTION ST
    WHERE I.Phone = P.Phone
      AND P.PID = SIP.PID AND P.Phone = SIP.Phone
      AND SIP.ID = ST.ID
      AND YEAR(ST.Date) = @Year
      AND ST.Type = @Type
      AND DAY(ST.Date) <= 5  -- Assuming beginning of month is first 5 days
    GROUP BY I.Phone, I.Name
)
SELECT Phone, Name, TopUpMonths
FROM MonthlyTopUps
WHERE TopUpMonths = 12;  -- Must have topped up every month