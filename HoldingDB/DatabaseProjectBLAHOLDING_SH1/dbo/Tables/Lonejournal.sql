CREATE TABLE [dbo].[Lonejournal] (
    [JournalNo]   INT          NULL,
    [AnstId]      VARCHAR (8)  NULL,
    [BokfDatum]   DATETIME     NULL,
    [BatchId]     INT          NULL,
    [VerNo]       INT          NULL,
    [Uppdaterad]  BIT          NULL,
    [VerSerie]    VARCHAR (1)  NULL,
    [SalaryId]    INT          NULL,
    [Description] VARCHAR (80) NULL,
    [NewBLa]      BIT          NULL,
    [Updated]     DATETIME     NULL,
    [UpdatedBy]   VARCHAR (10) NULL,
    [AutoId]      INT          IDENTITY (1, 1) NOT NULL
);


GO

