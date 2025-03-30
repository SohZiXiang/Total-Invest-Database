SET IDENTITY_INSERT master.dbo.STOCK_IN_PORTFOLIO ON;
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone)VALUES (2, N'2023-01-15', 0.3000, 15000.00, 1, 1, N'+65-9111-2222');
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (3, N'2023-01-20', 0.2000, 10000.00, 2, 1, N'+65-9111-2222');
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (4, N'2023-02-10', 0.2500, 18750.00, 1, 2, N'+65-9222-3333');
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (5, N'2023-02-15', 0.1500, 11250.00, 2, 2, N'+65-9222-3333');
SET IDENTITY_INSERT master.dbo.STOCK_IN_PORTFOLIO OFF;

-- 2024 Stock Portfolio Data
SET IDENTITY_INSERT master.dbo.STOCK_IN_PORTFOLIO ON;
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (6, N'2024-01-05', 0.4000, 40000.00, 1, 3, N'+65-9123-4567');
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (7, N'2024-01-20', 0.3000, 45000.00, 2, 4, N'+65-8234-5678');
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (8, N'2024-02-05', 0.3500, 70000.00, 1, 5, N'+65-7345-6789');
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (9, N'2024-02-20', 0.2500, 43750.00, 2, 6, N'+65-6456-7890');
INSERT INTO master.dbo.STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (10, N'2024-03-05', 0.4000, 100000.00, 1, 7, N'+65-5567-8901');
SET IDENTITY_INSERT master.dbo.STOCK_IN_PORTFOLIO OFF;
