CREATE TABLE [dbo].[KundLog] (
    [KundId]  VARCHAR (8)   NULL,
    [Rubrik]  VARCHAR (255) NULL,
    [Remarks] VARCHAR (MAX) NULL,
    [Datum]   DATETIME      NULL,
    [AutoId]  INT           IDENTITY (1, 1) NOT NULL,
    [UserId]  VARCHAR (10)  NULL
);


GO

