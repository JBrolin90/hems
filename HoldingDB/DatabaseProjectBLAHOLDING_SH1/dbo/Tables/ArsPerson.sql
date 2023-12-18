CREATE TABLE [dbo].[ArsPerson] (
    [Id]                  INT          NULL,
    [PersonNr]            VARCHAR (20) NULL,
    [Name]                VARCHAR (40) NULL,
    [Name2]               VARCHAR (40) NULL,
    [Street]              VARCHAR (40) NULL,
    [Zip]                 VARCHAR (6)  NULL,
    [City]                VARCHAR (40) NULL,
    [Country]             VARCHAR (40) NULL,
    [Omvald]              BIT          NULL,
    [Nyvald]              BIT          NULL,
    [Avgaende]            BIT          NULL,
    [Styrelseledamot]     BIT          NULL,
    [Styrelsesuppleant]   BIT          NULL,
    [Delgivningsbar]      BIT          NULL,
    [VD]                  BIT          NULL,
    [ViceVD]              BIT          NULL,
    [Firmatecknare]       BIT          NULL,
    [AuktoriseradRevisor] BIT          NULL,
    [GodkandRevisor]      BIT          NULL,
    [AnnanRevisor]        BIT          NULL,
    [Revisorssuppleant]   BIT          NULL,
    [Aktieagare]          BIT          NULL,
    [AntalAktier]         INT          NULL,
    [AntalRoster]         INT          NULL,
    [Anm]                 VARCHAR (40) NULL,
    [BokslutsDatum]       DATETIME     NULL
);


GO

