CREATE TABLE [dbo].[SemesterAvtal] (
    [Id]                INT          NOT NULL,
    [Name]              VARCHAR (80) NULL,
    [SemesterAvtalMall] INT          NULL,
    [SystemId]          INT          NULL,
    [Sys]               BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

