CREATE TABLE [dbo].[VerSerie] (
    [Id]       VARCHAR (1)   NOT NULL,
    [Name]     VARCHAR (40)  NULL,
    [Start]    INT           NULL,
    [ThisYear] INT           NULL,
    [LastYear] INT           NULL,
    [NextYear] INT           NULL,
    [LockVer]  BIT           NULL,
    [Remarks]  VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

