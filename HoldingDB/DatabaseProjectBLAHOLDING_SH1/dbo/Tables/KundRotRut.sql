CREATE TABLE [dbo].[KundRotRut] (
    [KundId]               VARCHAR (8)  NOT NULL,
    [Fastighetsbeteckning] VARCHAR (50) NULL,
    [Lagenhetsbeteckning]  VARCHAR (50) NULL,
    [BRF_Orgnr]            VARCHAR (15) NULL,
    [Adress]               VARCHAR (50) NULL,
    [Zip]                  VARCHAR (10) NULL,
    [City]                 VARCHAR (50) NULL,
    [Personnummer_1]       VARCHAR (15) NULL,
    [Personnummer_2]       VARCHAR (15) NULL,
    [Fordelning_1]         FLOAT (53)   NULL,
    [Fordelning_2]         FLOAT (53)   NULL,
    PRIMARY KEY CLUSTERED ([KundId] ASC)
);


GO

