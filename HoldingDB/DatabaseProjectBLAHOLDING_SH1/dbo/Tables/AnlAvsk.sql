CREATE TABLE [dbo].[AnlAvsk] (
    [Anlreg]  VARCHAR (8) NOT NULL,
    [Anlpost] VARCHAR (8) NOT NULL,
    [Period]  VARCHAR (6) NOT NULL,
    [Per]     MONEY       NULL,
    [Ack]     MONEY       NULL,
    [Lock]    BIT         NULL,
    PRIMARY KEY CLUSTERED ([Anlreg] ASC, [Anlpost] ASC, [Period] ASC)
);


GO

