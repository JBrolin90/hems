CREATE TABLE [dbo].[RptHuv] (
    [Id]          VARCHAR (8)   NOT NULL,
    [Name]        VARCHAR (40)  NULL,
    [SignChange]  BIT           NULL,
    [Orientation] INT           NULL,
    [Language]    VARCHAR (4)   NULL,
    [Remarks]     VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

