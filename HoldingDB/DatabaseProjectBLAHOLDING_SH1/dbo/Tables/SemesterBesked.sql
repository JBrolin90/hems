CREATE TABLE [dbo].[SemesterBesked] (
    [AutoId]    INT           IDENTITY (1, 1) NOT NULL,
    [Typ]       INT           NULL,
    [AnstId]    VARCHAR (8)   NULL,
    [SemÅrFrom] DATETIME      NULL,
    [SemÅrTom]  DATETIME      NULL,
    [Row]       INT           NULL,
    [Col]       INT           NULL,
    [Text]      VARCHAR (255) NULL,
    [Options]   VARCHAR (255) NULL,
    [Linefeed]  BIT           NULL,
    [Locked]    BIT           NULL
);


GO

