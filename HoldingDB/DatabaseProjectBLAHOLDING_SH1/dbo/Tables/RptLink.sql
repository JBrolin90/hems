CREATE TABLE [dbo].[RptLink] (
    [User]         VARCHAR (8)   NULL,
    [No]           SMALLINT      NULL,
    [UtId]         VARCHAR (8)   NULL,
    [Rptid]        VARCHAR (8)   NULL,
    [Name]         VARCHAR (40)  NULL,
    [Fromprd]      VARCHAR (6)   NULL,
    [Tomprd]       VARCHAR (6)   NULL,
    [Fromeoy]      VARCHAR (1)   NULL,
    [Tomeoy]       VARCHAR (1)   NULL,
    [KtoSel]       VARCHAR (120) NULL,
    [KstSel]       VARCHAR (120) NULL,
    [KbSel]        VARCHAR (120) NULL,
    [PtSel]        VARCHAR (120) NULL,
    [Fromstatus]   VARCHAR (6)   NULL,
    [Tomstatus]    VARCHAR (6)   NULL,
    [Fromkategori] VARCHAR (6)   NULL,
    [Tomkategori]  VARCHAR (6)   NULL,
    [Fromvs]       VARCHAR (1)   NULL,
    [Tomvs]        VARCHAR (1)   NULL,
    [Fromvno]      INT           NULL,
    [Tomvno]       INT           NULL,
    [Fromdat]      DATETIME      NULL,
    [Tomdat]       DATETIME      NULL,
    [Rschema]      INT           NULL,
    [Sortorder]    INT           NULL,
    [Bool1]        BIT           NULL,
    [Bool2]        BIT           NULL,
    [Bool3]        BIT           NULL,
    [Bool4]        BIT           NULL,
    [Bool5]        BIT           NULL,
    [Bool6]        BIT           NULL,
    [Bool7]        BIT           NULL,
    [Bool8]        BIT           NULL,
    [No_of_ex]     SMALLINT      NULL,
    [Rutin]        SMALLINT      NULL,
    [AutoId]       INT           IDENTITY (1, 1) NOT NULL
);


GO

