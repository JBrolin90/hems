CREATE TABLE [dbo].[PlaceHolders] (
    [ID]              BIGINT        IDENTITY (1, 1) NOT NULL,
    [placeHolderName] NVARCHAR (50) NULL,
    [text]            NVARCHAR (50) NULL,
    [version]         NVARCHAR (50) CONSTRAINT [DF_PlaceHolders_version] DEFAULT (N'1.1') NULL,
    [language]        NCHAR (2)     CONSTRAINT [DF_PlaceHolders_language] DEFAULT (N'EN') NULL,
    CONSTRAINT [PK_PlaceHolders] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO

