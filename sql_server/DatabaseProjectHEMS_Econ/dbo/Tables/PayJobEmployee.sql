CREATE TABLE [dbo].[PayJobEmployee] (
    [ID]         INT   IDENTITY (1, 1) NOT NULL,
    [JobID]      INT   NULL,
    [EmployeeID] INT   NULL,
    [PayPerHour] MONEY NULL,
    CONSTRAINT [PK_PayJobEmployee] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

