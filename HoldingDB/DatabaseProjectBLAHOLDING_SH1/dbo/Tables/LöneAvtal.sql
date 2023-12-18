CREATE TABLE [dbo].[LöneAvtal] (
    [Id]          INT          IDENTITY (1, 1) NOT NULL,
    [LoneAvtalId] INT          NULL,
    [Name]        VARCHAR (80) NULL,
    [FormelId]    VARCHAR (2)  NULL,
    [Formel]      VARCHAR (80) NULL,
    [Värde]       MONEY        NULL,
    [Sys]         BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

