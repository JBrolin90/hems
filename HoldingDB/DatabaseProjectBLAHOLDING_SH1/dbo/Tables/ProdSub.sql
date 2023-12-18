CREATE TABLE [dbo].[ProdSub] (
    [ProdNr]           VARCHAR (18) NULL,
    [ProdNrSub]        VARCHAR (18) NULL,
    [Antal]            FLOAT (53)   NULL,
    [PriceHandle]      VARCHAR (1)  NULL,
    [Procent]          FLOAT (53)   NULL,
    [SupressOnInvoice] BIT          NULL,
    [AutoId]           INT          IDENTITY (1, 1) NOT NULL
);


GO

