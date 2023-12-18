CREATE TABLE [dbo].[LonLn] (
    [Id]                     INT          NULL,
    [AnstId]                 VARCHAR (8)  NULL,
    [RadNr]                  SMALLINT     NULL,
    [UtbetDatum]             DATETIME     NULL,
    [LoneArtId]              VARCHAR (3)  NULL,
    [Text]                   VARCHAR (40) NULL,
    [Konto]                  VARCHAR (6)  NULL,
    [Kst]                    VARCHAR (6)  NULL,
    [Kb]                     VARCHAR (6)  NULL,
    [Pt]                     VARCHAR (16) NULL,
    [Antal]                  FLOAT (53)   NULL,
    [aPris]                  MONEY        NULL,
    [Belopp]                 MONEY        NULL,
    [fromDatum]              DATETIME     NULL,
    [tomDatum]               DATETIME     NULL,
    [Anm]                    VARCHAR (60) NULL,
    [ArbGivAvg]              MONEY        NULL,
    [ArbGivAvgNedsReg]       MONEY        NULL,
    [ArbGivAvgNedsAnst]      MONEY        NULL,
    [SarsLoneSkatt]          MONEY        NULL,
    [Semest]                 MONEY        NULL,
    [Fackavgift]             MONEY        NULL,
    [SemestOren]             MONEY        NULL,
    [AmfAntal]               FLOAT (53)   NULL,
    [AmfBelopp]              MONEY        NULL,
    [TjansteSektor_Andel]    FLOAT (53)   NULL,
    [TjansteSektor_Procent]  FLOAT (53)   NULL,
    [TjansteSektor_Underlag] MONEY        NULL,
    [TjansteSektor_Belopp]   MONEY        NULL,
    [AutoId]                 INT          IDENTITY (1, 1) NOT NULL
);


GO

