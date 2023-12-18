CREATE TABLE [dbo].[Year] (
    [Id]               VARCHAR (6) NOT NULL,
    [FromDate]         DATETIME    NULL,
    [TomDate]          DATETIME    NULL,
    [FirstOpenPeriod]  VARCHAR (6) NULL,
    [LatestDate]       DATETIME    NULL,
    [ActiveYear]       BIT         NULL,
    [IbClosed]         BIT         NULL,
    [BokslutAktivt]    BIT         NULL,
    [AutokDone]        BIT         NULL,
    [MomsofDone]       BIT         NULL,
    [ArsSaldonUpdated] BIT         NULL,
    [BlockeraUpdIB]    BIT         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

