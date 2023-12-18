CREATE TABLE [dbo].[KbSaldon] (
    [Typ]      VARCHAR (4) NOT NULL,
    [Kb]       VARCHAR (6) NOT NULL,
    [Kto]      VARCHAR (6) NOT NULL,
    [Period]   VARCHAR (6) NOT NULL,
    [Eoy]      VARCHAR (1) NOT NULL,
    [IbSaldo]  MONEY       NULL,
    [PerSaldo] MONEY       NULL,
    [AckSaldo] MONEY       NULL,
    PRIMARY KEY CLUSTERED ([Typ] ASC, [Kb] ASC, [Period] ASC, [Eoy] ASC, [Kto] ASC)
);


GO

