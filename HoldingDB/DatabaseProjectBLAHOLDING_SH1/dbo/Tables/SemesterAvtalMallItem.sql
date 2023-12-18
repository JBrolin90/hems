CREATE TABLE [dbo].[SemesterAvtalMallItem] (
    [Id]       INT          IDENTITY (1, 1) NOT NULL,
    [Mall]     INT          NULL,
    [Kod]      VARCHAR (4)  NULL,
    [Name]     VARCHAR (80) NULL,
    [IsNum]    BIT          NULL,
    [NumValue] FLOAT (53)   NULL,
    [StrValue] VARCHAR (80) NULL,
    [Sys]      BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

