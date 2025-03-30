create table dbo.ASSET
(
    ID    int identity
        primary key,
    Name  nvarchar(100)  not null,
    Price decimal(15, 2) not null
        constraint ASSET_Price_check
            check ([Price] >= 0)
)
go

create table dbo.BOND
(
    ID           int           not null
        primary key
        constraint FK_BOND_ASSET
            references dbo.ASSET,
    InterestRate decimal(5, 2) not null
        check ([InterestRate] > 0),
    MaturityDate date          not null
)
go

create table dbo.FUND
(
    ID            int           not null
        primary key
        constraint FK_FUND_ASSET
            references dbo.ASSET,
    ExpenseRatio  decimal(5, 4) not null
        check ([ExpenseRatio] >= 0 AND [ExpenseRatio] <= 1),
    DividendYield decimal(5, 4) not null
        check ([DividendYield] >= 0 AND [DividendYield] <= 1)
)
go

create table dbo.INVESTOR
(
    Phone        varchar(15)  not null
        primary key,
    Email        varchar(100) not null
        unique,
    Name         nvarchar(100),
    Gender       char
        constraint INVESTOR__Gender_check
            check ([Gender] = 'F' OR [Gender] = 'M'),
    DoB          date,
    AnnualIncome decimal(15, 2)
        constraint INVESTOR__AnnualIncome_check
            check ([AnnualIncome] >= 0),
    Company      nvarchar(100)
)
go

create table dbo.FINANCIAL_GOAL
(
    Phone           varchar(15)                not null
        references dbo.INVESTOR,
    Goal            nvarchar(100)              not null,
    Amount          decimal(15, 2)             not null
        constraint FINANCIAL__GOAL_Amount_check
            check ([Amount] >= 0),
    Timeline        int                        not null,
    CreatedDateTime datetime default getdate() not null,
    primary key (Phone, Goal)
)
go

create table dbo.PORTFOLIO_RETURNS
(
    InceptionDate    date           not null,
    MarketValue      decimal(15, 2) not null
        check ([MarketValue] >= 0),
    AnnualizedReturn decimal(5, 2)  not null
        constraint check_returns
            check ([AnnualizedReturn] >= (-100)),
    primary key (InceptionDate, MarketValue)
)
go

create table dbo.PORTFOLIO
(
    PID           int identity,
    Phone         varchar(15)                      not null
        references dbo.INVESTOR
            on delete cascade,
    InceptionDate date           default getdate() not null,
    MarketValue   decimal(15, 2) default 0.00
        check ([MarketValue] >= 0),
    Fee           decimal(5, 2)  default 0.00
        check ([Fee] >= 0),
    primary key (PID, Phone),
    constraint PORTFOLIO___fk___RETURNS
        foreign key (InceptionDate, MarketValue) references dbo.PORTFOLIO_RETURNS
)
go

create table dbo.BOND_IN_PORTFOLIO
(
    ID              int identity
        primary key,
    StartDate       date default getdate() not null,
    AllocationRatio decimal(5, 4)          not null
        check ([AllocationRatio] > 0 AND [AllocationRatio] <= 1),
    PostTradeCO     varchar(50)            not null,
    AssetID         int                    not null
        references dbo.BOND,
    PID             int                    not null,
    Phone           varchar(15)            not null,
    constraint UQ_BondPortfolio
        unique (AssetID, PID, Phone),
    foreign key (PID, Phone) references dbo.PORTFOLIO
)
go

create table dbo.BOND_TRANSACTION
(
    Date date           not null,
    ID   int            not null
        references dbo.BOND_IN_PORTFOLIO
            on delete cascade,
    Type varchar(10)    not null
        check ([Type] = 'Withdrawal' OR [Type] = 'TopUp' OR [Type] = 'Sell' OR [Type] = 'Buy'),
    Fee  decimal(10, 2) not null
        check ([Fee] >= 0),
    primary key (ID, Date)
)
go

