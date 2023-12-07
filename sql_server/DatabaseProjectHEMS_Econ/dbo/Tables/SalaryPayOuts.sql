CREATE TABLE [dbo].[SalaryPayOuts] (
    [ID]         INT IDENTITY (1, 1) NOT NULL,
    [EmployeeID] INT NULL,
    [PayDay]     INT NULL,
    [PayMonth]   INT NULL,
    [PayYear]    INT NULL,
    [Gross]      INT NULL,
    [Tax]        INT NULL,
    [SocialFee]  INT NULL,
    CONSTRAINT [PK_SalaryPayOuts] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

