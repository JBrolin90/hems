CREATE TABLE [dbo].[TidFastpris] (
    [Id]        SMALLINT     NOT NULL,
    [KundId]    VARCHAR (8)  NULL,
    [Period]    VARCHAR (6)  NULL,
    [Intervall] SMALLINT     NULL,
    [ProdId]    VARCHAR (18) NULL,
    [Beskr]     VARCHAR (80) NULL,
    [Momskod]   SMALLINT     NULL,
    [Konto]     VARCHAR (6)  NULL,
    [Kst]       VARCHAR (6)  NULL,
    [Kb]        VARCHAR (6)  NULL,
    [Pt]        VARCHAR (16) NULL,
    [Antal]     FLOAT (53)   NULL,
    [Pris]      MONEY        NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

