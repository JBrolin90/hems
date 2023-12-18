CREATE TABLE [dbo].[LevAttestant] (
    [Id]             VARCHAR (6)   NOT NULL,
    [Name]           VARCHAR (40)  NULL,
    [Password]       VARCHAR (24)  NULL,
    [AttestantTyp]   INT           NULL,
    [Slutattestant]  BIT           NULL,
    [Konteringsrätt] BIT           NULL,
    [MainUser]       VARCHAR (4)   NULL,
    [AutoLogin]      BIT           NULL,
    [Email]          VARCHAR (80)  NULL,
    [NextAttestant]  VARCHAR (6)   NULL,
    [Remarks]        VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

