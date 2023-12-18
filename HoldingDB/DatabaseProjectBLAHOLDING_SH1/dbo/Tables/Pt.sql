CREATE TABLE [dbo].[Pt] (
    [Id]            VARCHAR (16)  NOT NULL,
    [Name]          VARCHAR (40)  NULL,
    [Status]        VARCHAR (4)   NULL,
    [Kategori]      VARCHAR (4)   NULL,
    [Prefix]        BIT           NULL,
    [Remarks]       VARCHAR (MAX) NULL,
    [KundId]        VARCHAR (8)   NULL,
    [Ansvarig]      VARCHAR (40)  NULL,
    [StartDatum]    DATETIME      NULL,
    [SlutDatum]     DATETIME      NULL,
    [Sparr]         BIT           NULL,
    [Kontaktperson] VARCHAR (40)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

