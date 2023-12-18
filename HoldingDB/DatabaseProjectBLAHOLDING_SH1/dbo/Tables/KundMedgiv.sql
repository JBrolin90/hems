CREATE TABLE [dbo].[KundMedgiv] (
    [KundId]       VARCHAR (8)  NOT NULL,
    [Sent]         BIT          NULL,
    [Kod]          VARCHAR (1)  NULL,
    [Clearing]     VARCHAR (4)  NULL,
    [Bankkonto]    VARCHAR (12) NULL,
    [BetalarNr]    VARCHAR (16) NULL,
    [OrgNr]        VARCHAR (16) NULL,
    [Bg]           VARCHAR (20) NULL,
    [BetalarNrOld] VARCHAR (16) NULL,
    PRIMARY KEY CLUSTERED ([KundId] ASC)
);


GO

