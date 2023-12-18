CREATE TABLE [dbo].[KtoResk] (
    [Id]              VARCHAR (20) NOT NULL,
    [Name]            VARCHAR (40) NULL,
    [Level1]          VARCHAR (20) NULL,
    [Level2]          VARCHAR (20) NULL,
    [SecondLevel]     BIT          NULL,
    [Typ]             INT          NULL,
    [QuickUpp]        BIT          NULL,
    [QuickReg]        BIT          NULL,
    [TrepartsDefault] INT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

