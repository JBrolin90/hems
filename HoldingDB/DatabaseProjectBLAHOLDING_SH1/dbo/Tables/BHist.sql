CREATE TABLE [dbo].[BHist] (
    [Datum]      DATETIME     NULL,
    [UserId]     VARCHAR (10) NULL,
    [TableName]  VARCHAR (20) NULL,
    [ColumnName] VARCHAR (40) NULL,
    [StringId]   VARCHAR (20) NULL,
    [IntId]      INT          NULL,
    [OldValue]   VARCHAR (80) NULL,
    [NewValue]   VARCHAR (80) NULL,
    [DataType]   VARCHAR (10) NULL,
    [Status]     INT          NULL,
    [Rutinkod]   VARCHAR (40) NULL,
    [AutoId]     INT          IDENTITY (1, 1) NOT NULL
);


GO

CREATE NONCLUSTERED INDEX [SortIndex]
    ON [dbo].[BHist]([TableName] ASC, [ColumnName] ASC, [Datum] ASC);


GO

