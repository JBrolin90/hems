CREATE TABLE [dbo].[PrintFormat] (
    [Typ]       VARCHAR (4)  NOT NULL,
    [Id]        VARCHAR (6)  NOT NULL,
    [Name]      VARCHAR (40) NULL,
    [Font]      VARCHAR (40) NULL,
    [Size]      INT          NULL,
    [Bold]      BIT          NULL,
    [Italic]    BIT          NULL,
    [Underline] BIT          NULL,
    PRIMARY KEY CLUSTERED ([Typ] ASC, [Id] ASC)
);


GO

