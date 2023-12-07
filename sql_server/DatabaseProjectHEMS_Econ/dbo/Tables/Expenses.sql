CREATE TABLE [dbo].[Expenses] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (50) NULL,
    [Company]   NVARCHAR (50) NULL,
    [Recurring] NCHAR (10)    NULL,
    [Frequency] BIGINT        NULL,
    [VAT]       REAL          NULL,
    [Amount]    MONEY         NULL,
    CONSTRAINT [PK_Expenses] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

