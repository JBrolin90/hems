CREATE TABLE [dbo].[LonStandard] (
    [AnstId]    VARCHAR (8)  NULL,
    [RadNr]     SMALLINT     NULL,
    [LoneArtId] VARCHAR (3)  NULL,
    [Text]      VARCHAR (60) NULL,
    [Konto]     VARCHAR (6)  NULL,
    [Kst]       VARCHAR (6)  NULL,
    [Kb]        VARCHAR (6)  NULL,
    [Pt]        VARCHAR (16) NULL,
    [Antal]     FLOAT (53)   NULL,
    [Apris]     MONEY        NULL,
    [Belopp]    MONEY        NULL,
    [AutoId]    INT          IDENTITY (1, 1) NOT NULL
);


GO

