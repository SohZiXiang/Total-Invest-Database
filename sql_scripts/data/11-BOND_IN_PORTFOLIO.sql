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

-- Additional Bond Portfolio Data (2021-2024)
INSERT INTO master.dbo.BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCo, AssetID, PID, Phone)
VALUES
-- 2021 Data
(13, '2021-03-15', 0.3000, 'Saxo Capital Markets', 17, 8, '+65-8123-4568'),
(14, '2021-06-20', 0.2500, 'Euroclear', 18, 9, '+65-9123-4569'),
(15, '2021-09-10', 0.3500, 'Interactive Brokers', 19, 10, '+65-8234-5670'),
(16, '2021-12-05', 0.2000, 'Clearstream', 20, 11, '+65-9234-5671'),
(17, '2021-12-20', 0.4000, 'Saxo Capital Markets', 21, 12, '+65-8345-6782'),
(18, '2021-12-31', 0.3000, 'Euroclear', 17, 13, '+65-9345-6783'),
(19, '2021-12-31', 0.2500, 'Interactive Brokers', 18, 14, '+65-8456-7894'),
(20, '2021-12-31', 0.3500, 'Clearstream', 19, 15, '+65-9456-7895'),
(21, '2021-12-31', 0.2000, 'Saxo Capital Markets', 20, 16, '+65-8567-8906'),
(22, '2021-12-31', 0.3000, 'Euroclear', 21, 17, '+65-9567-8907'),

-- 2022 Data
(23, '2022-01-15', 0.3500, 'Interactive Brokers', 17, 18, '+65-8678-9018'),
(24, '2022-04-20', 0.3000, 'Clearstream', 18, 19, '+65-9678-9019'),
(25, '2022-07-10', 0.2500, 'Saxo Capital Markets', 19, 20, '+65-8789-0120'),
(26, '2022-10-05', 0.4000, 'Euroclear', 20, 21, '+65-9789-0121'),
(27, '2022-12-20', 0.2000, 'Interactive Brokers', 21, 22, '+65-8890-1232'),
(28, '2022-12-31', 0.3000, 'Clearstream', 17, 23, '+65-9890-1233'),
(29, '2022-12-31', 0.3500, 'Saxo Capital Markets', 18, 24, '+65-8901-2344'),
(30, '2022-12-31', 0.2500, 'Euroclear', 19, 25, '+65-9901-2345'),
(31, '2022-12-31', 0.4000, 'Interactive Brokers', 20, 26, '+65-9012-3456'),
(32, '2022-12-31', 0.2000, 'Clearstream', 21, 27, '+65-9012-3457'),

-- 2023 Data
(33, '2023-02-15', 0.3000, 'Saxo Capital Markets', 17, 28, '+65-8123-4560'),
(34, '2023-05-20', 0.3500, 'Euroclear', 18, 29, '+65-9123-4561'),
(35, '2023-08-10', 0.2500, 'Interactive Brokers', 19, 30, '+65-8234-5672'),
(36, '2023-11-05', 0.4000, 'Clearstream', 20, 31, '+65-9234-5673'),
(37, '2023-12-20', 0.2000, 'Saxo Capital Markets', 21, 32, '+65-8345-6784'),
(38, '2023-12-31', 0.3000, 'Euroclear', 17, 33, '+65-9345-6785'),
(39, '2023-12-31', 0.3500, 'Interactive Brokers', 18, 34, '+65-8456-7896'),
(40, '2023-12-31', 0.2500, 'Clearstream', 19, 35, '+65-9456-7897'),
(41, '2023-12-31', 0.4000, 'Saxo Capital Markets', 20, 36, '+65-8567-8908'),
(42, '2023-12-31', 0.2000, 'Euroclear', 21, 37, '+65-9567-8909');

SET IDENTITY_INSERT master.dbo.BOND_IN_PORTFOLIO OFF;