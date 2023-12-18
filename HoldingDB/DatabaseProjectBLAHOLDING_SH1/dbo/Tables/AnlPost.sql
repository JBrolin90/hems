CREATE TABLE [dbo].[AnlPost] (
    [Id]                 VARCHAR (8)  NOT NULL,
    [Reg_id]             VARCHAR (8)  NOT NULL,
    [Sub_to]             VARCHAR (8)  NULL,
    [Name]               VARCHAR (40) NULL,
    [Tillv_no]           VARCHAR (40) NULL,
    [Lev]                VARCHAR (40) NULL,
    [Plats]              VARCHAR (40) NULL,
    [Ink_datum]          DATETIME     NULL,
    [Ink_vserie]         VARCHAR (1)  NULL,
    [Ink_vno]            INT          NULL,
    [Ink_id]             INT          NULL,
    [Ink_belopp]         MONEY        NULL,
    [Sold]               BIT          NULL,
    [Sold_to]            VARCHAR (40) NULL,
    [Fsg_datum]          DATETIME     NULL,
    [Fsg_vserie]         VARCHAR (1)  NULL,
    [Fsg_vno]            INT          NULL,
    [Fsg_id]             INT          NULL,
    [Fsg_belopp]         MONEY        NULL,
    [Avskr_procent]      FLOAT (53)   NULL,
    [Avskr_years]        INT          NULL,
    [Visa_avskr_procent] BIT          NULL,
    [Slutligt_restvarde] MONEY        NULL,
    [Fullt_avskriven]    DATETIME     NULL,
    [Kto]                VARCHAR (8)  NULL,
    [Kst]                VARCHAR (8)  NULL,
    [Kb]                 VARCHAR (8)  NULL,
    [Pt]                 VARCHAR (16) NULL,
    [Dokument_id]        INT          NULL,
    PRIMARY KEY CLUSTERED ([Reg_id] ASC, [Id] ASC)
);


GO

