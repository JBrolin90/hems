CREATE TABLE [dbo].[LonePerioder] (
    [Id]                              INT          NOT NULL,
    [AutoId]                          INT          IDENTITY (1, 1) NOT NULL,
    [AvvikelseFrom]                   DATETIME     NULL,
    [AvvikelseTom]                    DATETIME     NULL,
    [LoneperiodFrom]                  DATETIME     NULL,
    [LoneperiodTom]                   DATETIME     NULL,
    [UtbetDatum]                      DATETIME     NULL,
    [Sparr]                           BIT          NULL,
    [Aktiv]                           BIT          NULL,
    [UtbetIntervall]                  INT          NULL,
    [UtbetTillagg]                    BIT          NULL,
    [UtbetTillaggRorligaDelar]        BIT          NULL,
    [UtbetTillaggSparade]             BIT          NULL,
    [UtbetTillaggRorligaDelarSparade] BIT          NULL,
    [Text]                            VARCHAR (40) NULL,
    [LoneAvtalTyp]                    INT          NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

