CREATE TABLE [dbo].[KtoReskTrans] (
    [Kto]      VARCHAR (6)  NULL,
    [No1]      VARCHAR (20) NULL,
    [No2]      VARCHAR (20) NULL,
    [VerSerie] VARCHAR (1)  NULL,
    [VerNo]    INT          NULL,
    [Period]   VARCHAR (6)  NULL,
    [Eoy]      VARCHAR (1)  NULL,
    [Datum]    DATETIME     NULL,
    [Belopp]   MONEY        NULL,
    [Antal]    FLOAT (53)   NULL,
    [Text]     VARCHAR (40) NULL,
    [TransId]  INT          NULL,
    [Betald]   BIT          NULL,
    [AutoId]   INT          IDENTITY (1, 1) NOT NULL
);


GO

