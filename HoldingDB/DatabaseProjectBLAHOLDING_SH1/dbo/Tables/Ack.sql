CREATE TABLE [dbo].[Ack] (
    [Id]           VARCHAR (3)  NOT NULL,
    [Name]         VARCHAR (30) NULL,
    [AckAntal]     BIT          NULL,
    [AckBelopp]    BIT          NULL,
    [ClearNewYear] BIT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

