CREATE TABLE [dbo].[KlientLog] (
    [Id]        INT           NOT NULL,
    [Datum]     DATETIME      NULL,
    [KundId]    VARCHAR (8)   NULL,
    [Headline]  VARCHAR (40)  NULL,
    [Ready]     BIT           NULL,
    [Signatur]  VARCHAR (10)  NULL,
    [Remarks]   VARCHAR (MAX) NULL,
    [DateReady] DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

