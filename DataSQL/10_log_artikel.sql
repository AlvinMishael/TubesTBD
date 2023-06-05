SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogArtikel](
	[idLog] [int] IDENTITY(456,1) NOT NULL,
	[namaArtikel] [varchar](255) NOT NULL,
	[aktivitas] [varchar](15) NOT NULL,
	[status] [varchar](15) NOT NULL,
	[tanggal] [datetime] NOT NULL,
	[namaAktor] [varchar](255) NOT NULL,
	[tipeAktor] [varchar](15) NOT NULL,
	[idAktor] [varchar](255) NOT NULL,
	[idArtikel] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogArtikel] ADD  CONSTRAINT [PK_LogArtikel] PRIMARY KEY CLUSTERED 
(
	[idLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogArtikel]  WITH CHECK ADD  CONSTRAINT [FK_LogArtikel_Artikel] FOREIGN KEY([idArtikel])
REFERENCES [dbo].[Artikel] ([idArtikel])
GO
ALTER TABLE [dbo].[LogArtikel] CHECK CONSTRAINT [FK_LogArtikel_Artikel]
GO
