CREATE TABLE [dbo].[RptRad] (
    [RptId]     VARCHAR (8)  NOT NULL,
    [Nr]        SMALLINT     NOT NULL,
    [Kod]       VARCHAR (2)  NULL,
    [Txt]       VARCHAR (40) NULL,
    [FromKonto] VARCHAR (6)  NULL,
    [TomKonto]  VARCHAR (6)  NULL,
    [Minne]     SMALLINT     NULL,
    [Grupp]     VARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([RptId] ASC, [Nr] ASC)
);


GO

