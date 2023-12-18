CREATE TABLE [dbo].[TabellCell] (
    [IdTyp]           VARCHAR (6)  NULL,
    [IdText]          VARCHAR (8)  NULL,
    [IdNum]           INT          NULL,
    [Datum]           DATETIME     NULL,
    [Tag]             VARCHAR (8)  NULL,
    [RadNr]           INT          NULL,
    [KolumnNr]        INT          NULL,
    [CellText]        VARCHAR (60) NULL,
    [CellCurrency]    MONEY        NULL,
    [KolumnTyp]       INT          NULL,
    [KolumnBredd]     INT          NULL,
    [KolumnDecimaler] INT          NULL,
    [KolumnSummera]   BIT          NULL,
    [AutoId]          INT          IDENTITY (1, 1) NOT NULL
);


GO

