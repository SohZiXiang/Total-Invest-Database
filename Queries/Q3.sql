/*
    Question 3: Find the monthly average unrealized gain/loss of portfolios for each month in 2024.
 */

DECLARE @Year int;
SET @Year = 2024;

SELECT
    YEAR(Date) AS YEAR,
    FORMAT(Date, 'MMM') as MONTH,
    AVG(Amount) AS avg_unrealized_gain_loss
FROM UNREALIZED_GAIN_LOSS
WHERE YEAR(Date) = @Year
GROUP BY YEAR(DATE), MONTH(DATE), FORMAT(Date, 'MMM')
ORDER BY MONTH(DATE);

