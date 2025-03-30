SELECT i.Phone, i.Name, AVG(pr.AnnualizedReturn) as AvgReturn
FROM INVESTOR i
JOIN PORTFOLIO p ON i.Phone = p.Phone
JOIN PORTFOLIO_RETURNS pr ON p.InceptionDate = pr.InceptionDate AND p.MarketValue = pr.MarketValue
WHERE YEAR(pr.InceptionDate) = 2024
GROUP BY i.Phone, i.Name
HAVING AVG(pr.AnnualizedReturn) > 10;