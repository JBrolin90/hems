CREATE TABLE [dbo].[Moms] (
    [Id]                             VARCHAR (4)   NOT NULL,
    [Name]                           VARCHAR (40)  NULL,
    [Ant_man]                        SMALLINT      NULL,
    [kto_um1]                        VARCHAR (6)   NULL,
    [kto_um2]                        VARCHAR (6)   NULL,
    [kto_um3]                        VARCHAR (6)   NULL,
    [kto_im]                         VARCHAR (6)   NULL,
    [kto_umEg]                       VARCHAR (6)   NULL,
    [kto_red]                        VARCHAR (6)   NULL,
    [m_proc1]                        FLOAT (53)    NULL,
    [m_proc2]                        FLOAT (53)    NULL,
    [m_proc3]                        FLOAT (53)    NULL,
    [auto_of]                        BIT           NULL,
    [man_of_fraga]                   BIT           NULL,
    [kto_um1b]                       VARCHAR (6)   NULL,
    [kto_um2b]                       VARCHAR (6)   NULL,
    [kto_um3b]                       VARCHAR (6)   NULL,
    [kto_imb]                        VARCHAR (6)   NULL,
    [kto_umEgb]                      VARCHAR (6)   NULL,
    [kto_um1c]                       VARCHAR (6)   NULL,
    [kto_um2c]                       VARCHAR (6)   NULL,
    [kto_um3c]                       VARCHAR (6)   NULL,
    [kto_imc]                        VARCHAR (6)   NULL,
    [kto_avrundning]                 VARCHAR (6)   NULL,
    [skattedekl_stora]               BIT           NULL,
    [periodmoms]                     BIT           NULL,
    [momsfri]                        BIT           NULL,
    [BlandadVerksamhet]              BIT           NULL,
    [BlandadVerksamhetAvdragsrättIM] FLOAT (53)    NULL,
    [remarks]                        VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

