CREATE TABLE [dbo].[Konto] (
    [Id]              VARCHAR (6)   NOT NULL,
    [Name]            VARCHAR (40)  NULL,
    [TransText]       INT           NULL,
    [Kst]             INT           NULL,
    [Kb]              INT           NULL,
    [Pt]              INT           NULL,
    [AntalSparr]      INT           NULL,
    [Antal]           BIT           NULL,
    [Enhet]           VARCHAR (8)   NULL,
    [Anl]             VARCHAR (8)   NULL,
    [KtoResk]         BIT           NULL,
    [KtoKonvTo]       VARCHAR (6)   NULL,
    [KtoAvslut]       VARCHAR (6)   NULL,
    [SRUKod]          VARCHAR (4)   NULL,
    [SRUKodKredit]    VARCHAR (4)   NULL,
    [SRUKod2]         VARCHAR (4)   NULL,
    [Kvartalsrapport] BIT           NULL,
    [Debet]           INT           NULL,
    [Kredit]          INT           NULL,
    [MomsKod]         INT           NULL,
    [Remarks]         VARCHAR (MAX) NULL,
    [Sparr]           BIT           NULL,
    [KstDefault]      VARCHAR (6)   NULL,
    [KbDefault]       VARCHAR (6)   NULL,
    [PtDefault]       VARCHAR (16)  NULL,
    [Periodisering]   BIT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

