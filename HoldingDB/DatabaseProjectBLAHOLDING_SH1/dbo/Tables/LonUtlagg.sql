CREATE TABLE [dbo].[LonUtlagg] (
    [Id]         INT          NULL,
    [AnstId]     VARCHAR (8)  NULL,
    [UtbetDatum] DATETIME     NULL,
    [Konto]      VARCHAR (6)  NULL,
    [Kst]        VARCHAR (6)  NULL,
    [Kb]         VARCHAR (6)  NULL,
    [Pt]         VARCHAR (16) NULL,
    [Belopp]     MONEY        NULL,
    [Anm]        VARCHAR (60) NULL,
    [User]       VARCHAR (10) NULL,
    [Uppdaterad] BIT          NULL,
    [AutoId]     INT          IDENTITY (1, 1) NOT NULL
);


GO

