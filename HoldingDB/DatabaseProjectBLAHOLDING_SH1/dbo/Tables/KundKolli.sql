CREATE TABLE [dbo].[KundKolli] (
    [KolliNr] VARCHAR (8)  NOT NULL,
    [Typ]     VARCHAR (8)  NULL,
    [OrderNr] INT          NULL,
    [KolliId] VARCHAR (13) NULL,
    [Used]    BIT          NULL,
    PRIMARY KEY CLUSTERED ([KolliNr] ASC)
);


GO

