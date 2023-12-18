CREATE TABLE [dbo].[RptKol] (
    [RptId]       VARCHAR (8)  NOT NULL,
    [Nr]          SMALLINT     NOT NULL,
    [Typ]         VARCHAR (1)  NULL,
    [BudgetNr]    SMALLINT     NULL,
    [Header]      VARCHAR (20) NULL,
    [Proc1]       SMALLINT     NULL,
    [Proc1_c]     SMALLINT     NULL,
    [Proc2]       SMALLINT     NULL,
    [Proc2_c]     SMALLINT     NULL,
    [FromPrd]     SMALLINT     NULL,
    [TomPrd]      SMALLINT     NULL,
    [RoundOff]    SMALLINT     NULL,
    [Width]       SMALLINT     NULL,
    [Kst]         VARCHAR (6)  NULL,
    [Kb]          VARCHAR (6)  NULL,
    [Pt]          VARCHAR (16) NULL,
    [DatumFormat] SMALLINT     NULL,
    [FastPeriod]  VARCHAR (6)  NULL,
    [FastEoy]     VARCHAR (1)  NULL,
    PRIMARY KEY CLUSTERED ([RptId] ASC, [Nr] ASC)
);


GO

