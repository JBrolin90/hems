CREATE TABLE [dbo].[TidFaktTr] (
    [KundId]    VARCHAR (8)  NULL,
    [ProdId]    VARCHAR (18) NULL,
    [Beskr]     VARCHAR (60) NULL,
    [Konto]     VARCHAR (6)  NULL,
    [Kst]       VARCHAR (6)  NULL,
    [Kb]        VARCHAR (6)  NULL,
    [Pt]        VARCHAR (16) NULL,
    [Antal]     FLOAT (53)   NULL,
    [Pris]      MONEY        NULL,
    [Rabatt]    FLOAT (53)   NULL,
    [UPD_Order] BIT          NULL,
    [Show]      BIT          NULL,
    [OrderNr]   INT          NULL,
    [Aconto]    BIT          NULL,
    [Extern]    INT          NULL,
    [Datum]     DATETIME     NULL,
    [AutoId]    INT          IDENTITY (1, 1) NOT NULL
);


GO

