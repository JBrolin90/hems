CREATE TABLE [dbo].[EmsTraktDag] (
    [Id]                   INT      NOT NULL,
    [TraktHuvId]           INT      NULL,
    [Datum]                DATETIME NULL,
    [NormalBelopp]         MONEY    NULL,
    [ExtraBelopp]          MONEY    NULL,
    [Nattschablon]         MONEY    NULL,
    [Frukost_Betalsättkod] INT      NULL,
    [Frukost_Kostavdrag]   MONEY    NULL,
    [Frukost_Kostförmån]   MONEY    NULL,
    [Lunch_Betalsättkod]   INT      NULL,
    [Lunch_Kostavdrag]     MONEY    NULL,
    [Lunch_Kostförmån]     MONEY    NULL,
    [Middag_Betalsättkod]  INT      NULL,
    [Middag_Kostavdrag]    MONEY    NULL,
    [Middag_Kostförmån]    MONEY    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE NONCLUSTERED INDEX [TraktHuvIndex]
    ON [dbo].[EmsTraktDag]([TraktHuvId] ASC);


GO

