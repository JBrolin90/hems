CREATE TABLE [dbo].[KundFakt] (
    [Id]              INT          NOT NULL,
    [KundId]          VARCHAR (8)  NULL,
    [FaktDatum]       DATETIME     NULL,
    [FfDatum]         DATETIME     NULL,
    [BeloppVal]       MONEY        NULL,
    [BeloppSek]       MONEY        NULL,
    [BetaltVal]       MONEY        NULL,
    [BetaltSek]       MONEY        NULL,
    [LastBetDatum]    DATETIME     NULL,
    [Valuta]          VARCHAR (3)  NULL,
    [User]            VARCHAR (8)  NULL,
    [Uppdaterad]      BIT          NULL,
    [RteFakt]         BIT          NULL,
    [AntPam]          SMALLINT     NULL,
    [Betald]          BIT          NULL,
    [SenastPam]       BIT          NULL,
    [RtaPrint]        BIT          NULL,
    [ReskontraKonto]  VARCHAR (6)  NULL,
    [Kst]             VARCHAR (6)  NULL,
    [Kb]              VARCHAR (6)  NULL,
    [Pt]              VARCHAR (16) NULL,
    [DoRteFakt]       BIT          NULL,
    [VerSerie]        VARCHAR (1)  NULL,
    [VerNo]           INT          NULL,
    [VerDatum]        DATETIME     NULL,
    [JournalNo]       INT          NULL,
    [OrderNr]         INT          NULL,
    [Typ]             SMALLINT     NULL,
    [ExternBevakning] BIT          NULL,
    [InLastModemFile] BIT          NULL,
    [LastPamDatum]    DATETIME     NULL,
    [PamDatum1]       DATETIME     NULL,
    [PamDatum2]       DATETIME     NULL,
    [PamDatum3]       DATETIME     NULL,
    [KravDatum]       DATETIME     NULL,
    [BetalTyp]        SMALLINT     NULL,
    [VerTrId]         INT          NULL,
    [Updated]         DATETIME     NULL,
    [RotRutSumma]     MONEY        NULL,
    [ExtInvoiceId]    BIGINT       NULL,
    [AutoId]          INT          IDENTITY (1, 1) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE NONCLUSTERED INDEX [KundIdKey]
    ON [dbo].[KundFakt]([KundId] ASC);


GO

