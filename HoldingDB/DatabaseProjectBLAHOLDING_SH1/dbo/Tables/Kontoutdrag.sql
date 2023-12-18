CREATE TABLE [dbo].[Kontoutdrag] (
    [Id]        INT          NOT NULL,
    [AvstId]    INT          NULL,
    [Konto]     VARCHAR (6)  NULL,
    [Datum1]    DATETIME     NULL,
    [Datum2]    DATETIME     NULL,
    [Belopp]    MONEY        NULL,
    [Text]      VARCHAR (80) NULL,
    [ExtraText] VARCHAR (40) NULL,
    [Prickkod2] VARCHAR (1)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

