CREATE TABLE [dbo].[WorkingScheduleHolidays] (
    [AutoId]     INT          IDENTITY (1, 1) NOT NULL,
    [HolidayKod] VARCHAR (10) NULL,
    [Heldag]     BIT          NULL,
    [Timmar]     MONEY        NULL,
    [Anmärkning] VARCHAR (40) NULL
);


GO

