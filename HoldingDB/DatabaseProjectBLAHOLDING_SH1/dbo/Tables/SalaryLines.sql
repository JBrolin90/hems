CREATE TABLE [dbo].[SalaryLines] (
    [AutoId]                INT          IDENTITY (1, 1) NOT NULL,
    [SalaryId]              INT          NULL,
    [AnstId]                VARCHAR (8)  NULL,
    [RadNr]                 SMALLINT     NULL,
    [UtbetDatum]            DATETIME     NULL,
    [LoneArtId]             VARCHAR (5)  NULL,
    [Text]                  VARCHAR (60) NULL,
    [Konto]                 VARCHAR (6)  NULL,
    [Kst]                   VARCHAR (6)  NULL,
    [Kb]                    VARCHAR (6)  NULL,
    [Pt]                    VARCHAR (16) NULL,
    [Antal]                 FLOAT (53)   NULL,
    [aPris]                 MONEY        NULL,
    [Belopp]                MONEY        NULL,
    [fromDatum]             DATETIME     NULL,
    [tomDatum]              DATETIME     NULL,
    [Anm]                   VARCHAR (60) NULL,
    [ArbGivAvg]             MONEY        NULL,
    [ArbGivAvgSemester]     MONEY        NULL,
    [SarsLoneSkatt]         MONEY        NULL,
    [Semest]                MONEY        NULL,
    [Fackavgift]            MONEY        NULL,
    [SemestOren]            MONEY        NULL,
    [Semesterfaktor]        MONEY        NULL,
    [AmfAntal]              FLOAT (53)   NULL,
    [AmfBelopp]             MONEY        NULL,
    [Formel]                VARCHAR (60) NULL,
    [SalaryCalendarLinesId] INT          NULL,
    [Enhet]                 VARCHAR (10) NULL,
    [LoneartKopplingTyp]    INT          NULL,
    [LoneartKod]            VARCHAR (3)  NULL,
    [SalaryClearingId]      INT          NULL
);


GO

