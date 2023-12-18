CREATE TABLE [dbo].[ProdPris] (
    [ProdNr] VARCHAR (18) NULL,
    [Valuta] VARCHAR (3)  NULL,
    [Pris1]  MONEY        NULL,
    [Pris2]  MONEY        NULL,
    [Pris3]  MONEY        NULL,
    [Pris4]  MONEY        NULL,
    [Pris5]  MONEY        NULL,
    [AutoId] INT          IDENTITY (1, 1) NOT NULL
);


GO

