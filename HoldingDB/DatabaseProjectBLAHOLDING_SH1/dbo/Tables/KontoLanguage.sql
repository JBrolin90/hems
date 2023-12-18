CREATE TABLE [dbo].[KontoLanguage] (
    [Id]           VARCHAR (6)  NOT NULL,
    [Name]         VARCHAR (40) NULL,
    [LongName]     VARCHAR (80) NULL,
    [LanguageCode] VARCHAR (4)  NOT NULL,
    PRIMARY KEY CLUSTERED ([LanguageCode] ASC, [Id] ASC)
);


GO

