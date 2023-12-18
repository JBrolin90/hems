CREATE TABLE [dbo].[WorkingSchedule] (
    [Id]             INT          NULL,
    [AutoId]         INT          IDENTITY (1, 1) NOT NULL,
    [Name]           VARCHAR (40) NULL,
    [Typ]            INT          NULL,
    [Datum]          DATETIME     NULL,
    [Weeks]          INT          NULL,
    [HourInWeek]     MONEY        NULL,
    [DaysInWeek]     INT          NULL,
    [AccountRedDays] BIT          NULL,
    [SSG]            MONEY        NULL,
    [SemesterFaktor] MONEY        NULL,
    [Active]         BIT          NULL,
    [Intermittent]   BIT          NULL
);


GO

