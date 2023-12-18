CREATE TABLE [dbo].[BOrdHuv] (
    [Id]        INT          NOT NULL,
    [Period]    VARCHAR (6)  NULL,
    [Eoy]       VARCHAR (1)  NULL,
    [VSerie]    VARCHAR (1)  NULL,
    [VerNo]     INT          NULL,
    [Datum]     DATETIME     NULL,
    [Text]      VARCHAR (40) NULL,
    [Ursprung]  VARCHAR (1)  NULL,
    [Upd]       BIT          NULL,
    [Utskriven] BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

