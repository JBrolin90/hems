CREATE TABLE [dbo].[Epostadress] (
    [AutoId] INT           IDENTITY (1, 1) NOT NULL,
    [Typ]    VARCHAR (8)   NULL,
    [Id]     VARCHAR (24)  NULL,
    [Epost]  VARCHAR (255) NULL,
    [Line]   INT           NULL
);


GO

