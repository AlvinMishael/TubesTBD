SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaftarKategoriArtikel](
	[idDaftarKategoriArtikel] [int] IDENTITY(201,1) NOT NULL,
	[idArtikel] [int] NOT NULL,
	[idKategori] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DaftarKategoriArtikel] ADD  CONSTRAINT [PK_DaftarKategoriArtikel] PRIMARY KEY CLUSTERED 
(
	[idDaftarKategoriArtikel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DaftarKategoriArtikel]  WITH CHECK ADD  CONSTRAINT [FK_DaftarKategoriArtikel_Artikel] FOREIGN KEY([idArtikel])
REFERENCES [dbo].[Artikel] ([idArtikel])
GO
ALTER TABLE [dbo].[DaftarKategoriArtikel] CHECK CONSTRAINT [FK_DaftarKategoriArtikel_Artikel]
GO
ALTER TABLE [dbo].[DaftarKategoriArtikel]  WITH CHECK ADD  CONSTRAINT [FK_DaftarKategoriArtikel_Kategori] FOREIGN KEY([idKategori])
REFERENCES [dbo].[Kategori] ([idKategori])
GO
ALTER TABLE [dbo].[DaftarKategoriArtikel] CHECK CONSTRAINT [FK_DaftarKategoriArtikel_Kategori]
GO
