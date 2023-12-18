CREATE TABLE [dbo].[KundAdr] (
    [Id]        VARCHAR (40) NOT NULL,
    [KundId]    VARCHAR (8)  NOT NULL,
    [YourRef]   VARCHAR (40) NULL,
    [Name]      VARCHAR (40) NULL,
    [Box]       VARCHAR (40) NULL,
    [Street]    VARCHAR (40) NULL,
    [Zip]       VARCHAR (10) NULL,
    [City]      VARCHAR (40) NULL,
    [Country]   VARCHAR (40) NULL,
    [Telephone] VARCHAR (20) NULL,
    [Mobil]     VARCHAR (20) NULL,
    [Email]     VARCHAR (60) NULL,
    [Default]   BIT          NULL,
    [Created]   DATETIME     NULL,
    [CreatedBy] VARCHAR (10) NULL,
    [Updated]   DATETIME     NULL,
    [UpdatedBy] VARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([KundId] ASC, [Id] ASC)
);


GO

