CREATE TABLE [dbo].[BokBilText] (
    [Id]          VARCHAR (8)   NULL,
    [ControlType] VARCHAR (8)   NULL,
    [Line]        INT           NULL,
    [Line2]       INT           NULL,
    [MemoText]    VARCHAR (MAX) NULL,
    [AutoId]      INT           IDENTITY (1, 1) NOT NULL
);


GO

