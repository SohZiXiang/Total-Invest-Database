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
