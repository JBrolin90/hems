CREATE TABLE [dbo].[KundKassaBet] (
    [Id]            INT          NOT NULL,
    [Typ]           INT          NULL,
    [BetalTyp]      INT          NULL,
    [KvittoNr]      INT          NULL,
    [FaktNr]        INT          NULL,
    [KortNr]        VARCHAR (30) NULL,
    [Datum]         DATETIME     NULL,
    [KundId]        VARCHAR (8)  NULL,
    [BeloppVal]     MONEY        NULL,
    [BeloppSek]     MONEY        NULL,
    [Valuta]        VARCHAR (3)  NULL,
    [Konto]         VARCHAR (6)  NULL,
    [Uppdaterad]    BIT          NULL,
    [User]          VARCHAR (10) NULL,
    [VerSerie]      VARCHAR (1)  NULL,
    [VerNo]         INT          NULL,
    [VerDatum]      DATETIME     NULL,
    [JournalNo]     INT          NULL,
    [ControlNo]     VARCHAR (20) NULL,
    [PINSign]       BIT          NULL,
    [Valid]         VARCHAR (5)  NULL,
    [CardEntered]   VARCHAR (1)  NULL,
    [CardStatus]    VARCHAR (1)  NULL,
    [CardVerMethod] VARCHAR (1)  NULL,
    [CardOptional]  VARCHAR (10) NULL,
    [Legitimation]  VARCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

