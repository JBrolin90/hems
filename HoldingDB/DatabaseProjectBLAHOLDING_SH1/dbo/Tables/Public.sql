CREATE TABLE [dbo].[Public] (
    [Typ]    VARCHAR (4)  NULL,
    [Text1]  VARCHAR (40) NULL,
    [Text2]  VARCHAR (20) NULL,
    [Cur1]   MONEY        NULL,
    [Cur2]   MONEY        NULL,
    [Long1]  INT          NULL,
    [Long2]  INT          NULL,
    [Id]     VARCHAR (8)  NULL,
    [Date1]  DATETIME     NULL,
    [Date2]  DATETIME     NULL,
    [AutoId] INT          IDENTITY (1, 1) NOT NULL
);


GO

