CREATE TABLE [dbo].[Ftgpar] (
    [Id]         VARCHAR (4)  NOT NULL,
    [Par_text20] VARCHAR (20) NULL,
    [Par_text6]  VARCHAR (6)  NULL,
    [Par_long]   INT          NULL,
    [Par_curr]   MONEY        NULL,
    [Par_bool]   BIT          NULL,
    [Par_double] FLOAT (53)   NULL,
    [Par_date]   DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

