/*
    Question 7: Are male investors in their 20s making more money from their investments than their female counterparts in 2024?
 */


DECLARE @Year INT;
SET @Year = 2024;

SELECT
    i.Gender,
    SUM(pr.AnnualizedReturn) AS TotalReturn,
    COUNT(DISTINCT i.Phone) AS InvestorCount
FROM INVESTOR i
JOIN PORTFOLIO p ON i.Phone = p.Phone
JOIN PORTFOLIO_RETURNS pr ON p.InceptionDate = pr.InceptionDate
WHERE YEAR(pr.InceptionDate) = @Year
AND DATEDIFF(YEAR, i.DoB, GETDATE()) BETWEEN 20 AND 29
GROUP BY i.Gender;



