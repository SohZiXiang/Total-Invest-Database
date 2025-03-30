WITH MonthlyTopUps AS (
    SELECT
        i.Phone,
        i.Name,
        COUNT(DISTINCT MONTH(st.Date)) as TopUpMonths
    FROM INVESTOR i
    JOIN PORTFOLIO p ON i.Phone = p.Phone
    JOIN STOCK_IN_PORTFOLIO sip ON p.PID = sip.PID AND p.Phone = sip.Phone
    JOIN STOCK_TRANSACTION st ON sip.ID = st.ID
    WHERE YEAR(st.Date) = 2024
    AND st.Type = 'TopUp'
    AND DAY(st.Date) <= 5  -- Assuming beginning of month is first 5 days
    GROUP BY i.Phone, i.Name
)
SELECT Phone, Name, TopUpMonths
FROM MonthlyTopUps
WHERE TopUpMonths = 12;  -- Must have topped up every month