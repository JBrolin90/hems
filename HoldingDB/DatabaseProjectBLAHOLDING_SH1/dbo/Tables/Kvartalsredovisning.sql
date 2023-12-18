CREATE TABLE [dbo].[Kvartalsredovisning] (
    [Kvartalskod]         VARCHAR (6)  NULL,
    [Avser_tiden]         VARCHAR (14) NULL,
    [VATnummer]           VARCHAR (20) NULL,
    [Varuleveranser]      MONEY        NULL,
    [Trepartshandel]      MONEY        NULL,
    [Tjanster]            MONEY        NULL,
    [SummaVaruleveranser] MONEY        NULL,
    [Antal_sidor]         INT          NULL,
    [AutoId]              INT          IDENTITY (1, 1) NOT NULL
);


GO

