CREATE TABLE [dbo].[SubTr] (
    [Id]                     INT          NULL,
    [BatchId]                INT          NULL,
    [Kto]                    VARCHAR (6)  NULL,
    [Kst]                    VARCHAR (6)  NULL,
    [Kb]                     VARCHAR (6)  NULL,
    [Pt]                     VARCHAR (16) NULL,
    [Belopp]                 MONEY        NULL,
    [Antal]                  FLOAT (53)   NULL,
    [Text]                   VARCHAR (40) NULL,
    [Upd]                    BIT          NULL,
    [Ursprung]               VARCHAR (1)  NULL,
    [Lock]                   BIT          NULL,
    [SortId]                 VARCHAR (17) NULL,
    [BokOrderId]             INT          NULL,
    [KeepTrans]              BIT          NULL,
    [Line]                   INT          NULL,
    [Extra]                  VARCHAR (8)  NULL,
    [PeriodiseringKto]       VARCHAR (6)  NULL,
    [PeriodiseringKst]       VARCHAR (6)  NULL,
    [PeriodiseringKb]        VARCHAR (6)  NULL,
    [PeriodiseringPt]        VARCHAR (6)  NULL,
    [PeriodiseringBelopp]    MONEY        NULL,
    [PeriodiseringMonths]    INT          NULL,
    [PeriodiseringStartDate] DATETIME     NULL,
    [PeriodiseringText]      VARCHAR (40) NULL,
    [UrsprungsId]            INT          NULL,
    [AutoId]                 INT          IDENTITY (1, 1) NOT NULL
);


GO

CREATE NONCLUSTERED INDEX [BatchIdUrsprungIndex]
    ON [dbo].[SubTr]([BatchId] ASC, [Ursprung] ASC);


GO

CREATE NONCLUSTERED INDEX [BatchIdIndex]
    ON [dbo].[SubTr]([BatchId] ASC);


GO

