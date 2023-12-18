CREATE TABLE [dbo].[BOrdTr] (
    [Id]                     INT          NOT NULL,
    [BatchId]                INT          NULL,
    [Kto]                    VARCHAR (6)  NULL,
    [Kst]                    VARCHAR (6)  NULL,
    [Kb]                     VARCHAR (6)  NULL,
    [Pt]                     VARCHAR (16) NULL,
    [Belopp]                 MONEY        NULL,
    [Antal]                  FLOAT (53)   NULL,
    [Text]                   VARCHAR (40) NULL,
    [CheckForAnlOrKtoresk]   BIT          NULL,
    [PeriodiseringKto]       VARCHAR (6)  NULL,
    [PeriodiseringKst]       VARCHAR (6)  NULL,
    [PeriodiseringKb]        VARCHAR (6)  NULL,
    [PeriodiseringPt]        VARCHAR (6)  NULL,
    [PeriodiseringBelopp]    MONEY        NULL,
    [PeriodiseringMonths]    INT          NULL,
    [PeriodiseringStartDate] DATETIME     NULL,
    [PeriodiseringText]      VARCHAR (40) NULL,
    [UrsprungsId]            INT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

