SELECT
    I.Gender,
    AVG(pr.AnnualizedReturn) as AvgReturn,
    COUNT(DISTINCT i.Phone) as InvestorCount
FROM INVESTOR i
JOIN PORTFOLIO p ON I.Phone = P.Phone
JOIN PORTFOLIO_RETURNS PR ON P.InceptionDate = PR.InceptionDate AND P.MarketValue = PR.MarketValue
WHERE YEAR(pr.InceptionDate) = 2024
AND DATEDIFF(YEAR, i.DoB, GETDATE()) BETWEEN 20 AND 29
GROUP BY I.Gender;
