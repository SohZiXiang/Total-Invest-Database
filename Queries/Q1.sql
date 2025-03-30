DECLARE @Year int;
SET @Year = 2024;

SELECT I.Phone, I.Name, AVG(PR.AnnualizedReturn) as AvgReturn
FROM INVESTOR I, PORTFOLIO P, PORTFOLIO_RETURNS PR
WHERE I.Phone = P.Phone AND
      P.InceptionDate = PR.InceptionDate AND
      P.MarketValue = PR.MarketValue AND
      YEAR(pr.InceptionDate) = @Year
GROUP BY I.Phone, I.Name
HAVING AVG(pr.AnnualizedReturn) < 0;

-- We join the INVESTOR, PORTFOLIO and PORTFOLIO_RETURNS tables to get all the portfolio which belongs to each investor
-- then group all the Investor's Portfolios and calculate the average AnnualizedReturn of all the portfolios that belong to one investor and if it falls belong 0 we take it as a loss