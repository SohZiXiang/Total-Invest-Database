DECLARE @Year int;
SET @Year = 2024;

SELECT I.Phone, I.Name, AVG(PR.AnnualizedReturn) as AvgReturn
FROM INVESTOR I, PORTFOLIO P, PORTFOLIO_RETURNS PR
WHERE I.Phone = P.Phone AND
      P.InceptionDate = PR.InceptionDate AND
      P.MarketValue = PR.MarketValue AND
      YEAR(pr.InceptionDate) = @Year
GROUP BY I.Phone, I.Name
HAVING AVG(pr.AnnualizedReturn) > 10;