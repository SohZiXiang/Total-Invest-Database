SET IDENTITY_INSERT master.dbo.BOND_IN_PORTFOLIO ON;
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone)VALUES (5, N'2023-02-01', 0.2500, 12500.00, 3, 1, N'555-111-2222');
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (6, N'2023-03-15', 0.1500, 7500.00, 4, 1, N'555-111-2222');
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (7, N'2023-04-10', 0.2000, 10000.00, 3, 2, N'555-222-3333');
SET IDENTITY_INSERT master.dbo.BOND_IN_PORTFOLIO OFF;

-- 2024 Bond Portfolio Data
SET IDENTITY_INSERT master.dbo.BOND_IN_PORTFOLIO ON;
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (8, N'2024-01-10', 0.3000, 30000.00, 3, 3, N'+65-9123-4567');
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (9, N'2024-01-25', 0.4000, 60000.00, 4, 4, N'+65-8234-5678');
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (10, N'2024-02-10', 0.2500, 50000.00, 3, 5, N'+65-7345-6789');
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (11, N'2024-02-25', 0.3500, 61250.00, 4, 6, N'+65-6456-7890');
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES (12, N'2024-03-10', 0.3000, 75000.00, 3, 7, N'+65-5567-8901');
SET IDENTITY_INSERT master.dbo.BOND_IN_PORTFOLIO OFF;
