CREATE TABLE [dbo].[TidTr] (
    [Id]              INT           NULL,
    [AnstId]          VARCHAR (8)   NULL,
    [Datum]           DATETIME      NULL,
    [ProdId]          VARCHAR (18)  NULL,
    [Beskr]           VARCHAR (80)  NULL,
    [KundId]          VARCHAR (8)   NULL,
    [Konto]           VARCHAR (6)   NULL,
    [Kst]             VARCHAR (6)   NULL,
    [Kb]              VARCHAR (6)   NULL,
    [Pt]              VARCHAR (16)  NULL,
    [Tid]             FLOAT (53)    NULL,
    [Rabatt]          FLOAT (53)    NULL,
    [Pris]            MONEY         NULL,
    [RadTotal]        MONEY         NULL,
    [UPD_Order]       BIT           NULL,
    [ProdTp]          SMALLINT      NULL,
    [OrderNr]         INT           NULL,
    [Fakturerat]      MONEY         NULL,
    [LoneartId]       VARCHAR (3)   NULL,
    [UPD_Lon]         BIT           NULL,
    [UPD_Bok]         BIT           NULL,
    [Konto_Tid]       VARCHAR (6)   NULL,
    [DebiteratAntal]  MONEY         NULL,
    [DebiteratPris]   MONEY         NULL,
    [DebiteratRabatt] MONEY         NULL,
    [Remarks]         VARCHAR (MAX) NULL,
    [AutoId]          INT           IDENTITY (1, 1) NOT NULL,
    [Enhet]           VARCHAR (10)  NULL,
    [UserIdDeb]       VARCHAR (10)  NULL
);


GO

