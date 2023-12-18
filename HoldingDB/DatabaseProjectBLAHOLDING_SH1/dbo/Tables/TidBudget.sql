CREATE TABLE [dbo].[TidBudget] (
    [KundId] VARCHAR (8)  NOT NULL,
    [Pt]     VARCHAR (16) NOT NULL,
    [ArbKod] VARCHAR (18) NOT NULL,
    [Beskr]  VARCHAR (60) NULL,
    [Antal]  FLOAT (53)   NULL,
    [Belopp] MONEY        NULL,
    PRIMARY KEY CLUSTERED ([KundId] ASC, [Pt] ASC, [ArbKod] ASC)
);


GO

