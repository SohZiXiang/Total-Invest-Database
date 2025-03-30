/*
    Question 3: Find the monthly average unrealized gain/loss of portfolios for each month in 2024.
 */

SELECT
    FORMAT(Date, 'yyyy-MMM') AS month,
    AVG(Amount) AS avg_unrealized_gain_loss
FROM UNREALIZED_GAIN_LOSS
WHERE Date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY FORMAT(Date, 'yyyy-MMM')
ORDER BY month;