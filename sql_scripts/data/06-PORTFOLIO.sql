SET IDENTITY_INSERT master.dbo.PORTFOLIO ON;
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES (1, N'+65-9111-2222', N'2023-01-01', 50000.00, 0.01);
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES (2, N'+65-9222-3333', N'2023-02-15', 75000.00, 0.01);
SET IDENTITY_INSERT master.dbo.PORTFOLIO OFF;

-- 2024 Portfolio Data (Updated for investors in their 20s)
SET IDENTITY_INSERT master.dbo.PORTFOLIO ON;
INSERT INTO master.dbo.PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES
-- Male investors' portfolios
(3, N'+65-9123-4567', N'2024-01-05', 100000.00, 0.01),
(4, N'+65-8234-5678', N'2024-01-10', 150000.00, 0.01),
(5, N'+65-7345-6789', N'2024-01-15', 200000.00, 0.01),
(6, N'+65-6456-7890', N'2024-01-20', 175000.00, 0.01),
(7, N'+65-5567-8901', N'2024-01-25', 250000.00, 0.01),

-- Female investors' portfolios
(8, N'+65-4678-9012', N'2024-02-01', 120000.00, 0.01),
(9, N'+65-3789-0123', N'2024-02-05', 180000.00, 0.01),
(10, N'+65-2890-1234', N'2024-02-10', 220000.00, 0.01),
(11, N'+65-1901-2345', N'2024-02-15', 160000.00, 0.01),
(12, N'+65-9012-3456', N'2024-02-20', 280000.00, 0.01);
SET IDENTITY_INSERT master.dbo.PORTFOLIO OFF;
