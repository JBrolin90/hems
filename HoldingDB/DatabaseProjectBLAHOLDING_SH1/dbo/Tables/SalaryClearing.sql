CREATE TABLE [dbo].[SalaryClearing] (
    [AutoId]         INT          IDENTITY (1, 1) NOT NULL,
    [SalaryId]       INT          NULL,
    [AnstId]         VARCHAR (8)  NULL,
    [LoneArtId]      VARCHAR (5)  NULL,
    [Text]           VARCHAR (60) NULL,
    [Antal]          FLOAT (53)   NULL,
    [aPris]          MONEY        NULL,
    [Belopp]         MONEY        NULL,
    [IntjPeriodFrom] DATETIME     NULL,
    [Enhet]          VARCHAR (10) NULL,
    [Konto]          VARCHAR (6)  NULL,
    [Kst]            VARCHAR (6)  NULL,
    [Kb]             VARCHAR (6)  NULL,
    [Pt]             VARCHAR (16) NULL,
    [Uppdaterad]     BIT          NULL
);


GO

