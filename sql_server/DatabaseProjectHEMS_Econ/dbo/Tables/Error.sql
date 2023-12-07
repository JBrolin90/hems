CREATE TABLE [dbo].[Error] (
    [ID]           INT            IDENTITY (1, 1) NOT NULL,
    [eNumber]      INT            NULL,
    [eInstance]    INT            NULL,
    [eDate]        DATETIME       NULL,
    [eUser]        NVARCHAR (50)  NULL,
    [eDescription] NVARCHAR (MAX) NULL,
    [eProcedure]   NVARCHAR (50)  NULL,
    [eModule]      NVARCHAR (50)  NULL,
    [eSource]      NVARCHAR (50)  NULL,
    [eLine]        NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Error] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

