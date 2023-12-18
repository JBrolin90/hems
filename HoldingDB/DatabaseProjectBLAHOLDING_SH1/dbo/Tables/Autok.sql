CREATE TABLE [dbo].[Autok] (
    [Id]             VARCHAR (8)  NOT NULL,
    [Name]           VARCHAR (24) NULL,
    [Kategori]       INT          NULL,
    [Typ]            INT          NULL,
    [BerKto1]        VARCHAR (6)  NULL,
    [BerKto2]        VARCHAR (6)  NULL,
    [BerKst]         VARCHAR (6)  NULL,
    [BerKb]          VARCHAR (6)  NULL,
    [BerPt]          VARCHAR (6)  NULL,
    [Proc]           FLOAT (53)   NULL,
    [FKto1]          VARCHAR (6)  NULL,
    [FKst1]          VARCHAR (6)  NULL,
    [FKb1]           VARCHAR (6)  NULL,
    [FPt1]           VARCHAR (6)  NULL,
    [FKto2]          VARCHAR (6)  NULL,
    [FKst2]          VARCHAR (6)  NULL,
    [FKb2]           VARCHAR (6)  NULL,
    [FPt2]           VARCHAR (6)  NULL,
    [RoundOff]       BIT          NULL,
    [TransAuto]      BIT          NULL,
    [MakroBelopp]    BIT          NULL,
    [MakroBatchId]   INT          NULL,
    [Question]       BIT          NULL,
    [IsActive]       BIT          NULL,
    [ImportKategori] VARCHAR (4)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

