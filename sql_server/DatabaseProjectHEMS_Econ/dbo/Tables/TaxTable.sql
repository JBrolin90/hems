CREATE TABLE [dbo].[TaxTable] (
    [ID]           INT            IDENTITY (1, 1) NOT NULL,
    [Antal dgr]    NVARCHAR (255) NULL,
    [Tabellnr]     SMALLINT       NULL,
    [Inkomst from] INT            NULL,
    [Inkomst tom]  INT            NULL,
    [Kolumn 1]     SMALLINT       NULL,
    [Kolumn 2]     SMALLINT       NULL,
    [Kolumn 3]     SMALLINT       NULL,
    [Kolumn 4]     SMALLINT       NULL,
    [Kolumn 5]     SMALLINT       NULL,
    [Kolumn 6]     SMALLINT       NULL,
    CONSTRAINT [PK_TaxTable] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

