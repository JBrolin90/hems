CREATE TABLE [dbo].[WorkingScheduleEmployee] (
    [AnstId]            VARCHAR (8)  NULL,
    [Name]              VARCHAR (40) NULL,
    [WorkingScheduleId] INT          NULL,
    [DatumFrom]         DATETIME     NULL,
    [AutoId]            INT          IDENTITY (1, 1) NOT NULL
);


GO

