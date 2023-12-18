CREATE TABLE [dbo].[ProdStaffling] (
    [ProdNr]    VARCHAR (18) NULL,
    [Grp]       VARCHAR (2)  NULL,
    [AntalTom]  FLOAT (53)   NULL,
    [DatumFrom] DATETIME     NULL,
    [DatumTom]  DATETIME     NULL,
    [Pris]      MONEY        NULL,
    [Kampanj]   VARCHAR (1)  NULL,
    [AutoId]    INT          IDENTITY (1, 1) NOT NULL
);


GO

