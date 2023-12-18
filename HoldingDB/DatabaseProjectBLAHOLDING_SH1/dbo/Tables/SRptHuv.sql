CREATE TABLE [dbo].[SRptHuv] (
    [Id]          VARCHAR (8)   NOT NULL,
    [Name]        VARCHAR (40)  NULL,
    [Width]       INT           NULL,
    [RoundOff]    INT           NULL,
    [SignChange]  BIT           NULL,
    [Orientation] INT           NULL,
    [Remarks]     VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

