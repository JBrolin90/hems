CREATE TABLE [dbo].[VerTrLog] (
    [Id]       INT          NULL,
    [VerSerie] VARCHAR (1)  NULL,
    [VerNo]    INT          NULL,
    [Period]   VARCHAR (6)  NULL,
    [Eoy]      VARCHAR (1)  NULL,
    [Kto]      VARCHAR (6)  NULL,
    [Kst]      VARCHAR (6)  NULL,
    [Kb]       VARCHAR (6)  NULL,
    [Pt]       VARCHAR (16) NULL,
    [Belopp]   MONEY        NULL,
    [Antal]    FLOAT (53)   NULL,
    [Text]     VARCHAR (40) NULL,
    [Datum]    DATETIME     NULL,
    [User]     VARCHAR (45) NULL,
    [AutoId]   INT          IDENTITY (1, 1) NOT NULL
);


GO

