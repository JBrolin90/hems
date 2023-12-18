CREATE TABLE [dbo].[LönIndividuell] (
    [Id]               VARCHAR (8)  NULL,
    [Loneart]          VARCHAR (3)  NULL,
    [Text]             VARCHAR (60) NULL,
    [Konto]            VARCHAR (6)  NULL,
    [Kst]              VARCHAR (6)  NULL,
    [Kb]               VARCHAR (6)  NULL,
    [Pt]               VARCHAR (16) NULL,
    [Belopp]           MONEY        NULL,
    [Antal]            MONEY        NULL,
    [FixedSalaryRow]   BIT          NULL,
    [UseWorkingSchema] BIT          NULL,
    [AutoId]           INT          IDENTITY (1, 1) NOT NULL
);


GO

