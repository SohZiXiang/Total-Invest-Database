create table ASSET
(
    ID    int identity
        primary key,
    Name  nvarchar(100)  not null,
    Price decimal(15, 2) not null
)
go

create table BOND
(
    ID           int           not null
        primary key
        constraint FK_BOND_ASSET
            references ASSET,
    InterestRate decimal(5, 2) not null
        check ([InterestRate] > 0),
    MaturityDate date          not null
)
go

create table FUND
(
    ID            int           not null
        primary key
        constraint FK_FUND_ASSET
            references ASSET,
    ExpenseRatio  decimal(5, 4) not null
        check ([ExpenseRatio] >= 0 AND [ExpenseRatio] <= 1),
    DividendYield decimal(5, 4) not null
        check ([DividendYield] >= 0 AND [DividendYield] <= 1)
)
go

create table INVESTOR
(
    Phone        varchar(15)  not null
        primary key,
    Email        varchar(100) not null
        unique,
    Name         nvarchar(100),
    Gender       char,
    DoB          date,
    AnnualIncome decimal(15, 2),
    Company      nvarchar(100)
)
go

create table FINANCIAL_GOAL
(
    Phone    varchar(15)   not null
        references INVESTOR,
    Goal     nvarchar(100) not null,
    Amount   decimal(15, 2),
    Timeline int,
    CreatedDate date,
    primary key (Phone, Goal)
)
go

create table PORTFOLIO_RETURNS
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

create table PORTFOLIO
(
    PID           int identity,
    Phone         varchar(15)                      not null
        references INVESTOR
            on delete cascade,
    InceptionDate date           default getdate() not null,
    MarketValue   decimal(15, 2) default 0.00
        check ([MarketValue] >= 0),
    Fee           decimal(5, 2)  default 0.00
        check ([Fee] >= 0),
    primary key (PID, Phone),
    constraint PORTFOLIO___fk___RETURNS
        foreign key (InceptionDate, MarketValue) references PORTFOLIO_RETURNS
)
go

create table BOND_IN_PORTFOLIO
(
    ID              int identity
        primary key,
    StartDate       date           not null,
    AllocationRatio decimal(5, 4)  not null
        check ([AllocationRatio] > 0 AND [AllocationRatio] <= 1),
    PostTradeCO     decimal(15, 2) not null
        check ([PostTradeCO] >= 0),
    AssetID         int            not null
        references BOND,
    PID             int            not null,
    Phone           varchar(15)    not null,
    constraint UQ_BondPortfolio
        unique (AssetID, PID, Phone),
    foreign key (PID, Phone) references PORTFOLIO
)
go

create table BOND_TRANSACTION
(
    Date date           not null,
    ID   int            not null
        references BOND_IN_PORTFOLIO
            on delete cascade,
    Type varchar(10)    not null
        check ([Type] = 'Rebalance' OR [Type] = 'Withdrawal' OR [Type] = 'TopUp' OR [Type] = 'Sell' OR [Type] = 'Buy'),
    Fee  decimal(10, 2) not null
        check ([Fee] >= 0),
    primary key (ID, Date)
)
go

create table FUND_IN_PORTFOLIO
(
    ID              int identity
        primary key,
    StartDate       date           not null,
    AllocationRatio decimal(5, 4)  not null
        check ([AllocationRatio] > 0 AND [AllocationRatio] <= 1),
    PostTradeCO     decimal(15, 2) not null
        check ([PostTradeCO] >= 0),
    AssetID         int            not null
        references FUND,
    PID             int            not null,
    Phone           varchar(15)    not null,
    constraint UQ_FundPortfolio
        unique (AssetID, PID, Phone),
    foreign key (PID, Phone) references PORTFOLIO
)
go

create table INVESTED_VALUE
(
    PID    int            not null,
    Date   date           not null,
    Phone  varchar(15)    not null,
    Amount decimal(15, 2) not null
        check ([Amount] >= 0),
    primary key (PID, Date, Phone),
    foreign key (PID, Phone) references PORTFOLIO
        on delete cascade
)
go

create table RISK_TOLERANCE
(
    Phone     varchar(15) not null
        references INVESTOR
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

create table STOCK
(
    ID      int not null
        primary key
        constraint FK_STOCK_ASSET
            references ASSET,
    PERatio decimal(10, 2),
    EPS     decimal(10, 2),
    EBITDA  decimal(15, 2)
)
go

create table STOCK_IN_PORTFOLIO
(
    ID              int identity
        primary key,
    StartDate       date           not null,
    AllocationRatio decimal(5, 4)  not null
        check ([AllocationRatio] > 0 AND [AllocationRatio] <= 1),
    PostTradeCO     decimal(15, 2) not null
        check ([PostTradeCO] >= 0),
    AssetID         int            not null
        references STOCK,
    PID             int            not null,
    Phone           varchar(15)    not null,
    constraint UQ_StockPortfolio
        unique (AssetID, PID, Phone),
    foreign key (PID, Phone) references PORTFOLIO
)
go

create table STOCK_TRANSACTION
(
    Date date           not null,
    ID   int            not null
        references STOCK_IN_PORTFOLIO
            on delete cascade,
    Type varchar(10)    not null
        check ([Type] = 'Rebalance' OR [Type] = 'Withdrawal' OR [Type] = 'TopUp' OR [Type] = 'Sell' OR [Type] = 'Buy'),
    Fee  decimal(10, 2) not null
        check ([Fee] >= 0),
    primary key (ID, Date)
)
go

create table UNREALIZED_GAIN_LOSS
(
    PID    int            not null,
    Date   date           not null,
    Phone  varchar(15)    not null,
    Amount decimal(15, 2) not null,
    primary key (PID, Date, Phone),
    foreign key (PID, Phone) references PORTFOLIO
        on delete cascade
)
go