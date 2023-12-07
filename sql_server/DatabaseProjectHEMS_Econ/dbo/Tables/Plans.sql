CREATE TABLE [dbo].[Plans] (
    [ID]   INT        IDENTITY (1, 1) NOT NULL,
    [Plan] NCHAR (50) NULL,
    CONSTRAINT [PK_Plans] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

