CREATE TABLE [dbo].[KundFaktRtaTr] (
    [Id]         INT          NULL,
    [FaktNr]     INT          NULL,
    [KundId]     VARCHAR (8)  NULL,
    [Text]       VARCHAR (10) NULL,
    [FaktDatum]  DATETIME     NULL,
    [FfDatum]    DATETIME     NULL,
    [Belopp]     MONEY        NULL,
    [RtaBelopp]  MONEY        NULL,
    [Uppdaterad] BIT          NULL,
    [BetalDatum] DATETIME     NULL
);


GO

