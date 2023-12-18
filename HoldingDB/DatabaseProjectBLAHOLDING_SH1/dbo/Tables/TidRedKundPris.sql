CREATE TABLE [dbo].[TidRedKundPris] (
    [KundId] VARCHAR (8)  NULL,
    [KundGr] VARCHAR (2)  NULL,
    [AnstId] VARCHAR (8)  NULL,
    [ProdId] VARCHAR (18) NULL,
    [ProdGr] VARCHAR (10) NULL,
    [Pris]   MONEY        NULL,
    [AutoId] INT          IDENTITY (1, 1) NOT NULL
);


GO

