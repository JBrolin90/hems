CREATE TABLE [dbo].[Semester] (
    [AutoId]                     INT         IDENTITY (1, 1) NOT NULL,
    [AnstId]                     VARCHAR (8) NULL,
    [IntjPeriodFrom]             DATETIME    NULL,
    [IntjPeriodTom]              DATETIME    NULL,
    [SemPeriodFrom]              DATETIME    NULL,
    [SemPeriodTom]               DATETIME    NULL,
    [BetaldaDgr]                 MONEY       NULL,
    [ObetaldaDgr]                MONEY       NULL,
    [SparadeDgr]                 MONEY       NULL,
    [ForskottDgr]                MONEY       NULL,
    [SSG]                        MONEY       NULL,
    [Locked]                     BIT         NULL,
    [IB_SemGrTim_Frånvaro]       INT         NULL,
    [IB_SemGrDgr_Frånvaro]       INT         NULL,
    [IB_EjSemGrTim_Frånvaro]     INT         NULL,
    [IB_EjSemGrDgr_Frånvaro]     INT         NULL,
    [RörligSemLön]               MONEY       NULL,
    [IB_RörligSemLön]            MONEY       NULL,
    [SemesterLönegrundandeLön]   MONEY       NULL,
    [Semesterdaglön]             MONEY       NULL,
    [SemestergrundandeArbetstid] MONEY       NULL,
    [Semesterförskottsskuld]     MONEY       NULL,
    [TillaggDgr]                 MONEY       NULL,
    [TillaggRorligDgr]           MONEY       NULL,
    [TillaggSparadeDgr]          MONEY       NULL,
    [TillaggSparadeRorligDgr]    MONEY       NULL,
    [IB]                         BIT         NULL
);


GO

