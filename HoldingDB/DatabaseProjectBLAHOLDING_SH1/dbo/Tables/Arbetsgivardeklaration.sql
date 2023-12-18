CREATE TABLE [dbo].[Arbetsgivardeklaration] (
    [AutoId]                         INT           IDENTITY (1, 1) NOT NULL,
    [AnstId]                         VARCHAR (8)   NULL,
    [Deklarationsdag]                DATETIME      NULL,
    [BetalningsmottagarId]           VARCHAR (12)  NULL,
    [Fodelsetid]                     VARCHAR (11)  NULL,
    [AnnatId]                        VARCHAR (50)  NULL,
    [Fornamn]                        VARCHAR (50)  NULL,
    [Efternamn]                      VARCHAR (50)  NULL,
    [OrgNamn]                        VARCHAR (50)  NULL,
    [Gatuadress]                     VARCHAR (50)  NULL,
    [Gatuadress2]                    VARCHAR (50)  NULL,
    [Postnummer]                     VARCHAR (9)   NULL,
    [Postort]                        VARCHAR (50)  NULL,
    [LandskodPostort]                VARCHAR (2)   NULL,
    [FriAdress]                      VARCHAR (200) NULL,
    [LandskodMedborgare]             VARCHAR (2)   NULL,
    [TIN]                            VARCHAR (20)  NULL,
    [LandskodTIN]                    VARCHAR (2)   NULL,
    [RedovisningsPeriod]             VARCHAR (6)   NULL,
    [Arbetsstallenummer]             INT           NULL,
    [ForstaAnstalld]                 BIT           NULL,
    [Borttag]                        BIT           NULL,
    [Specifikationsnummer]           INT           NULL,
    [KontantErsattningUlagAG]        INT           NULL,
    [SkatteplOvrigaFormanerUlagAG]   INT           NULL,
    [SkatteplBilformanUlagAG]        INT           NULL,
    [DrivmVidBilformanUlagAG]        INT           NULL,
    [BostadsformanSmahusUlagAG]      BIT           NULL,
    [BostadsformanEjSmahusUlagAG]    BIT           NULL,
    [FormanHarJusterats]             BIT           NULL,
    [AvdragUtgiftArbetet]            INT           NULL,
    [AvdrPrelSkatt]                  INT           NULL,
    [AvdrSkattSINK]                  INT           NULL,
    [AvdrSkattASINK]                 INT           NULL,
    [SkattebefrEnlAvtal]             BIT           NULL,
    [EjskatteavdragEjbeskattningSv]  BIT           NULL,
    [Lokalanstalld]                  BIT           NULL,
    [AmbassadanstISvMAvtal]          BIT           NULL,
    [ErsattningsKod1]                INT           NULL,
    [ErsattningsBelopp1]             INT           NULL,
    [ErsattningsKod2]                INT           NULL,
    [ErsattningsBelopp2]             INT           NULL,
    [ErsattningsKod3]                INT           NULL,
    [ErsattningsBelopp3]             INT           NULL,
    [ErsattningsKod4]                INT           NULL,
    [ErsattningsBelopp4]             INT           NULL,
    [Bilersattning]                  BIT           NULL,
    [Traktamente]                    BIT           NULL,
    [AndraKostnadsers]               INT           NULL,
    [KontantErsattningEjUlagSA]      INT           NULL,
    [SkatteplOvrigaFormanerEjUlagSA] INT           NULL,
    [SkatteplBilformanEjUlagSA]      INT           NULL,
    [DrivmVidBilformanEjUlagSA]      INT           NULL,
    [FormanSomPensionEjUlagSA]       BIT           NULL,
    [BostadsformanSmahusEjUlagSA]    BIT           NULL,
    [BostadsformanEjSmahusEjUlagSA]  BIT           NULL,
    [ErsEjSocAvgEjJobbavd]           INT           NULL,
    [KontantErsattningUlagEA]        INT           NULL,
    [SkatteplOvrigaFormanerUlagEA]   INT           NULL,
    [SkatteplBilformanUlagEA]        INT           NULL,
    [DrivmVidBilformanUlagEA]        INT           NULL,
    [BostadsformanSmahusUlagEA]      BIT           NULL,
    [BostadsformanEjSmahusUlagEA]    BIT           NULL,
    [Tjanstepension]                 INT           NULL,
    [ErsFormanBostadMmSINK]          INT           NULL,
    [Forskarskattenamnden]           INT           NULL,
    [VissaAvdrag]                    INT           NULL,
    [UnderlagRutarbete]              INT           NULL,
    [UnderlagRotarbete]              INT           NULL,
    [Hyresersattning]                INT           NULL,
    [Fartygssignal]                  VARCHAR (5)   NULL,
    [AntalDagarSjoinkomst]           INT           NULL,
    [NarfartFjarrfart]               VARCHAR (1)   NULL,
    [FartygetsNamn]                  VARCHAR (50)  NULL,
    [VerksamhetensArt]               VARCHAR (50)  NULL,
    [UtsandUnderTid]                 VARCHAR (1)   NULL,
    [KonventionMed]                  INT           NULL,
    [LandskodArbetsland]             INT           NULL,
    [Uploaded]                       BIT           NULL,
    [UploadedTime]                   DATETIME      NULL,
    [UpdatedBy]                      VARCHAR (10)  NULL,
    PRIMARY KEY CLUSTERED ([AutoId] ASC)
);


GO

