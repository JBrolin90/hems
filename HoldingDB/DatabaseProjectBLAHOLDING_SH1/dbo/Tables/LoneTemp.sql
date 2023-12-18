CREATE TABLE [dbo].[LoneTemp] (
    [PeriodText]   VARCHAR (40) NULL,
    [SemDgr]       FLOAT (53)   NULL,
    [SemDgrKvar]   FLOAT (53)   NULL,
    [SemDgrBet]    FLOAT (53)   NULL,
    [SemDgrObet]   FLOAT (53)   NULL,
    [SemDgrSpar]   FLOAT (53)   NULL,
    [SemDgrForsk]  FLOAT (53)   NULL,
    [SemDgrUttag]  FLOAT (53)   NULL,
    [AckLon]       MONEY        NULL,
    [AckSkatt]     MONEY        NULL,
    [Brutto]       MONEY        NULL,
    [Skatt]        MONEY        NULL,
    [FackAvg]      MONEY        NULL,
    [UtlAvd]       MONEY        NULL,
    [Netto]        MONEY        NULL,
    [Forman]       MONEY        NULL,
    [AckForman]    MONEY        NULL,
    [Soc]          MONEY        NULL,
    [UtbetInt]     VARCHAR (15) NULL,
    [JamknText]    VARCHAR (15) NULL,
    [Jamkn]        FLOAT (53)   NULL,
    [TotalKostnad] MONEY        NULL,
    [Ack1]         VARCHAR (3)  NULL,
    [Ack1_Text]    VARCHAR (30) NULL,
    [Ack1_Antal]   FLOAT (53)   NULL,
    [Ack1_Belopp]  MONEY        NULL,
    [Ack2]         VARCHAR (3)  NULL,
    [Ack2_Text]    VARCHAR (30) NULL,
    [Ack2_Antal]   FLOAT (53)   NULL,
    [Ack2_Belopp]  MONEY        NULL,
    [Ack3]         VARCHAR (3)  NULL,
    [Ack3_Text]    VARCHAR (30) NULL,
    [Ack3_Antal]   FLOAT (53)   NULL,
    [Ack3_Belopp]  MONEY        NULL,
    [Ack4]         VARCHAR (3)  NULL,
    [Ack4_Text]    VARCHAR (30) NULL,
    [Ack4_Antal]   FLOAT (53)   NULL,
    [Ack4_Belopp]  MONEY        NULL,
    [Ack5]         VARCHAR (3)  NULL,
    [Ack5_Text]    VARCHAR (30) NULL,
    [Ack5_Antal]   FLOAT (53)   NULL,
    [Ack5_Belopp]  MONEY        NULL,
    [AutoId]       INT          IDENTITY (1, 1) NOT NULL
);


GO

