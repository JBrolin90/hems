CREATE TABLE [dbo].[KundBet] (
    [Id]            INT          NOT NULL,
    [KundId]        VARCHAR (8)  NULL,
    [FaktNr]        INT          NULL,
    [Datum]         DATETIME     NULL,
    [BeloppVal]     MONEY        NULL,
    [BeloppSek]     MONEY        NULL,
    [Valuta]        VARCHAR (3)  NULL,
    [Konto]         VARCHAR (6)  NULL,
    [BortKontering] BIT          NULL,
    [Uppdaterad]    BIT          NULL,
    [User]          VARCHAR (10) NULL,
    [BuntId]        INT          NULL,
    [VerSerie]      VARCHAR (1)  NULL,
    [VerNo]         INT          NULL,
    [VerDatum]      DATETIME     NULL,
    [JournalNo]     INT          NULL,
    [Kassa]         BIT          NULL,
    [BetalTyp]      SMALLINT     NULL,
    [VerTrId]       INT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

