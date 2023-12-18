CREATE TABLE [dbo].[EmsBilersättning] (
    [Id]                      INT          NOT NULL,
    [AnstId]                  VARCHAR (8)  NULL,
    [Datum]                   DATETIME     NULL,
    [Färdväg]                 VARCHAR (80) NULL,
    [Ändamål]                 VARCHAR (80) NULL,
    [Typ]                     INT          NULL,
    [AntalMil]                MONEY        NULL,
    [KronorPerMil]            MONEY        NULL,
    [SkattefriErsättning]     MONEY        NULL,
    [SkattepliktigErsättning] MONEY        NULL,
    [Uppdaterad]              BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

