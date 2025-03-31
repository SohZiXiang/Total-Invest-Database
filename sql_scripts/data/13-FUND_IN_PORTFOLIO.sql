SET IDENTITY_INSERT master.dbo.FUND_IN_PORTFOLIO ON;
INSERT INTO master.dbo.FUND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone)VALUES (2, N'2023-03-01', 0.2000, 10000.00, 5, 1, N'555-111-2222');
INSERT INTO master.dbo.FUND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (3, N'2023-03-10', 0.1500, 7500.00, 6, 1, N'555-111-2222');
INSERT INTO master.dbo.FUND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (4, N'2023-04-05', 0.2500, 18750.00, 5, 2, N'555-222-3333');
INSERT INTO master.dbo.FUND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (5, N'2023-04-20', 0.1000, 7500.00, 6, 2, N'555-222-3333');
SET IDENTITY_INSERT master.dbo.FUND_IN_PORTFOLIO OFF;

-- 2024 Fund Portfolio Data
SET IDENTITY_INSERT master.dbo.FUND_IN_PORTFOLIO ON;
INSERT INTO master.dbo.FUND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (6, N'2024-01-15', 0.3000, 30000.00, 5, 3, N'+65-9123-4567');
INSERT INTO master.dbo.FUND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (7, N'2024-01-30', 0.3000, 45000.00, 6, 4, N'+65-8234-5678');
INSERT INTO master.dbo.FUND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (8, N'2024-02-15', 0.4000, 80000.00, 5, 5, N'+65-7345-6789');
INSERT INTO master.dbo.FUND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (9, N'2024-03-01', 0.4000, 70000.00, 6, 6, N'+65-6456-7890');
INSERT INTO master.dbo.FUND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (10, N'2024-03-15', 0.3000, 75000.00, 5, 7, N'+65-5567-8901');
SET IDENTITY_INSERT master.dbo.FUND_IN_PORTFOLIO OFF;
