CREATE TABLE [dbo].[ArsText] (
    [Id]            VARCHAR (8)   NULL,
    [Kod]           VARCHAR (20)  NULL,
    [Line]          INT           NULL,
    [MemoText]      VARCHAR (MAX) NULL,
    [Konton]        VARCHAR (120) NULL,
    [Format]        VARCHAR (8)   NULL,
    [LineId]        INT           NULL,
    [Bool1]         BIT           NULL,
    [Cur1]          MONEY         NULL,
    [Cur2]          MONEY         NULL,
    [AutoNot]       VARCHAR (120) NULL,
    [FirstKonto]    VARCHAR (6)   NULL,
    [BokslutsDatum] DATETIME      NULL,
    [AutoId]        INT           IDENTITY (1, 1) NOT NULL
);


GO

