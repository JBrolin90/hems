CREATE TABLE [dbo].[SemesterAvtalMallOptions] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Kod]  VARCHAR (4)  NULL,
    [Name] VARCHAR (80) NULL,
    [Li]   INT          NULL,
    [Sys]  BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

