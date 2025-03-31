SET IDENTITY_INSERT master.dbo.ASSET ON;
INSERT INTO master.dbo.ASSET (ID, Name, Price)VALUES (1, N'Apple Inc.', 175.50);
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES (2, N'Tesla Inc.', 250.75);
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES (3, N'US Treasury 10Y', 98.75);
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES (4, N'Corporate Bond A', 102.50);
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES (5, N'SPDR S&P 500 ETF', 450.00);
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES (6, N'Vanguard Total Market', 230.50);

-- Additional 30 Assets
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES
-- Stocks (7-16)
(7, N'Microsoft Corp.', 425.30),
(8, N'Amazon.com Inc.', 185.75),
(9, N'Google Inc.', 145.25),
(10, N'Meta Platforms', 485.50),
(11, N'Netflix Inc.', 615.25),
(12, N'NVIDIA Corp.', 925.75),
(13, N'Intel Corp.', 42.80),
(14, N'AMD Inc.', 185.25),
(15, N'Samsung Electronics', 75.50),
(16, N'Sony Group Corp.', 95.25),

-- Bonds (17-21)
(17, N'US Treasury 5Y', 99.25),
(18, N'Corporate Bond B', 101.75),
(19, N'Municipal Bond A', 103.25),
(20, N'High Yield Bond A', 98.50),
(21, N'Investment Grade Bond A', 102.25),

-- Funds (22-31)
(22, N'Vanguard Growth ETF', 285.75),
(23, N'Vanguard Value ETF', 145.25),
(24, N'Vanguard Small Cap ETF', 185.50),
(25, N'Vanguard Mid Cap ETF', 225.75),
(26, N'Vanguard REIT ETF', 95.25),
(27, N'Vanguard International ETF', 165.50),
(28, N'Vanguard Emerging Markets ETF', 85.75),
(29, N'Vanguard Bond ETF', 75.25),
(30, N'Vanguard High Yield Bond ETF', 82.50),
(31, N'Vanguard Total International ETF', 35.75),
(32, N'Vanguard Total World ETF', 105.25),
(33, N'Vanguard Total Bond ETF', 78.50),
(34, N'Vanguard Short Term Bond ETF', 81.25),
(35, N'Vanguard Long Term Bond ETF', 72.75),
(36, N'Vanguard Inflation Protected ETF', 115.50);
SET IDENTITY_INSERT master.dbo.ASSET OFF;
