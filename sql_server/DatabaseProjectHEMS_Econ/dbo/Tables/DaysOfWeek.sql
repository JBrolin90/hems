CREATE TABLE [dbo].[DaysOfWeek] (
    [ID]  INT        IDENTITY (1, 1) NOT NULL,
    [Day] NCHAR (10) NULL,
    CONSTRAINT [PK_DaysOfWeek] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

