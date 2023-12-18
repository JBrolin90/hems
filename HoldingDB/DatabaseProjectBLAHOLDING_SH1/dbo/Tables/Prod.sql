CREATE TABLE [dbo].[Prod] (
    [ProdNr]              VARCHAR (18)  NOT NULL,
    [StrKod]              VARCHAR (18)  NULL,
    [LevProdNr]           VARCHAR (18)  NULL,
    [Beskr]               VARCHAR (60)  NULL,
    [ProdTp]              SMALLINT      NULL,
    [ProdGr]              VARCHAR (10)  NULL,
    [MomsKod]             VARCHAR (4)   NULL,
    [Kb]                  VARCHAR (6)   NULL,
    [Ks]                  VARCHAR (6)   NULL,
    [Konto]               VARCHAR (6)   NULL,
    [Lev]                 VARCHAR (8)   NULL,
    [Pt]                  VARCHAR (16)  NULL,
    [Valuta]              VARCHAR (3)   NULL,
    [InPris]              MONEY         NULL,
    [UtPris1]             MONEY         NULL,
    [PrisInklMoms]        MONEY         NULL,
    [Volym]               FLOAT (53)    NULL,
    [Vikt]                FLOAT (53)    NULL,
    [Tg]                  FLOAT (53)    NULL,
    [FysLager]            FLOAT (53)    NULL,
    [DispLager]           FLOAT (53)    NULL,
    [BestPkt]             FLOAT (53)    NULL,
    [BestKvant]           FLOAT (53)    NULL,
    [TullStatNr]          VARCHAR (12)  NULL,
    [Enhet]               VARCHAR (10)  NULL,
    [Remarks]             VARCHAR (MAX) NULL,
    [EUStatNr]            VARCHAR (12)  NULL,
    [UtPris2]             MONEY         NULL,
    [UtPris3]             MONEY         NULL,
    [UtPris4]             MONEY         NULL,
    [UtPris5]             MONEY         NULL,
    [TidGrp]              VARCHAR (10)  NULL,
    [LoneArtId]           VARCHAR (3)   NULL,
    [MomsKonto]           VARCHAR (6)   NULL,
    [Enhet_Inpris]        VARCHAR (5)   NULL,
    [Enhet_Utpris2]       VARCHAR (5)   NULL,
    [Enhet_Utpris3]       VARCHAR (5)   NULL,
    [Enhet_Utpris4]       VARCHAR (5)   NULL,
    [Enhet_Utpris5]       VARCHAR (5)   NULL,
    [FrystFysLager]       FLOAT (53)    NULL,
    [FrystDispLager]      FLOAT (53)    NULL,
    [InventeratLager]     FLOAT (53)    NULL,
    [InventeringsDiff]    FLOAT (53)    NULL,
    [Inventerad]          BIT           NULL,
    [Fryst]               BIT           NULL,
    [Beskr_UK]            VARCHAR (60)  NULL,
    [Beskr_FR]            VARCHAR (60)  NULL,
    [Beskr_ESP]           VARCHAR (60)  NULL,
    [Beskr_IT]            VARCHAR (60)  NULL,
    [Beskr_D]             VARCHAR (60)  NULL,
    [LagerTaljare]        FLOAT (53)    NULL,
    [LagerNamnare]        FLOAT (53)    NULL,
    [Lagerplats]          VARCHAR (10)  NULL,
    [Konto_Tid]           VARCHAR (6)   NULL,
    [Node]                SMALLINT      NULL,
    [UpdImg]              BIT           NULL,
    [VariantOf]           VARCHAR (18)  NULL,
    [Datum]               DATETIME      NULL,
    [Vagt_inpris]         MONEY         NULL,
    [Kalkyl_pris]         MONEY         NULL,
    [KostnadsKonto]       VARCHAR (6)   NULL,
    [LeveransDatum]       VARCHAR (20)  NULL,
    [Levtyp]              SMALLINT      NULL,
    [Status]              SMALLINT      NULL,
    [Inaktiv]             BIT           NULL,
    [Webtid]              BIT           NULL,
    [Snabbkassa]          BIT           NULL,
    [PeriodiseringsKonto] VARCHAR (6)   NULL,
    [SkuldKonto]          VARCHAR (6)   NULL,
    [ReCounter]           FLOAT (53)    NULL,
    [Skattereduktion]     BIT           NULL,
    [DeliveryDate]        DATETIME      NULL,
    [RotRutSpec]          SMALLINT      NULL,
    [ProdGr2]             VARCHAR (10)  NULL,
    PRIMARY KEY CLUSTERED ([ProdNr] ASC)
);


GO

CREATE NONCLUSTERED INDEX [Barcode]
    ON [dbo].[Prod]([StrKod] ASC);


GO

CREATE NONCLUSTERED INDEX [LevProdNummer]
    ON [dbo].[Prod]([LevProdNr] ASC);


GO

