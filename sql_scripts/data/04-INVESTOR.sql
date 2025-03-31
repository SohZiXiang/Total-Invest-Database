INSERT INTO master.dbo.INVESTOR (Phone, Email, Name, Gender, DoB, AnnualIncome, Company) VALUES (N'+65-9111-2222', N'john@totalinvest.com', N'John Smith', N'M', N'1980-05-15', 85000.00, N'Tech Inc.');
INSERT INTO master.dbo.INVESTOR (Phone, Email, Name, Gender, DoB, AnnualIncome, Company) VALUES (N'+65-9222-3333', N'sarah@totalinvest.com', N'Sarah Lee', N'F', N'1990-08-20', 95000.00, N'Finance Corp.');

-- 2024 Investor Data (Updated with more investors in their 20s)
INSERT INTO master.dbo.INVESTOR (Phone, Email, Name, Gender, DoB, AnnualIncome, Company) VALUES
-- Male investors in their 20s
(N'+65-9123-4567', N'john.smith@techsolutions.com', N'John Smith', N'M', N'2000-03-15', 85000.00, N'Tech Solutions Pte Ltd'),
(N'+65-8234-5678', N'michael.chen@financecorp.com', N'Michael Chen', N'M', N'1999-07-22', 92000.00, N'Finance Corp Pte Ltd'),
(N'+65-7345-6789', N'david.lee@investmentbank.com', N'David Lee', N'M', N'2001-01-10', 88000.00, N'Investment Bank Pte Ltd'),
(N'+65-6456-7890', N'james.wilson@techsolutions.com', N'James Wilson', N'M', N'1998-11-30', 95000.00, N'Tech Solutions Pte Ltd'),
(N'+65-5567-8901', N'robert.tan@financecorp.com', N'Robert Tan', N'M', N'2002-05-18', 82000.00, N'Finance Corp Pte Ltd'),

-- Female investors in their 20s
(N'+65-4678-9012', N'sarah.johnson@techsolutions.com', N'Sarah Johnson', N'F', N'2000-08-25', 78000.00, N'Tech Solutions Pte Ltd'),
(N'+65-3789-0123', N'emily.wong@financecorp.com', N'Emily Wong', N'F', N'1999-12-05', 85000.00, N'Finance Corp Pte Ltd'),
(N'+65-2890-1234', N'lisa.chen@investmentbank.com', N'Lisa Chen', N'F', N'2001-04-15', 92000.00, N'Investment Bank Pte Ltd'),
(N'+65-1901-2345', N'michelle.lee@techsolutions.com', N'Michelle Lee', N'F', N'1998-09-20', 88000.00, N'Tech Solutions Pte Ltd'),
(N'+65-9012-3456', N'jessica.tan@financecorp.com', N'Jessica Tan', N'F', N'2002-02-28', 82000.00, N'Finance Corp Pte Ltd');

-- Additional 30 Investors (2021-2024)
INSERT INTO master.dbo.INVESTOR (Phone, Email, Name, Gender, DoB, AnnualIncome, Company) VALUES
-- 2021 Investors
(N'+65-8123-4568', N'james.tan@techsolutions.com', N'James Tan', N'M', N'1990-03-15', 85000.00, N'Tech Solutions Pte Ltd'),
(N'+65-9123-4569', N'lisa.wong@financecorp.com', N'Lisa Wong', N'F', N'1992-06-20', 92000.00, N'Finance Corp Pte Ltd'),
(N'+65-8234-5670', N'robert.lee@investmentbank.com', N'Robert Lee', N'M', N'1988-09-10', 95000.00, N'Investment Bank Pte Ltd'),
(N'+65-9234-5671', N'michelle.chen@techsolutions.com', N'Michelle Chen', N'F', N'1995-12-05', 78000.00, N'Tech Solutions Pte Ltd'),
(N'+65-8345-6782', N'thomas.lim@financecorp.com', N'Thomas Lim', N'M', N'1991-12-20', 88000.00, N'Finance Corp Pte Ltd'),
(N'+65-9345-6783', N'jennifer.tan@investmentbank.com', N'Jennifer Tan', N'F', N'1993-12-31', 92000.00, N'Investment Bank Pte Ltd'),
(N'+65-8456-7894', N'william.wong@techsolutions.com', N'William Wong', N'M', N'1989-12-31', 95000.00, N'Tech Solutions Pte Ltd'),
(N'+65-9456-7895', N'rachel.lee@financecorp.com', N'Rachel Lee', N'F', N'1994-12-31', 85000.00, N'Finance Corp Pte Ltd'),
(N'+65-8567-8906', N'daniel.chen@investmentbank.com', N'Daniel Chen', N'M', N'1990-12-31', 98000.00, N'Investment Bank Pte Ltd'),
(N'+65-9567-8907', N'emma.lim@techsolutions.com', N'Emma Lim', N'F', N'1996-12-31', 82000.00, N'Tech Solutions Pte Ltd'),

