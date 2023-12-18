CREATE TABLE [dbo].[LoneAckFg] (
    [AnstId]      VARCHAR (8)  NOT NULL,
    [Typ]         VARCHAR (5)  NOT NULL,
    [Ackumulator] VARCHAR (5)  NOT NULL,
    [Antal]       FLOAT (53)   NULL,
    [Belopp]      MONEY        NULL,
    [Text]        VARCHAR (60) NULL,
    PRIMARY KEY CLUSTERED ([AnstId] ASC, [Typ] ASC, [Ackumulator] ASC)
);


GO

