CREATE TABLE [dbo].[Ini] (
    [AutoId]   INT           IDENTITY (1, 1) NOT NULL,
    [Filename] VARCHAR (20)  NULL,
    [Group]    VARCHAR (120) NULL,
    [Item]     VARCHAR (120) NULL,
    [Value]    VARCHAR (MAX) NULL
);


GO

