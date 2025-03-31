/*
    Question 7: Are male investors in their 20s making more money from their investments than their female counterparts in 2024?
 */


DECLARE @Year INT;
SET @Year = 2024;

SELECT
    @Year AS Year,
    I.Gender,
    SUM(pr.AnnualizedReturn) AS TotalReturn,
    COUNT(DISTINCT I.Phone) AS InvestorCount
FROM INVESTOR I, PORTFOLIO P, PORTFOLIO_RETURNS PR
WHERE I.Phone = P.Phone
AND P.InceptionDate = PR.InceptionDate
AND YEAR(PR.InceptionDate) = @Year
AND DATEDIFF(YEAR, I.DoB, GETDATE()) BETWEEN 20 AND 29
GROUP BY I.Gender;



