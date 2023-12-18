CREATE TABLE [dbo].[Dagskassa] (
    [AutoId]      INT          IDENTITY (1, 1) NOT NULL,
    [Typ]         INT          NULL,
    [Text]        VARCHAR (40) NULL,
    [Kto]         VARCHAR (6)  NULL,
    [Kst]         VARCHAR (6)  NULL,
    [Kb]          VARCHAR (6)  NULL,
    [Pt]          VARCHAR (16) NULL,
    [MomsProcent] FLOAT (53)   NULL,
    [MomsBelopp]  MONEY        NULL,
    [Belopp]      MONEY        NULL,
    [Datum]       DATETIME     NULL,
    [Updated]     DATETIME     NULL,
    [UpdatedBy]   VARCHAR (10) NULL
);


GO

