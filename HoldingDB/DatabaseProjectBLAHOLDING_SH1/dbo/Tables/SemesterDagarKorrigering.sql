CREATE TABLE [dbo].[SemesterDagarKorrigering] (
    [AutoId]                 INT         IDENTITY (1, 1) NOT NULL,
    [AnstId]                 VARCHAR (8) NULL,
    [Typ]                    INT         NULL,
    [SalaryId1]              INT         NULL,
    [SalaryId2]              INT         NULL,
    [SalaryId3]              INT         NULL,
    [UtbetDatum1]            DATETIME    NULL,
    [UtbetDatum2]            DATETIME    NULL,
    [UtbetDatum3]            DATETIME    NULL,
    [IntjPeriodFrom]         DATETIME    NULL,
    [IntjPeriodTom]          DATETIME    NULL,
    [SSG]                    MONEY       NULL,
    [Uttagen]                BIT         NULL,
    [TillaggUtbetalt]        BIT         NULL,
    [RorligtTillaggUtbetalt] BIT         NULL,
    [Remain]                 MONEY       NULL,
    [RemainTillagg]          MONEY       NULL,
    [RemainRorligtTillagg]   MONEY       NULL
);


GO

