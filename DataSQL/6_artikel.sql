SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artikel](
	[idArtikel] [int] IDENTITY(151,1) NOT NULL,
	[namaArtikel] [varchar](255) NOT NULL,
	[isi] [text] NOT NULL,
	[namaPenulis] [varchar](255) NOT NULL,
	[status] [varchar](15) NOT NULL,
	[tipe] [varchar](7) NOT NULL,
	[tanggal] [datetime] NOT NULL,
	[idPenulis] [varchar](255) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Artikel] ADD  CONSTRAINT [PK_Artikel] PRIMARY KEY CLUSTERED 
(
	[idArtikel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Artikel]  WITH CHECK ADD  CONSTRAINT [FK_Artikel_Penulis] FOREIGN KEY([idPenulis])
REFERENCES [dbo].[Pengguna] ([email])
GO
ALTER TABLE [dbo].[Artikel] CHECK CONSTRAINT [FK_Artikel_Penulis]
GO
