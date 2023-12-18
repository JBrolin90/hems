CREATE TABLE [dbo].[VerHuv] (
    [AutoId]        INT          IDENTITY (1, 1) NOT NULL,
    [VerSerie]      VARCHAR (1)  NOT NULL,
    [VerNo]         INT          NOT NULL,
    [Period]        VARCHAR (6)  NOT NULL,
    [Eoy]           VARCHAR (1)  NOT NULL,
    [Datum]         DATETIME     NULL,
    [Text]          VARCHAR (40) NULL,
    [Ursprung]      VARCHAR (1)  NULL,
    [RegDatum]      DATETIME     NULL,
    [ActiveUser]    VARCHAR (8)  NULL,
    [CreatedByUser] VARCHAR (45) NULL,
    [IsCorrection]  BIT          NULL,
    [IsCorrected]   BIT          NULL,
    [CorrectionId]  INT          NULL,
    [IsPreliminary] BIT          NULL,
    [LasningsDatum] DATETIME     NULL,
    [RapportDatum]  DATETIME     NULL,
    [AutoReg]       BIT          NULL,
    PRIMARY KEY CLUSTERED ([Period] ASC, [Eoy] ASC, [VerSerie] ASC, [VerNo] ASC)
);


GO

