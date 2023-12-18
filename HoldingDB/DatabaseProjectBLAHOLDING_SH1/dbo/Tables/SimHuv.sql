CREATE TABLE [dbo].[SimHuv] (
    [VerSerie]   VARCHAR (1)  NOT NULL,
    [VerNo]      INT          NOT NULL,
    [Period]     VARCHAR (6)  NOT NULL,
    [Eoy]        VARCHAR (1)  NOT NULL,
    [Datum]      DATETIME     NULL,
    [Text]       VARCHAR (40) NULL,
    [Ursprung]   VARCHAR (1)  NULL,
    [RegDatum]   DATETIME     NULL,
    [ActiveUser] VARCHAR (8)  NULL,
    PRIMARY KEY CLUSTERED ([Period] ASC, [Eoy] ASC, [VerSerie] ASC, [VerNo] ASC)
);


GO

