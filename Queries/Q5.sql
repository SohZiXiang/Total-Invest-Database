
-- Get all the Monthly TopUps for 2024, at the beginning of the month
/*
    Question 5: Find investors who consistently top up their investment at the beginning of every month (dollar-cost averaging) in 2024 for at least one of their portfolios.
 */

DECLARE @Year INT, @Type VARCHAR(10);
SET @Year = 2024;
SET @Type = 'TopUp';

WITH Transactions AS (
    SELECT * FROM STOCK_TRANSACTION
             UNION
    SELECT * FROM BOND_TRANSACTION
             UNION
    SELECT * FROM FUND_TRANSACTION),
 Asset_In_PortFolio AS (
    SELECT * FROM STOCK_IN_PORTFOLIO
             UNION
    SELECT * FROM BOND_IN_PORTFOLIO
             UNION
    SELECT * FROM FUND_IN_PORTFOLIO
 ),
  MonthlyTopUps AS (
    SELECT
        I.Phone,
        I.Name,
        COUNT(DISTINCT MONTH(T.Date)) as TopUpMonths
    FROM INVESTOR I,PORTFOLIO P, Asset_In_PortFolio AIP,Transactions T
    WHERE I.Phone = P.Phone
      AND P.PID = AIP.PID
      AND P.Phone = AIP.Phone
      AND AIP.ID = T.ID
      AND YEAR(T.Date) = @Year
      AND T.Type = @Type
      AND DAY(T.Date) <= 5  -- Assuming beginning of month is first 5 days
    GROUP BY I.Phone, I.Name
)
SELECT Phone, Name, TopUpMonths
FROM MonthlyTopUps
WHERE TopUpMonths >= 6;  -- Must have topped up at least half a year