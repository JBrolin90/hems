CREATE TABLE [dbo].[Periodisering] (
    [Id]      INT          NOT NULL,
    [From_Id] INT          NULL,
    [Datum]   DATETIME     NULL,
    [Kto]     VARCHAR (6)  NULL,
    [Kst]     VARCHAR (6)  NULL,
    [Kb]      VARCHAR (6)  NULL,
    [Pt]      VARCHAR (16) NULL,
    [Belopp]  MONEY        NULL,
    [Text]    VARCHAR (40) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

