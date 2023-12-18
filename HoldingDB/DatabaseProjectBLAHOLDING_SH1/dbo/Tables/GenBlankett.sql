CREATE TABLE [dbo].[GenBlankett] (
    [Name]              VARCHAR (40)  NULL,
    [Typ]               VARCHAR (16)  NULL,
    [Left]              INT           NULL,
    [Top]               INT           NULL,
    [Width]             INT           NULL,
    [Height]            INT           NULL,
    [Text]              VARCHAR (255) NULL,
    [FontName]          VARCHAR (24)  NULL,
    [FontSize]          INT           NULL,
    [FontItalic]        BIT           NULL,
    [FontBold]          BIT           NULL,
    [FontUnderline]     BIT           NULL,
    [FontOverstrike]    BIT           NULL,
    [Alignment]         INT           NULL,
    [ForeColor]         VARCHAR (16)  NULL,
    [BackColor]         VARCHAR (16)  NULL,
    [EndastSistaSidan]  BIT           NULL,
    [EndastForstaSidan] BIT           NULL,
    [Numerisk]          BIT           NULL,
    [SuppressIfZero]    BIT           NULL,
    [Decimaler]         INT           NULL,
    [Tag]               VARCHAR (80)  NULL,
    [AutoId]            INT           IDENTITY (1, 1) NOT NULL
);


GO

