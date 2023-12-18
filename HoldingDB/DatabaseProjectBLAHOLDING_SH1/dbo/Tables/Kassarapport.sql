CREATE TABLE [dbo].[Kassarapport] (
    [AutoId]     INT          IDENTITY (1, 1) NOT NULL,
    [Datum]      DATETIME     NULL,
    [Nr]         INT          NULL,
    [Typ]        INT          NULL,
    [Kto]        VARCHAR (6)  NULL,
    [Kst]        VARCHAR (6)  NULL,
    [Kb]         VARCHAR (6)  NULL,
    [Pt]         VARCHAR (16) NULL,
    [Momskod]    INT          NULL,
    [Momsbelopp] MONEY        NULL,
    [Belopp]     MONEY        NULL,
    [Text]       VARCHAR (40) NULL,
    [VerSerie]   VARCHAR (1)  NULL,
    [VerNo]      INT          NULL,
    [VerText]    VARCHAR (40) NULL,
    [Upd]        BIT          NULL,
    [SIE]        BIT          NULL,
    [Created]    DATETIME     NULL,
    [CreatedBy]  VARCHAR (10) NULL
);


GO

