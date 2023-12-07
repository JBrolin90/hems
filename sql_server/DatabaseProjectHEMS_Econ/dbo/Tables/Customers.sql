CREATE TABLE [dbo].[Customers] (
    [ID]             INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]     INT            NULL,
    [FirstName]      NVARCHAR (255) NULL,
    [LastName]       NVARCHAR (255) NULL,
    [PopularName]    NVARCHAR (255) NULL,
    [Street]         NVARCHAR (255) NULL,
    [StreetNumber]   NVARCHAR (255) NULL,
    [AptNr]          NVARCHAR (255) NULL,
    [City]           NVARCHAR (255) NULL,
    [Zip]            NVARCHAR (255) NULL,
    [PersonalNumber] NVARCHAR (255) NULL,
    [email]          NVARCHAR (255) NULL,
    [phone]          NVARCHAR (50)  NULL,
    [PriceLow]       MONEY          NULL,
    [PriceHigh]      MONEY          NULL,
    [CreditDays]     INT            NULL,
    [EmployeeID]     INT            NULL,
    [RUT]            BIT            CONSTRAINT [DF_Customers_RUT] DEFAULT ((0)) NOT NULL,
    [DayOfWeek]      INT            NULL,
    [Plan]           INT            NULL,
    [ProduktId]      INT            NULL,
    [InvoiceFolder]  NTEXT          NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

