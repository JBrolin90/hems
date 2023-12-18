CREATE TABLE [dbo].[Variant] (
    [ProdId]      VARCHAR (18) NULL,
    [Var1]        SMALLINT     NULL,
    [Var2]        SMALLINT     NULL,
    [Var3]        SMALLINT     NULL,
    [Var4]        SMALLINT     NULL,
    [HuvudModell] BIT          NULL,
    [PrisDiff]    MONEY        NULL,
    [AutoId]      INT          IDENTITY (1, 1) NOT NULL
);


GO

