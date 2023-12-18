CREATE TABLE [dbo].[LoneTransKomprimerad] (
    [AnstId]     VARCHAR (8)  NULL,
    [RadNr]      SMALLINT     NULL,
    [UtbetDatum] DATETIME     NULL,
    [LoneArtId]  VARCHAR (3)  NOT NULL,
    [Text]       VARCHAR (40) NULL,
    [Kst]        VARCHAR (6)  NULL,
    [Kb]         VARCHAR (6)  NULL,
    [Pt]         VARCHAR (16) NULL,
    [Antal]      FLOAT (53)   NULL,
    [aPris]      MONEY        NULL,
    [Belopp]     MONEY        NULL,
    [Belopp2]    MONEY        NULL,
    [fromDatum]  DATETIME     NULL,
    [tomDatum]   DATETIME     NULL,
    [Anm]        VARCHAR (60) NULL,
    PRIMARY KEY CLUSTERED ([LoneArtId] ASC)
);


GO

