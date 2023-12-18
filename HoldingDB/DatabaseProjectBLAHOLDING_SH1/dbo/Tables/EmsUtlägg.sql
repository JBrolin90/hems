CREATE TABLE [dbo].[EmsUtlägg] (
    [Id]              INT          NOT NULL,
    [AnstId]          VARCHAR (8)  NULL,
    [Datum]           DATETIME     NULL,
    [Beskrivning]     VARCHAR (80) NULL,
    [Ändamål]         VARCHAR (80) NULL,
    [BeloppVal]       MONEY        NULL,
    [BeloppSek]       MONEY        NULL,
    [Valuta]          VARCHAR (3)  NULL,
    [Betalkonto]      VARCHAR (6)  NULL,
    [Uppdateringskod] VARCHAR (1)  NULL,
    [LevfaktId]       INT          NULL,
    [Uppdaterad]      BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

