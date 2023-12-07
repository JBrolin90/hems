CREATE TABLE [dbo].[Schedules] (
    [ID]                INT           IDENTITY (1, 1) NOT NULL,
    [CustomerID]        INT           NOT NULL,
    [DateActual]        DATETIME2 (7) NULL,
    [StartTime]         DATETIME2 (7) NULL,
    [EndTime]           DATETIME2 (7) NULL,
    [DurationPlanned]   FLOAT (53)    NOT NULL,
    [DurationActual]    FLOAT (53)    NULL,
    [EmployeeIDPlanned] INT           NULL,
    [EmployeeIDActual]  INT           NULL,
    [StartTimePlanned]  DATETIME2 (7) NULL,
    [Job]               INT           NULL,
    [RUT]               BIT           NULL,
    [ROT]               BIT           NULL,
    [PayDay]            INT           NULL,
    [PayMonth]          INT           NULL,
    [PayYear]           INT           NULL,
    [PricePerHour]      MONEY         NOT NULL,
    [OBIndex]           INT           NULL,
    [PayPerHour]        MONEY         NULL,
    CONSTRAINT [PK_Schedules] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

