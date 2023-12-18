CREATE TABLE [dbo].[SalaryCalendarLines] (
    [Id]                             INT          NULL,
    [AutoId]                         INT          IDENTITY (1, 1) NOT NULL,
    [Beskr]                          VARCHAR (40) NULL,
    [SalaryId]                       INT          NULL,
    [DatumFrom]                      DATETIME     NULL,
    [DatumTom]                       DATETIME     NULL,
    [AnstId]                         VARCHAR (8)  NULL,
    [SemesteravtalId]                INT          NULL,
    [AktivitetId]                    INT          NULL,
    [LoneArtId]                      VARCHAR (4)  NULL,
    [LoneperiodId]                   INT          NULL,
    [Antal]                          MONEY        NULL,
    [Enhet]                          VARCHAR (10) NULL,
    [aPris]                          MONEY        NULL,
    [Belopp]                         MONEY        NULL,
    [TidFrom]                        VARCHAR (5)  NULL,
    [TidTom]                         VARCHAR (5)  NULL,
    [Konto]                          VARCHAR (6)  NULL,
    [Kst]                            VARCHAR (6)  NULL,
    [Kb]                             VARCHAR (6)  NULL,
    [Pt]                             VARCHAR (16) NULL,
    [Sjuk_Kalenderdgr]               INT          NULL,
    [Uppdaterad]                     BIT          NULL,
    [Arbetsdag]                      BIT          NULL,
    [Heldag]                         BIT          NULL,
    [Karensdag_Handle]               BIT          NULL,
    [Endast_Sjukavdrag]              BIT          NULL,
    [Timmar]                         MONEY        NULL,
    [Procent]                        MONEY        NULL,
    [LoneartKod]                     VARCHAR (3)  NULL,
    [SemesterLoneGrundande]          BIT          NULL,
    [IB]                             BIT          NULL,
    [Korrigerad]                     BIT          NULL,
    [SalaryId_Korrigerad]            INT          NULL,
    [MilersTyp]                      INT          NULL,
    [RestidTyp]                      INT          NULL,
    [TraktamenteTyp]                 INT          NULL,
    [KostTyp]                        INT          NULL,
    [TraktamenteLandskod]            VARCHAR (3)  NULL,
    [SemesterersättningRörligaDelar] BIT          NULL,
    [Semesterersättning]             BIT          NULL,
    [SemesterersättningSparadeDgr]   MONEY        NULL,
    [SemesterersättningBetaldaDgr]   MONEY        NULL,
    [SemesterdagTyp]                 INT          NULL,
    [SemGrTypeOfHandle]              INT          NULL,
    [SemesterDgr]                    MONEY        NULL,
    [Semestertillägg]                MONEY        NULL,
    [SemesterRörligtTillägg]         MONEY        NULL,
    [IntjÅrStartDatum]               DATETIME     NULL,
    [SemErsSparTilläggIntjÅrStart]   DATETIME     NULL,
    [SemErsSparRörligtIntjÅrStart]   DATETIME     NULL,
    [SemErsSparadeTillägg]           MONEY        NULL,
    [SemErsSparadeRörligtTillägg]    MONEY        NULL
);


GO

