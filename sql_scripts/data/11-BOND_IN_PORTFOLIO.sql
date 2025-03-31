SET IDENTITY_INSERT master.dbo.BOND_IN_PORTFOLIO ON;

-- 2023 Data with proper company names
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCo, AssetID, PID, Phone)
VALUES
    (5, '2023-02-01', 0.2500, 'Saxo Capital Markets', 3, 1, '555-111-2222'),
    (6, '2023-03-15', 0.1500, 'Interactive Brokers', 4, 1, '555-111-2222'),
    (7, '2023-04-10', 0.2000, 'Clearstream', 3, 2, '555-222-3333');

-- 2024 Data
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCo, AssetID, PID, Phone)
VALUES
    (8, '2024-01-10', 0.3000, 'Saxo Capital Markets', 3, 3, '+65-9123-4567'),
    (9, '2024-01-25', 0.4000, 'Euroclear', 4, 4, '+65-8234-5678'),
    (10, '2024-02-10', 0.2500, 'Interactive Brokers', 3, 5, '+65-7345-6789'),
    (11, '2024-02-25', 0.3500, 'Clearstream', 4, 6, '+65-6456-7890'),
    (12, '2024-03-10', 0.3000, 'Saxo Capital Markets', 3, 7, '+65-5567-8901');

SET IDENTITY_INSERT master.dbo.BOND_IN_PORTFOLIO OFF;