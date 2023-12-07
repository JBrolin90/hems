CREATE TABLE [dbo].[Jobs] (
    [ID]        INT            IDENTITY (1, 1) NOT NULL,
    [JobName]   NVARCHAR (255) NULL,
    [PriceLow]  MONEY          NULL,
    [PriceHigh] MONEY          NULL,
    [RUT]       BIT            NULL,
    [ROT]       BIT            NULL,
    CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

