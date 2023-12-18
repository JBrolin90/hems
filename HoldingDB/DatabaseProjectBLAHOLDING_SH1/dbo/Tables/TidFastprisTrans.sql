CREATE TABLE [dbo].[TidFastprisTrans] (
    [Datum]     DATETIME    NULL,
    [KundId]    VARCHAR (8) NULL,
    [Period]    VARCHAR (6) NULL,
    [Intervall] SMALLINT    NULL,
    [Antal]     FLOAT (53)  NULL,
    [Pris]      MONEY       NULL,
    [OrderNr]   INT         NULL,
    [AutoId]    INT         IDENTITY (1, 1) NOT NULL
);


GO

