CREATE TABLE [dbo].[Bildfiler] (
    [Typ]         VARCHAR (4)     NULL,
    [Tabell]      VARCHAR (20)    NULL,
    [StringId]    VARCHAR (16)    NULL,
    [IntId]       INT             NULL,
    [Filnamn]     VARCHAR (40)    NULL,
    [BlobData]    VARBINARY (MAX) NULL,
    [Datum]       DATETIME        NULL,
    [AutoId]      INT             IDENTITY (1, 1) NOT NULL,
    [Referens]    VARCHAR (255)   NULL,
    [Kommentar]   VARCHAR (255)   NULL,
    [BetaltypId]  INT             NULL,
    [AvCloudUser] INT             NULL,
    PRIMARY KEY CLUSTERED ([AutoId] ASC)
);


GO

