SET IDENTITY_INSERT master.dbo.ASSET ON;
INSERT INTO master.dbo.ASSET (ID, Name, Price)VALUES (1, N'Apple Inc.', 175.50);
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES (2, N'Tesla Inc.', 250.75);
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES (3, N'US Treasury 10Y', 98.75);
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES (4, N'Corporate Bond A', 102.50);
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES (5, N'SPDR S&P 500 ETF', 450.00);
INSERT INTO master.dbo.ASSET (ID, Name, Price) VALUES (6, N'Vanguard Total Market', 230.50);
SET IDENTITY_INSERT master.dbo.ASSET OFF;
