CREATE TABLE [dbo].[KundFaktRta] (
    [Id]         INT         NOT NULL,
    [KundId]     VARCHAR (8) NULL,
    [FaktDatum]  DATETIME    NULL,
    [FfDatum]    DATETIME    NULL,
    [BeloppVal]  MONEY       NULL,
    [BeloppSek]  MONEY       NULL,
    [BetaltVal]  MONEY       NULL,
    [BetaltSek]  MONEY       NULL,
    [Valuta]     VARCHAR (3) NULL,
    [User]       VARCHAR (8) NULL,
    [Uppdaterad] BIT         NULL,
    [RteFakt]    BIT         NULL,
    [AntPam]     SMALLINT    NULL,
    [Betald]     BIT         NULL,
    [SenastPam]  BIT         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

