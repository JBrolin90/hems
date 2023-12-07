CREATE TABLE [dbo].[Employees] (
    [ID]              INT            IDENTITY (1, 1) NOT NULL,
    [EmployeeID]      INT            NULL,
    [FirstName]       NVARCHAR (255) NULL,
    [LastName]        NVARCHAR (255) NULL,
    [PopularName]     NVARCHAR (255) NULL,
    [Street]          NVARCHAR (255) NULL,
    [StreetNumber]    NVARCHAR (255) NULL,
    [AptNr]           NVARCHAR (255) NULL,
    [City]            NVARCHAR (255) NULL,
    [Zip]             NVARCHAR (255) NULL,
    [PersonalNumber]  NVARCHAR (255) NULL,
    [SalaryPerHour]   MONEY          NULL,
    [PayDay]          INT            NULL,
    [TaxTable]        INT            NULL,
    [SocialFee]       FLOAT (53)     NULL,
    [Bank]            NVARCHAR (255) NULL,
    [Account]         NVARCHAR (255) NULL,
    [Mail]            NVARCHAR (255) NULL,
    [Phone]           NVARCHAR (255) NULL,
    [StatementFolder] NTEXT          NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

