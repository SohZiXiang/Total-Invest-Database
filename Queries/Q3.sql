SELECT
    MONTH(ugl.Date) as Month,
    AVG(ugl.Amount) as AvgUnrealizedGainLoss
FROM UNREALIZED_GAIN_LOSS ugl
WHERE YEAR(ugl.Date) = 2024
GROUP BY MONTH(ugl.Date)
ORDER BY Month;