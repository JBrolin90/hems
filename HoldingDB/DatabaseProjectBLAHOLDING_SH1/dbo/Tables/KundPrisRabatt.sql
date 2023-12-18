CREATE TABLE [dbo].[KundPrisRabatt] (
    [Id]     VARCHAR (18) NOT NULL,
    [KundId] VARCHAR (8)  NOT NULL,
    [Pris]   MONEY        NULL,
    [Rabatt] FLOAT (53)   NULL,
    [Text]   VARCHAR (40) NULL,
    [TG]     FLOAT (53)   NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC, [KundId] ASC)
);


GO

