SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mengatur](
	[idMengatur] [int] IDENTITY(106,1) NOT NULL,
	[idAdmin] [varchar](255) NOT NULL,
	[idArtikel] [int] NOT NULL,
	[status] [varchar](15) NOT NULL,
	[tanggal] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mengatur] ADD  CONSTRAINT [PK_Mengatur] PRIMARY KEY CLUSTERED 
(
	[idMengatur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mengatur]  WITH CHECK ADD  CONSTRAINT [FK_Mengatur_Admin] FOREIGN KEY([idAdmin])
REFERENCES [dbo].[Admin] ([email])
GO
ALTER TABLE [dbo].[Mengatur] CHECK CONSTRAINT [FK_Mengatur_Admin]
GO
ALTER TABLE [dbo].[Mengatur]  WITH CHECK ADD  CONSTRAINT [FK_Mengatur_Artikel] FOREIGN KEY([idArtikel])
REFERENCES [dbo].[Artikel] ([idArtikel])
GO
ALTER TABLE [dbo].[Mengatur] CHECK CONSTRAINT [FK_Mengatur_Artikel]
GO
