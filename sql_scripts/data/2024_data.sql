-- Insert 2024 Investor Data
INSERT INTO INVESTOR (Phone, Email, Name, Gender, DoB, AnnualIncome, Company) VALUES
('+65-9123-4567', 'alex.tan@email.com', 'Alex Tan', 'M', '1995-03-15', 85000.00, 'Tech Solutions Pte Ltd'),
('+65-8234-5678', 'sarah.wong@email.com', 'Sarah Wong', 'F', '1998-07-22', 78000.00, 'Finance Corp Pte Ltd'),
('+65-7345-6789', 'david.lee@email.com', 'David Lee', 'M', '1992-11-30', 92000.00, 'Tech Solutions Pte Ltd'),
('+65-6456-7890', 'emma.ng@email.com', 'Emma Ng', 'F', '1997-04-18', 75000.00, 'Finance Corp Pte Ltd'),
('+65-5567-8901', 'james.chan@email.com', 'James Chan', 'M', '1993-09-25', 88000.00, 'Investment Bank Pte Ltd');

-- Insert 2024 Portfolio Data
INSERT INTO PORTFOLIO_RETURNS (InceptionDate, MarketValue, AnnualizedReturn) VALUES
('2024-01-01', 100000.00, -2.5),
('2024-01-15', 150000.00, 12.5),
('2024-02-01', 200000.00, 8.75),
('2024-02-15', 175000.00, -5.25),
('2024-03-01', 250000.00, 15.30);

INSERT INTO PORTFOLIO (PID, Phone, InceptionDate, MarketValue, Fee) VALUES
(3, '+65-9123-4567', '2024-01-01', 100000.00, 0.01),
(4, '+65-8234-5678', '2024-01-15', 150000.00, 0.01),
(5, '+65-7345-6789', '2024-02-01', 200000.00, 0.01),
(6, '+65-6456-7890', '2024-02-15', 175000.00, 0.01),
(7, '+65-5567-8901', '2024-03-01', 250000.00, 0.01);

-- Insert 2024 Financial Goals
INSERT INTO FINANCIAL_GOAL (Phone, Goal, Amount, Timeline) VALUES
('+65-9123-4567', 'Buy Condo', 800000.00, 5),
('+65-8234-5678', 'Early Retirement', 2000000.00, 15),
('+65-7345-6789', 'Start Business', 500000.00, 3),
('+65-6456-7890', 'Buy Car', 150000.00, 2),
('+65-5567-8901', 'Wedding Fund', 100000.00, 1);

-- Insert 2024 Unrealized Gain/Loss Data
INSERT INTO UNREALIZED_GAIN_LOSS (PID, Date, Phone, Amount) VALUES
(3, '2024-01-31', '+65-9123-4567', -2500.00),
(4, '2024-01-31', '+65-8234-5678', 18750.00),
(5, '2024-02-28', '+65-7345-6789', 17500.00),
(6, '2024-02-28', '+65-6456-7890', -9187.50),
(7, '2024-03-31', '+65-5567-8901', 37500.00);

-- Insert 2024 Stock Portfolio Data
INSERT INTO STOCK_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES
(6, '2024-01-05', 0.4000, 40000.00, 1, 3, '+65-9123-4567'),
(7, '2024-01-20', 0.3000, 45000.00, 2, 4, '+65-8234-5678'),
(8, '2024-02-05', 0.3500, 70000.00, 1, 5, '+65-7345-6789'),
(9, '2024-02-20', 0.2500, 43750.00, 2, 6, '+65-6456-7890'),
(10, '2024-03-05', 0.4000, 100000.00, 1, 7, '+65-5567-8901');

-- Insert 2024 Stock Transactions
INSERT INTO STOCK_TRANSACTION (Date, ID, Type, Fee) VALUES
('2024-01-05', 6, 'Buy', 5.00),
('2024-01-20', 7, 'Buy', 5.00),
('2024-02-05', 8, 'Buy', 5.00),
('2024-02-20', 9, 'Buy', 5.00),
('2024-03-05', 10, 'Buy', 5.00),
('2024-01-15', 6, 'TopUp', 0.00),
('2024-02-15', 7, 'TopUp', 0.00),
('2024-03-15', 8, 'TopUp', 0.00);

-- Insert 2024 Bond Portfolio Data
INSERT INTO BOND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES
(8, '2024-01-10', 0.3000, 30000.00, 3, 3, '+65-9123-4567'),
(9, '2024-01-25', 0.4000, 60000.00, 4, 4, '+65-8234-5678'),
(10, '2024-02-10', 0.2500, 50000.00, 3, 5, '+65-7345-6789'),
(11, '2024-02-25', 0.3500, 61250.00, 4, 6, '+65-6456-7890'),
(12, '2024-03-10', 0.3000, 75000.00, 3, 7, '+65-5567-8901');

-- Insert 2024 Fund Portfolio Data
INSERT INTO FUND_IN_PORTFOLIO (ID, StartDate, AllocationRatio, PostTradeCO, AssetID, PID, Phone) VALUES
(6, '2024-01-15', 0.3000, 30000.00, 5, 3, '+65-9123-4567'),
(7, '2024-01-30', 0.3000, 45000.00, 6, 4, '+65-8234-5678'),
(8, '2024-02-15', 0.4000, 80000.00, 5, 5, '+65-7345-6789'),
(9, '2024-03-01', 0.4000, 70000.00, 6, 6, '+65-6456-7890'),
(10, '2024-03-15', 0.3000, 75000.00, 5, 7, '+65-5567-8901');

-- Insert 2024 Invested Value Data
INSERT INTO INVESTED_VALUE (PID, Date, Phone, Amount) VALUES
(3, '2024-01-15', '+65-9123-4567', 10000.00),
(4, '2024-01-30', '+65-8234-5678', 15000.00),
(5, '2024-02-15', '+65-7345-6789', 20000.00),
(6, '2024-03-01', '+65-6456-7890', 17500.00),
(7, '2024-03-15', '+65-5567-8901', 25000.00); 