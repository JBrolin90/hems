CREATE TABLE [dbo].[KundRabatt] (
    [Id]     VARCHAR (18) NULL,
    [KundId] VARCHAR (8)  NULL,
    [Pris]   MONEY        NULL,
    [Rabatt] FLOAT (53)   NULL,
    [Text]   VARCHAR (40) NULL,
    [TG]     FLOAT (53)   NULL,
    [ProdGr] VARCHAR (10) NULL,
    [AutoId] INT          IDENTITY (1, 1) NOT NULL
);


GO

