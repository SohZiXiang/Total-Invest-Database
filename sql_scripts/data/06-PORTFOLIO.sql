SET IDENTITY_INSERT master.dbo.PORTFOLIO ON;
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES (1, N'+65-9111-2222', N'2023-01-01', 50000.00, 0.01);
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES (2, N'+65-9222-3333', N'2023-02-15', 75000.00, 0.01);
SET IDENTITY_INSERT master.dbo.PORTFOLIO OFF;

-- 2024 Portfolio Data
SET IDENTITY_INSERT master.dbo.PORTFOLIO ON;
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES (3, N'+65-9123-4567', N'2024-01-01', 100000.00, 0.01);
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES (4, N'+65-8234-5678', N'2024-01-15', 150000.00, 0.01);
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES (5, N'+65-7345-6789', N'2024-02-01', 200000.00, 0.01);
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES (6, N'+65-6456-7890', N'2024-02-15', 175000.00, 0.01);
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES (7, N'+65-5567-8901', N'2024-03-01', 250000.00, 0.01);
SET IDENTITY_INSERT master.dbo.PORTFOLIO OFF;

-- Additional 30 Portfolios (2021-2024)
SET IDENTITY_INSERT master.dbo.PORTFOLIO ON;
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES
-- 2021 Portfolios
(8, N'+65-8123-4568', N'2021-03-15', 120000.00, 0.01),
(9, N'+65-9123-4569', N'2021-06-20', 150000.00, 0.01),
(10, N'+65-8234-5670', N'2021-09-10', 180000.00, 0.01),
(11, N'+65-9234-5671', N'2021-12-05', 160000.00, 0.01),
(12, N'+65-8345-6782', N'2021-12-20', 190000.00, 0.01),
(13, N'+65-9345-6783', N'2021-12-31', 210000.00, 0.01),
(14, N'+65-8456-7894', N'2021-12-31', 230000.00, 0.01),
(15, N'+65-9456-7895', N'2021-12-31', 250000.00, 0.01),
(16, N'+65-8567-8906', N'2021-12-31', 270000.00, 0.01),
(17, N'+65-9567-8907', N'2021-12-31', 290000.00, 0.01),

-- 2022 Portfolios
(18, N'+65-8678-9018', N'2022-01-15', 310000.00, 0.01),
(19, N'+65-9678-9019', N'2022-04-20', 330000.00, 0.01),
(20, N'+65-8789-0120', N'2022-07-10', 350000.00, 0.01),
(21, N'+65-9789-0121', N'2022-10-05', 370000.00, 0.01),
(22, N'+65-8890-1232', N'2022-12-20', 390000.00, 0.01),
(23, N'+65-9890-1233', N'2022-12-31', 410000.00, 0.01),
(24, N'+65-8901-2344', N'2022-12-31', 430000.00, 0.01),
(25, N'+65-9901-2345', N'2022-12-31', 450000.00, 0.01),
(26, N'+65-9012-3456', N'2022-12-31', 470000.00, 0.01),
(27, N'+65-9012-3457', N'2022-12-31', 490000.00, 0.01),

-- 2023 Portfolios
(28, N'+65-8123-4560', N'2023-02-15', 510000.00, 0.01),
(29, N'+65-9123-4561', N'2023-05-20', 530000.00, 0.01),
(30, N'+65-8234-5672', N'2023-08-10', 550000.00, 0.01),
(31, N'+65-9234-5673', N'2023-11-05', 570000.00, 0.01),
(32, N'+65-8345-6784', N'2023-12-20', 590000.00, 0.01),
(33, N'+65-9345-6785', N'2023-12-31', 610000.00, 0.01),
(34, N'+65-8456-7896', N'2023-12-31', 630000.00, 0.01),
(35, N'+65-9456-7897', N'2023-12-31', 650000.00, 0.01),
(36, N'+65-8567-8908', N'2023-12-31', 670000.00, 0.01),
(37, N'+65-9567-8909', N'2023-12-31', 690000.00, 0.01);
SET IDENTITY_INSERT master.dbo.PORTFOLIO OFF;
