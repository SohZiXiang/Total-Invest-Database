SELECT
    i.Gender,
    AVG(pr.AnnualizedReturn) as AvgReturn,
    COUNT(DISTINCT i.Phone) as InvestorCount
FROM INVESTOR i
JOIN PORTFOLIO p ON i.Phone = p.Phone
JOIN PORTFOLIO_RETURNS pr ON p.InceptionDate = pr.InceptionDate AND p.MarketValue = pr.MarketValue
WHERE YEAR(pr.InceptionDate) = 2024
AND DATEDIFF(YEAR, i.DoB, GETDATE()) BETWEEN 20 AND 29
GROUP BY i.Gender;