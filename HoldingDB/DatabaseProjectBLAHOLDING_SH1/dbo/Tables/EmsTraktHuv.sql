CREATE TABLE [dbo].[EmsTraktHuv] (
    [Id]             INT          NOT NULL,
    [AnstId]         VARCHAR (8)  NULL,
    [Avresa]         DATETIME     NULL,
    [GränspassageUt] DATETIME     NULL,
    [GränspassageIn] DATETIME     NULL,
    [Hemkomst]       DATETIME     NULL,
    [Beskrivning]    VARCHAR (80) NULL,
    [Landkod]        VARCHAR (2)  NULL,
    [Belopp]         MONEY        NULL,
    [Uppdaterad]     BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

