CREATE TABLE [dbo].[Einvitation] (
    [AutoId]    INT          IDENTITY (1, 1) NOT NULL,
    [Typ]       INT          NULL,
    [Id]        VARCHAR (8)  NULL,
    [Status]    INT          NULL,
    [InviteID]  INT          NULL,
    [Updated]   DATETIME     NULL,
    [UpdatedBy] VARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([AutoId] ASC)
);


GO

