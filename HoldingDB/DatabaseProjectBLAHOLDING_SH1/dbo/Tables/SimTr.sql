CREATE TABLE [dbo].[SimTr] (
    [Id]        INT          NOT NULL,
    [VerSerie]  VARCHAR (1)  NULL,
    [VerNo]     INT          NULL,
    [Period]    VARCHAR (6)  NULL,
    [Eoy]       VARCHAR (1)  NULL,
    [Kto]       VARCHAR (6)  NULL,
    [Kst]       VARCHAR (6)  NULL,
    [Kb]        VARCHAR (6)  NULL,
    [Pt]        VARCHAR (16) NULL,
    [Belopp]    MONEY        NULL,
    [Antal]     FLOAT (53)   NULL,
    [PrickKod1] VARCHAR (1)  NULL,
    [PrickKod2] VARCHAR (1)  NULL,
    [Text]      VARCHAR (40) NULL,
    [Ursprung]  VARCHAR (1)  NULL,
    [Line]      INT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

