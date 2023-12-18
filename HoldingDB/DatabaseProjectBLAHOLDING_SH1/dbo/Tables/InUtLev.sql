CREATE TABLE [dbo].[InUtLev] (
    [InUtLev]        SMALLINT     NULL,
    [Datum]          DATETIME     NULL,
    [ProdNr]         VARCHAR (18) NULL,
    [Beskrivning]    VARCHAR (80) NULL,
    [Antal]          FLOAT (53)   NULL,
    [Fysiskt]        FLOAT (53)   NULL,
    [Disponibelt]    FLOAT (53)   NULL,
    [Journalnummer]  INT          NULL,
    [Inventerat]     FLOAT (53)   NULL,
    [Diff]           FLOAT (53)   NULL,
    [OrderNr]        INT          NULL,
    [LevTotaltAntal] FLOAT (53)   NULL,
    [Restat_Antal]   FLOAT (53)   NULL,
    [Landskod]       VARCHAR (2)  NULL,
    [Belopp]         MONEY        NULL,
    [Inpris]         MONEY        NULL,
    [VagtInpris]     MONEY        NULL,
    [AutoId]         INT          IDENTITY (1, 1) NOT NULL
);


GO

