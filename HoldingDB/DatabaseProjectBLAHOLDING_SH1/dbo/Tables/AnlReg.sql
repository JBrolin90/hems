CREATE TABLE [dbo].[AnlReg] (
    [Id]                VARCHAR (8)  NOT NULL,
    [Name]              VARCHAR (40) NULL,
    [Kto1]              VARCHAR (6)  NULL,
    [Kto2]              VARCHAR (6)  NULL,
    [Kto3]              VARCHAR (6)  NULL,
    [Kto4]              VARCHAR (6)  NULL,
    [Kto5]              VARCHAR (6)  NULL,
    [Kto6]              VARCHAR (6)  NULL,
    [Kto7]              VARCHAR (6)  NULL,
    [Kto8]              VARCHAR (6)  NULL,
    [Avskr_procent]     FLOAT (53)   NULL,
    [Avskr_years]       INT          NULL,
    [Kto_avskr]         VARCHAR (6)  NULL,
    [Kto_vminsk]        VARCHAR (6)  NULL,
    [Kto_overavskr]     VARCHAR (6)  NULL,
    [Kto_vinst]         VARCHAR (6)  NULL,
    [Kto_forlust]       VARCHAR (6)  NULL,
    [Bfordersammandrag] BIT          NULL,
    [Upd_bf]            BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

