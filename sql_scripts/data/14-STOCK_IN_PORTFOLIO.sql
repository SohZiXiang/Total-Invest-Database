SET IDENTITY_INSERT master.dbo.STOCK_IN_PORTFOLIO ON;
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone)
VALUES
    (2, N'2023-01-15', 0.3000, 'Saxo Bank', 1, 1, N'+65-9111-2222'),
    (3, N'2023-01-20', 0.2000, 'Interactive Brokers', 2, 1, N'+65-9111-2222'),
    (4, N'2023-02-10', 0.2500, 'Clearstream', 1, 2, N'+65-9222-3333'),
    (5, N'2023-02-15', 0.1500, 'Charles Schwab', 2, 2, N'+65-9222-3333');

-- 2024 Stock Portfolio Data
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone)
VALUES
    (6, N'2024-01-05', 0.4000, 'Fidelity', 1, 3, N'+65-9123-4567'),
    (7, N'2024-01-20', 0.3000, 'Morgan Stanley', 2, 4, N'+65-8234-5678'),
    (8, N'2024-02-05', 0.3500, 'Goldman Sachs', 1, 5, N'+65-7345-6789'),
    (9, N'2024-02-20', 0.2500, 'Deutsche Bank', 2, 6, N'+65-6456-7890'),
    (10, N'2024-03-05', 0.4000, 'UBS', 1, 7, N'+65-5567-8901');
SET IDENTITY_INSERT master.dbo.STOCK_IN_PORTFOLIO OFF;