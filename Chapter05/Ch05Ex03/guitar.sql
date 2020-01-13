CREATE DATABASE guitar;

/* ------------ target the guitar database ------- */

CREATE TABLE [dbo].[GUITARS] (
    [GUITAR_ID] INT           NOT NULL,
    [BRAND]     NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([GUITAR_ID] ASC)
);

INSERT INTO [dbo].[GUITARS] ([GUITAR_ID], [BRAND]) VALUES (1, N'Fender')
INSERT INTO [dbo].[GUITARS] ([GUITAR_ID], [BRAND]) VALUES (2, N'Gibson')

CREATE TABLE [dbo].[MODELS] (
    [GUITAR_ID] INT           NOT NULL,
    [MODEL_ID]  INT           NOT NULL,
    [MODEL]     NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_MODELS] PRIMARY KEY CLUSTERED ([GUITAR_ID] ASC, [MODEL_ID] ASC),
    CONSTRAINT [FK_MODELS_GUITARS] FOREIGN KEY ([GUITAR_ID]) REFERENCES [dbo].[GUITARS] ([GUITAR_ID])
);

INSERT INTO [dbo].[MODELS] ([GUITAR_ID], [MODEL_ID], [MODEL]) VALUES (1, 1, N'Stratocaster')
INSERT INTO [dbo].[MODELS] ([GUITAR_ID], [MODEL_ID], [MODEL]) VALUES (1, 2, N'Telecaster')
INSERT INTO [dbo].[MODELS] ([GUITAR_ID], [MODEL_ID], [MODEL]) VALUES (1, 3, N'Jazzmaster')
INSERT INTO [dbo].[MODELS] ([GUITAR_ID], [MODEL_ID], [MODEL]) VALUES (2, 1, N'Les Paul Custom')
INSERT INTO [dbo].[MODELS] ([GUITAR_ID], [MODEL_ID], [MODEL]) VALUES (2, 2, N'Les Paul Standard')
INSERT INTO [dbo].[MODELS] ([GUITAR_ID], [MODEL_ID], [MODEL]) VALUES (2, 3, N'Explorer')
INSERT INTO [dbo].[MODELS] ([GUITAR_ID], [MODEL_ID], [MODEL]) VALUES (2, 4, N'Flying V')