CREATE TABLE [dbo].[SkatteTabell] (
    [Tabell]  INT         NULL,
    [Typ]     VARCHAR (3) NULL,
    [Income]  MONEY       NULL,
    [Kolumn1] FLOAT (53)  NULL,
    [Kolumn2] FLOAT (53)  NULL,
    [Kolumn3] FLOAT (53)  NULL,
    [AutoId]  INT         IDENTITY (1, 1) NOT NULL
);


GO