create table dbo.FUND_IN_PORTFOLIO
(
    ID              int identity
        constraint PK_FUND_IN_PORTFOLIO
            primary key,
    StartDate       date default getdate() not null,
    AllocationRatio decimal(5, 4)          not null
        check ([AllocationRatio] > 0 AND [AllocationRatio] <= 1),
    PostTradeCO     varchar(50)            not null,
    AssetID         int                    not null
        references dbo.FUND,
    PID             int                    not null,
    Phone           varchar(15)            not null,
    constraint UQ_FundPortfolio
        unique (AssetID, PID, Phone),
    foreign key (PID, Phone) references dbo.PORTFOLIO
)
go

create table dbo.FUND_TRANSACTION
(
    Date date           not null,
    ID   int            not null
        references dbo.FUND_IN_PORTFOLIO,
    Type varchar(10)    not null
        check ([Type] = 'Withdrawal' OR [Type] = 'TopUp' OR [Type] = 'Sell' OR [Type] = 'Buy'),
    Fee  decimal(10, 2) not null
        check ([Fee] >= 0),
    primary key (ID, Date)
)
go

create table dbo.INVESTED_VALUE
(
    PID    int            not null,
    Date   date           not null,
    Phone  varchar(15)    not null,
    Amount decimal(15, 2) not null
        check ([Amount] >= 0),
    primary key (PID, Date, Phone),
    foreign key (PID, Phone) references dbo.PORTFOLIO
        on delete cascade
)
go

create table dbo.RISK_TOLERANCE
(
    Phone     varchar(15) not null
        references dbo.INVESTOR
            on delete cascade,
    RiskLevel varchar(50) not null
        check ([RiskLevel] = 'Aggressive' OR [RiskLevel] = 'Moderate' OR [RiskLevel] = 'Conservative'),
    Q1Answer  int,
    Q2Answer  int,
    Q3Answer  int,
    Q4Answer  int,
    Q5Answer  int,
    primary key (Phone, RiskLevel)
)
go

create table dbo.STOCK
(
    ID      int not null
        primary key
        constraint FK_STOCK_ASSET
            references dbo.ASSET,
    PERatio decimal(10, 2),
    EPS     decimal(10, 2),
    EBITDA  decimal(15, 2)
)
go

create table dbo.STOCK_IN_PORTFOLIO
(
    ID              int identity
        primary key,
    StartDate       date          not null,
    AllocationRatio decimal(5, 4) not null
        check ([AllocationRatio] > 0 AND [AllocationRatio] <= 1),
    PostTradeCO     varchar(50)   not null,
    AssetID         int           not null
        references dbo.STOCK,
    PID             int           not null,
    Phone           varchar(15)   not null,
    constraint UQ_StockPortfolio
        unique (AssetID, PID, Phone),
    foreign key (PID, Phone) references dbo.PORTFOLIO
)
go

create table dbo.STOCK_TRANSACTION
(
    Date date           not null,
    ID   int            not null
        references dbo.STOCK_IN_PORTFOLIO
            on delete cascade,
    Type varchar(10)    not null
        constraint CK__STOCK_TRANS__Type_check
            check ([Type] = 'Withdrawal' OR [Type] = 'TopUp' OR [Type] = 'Sell' OR [Type] = 'Buy'),
    Fee  decimal(10, 2) not null
        constraint CK__STOCK_TRANS__Fee_check
            check ([Fee] >= 0),
    constraint STOCK_TRANSACTION_pk
        primary key (Date, ID)
)
go

create table dbo.UNREALIZED_GAIN_LOSS
(
    PID    int            not null,
    Date   date           not null,
    Phone  varchar(15)    not null,
    Amount decimal(15, 2) not null,
    primary key (PID, Date, Phone),
    foreign key (PID, Phone) references dbo.PORTFOLIO
        on delete cascade
)
go

