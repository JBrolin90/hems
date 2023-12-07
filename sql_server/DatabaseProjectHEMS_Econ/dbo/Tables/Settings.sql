CREATE TABLE [dbo].[Settings] (
    [ID]           INT            IDENTITY (1, 1) NOT NULL,
    [Tag]          NVARCHAR (255) NULL,
    [TagValue]     NVARCHAR (255) NULL,
    [index]        INT            NULL,
    [TagNumerical] REAL           NULL,
    CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

