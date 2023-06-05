SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaksi](
	[idTransaksi] [int] IDENTITY(201,1) NOT NULL,
	[idPengguna] [varchar](255) NOT NULL,
	[harga] [money] NOT NULL,
	[tanggal] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Transaksi] ADD  CONSTRAINT [PK_Transaksi] PRIMARY KEY CLUSTERED 
(
	[idTransaksi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Transaksi]  WITH CHECK ADD  CONSTRAINT [FK_Transaksi_Pengguna] FOREIGN KEY([idPengguna])
REFERENCES [dbo].[Pengguna] ([email])
GO
ALTER TABLE [dbo].[Transaksi] CHECK CONSTRAINT [FK_Transaksi_Pengguna]
GO
