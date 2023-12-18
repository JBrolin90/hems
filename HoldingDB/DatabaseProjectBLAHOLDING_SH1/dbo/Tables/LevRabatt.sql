CREATE TABLE [dbo].[LevRabatt] (
    [LevId]    VARCHAR (8)  NOT NULL,
    [Vgr]      VARCHAR (10) NOT NULL,
    [Beskr]    VARCHAR (30) NULL,
    [Rabatt_1] FLOAT (53)   NULL,
    [Rabatt_2] FLOAT (53)   NULL,
    [Rabatt_3] FLOAT (53)   NULL,
    [Datum]    DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([LevId] ASC, [Vgr] ASC)
);


GO

