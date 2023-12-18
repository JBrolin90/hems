CREATE TABLE [dbo].[ArbetsSchema] (
    [AutoId]                INT          IDENTITY (1, 1) NOT NULL,
    [AnstId]                VARCHAR (8)  NULL,
    [Datum]                 DATETIME     NULL,
    [År]                    INT          NULL,
    [Månad]                 INT          NULL,
    [Vecka]                 INT          NULL,
    [Veckodag]              VARCHAR (7)  NULL,
    [HolidayKod]            VARCHAR (10) NULL,
    [Arbetsdag]             BIT          NULL,
    [Heldag]                BIT          NULL,
    [Specialdag]            BIT          NULL,
    [Intermittent]          BIT          NULL,
    [Timmar]                MONEY        NULL,
    [ArbetsTidPerVecka]     MONEY        NULL,
    [TakeCareOfSpecialDays] BIT          NULL,
    [Sysselsättningsgrad]   MONEY        NULL,
    [SemesterFaktor]        MONEY        NULL,
    [Anmärkning]            VARCHAR (20) NULL,
    [AktivLonePeriod]       BIT          NULL
);


GO