-- 2022 Investors
(N'+65-8678-9018', N'andrew.tan@techsolutions.com', N'Andrew Tan', N'M', N'1991-01-15', 88000.00, N'Tech Solutions Pte Ltd'),
(N'+65-9678-9019', N'sophia.wong@financecorp.com', N'Sophia Wong', N'F', N'1993-04-20', 92000.00, N'Finance Corp Pte Ltd'),
(N'+65-8789-0120', N'benjamin.lee@investmentbank.com', N'Benjamin Lee', N'M', N'1989-07-10', 95000.00, N'Investment Bank Pte Ltd'),
(N'+65-9789-0121', N'isabella.chen@techsolutions.com', N'Isabella Chen', N'F', N'1995-10-05', 80000.00, N'Tech Solutions Pte Ltd'),
(N'+65-8890-1232', N'christopher.lim@financecorp.com', N'Christopher Lim', N'M', N'1992-12-20', 90000.00, N'Finance Corp Pte Ltd'),
(N'+65-9890-1233', N'olivia.tan@investmentbank.com', N'Olivia Tan', N'F', N'1994-12-31', 94000.00, N'Investment Bank Pte Ltd'),
(N'+65-8901-2344', N'joseph.wong@techsolutions.com', N'Joseph Wong', N'M', N'1990-12-31', 96000.00, N'Tech Solutions Pte Ltd'),
(N'+65-9901-2345', N'victoria.lee@financecorp.com', N'Victoria Lee', N'F', N'1993-12-31', 86000.00, N'Finance Corp Pte Ltd'),
(N'+65-9012-3456', N'alexander.chen@investmentbank.com', N'Alexander Chen', N'M', N'1988-12-31', 99000.00, N'Investment Bank Pte Ltd'),
(N'+65-9012-3457', N'grace.lim@techsolutions.com', N'Grace Lim', N'F', N'1997-12-31', 83000.00, N'Tech Solutions Pte Ltd'),

-- 2023 Investors
(N'+65-8123-4560', N'ryan.tan@techsolutions.com', N'Ryan Tan', N'M', N'1992-02-15', 89000.00, N'Tech Solutions Pte Ltd'),
(N'+65-9123-4561', N'chloe.wong@financecorp.com', N'Chloe Wong', N'F', N'1994-05-20', 93000.00, N'Finance Corp Pte Ltd'),
(N'+65-8234-5672', N'marcus.lee@investmentbank.com', N'Marcus Lee', N'M', N'1990-08-10', 96000.00, N'Investment Bank Pte Ltd'),
(N'+65-9234-5673', N'ava.chen@techsolutions.com', N'Ava Chen', N'F', N'1996-11-05', 81000.00, N'Tech Solutions Pte Ltd'),
(N'+65-8345-6784', N'lucas.lim@financecorp.com', N'Lucas Lim', N'M', N'1993-12-20', 91000.00, N'Finance Corp Pte Ltd'),
(N'+65-9345-6785', N'lily.tan@investmentbank.com', N'Lily Tan', N'F', N'1995-12-31', 95000.00, N'Investment Bank Pte Ltd'),
(N'+65-8456-7896', N'henry.wong@techsolutions.com', N'Henry Wong', N'M', N'1991-12-31', 97000.00, N'Tech Solutions Pte Ltd'),
(N'+65-9456-7897', N'zoe.lee@financecorp.com', N'Zoe Lee', N'F', N'1994-12-31', 87000.00, N'Finance Corp Pte Ltd'),
(N'+65-8567-8908', N'leo.chen@investmentbank.com', N'Leo Chen', N'M', N'1989-12-31', 100000.00, N'Investment Bank Pte Ltd'),
(N'+65-9567-8909', N'mia.lim@techsolutions.com', N'Mia Lim', N'F', N'1998-12-31', 84000.00, N'Tech Solutions Pte Ltd');
