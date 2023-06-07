/****** Object:  Table [dbo].[admin]    Script Date: 6/7/2023 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[email] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[nama] [varchar](255) NOT NULL,
	[flag] [varchar](15) NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[artikel]    Script Date: 6/7/2023 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[artikel](
	[idArtikel] [int] IDENTITY(1,1) NOT NULL,
	[namaArtikel] [varchar](255) NOT NULL,
	[isi] [text] NOT NULL,
	[namaPenulis] [varchar](255) NOT NULL,
	[status] [varchar](15) NOT NULL,
	[tipe] [varchar](7) NOT NULL,
	[tanggal] [datetime] NOT NULL,
	[idPenulis] [varchar](255) NOT NULL,
 CONSTRAINT [PK_artikel] PRIMARY KEY CLUSTERED 
(
	[idArtikel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DaftarKategoriArtikel]    Script Date: 6/7/2023 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaftarKategoriArtikel](
	[idDaftarKategoriArtikel] [int] IDENTITY(1,1) NOT NULL,
	[idArtikel] [int] NOT NULL,
	[idKategori] [int] NOT NULL,
 CONSTRAINT [PK_daftar_kategori_artikel] PRIMARY KEY CLUSTERED 
(
	[idDaftarKategoriArtikel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kategori]    Script Date: 6/7/2023 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kategori](
	[Topic] [varchar](255) NOT NULL,
	[idKategori] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_kategori] PRIMARY KEY CLUSTERED 
(
	[idKategori] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogArtikel]    Script Date: 6/7/2023 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogArtikel](
	[idLog] [int] IDENTITY(1,1) NOT NULL,
	[namaArtikel] [varchar](255) NOT NULL,
	[aktivitas] [varchar](15) NOT NULL,
	[status] [varchar](15) NOT NULL,
	[tanggal] [datetime] NOT NULL,
	[namaAktor] [varchar](255) NOT NULL,
	[tipeAktor] [varchar](15) NOT NULL,
	[idAktor] [varchar](255) NOT NULL,
	[idArtikel] [int] NOT NULL,
 CONSTRAINT [PK_log_artikel] PRIMARY KEY CLUSTERED 
(
	[idLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogHarga]    Script Date: 6/7/2023 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogHarga](
	[idLog] [int] IDENTITY(1,1) NOT NULL,
	[idAdmin] [varchar](255) NOT NULL,
	[harga] [money] NOT NULL,
	[tanggalBerlaku] [datetime] NOT NULL,
 CONSTRAINT [PK_log_harga] PRIMARY KEY CLUSTERED 
(
	[idLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[membaca]    Script Date: 6/7/2023 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[membaca](
	[idMembaca] [int] IDENTITY(1,1) NOT NULL,
	[idPembaca] [varchar](255) NOT NULL,
	[idArtikel] [int] NOT NULL,
 CONSTRAINT [PK_membaca] PRIMARY KEY CLUSTERED 
(
	[idMembaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mengatur]    Script Date: 6/7/2023 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mengatur](
	[idMengatur] [int] IDENTITY(1,1) NOT NULL,
	[idAdmin] [varchar](255) NOT NULL,
	[idArtikel] [int] NOT NULL,
	[status] [varchar](15) NOT NULL,
	[tanggal] [datetime] NOT NULL,
 CONSTRAINT [PK_mengatur] PRIMARY KEY CLUSTERED 
(
	[idMengatur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pengguna]    Script Date: 6/7/2023 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pengguna](
	[email] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[nama] [varchar](255) NOT NULL,
	[alamat] [varchar](255) NOT NULL,
	[tipeMember] [varchar](7) NOT NULL,
	[noTelp] [varchar](255) NOT NULL,
	[flag] [varchar](15) NOT NULL,
 CONSTRAINT [PK_pengguna] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaksi]    Script Date: 6/7/2023 9:26:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaksi](
	[idTransaksi] [int] IDENTITY(1,1) NOT NULL,
	[idPengguna] [varchar](255) NOT NULL,
	[harga] [money] NOT NULL,
	[tanggal] [datetime] NOT NULL,
 CONSTRAINT [PK_transaksi] PRIMARY KEY CLUSTERED 
(
	[idTransaksi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[admin] ([email], [password], [nama], [flag]) VALUES (N'carterhannah@example.net', N'%BG$0NEu^$', N'Stephanie Collins', N'active')
INSERT [dbo].[admin] ([email], [password], [nama], [flag]) VALUES (N'chad23@example.org', N'9sFw2kXu_e', N'Peter Montgomery', N'active')
INSERT [dbo].[admin] ([email], [password], [nama], [flag]) VALUES (N'christian11@example.com', N'4_NP0sve_f', N'Elizabeth Woods', N'active')
INSERT [dbo].[admin] ([email], [password], [nama], [flag]) VALUES (N'crawfordmichelle@example.com', N')u4&qKafbM', N'Jorge Sullivan', N'active')
INSERT [dbo].[admin] ([email], [password], [nama], [flag]) VALUES (N'donnadennis@example.org', N'(jQWUkFEo1', N'Theodore Mcgrath', N'active')
INSERT [dbo].[admin] ([email], [password], [nama], [flag]) VALUES (N'levymichael@example.com', N'#j+8Wve@wY', N'Susan Levy', N'active')
INSERT [dbo].[admin] ([email], [password], [nama], [flag]) VALUES (N'michelelopez@example.org', N'A2GE)D1o&@', N'Stephanie Sutton', N'active')
INSERT [dbo].[admin] ([email], [password], [nama], [flag]) VALUES (N'moodyryan@example.com', N'#!5iGCYjr)', N'Norma Fisher', N'active')
INSERT [dbo].[admin] ([email], [password], [nama], [flag]) VALUES (N'qcooper@example.org', N'(7Z*6ZzM#t', N'Brian Hamilton', N'active')
INSERT [dbo].[admin] ([email], [password], [nama], [flag]) VALUES (N'reedgregory@example.org', N'9mC7d67c^+', N'Susan Wagner', N'active')
GO
SET IDENTITY_INSERT [dbo].[artikel] ON 

INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (1, N'Prevent quickly foot star guy former opportunity article alone kid important risk', N'Success top ten bed street down teach with. Discover make include brother government wrong. Child surface take body. History floor very mother report finally raise. College me fast bit hope. Ball stop enough decade raise issue.', N'Rebecca Sandoval', N'submit', N'free', CAST(N'2021-01-26T11:20:17.000' AS DateTime), N'bryantjennifer@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (2, N'Begin phone long scientist agent authority prepare yes both edge', N'Spring blood response heavy movement. Charge lead music see business. Million both decision room. Television church above research job successful. No take many water until.', N'Stacy Chan', N'submit', N'free', CAST(N'2020-02-19T04:43:14.000' AS DateTime), N'jacob61@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (3, N'Least sort rise actually born energy think hit', N'Build identify seat run. War address guy month not. Thank case case away time democratic. Realize rate staff ball. Fly fact world water nature boy. Couple image understand others baby. Development view seat eye anyone.', N'Paul Brown', N'submit', N'free', CAST(N'2012-09-07T19:43:54.000' AS DateTime), N'alexander38@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (4, N'Hotel exactly use ago I according', N'Expect affect himself. Whatever no century behind successful of why. Easy spend a believe save. Task much region give project particular. Home order indicate force charge design. However way season similar she professional. Must and speech country admit follow break.', N'Kelsey Davis', N'take down', N'premium', CAST(N'1986-06-03T06:15:28.000' AS DateTime), N'zachary64@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (5, N'Treat push first crime onto star board show take no', N'Worry score federal song onto gun TV from. Important school kind consumer beat half gun some. For strategy various. Hear edge picture agency. Key every up successful. Baby cause onto worker mother other candidate. Away cell office company. Care month president everyone record Mrs. Far glass him.', N'Theresa Estrada', N'take down', N'premium', CAST(N'1992-04-14T11:46:52.000' AS DateTime), N'crystalburton@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (6, N'Wall organization certain discover through feel easy charge beat', N'Front pass source project family always address. Film product international industry. Politics order indeed group now bill know. Today yet bit knowledge coach owner. Impact case military turn discover crime fear. Some man maybe among everyone. Matter after year affect reveal bad experience. Wish different age indeed base most week. Professor oil professor help business.', N'Susan Harris', N'reject', N'premium', CAST(N'1975-11-28T18:21:49.000' AS DateTime), N'joseph76@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (7, N'Especially southern group door fall cover', N'President defense too check. Rather choice stand baby just. Interesting seat language Mrs raise. Interview nothing at poor. Country continue all buy or box. Yet most walk study career including. This certainly full sign.', N'Terry Wells', N'publish', N'premium', CAST(N'1986-12-29T07:29:44.000' AS DateTime), N'burnettnatalie@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (8, N'Just mind mother building walk actually continue number imagine', N'Seem kind leave five share mission rock. Low even investment cultural responsibility bag. His hotel require country. Amount maybe figure off reason watch argue. Necessary food owner identify. Forward sound task concern than. Challenge event today rock message.', N'Rachel Lopez', N'submit', N'free', CAST(N'2009-12-01T20:10:29.000' AS DateTime), N'bradyeric@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (9, N'Tree suddenly information least imagine including study deep accept old writer', N'Throughout commercial interest your. Suggest wish travel admit allow reduce everybody especially. Cup base feel Mrs protect property. As mother director much land look think. Require pick just officer down single southern. Whatever answer positive although international trouble us. Agency above radio debate situation. Statement number everyone peace can expect realize air. Yourself near receive hear.', N'Brian Green', N'reject', N'premium', CAST(N'1973-11-03T13:41:17.000' AS DateTime), N'michael76@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (10, N'Huge wall house himself feeling evening center', N'Focus detail article husband. Agreement available produce majority science between. Simply to miss light after table condition. Record car fear measure south. Yet would magazine author. Off tough difference impact management practice. Audience just really sport. Cell writer avoid affect read. Fire space usually detail image.', N'Elizabeth Russell', N'reject', N'free', CAST(N'1989-03-13T19:52:15.000' AS DateTime), N'wanda38@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (11, N'Short available others thank attack money', N'Spend pass smile. Court realize rest oil. Set although identify only hope about movie. Republican we that about executive computer fear. Next believe rather couple which. The station time member color southern contain. Professional key TV sort cultural at care. Sit interesting television money student near then understand. Report nearly help them response seat.', N'Susan Williams', N'take down', N'free', CAST(N'1976-08-03T06:24:17.000' AS DateTime), N'virginia18@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (12, N'Attack from attention including everybody human final mention one arm fill character', N'Plan among relate decade on everybody. Tv police officer security. Base arm computer garden free. Challenge protect resource good. Agent record structure one prepare organization. Leave world science reflect. Study car rule her newspaper teacher section. When institution agency which impact parent story. Degree cultural rule including physical safe. Same former picture western ability woman.', N'Taylor Johnson', N'reject', N'free', CAST(N'1995-04-21T11:11:33.000' AS DateTime), N'igarza@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (13, N'Inside official hold official attack better even onto story', N'If guess owner on buy skin. Set four free behind condition themselves couple. About perhaps green score. Door bar save lose bank. For always follow boy would lose stock support. Everybody off special drop even program. Ability picture manager product shake agree about. Population leave speak behind.', N'Andrew Gould', N'submit', N'free', CAST(N'1997-06-27T10:19:48.000' AS DateTime), N'michaelhenry@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (14, N'Usually site while strategy say left yes hard', N'They left tell level. Back anything leg state strategy both check professional. Alone analysis health business indeed pass bill. By will leader management music. Administration unit recent rise use body media discover. Others boy such bar always. Force course box campaign difference system rate myself. Often usually rate foreign.', N'Lauren Hayes', N'publish', N'premium', CAST(N'2002-07-10T11:05:04.000' AS DateTime), N'owolf@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (15, N'Medical understand political girl thought analysis commercial', N'What theory each once explain very. Admit price live family smile quite crime administration. Rest take little beyond road. Thank possible dream cover since. Computer effort between collection. Scene lay himself use still successful south. Tough floor try indeed.', N'Travis Schultz', N'submit', N'free', CAST(N'2021-03-31T19:58:55.000' AS DateTime), N'bullockarthur@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (16, N'Girl likely eat bring fly approach fine force back offer subject', N'Hour able discuss beyond. Information as receive difficult yard age. Operation stay different down sit base though. At man candidate government themselves term week. Career popular account shake cultural state itself. Yard mission suggest site. Feeling level his create economic specific apply staff. Race street perform drop recent. Family along community whose. Individual reach four brother other tree away.', N'Amy Lowe', N'reject', N'premium', CAST(N'1995-09-19T21:51:01.000' AS DateTime), N'csmith@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (17, N'Scientist any turn blue college receive significant energy reduce find beat lay', N'Reflect stage visit strategy speak. Charge recognize home create main traditional. Bit set special ago impact environmental what sign. Night debate say professional within allow eat. Sense painting at baby figure home. Until thousand member in best street six.', N'Joseph Freeman', N'submit', N'free', CAST(N'2014-09-20T19:37:38.000' AS DateTime), N'taylorkristin@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (18, N'Simply somebody along could carry especially just control local even environmental score', N'Pick very southern thus. Partner better turn factor detail thousand. Quickly daughter country cut environment edge name down. Perform something production shake main agreement former. War word if light alone represent development perhaps. Red accept popular line stage. Sing read reduce his science good major. Along marriage east trial.', N'Austin Boyer', N'reject', N'free', CAST(N'1983-09-08T09:00:54.000' AS DateTime), N'jessica35@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (19, N'Life fear boy role worry program new article protect American case power', N'Fine here let party explain big list. Some after stuff her once. To such true entire season sign. Item never eight court. Child half plant visit. Trade federal answer kitchen goal our grow. Design go commercial court. Offer employee get sound themselves purpose.', N'Tasha Rodriguez', N'submit', N'free', CAST(N'2020-09-04T01:38:22.000' AS DateTime), N'wrightcynthia@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (20, N'Nothing successful change than and again', N'Somebody remember they garden through sport its. Force order discover exactly sense threat. Staff style win purpose case. Seat meet quality offer. Senior child image among production old herself.', N'Stacy Chan', N'reject', N'free', CAST(N'1982-02-07T20:58:50.000' AS DateTime), N'jacob61@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (21, N'Teacher government pattern politics research too sell hear', N'Model star employee size pretty admit. Expert lawyer indeed. Car break early sort can. North throughout little who environment. Mean power dog safe feeling. Man fast however industry buy score general behind. Environmental item majority police important. Run behavior recently.', N'Laurie Wallace', N'take down', N'premium', CAST(N'1983-01-26T16:11:06.000' AS DateTime), N'clementslaura@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (22, N'Leg many effort station by long painting send team number', N'Course else account listen. From run manager cell away mind. Effect culture glass executive in movement may poor. Education career control discussion whose. Beyond important party skin single at right. Would again low determine. Institution others home job bar exist. Late responsibility expect south.', N'Kathy Santana', N'submit', N'premium', CAST(N'2013-01-12T09:48:27.000' AS DateTime), N'cjohnson@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (23, N'Foot dog education little surface stand bill report coach rather many Mr something', N'Mean once oil least floor everyone. Send state former. Kitchen carry movement law. Line attention take evidence. Stop foreign indeed. Short now score ever note. Nor your education. Risk expert key many.', N'William Garcia', N'submit', N'premium', CAST(N'1970-11-25T17:20:09.000' AS DateTime), N'smithtyler@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (24, N'Business community any eat also her cultural may explain move parent skin', N'Special cell save bank work turn. Ok something not better speech least. Manager pass arm couple building animal change fund. With teacher establish. Great too song tend. Bad say event number local central billion past. Network control sound occur thousand. Central explain say arrive street.', N'Kathy Santana', N'submit', N'free', CAST(N'2018-04-28T23:35:31.000' AS DateTime), N'cjohnson@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (25, N'High poor energy news alone card culture help', N'Begin body relationship next analysis indeed drop. Newspaper candidate natural lead. Nice stock success former organization. Green name list lay upon. Hundred country how down final add investment necessary. Rule stuff police people. Suggest become ever play total. Catch huge research item. Stage another common physical she peace should.', N'Theresa Estrada', N'submit', N'premium', CAST(N'1982-09-15T02:41:31.000' AS DateTime), N'crystalburton@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (26, N'Doctor would natural laugh all art poor foreign term', N'Hospital effort store current nor many product. Television ten federal teacher the. Care method wide scene upon wonder art station. Despite late collection own mother. Wide give front manager. Sing player old trouble individual. Air hundred clear tough moment soldier around. Agent meet figure nearly lose physical administration culture.', N'Michelle Kelley', N'take down', N'free', CAST(N'1993-07-11T18:23:07.000' AS DateTime), N'bennettalan@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (27, N'Conference service social protect style others', N'Floor may water group spend even. Key newspaper theory job free product. Present possible single successful. Political natural road last. Government company already discussion service technology research. Table lay white sign. Wife attack memory staff. Hot role me bar so.', N'Joseph Jones', N'submit', N'free', CAST(N'2015-09-11T08:27:34.000' AS DateTime), N'kmitchell@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (28, N'Old clearly administration style control cost', N'Sell our for force mention opportunity rock might. First street today hospital lead will with. Show church such happy keep. Last within stand. Film media bed. Do consumer bed color station old. Bar avoid positive someone attorney off human eat.', N'Dr. James Willis', N'submit', N'premium', CAST(N'1994-07-17T16:57:46.000' AS DateTime), N'mejiaashley@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (29, N'Bank soon risk my others order director', N'Support that ahead suffer. Project boy some away. Development always simply shake special. Law office the design east. Bad citizen break save society. Ground chair consider yeah employee per name.', N'Victor Nolan', N'reject', N'premium', CAST(N'1985-07-04T14:24:34.000' AS DateTime), N'kmalone@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (30, N'Conference around commercial price popular buy have', N'Environment citizen size author. Letter fast yes ground everything develop role. Choice someone prepare business our. Fight nearly play success role partner. Room safe sell present community direction. Best skin first collection. Audience long structure computer police return.', N'Jill Sherman', N'reject', N'premium', CAST(N'1985-11-08T01:53:15.000' AS DateTime), N'cward@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (31, N'Congress perform read production win form great doctor common treat stay parent', N'Computer subject firm after participant. Watch for others wear pay. Ball too particularly. Arm ready foreign whose us strategy. Whose result determine Republican he indeed. Hand hear run available summer page. Way here year toward design.', N'Taylor Johnson', N'reject', N'premium', CAST(N'1979-11-09T12:23:45.000' AS DateTime), N'igarza@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (32, N'Clearly body whom reduce draw hospital account mean part agent', N'Road north speech reason shoulder after control. Short environmental save goal task mention author. Bar policy minute dinner at hold white. Story the partner positive single produce almost. Sister yet fast force. Class class at former wife wrong. Yeah save tonight million themselves central stage. Doctor ability security culture.', N'Victoria Hernandez MD', N'submit', N'free', CAST(N'2007-02-06T12:10:20.000' AS DateTime), N'ntaylor@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (33, N'May recent cover debate decade table visit able behind it only method rate', N'Significant share relate end blue remember account. College discover first high. Since floor east expect he agreement. Hotel develop fund building. Gun trip one if. Drive team into arm relate. Trade article head beyond reveal successful seem.', N'William Roberts', N'submit', N'premium', CAST(N'2018-03-20T22:24:54.000' AS DateTime), N'david95@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (34, N'Fact sense decade hear wide their', N'Break sort behavior director. Skill white play affect significant entire away. Executive road us back. Decide source know all. Enjoy than occur occur travel beyond. Debate him alone suggest accept school. Paper significant approach discover picture defense admit. Walk range international shoulder.', N'Jennifer Morales', N'submit', N'premium', CAST(N'1990-08-30T02:30:09.000' AS DateTime), N'fcarpenter@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (35, N'Happen study word public grow activity agreement painting environmental executive successful pretty knowledge', N'Per enough enough responsibility significant. Friend green near item serve since. Far couple none community industry admit. City mother last score however reach serve. Affect guess million form interesting eat be. Positive through yard.', N'Sean Green', N'reject', N'premium', CAST(N'1995-02-05T03:16:34.000' AS DateTime), N'kenneth85@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (36, N'Fish road young collection reduce industry', N'International continue baby foot. Word first himself idea behind street. About region industry hot member itself. Enter will quickly near discuss pressure. Avoid Congress list community. Save home sure child player. Dark audience far life.', N'Heather Roberts', N'take down', N'premium', CAST(N'2004-08-18T19:27:23.000' AS DateTime), N'lauragonzales@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (37, N'Key daughter idea heart camera might here', N'Major hope economy important much. Star boy move skill effect might people. Movie young air seven might. Sure edge arrive table similar bed option half. Citizen detail quickly involve year already partner. Finally wear each five idea authority position. Site bed foot opportunity mouth present.', N'Michelle Hughes', N'take down', N'free', CAST(N'2001-11-14T11:43:28.000' AS DateTime), N'pittsmichael@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (38, N'Than two since any cause computer throughout', N'How white visit stand mother. Morning movement stay skill cell local society Democrat. Once consider international look prevent management. Pick minute go record. Simply less campaign sit increase challenge. Five safe produce may race live. Later stop bill southern will speak or.', N'Albert Williams', N'take down', N'premium', CAST(N'1970-10-30T02:00:27.000' AS DateTime), N'lwilliams@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (39, N'Agent matter mother seem medical goal tonight my surface institution', N'Very table through item better behind city girl. Get boy break present authority son will rate. Soldier strong charge director. Might field meet all. Today book support size city bar. These total sign know laugh. After beat entire think explain out purpose.', N'Faith Cabrera', N'publish', N'free', CAST(N'1986-05-25T08:37:18.000' AS DateTime), N'justin39@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (40, N'Difference experience get from land population fly season success foreign however government trouble value', N'Moment travel look ready TV information black. Yes find wait. No such believe middle in happen health learn. Alone agent matter design prevent memory. Hotel check push fight case change. Human western role modern stop.', N'Joshua Hernandez', N'reject', N'premium', CAST(N'1977-04-15T07:30:31.000' AS DateTime), N'carl05@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (41, N'Listen poor draw century process spring health finally effort', N'Finish wish rate. Weight development base establish people. Short so defense live center friend. Form ready special same practice four. Unit nearly miss. His can already side image. Down anyone in arm defense industry writer.', N'Cheryl Bradley', N'submit', N'free', CAST(N'2003-05-17T11:32:10.000' AS DateTime), N'longjacqueline@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (42, N'Can these bad sister science green role amount', N'Find listen deal dinner. Range Republican value effect pick mean born by. Style might evidence into represent. High about wish half watch exactly. Development edge people figure. Group example although study role. Security add service activity travel will way. Probably commercial brother head successful source. Need friend do among themselves station scientist.', N'Laura Gregory', N'take down', N'premium', CAST(N'1990-04-10T13:22:43.000' AS DateTime), N'howardemily@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (43, N'List she thing west growth important serve compare dark design treatment table', N'They join century old. Current education find listen. Choice author serve more the. Short always how officer trouble. From purpose whom health deal among place. Short project two letter form character. Charge friend throughout since go into hand record.', N'Matthew Russo', N'submit', N'premium', CAST(N'1995-04-02T03:17:45.000' AS DateTime), N'monica30@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (44, N'Ability always help watch oil himself study middle section nearly', N'Real data budget party action. Someone white enjoy join goal test animal. Particular institution lead rock. My night this none attack same base. Close weight family friend total find paper. Or charge trouble within above.', N'Katherine Ibarra', N'submit', N'free', CAST(N'2016-09-17T10:53:48.000' AS DateTime), N'lramirez@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (45, N'Bank condition reduce energy animal still by can this will right fight people', N'Spend piece power be nor result best. Nation important decide notice. On particular decision plant audience owner ok. Hand red speak agency. Person put see age. Rise this network on shoulder behavior purpose. Oil forget heart truth nothing feeling adult. Single special now until. North much drive report.', N'Lisa Johnston', N'submit', N'premium', CAST(N'2001-10-10T23:11:23.000' AS DateTime), N'audreyburton@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (46, N'Support doctor above national experience soon tree work buy college next son', N'Ask law cell contain bring matter lay fish. Star teach sing against offer. Fact economic never sort mind job. Present pattern court bill discussion while. Amount difficult show TV. Ask action top identify close now. Century cost room blue media network around animal.', N'Albert Williams', N'take down', N'premium', CAST(N'2017-08-16T02:03:03.000' AS DateTime), N'lwilliams@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (47, N'Type relate piece factor talk start short run run', N'Think accept discuss leave political pressure him. Book forward light why page popular continue. Least sort sometimes require finally. Apply ever many amount time instead. Federal only easy though meeting new Republican. Young compare kid themselves road person national. Gun thing growth hair follow time set nor. Sell hotel western. Nor remain threat him how ok. Again leg field activity sing hour offer. After build then hospital about.', N'Kimberly Maynard', N'reject', N'premium', CAST(N'2011-05-09T20:03:32.000' AS DateTime), N'scott54@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (48, N'Former bag news especially bad no agree sit night do kid', N'Any energy her. Pm skin fill detail less lot project. Front decade remain up people road. Director beyond situation cell edge three tend. Box letter school. Protect kind himself business out skin foreign improve. Service commercial generation without.', N'George Allen', N'submit', N'free', CAST(N'2018-12-10T01:21:05.000' AS DateTime), N'kelsey56@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (49, N'Believe impact product space plant six agree draw', N'Office suggest left. Could force subject enter challenge once raise data. Staff none throughout on bar. Material happy return everything bill clear film. Plant sign citizen however professor down cold indicate. Pay budget kitchen upon.', N'Timothy Tucker', N'submit', N'free', CAST(N'2020-03-31T10:32:19.000' AS DateTime), N'coxtina@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (50, N'Off plant commercial address artist strong page very site score share push kid', N'Garden data wife send. Table office general. Usually east chance religious most. Machine could suddenly take thank improve. Shoulder every to worker treat station suffer book. Develop house market tree ahead major good. Shake also stay fall young tree. Option my serve bed some.', N'John Richards', N'reject', N'premium', CAST(N'1972-08-21T10:13:02.000' AS DateTime), N'tpayne@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (51, N'Talk begin recently laugh same way process provide medical hour reveal knowledge', N'Number crime reduce area expert here four him. Lawyer light run decision not worker. Identify Mr politics assume small. Action laugh doctor speech action cold most. Painting drug decide family present likely wind. Senior rise direction he democratic. Must whose pressure call usually wrong no. Hundred low south owner institution. North method position song husband end.', N'Andrew Butler', N'submit', N'free', CAST(N'1987-10-06T12:50:27.000' AS DateTime), N'francisco25@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (52, N'Return ever try product thing beyond', N'Last simply dark life girl. Main us significant age. Represent tonight although middle hot affect. Themselves upon his fly development region. So officer consumer pattern above throw. Week alone brother herself very. Simple cold someone boy.', N'Danny Williams', N'reject', N'free', CAST(N'1989-08-12T13:29:16.000' AS DateTime), N'jennifersimmons@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (53, N'Especially tell risk decade candidate officer rate detail', N'South ok lose health worker. Live blood some between animal raise bring. There scientist let. Modern realize line kid force wide house. Perhaps data tend name effect lot give. Series treatment major contain suddenly between why result.', N'Rebecca Stark', N'submit', N'premium', CAST(N'1997-10-01T03:37:01.000' AS DateTime), N'alexander44@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (54, N'Artist customer owner decision wish offer difficult particular sound difficult effect read', N'His whom suddenly fine discussion hundred. Response young group carry foot. Red arm unit event wrong time keep. Station keep choice truth pass painting. Decision southern growth skill unit notice. Any through development decision. Sea teacher among garden once good. Today few of recent mother season behavior carry.', N'Jamie Hutchinson', N'take down', N'free', CAST(N'1987-03-19T07:32:58.000' AS DateTime), N'welchzachary@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (55, N'Room line because conference street take former describe need eight high mission say', N'Reveal thus modern thought common range prepare. East including consumer your edge. Evidence agree across cost crime police may. Pressure political research. Only choose doctor artist whom value. Hear citizen scene.', N'Meredith Rios', N'publish', N'premium', CAST(N'1980-07-25T19:52:13.000' AS DateTime), N'jenniferwaters@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (56, N'Could risk with more price material week market', N'Nice industry culture face shoulder bad. Few stock play billion benefit chair. Fast answer development. Real around soon stay fight easy rule. Very hit force avoid draw western. American course response hotel PM why if. Heart particularly night money occur pick become.', N'Matthew Bell', N'reject', N'premium', CAST(N'1985-01-17T09:00:05.000' AS DateTime), N'gburns@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (57, N'According paper discover place group force agreement question point under degree when', N'East east wrong. Through both let save much force team other. Senior former less understand skill bit friend. Well health table this skin reflect. Much more federal suffer rich seem plant. Base teach behavior will much.', N'Brandi Meyer', N'take down', N'free', CAST(N'1971-01-18T17:13:13.000' AS DateTime), N'coreycannon@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (58, N'Avoid young arm point already world specific include music environment likely', N'What professional cover various second report certain possible. Star large two leader foot your. Return college country peace. Cup true let tough. In book buy information life near. Between poor sister study fast wrong.', N'Vanessa Cooper', N'reject', N'free', CAST(N'1979-04-06T15:26:17.000' AS DateTime), N'williamjones@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (59, N'Public include return bed style board reflect wear similar', N'Economic option feel fill about article lead air. Television matter number stop. Mean simple focus until several sing quality relationship. Dinner majority last rich. Air method impact college hot under. Surface cup indeed certainly.', N'Mr. Ryan Sanchez', N'submit', N'free', CAST(N'1988-11-26T16:19:21.000' AS DateTime), N'lfox@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (60, N'Two school structure human southern huge player me whole cup staff let', N'Itself allow we Mr media Democrat. Development manage available health hand just military. Better quality history find great medical discover. Property half deal bad people. Dark wrong inside write talk. Inside mind especially against measure action because door.', N'Michelle Kelley', N'submit', N'premium', CAST(N'2019-11-07T15:31:40.000' AS DateTime), N'bennettalan@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (61, N'Weight room east suffer child four his need give finish', N'Hope real security window picture order. Young although end. Out still many. Pattern we notice course exist. Home anyone this. Political though side than tonight dog beautiful. Party eat court strategy base black.', N'Brandi Meyer', N'reject', N'premium', CAST(N'1981-06-01T08:10:44.000' AS DateTime), N'coreycannon@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (62, N'Near mission involve sell represent central feel right performance everybody key who strategy', N'Then public need media first seven language must. Staff land onto board perhaps spend whom. Cultural day east. Serious method contain direction set you question. Yet meeting outside cover happy. Policy shoulder research daughter live final get. They it improve clearly though important pass pull. Then financial people prove can. Human audience type play. Say detail my with memory.', N'Nicholas Massey', N'take down', N'free', CAST(N'1982-07-05T15:24:11.000' AS DateTime), N'anthonyruiz@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (63, N'Like occur become claim Mrs center', N'Much public across. Friend pretty firm begin understand. Tend effort college police direction. Improve check religious teach free beyond pay. Choose simple around. Accept buy article social yourself over company fast. Vote writer behind wide American. Because again fast tell there wait may enter.', N'James Stone', N'submit', N'free', CAST(N'2000-06-25T13:06:33.000' AS DateTime), N'donnasimpson@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (64, N'Avoid goal view few type feeling grow', N'Coach note and. Individual decision yes end. Close sister drug yeah unit. Improve similar full drug research. Whatever stay few heavy find bring sit. Young interesting hot mean produce total those draw.', N'Jill Sherman', N'submit', N'premium', CAST(N'1992-06-03T03:22:30.000' AS DateTime), N'cward@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (65, N'Have oil recent job rule protect lay style position drive within rock short', N'Would whom everyone product. List bit positive there. Much knowledge reveal center step respond shake. North himself build town call listen. Know million region pay almost possible. Memory north clearly identify. Certainly decision lay market difference. President evening network hair create.', N'Stephanie Bowman', N'submit', N'premium', CAST(N'2019-12-18T03:33:13.000' AS DateTime), N'qherrera@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (66, N'Military realize sport executive door benefit include song oil least stop', N'That practice officer police. That past institution. Support fall commercial late. Realize whom picture example. Tv spend girl trade audience determine shake nothing. Scientist window program case leader raise. Professional school culture without clearly. Grow which necessary.', N'Austin Heath', N'submit', N'premium', CAST(N'2014-04-07T09:26:40.000' AS DateTime), N'kingerin@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (67, N'To point threat address best type tend culture', N'Energy significant cause service can treatment. Light nature writer later cause expect. Similar political likely common identify recently my. Song away experience game give ball behind coach. Way many debate hear partner value wear. Along sure yet language red other. Shake collection begin out admit forward myself free. Majority painting nothing matter available each research.', N'Janice Johnston', N'reject', N'free', CAST(N'2002-10-01T11:29:51.000' AS DateTime), N'granthaley@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (68, N'Economic the for sometimes friend probably course catch degree body', N'Throw line employee recognize ahead town during. For discussion course kitchen listen seven draw upon. Door heart city attorney hold. While all cell. Eye space cultural large before political. Group not fill good. Hope college executive.', N'Danielle Castro', N'submit', N'premium', CAST(N'2017-03-05T22:28:05.000' AS DateTime), N'thernandez@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (69, N'Individual enjoy outside fall can college history instead', N'Idea my sometimes ago. Alone meeting nice single. Factor manager against may factor nation. Anything majority color weight easy yourself type speech. Process until brother strong star treatment. Top improve improve political. Consumer bar artist out outside discover. Show use accept into.', N'Alexa Hernandez', N'submit', N'free', CAST(N'2008-09-21T11:23:46.000' AS DateTime), N'thompsonrobert@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (70, N'Fund yard art against PM buy of behavior customer station officer toward', N'Every fine let action nation. Go street during share structure read. By traditional perform. Skill truth baby. Management answer heavy couple industry. Large cell talk upon. Air evening agent science. Better quite which deal thing audience.', N'Gary Perry', N'reject', N'free', CAST(N'2001-12-17T22:41:34.000' AS DateTime), N'tranmark@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (71, N'Public idea space foot number PM notice key watch their money watch address', N'Sing dream herself skin same almost continue result. Arm from left nothing within. Memory theory fire growth onto. Any safe voice deal campaign owner. Bring view ground case everybody effect pick. Herself year let child company matter.', N'Victor Nolan', N'publish', N'premium', CAST(N'2004-03-12T13:50:22.000' AS DateTime), N'kmalone@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (72, N'Interest culture become once case media special', N'Throughout agent financial drop. Thus health miss doctor job manage ready. Program political board. Training guess within. Team likely sort. Role care field keep act. Either task forward increase economy all adult future.', N'Faith Cabrera', N'submit', N'free', CAST(N'2012-08-18T01:38:20.000' AS DateTime), N'justin39@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (73, N'Contain during as eight red both market necessary open pretty detail', N'Program possible performance reveal. Body before politics number. Minute south will tend discover. Sit son stay the into nor into. On moment population hundred there. Full east debate western join view conference bag. Form maintain thus.', N'Christopher Hunter', N'submit', N'free', CAST(N'1997-07-31T23:04:56.000' AS DateTime), N'tyler04@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (74, N'Blue development goal win example time project enough realize camera impact born not', N'Ball company clearly never quickly. Skill artist individual. Nation across popular call near benefit major. Act live voice allow her. Dog event month. Sister less type decision important. Cold ever first time wife she. Night bank resource bed agree. To country reveal body fall.', N'Michael Simmons', N'take down', N'premium', CAST(N'1978-01-28T11:27:29.000' AS DateTime), N'shudson@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (75, N'Executive compare artist adult Democrat surface impact against probably drug would seek series', N'Sense continue foot loss property perhaps research. Ready teach approach successful sing show former. Science property music. Military senior reflect author base international admit. Evening agent take amount forget thus phone. Particular still why performance way task second. Manager image maybe myself find listen ground. Company prevent glass visit brother ago charge movement. Role hold personal large ago media building.', N'Austin Heath', N'submit', N'premium', CAST(N'2012-09-15T01:17:43.000' AS DateTime), N'kingerin@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (76, N'Age safe mother fill individual any report speak everyone shoulder subject', N'Own very there dinner number. Turn natural may. My pressure same near six resource. Public trip start describe human stay sit. Direction they write. Seem significant return forward major war while. Movie pick man face. By north police shake foreign both. Safe usually certain other field commercial say.', N'Scott Love DDS', N'submit', N'free', CAST(N'1983-08-11T10:25:39.000' AS DateTime), N'richardsbrett@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (77, N'Information foreign since charge particularly actually our ahead', N'Myself show draw stuff behavior agreement. Hard mention explain purpose institution action. What like image to. Business try real build. Both black public drop born upon this. Myself their son prove many.', N'Michelle Kelley', N'submit', N'free', CAST(N'1981-11-28T10:43:21.000' AS DateTime), N'bennettalan@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (78, N'Only environment culture record recent nor current great little hair money audience scene', N'Thousand language agent trip. Walk begin how cell. Also follow director there ok. Performance go reduce these development budget. Particular six family student later have population take. Raise training state front show sometimes. Risk resource popular. Gun exist national black surface way seat.', N'Terry Wells', N'submit', N'premium', CAST(N'2006-07-04T04:10:42.000' AS DateTime), N'burnettnatalie@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (79, N'Popular area group go respond relationship open look play war particular drive not', N'Prove pattern much. Anyone north husband movie interview apply than. Whose car mean form water. Prove staff think try. Event throw before however medical. Learn cup order live process let spend. Site since never star number.', N'Jessica Thompson', N'submit', N'free', CAST(N'2007-06-27T00:04:32.000' AS DateTime), N'jessica32@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (80, N'Amount forget might company around work director myself nation', N'Main beyond better current bed building thus. There far because later. Meeting member capital opportunity star available person finally. Lawyer performance still same degree. Over authority one discussion international deal chance. Group wrong happen quite time. Both society deal guy cost huge. What run amount guess safe. Employee fly out.', N'Angela Salazar', N'publish', N'premium', CAST(N'1981-08-28T05:19:50.000' AS DateTime), N'nicole00@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (81, N'Deep protect attack article age others ground machine the billion song television benefit', N'Some couple left couple director. Actually whom clearly next. Attorney interesting throughout add imagine goal. Head you reason buy public nice. Pattern my inside bank. Figure effect course official. Notice live figure. Tell shoulder billion feeling begin election rule.', N'Whitney Stark', N'submit', N'premium', CAST(N'2009-12-06T17:55:21.000' AS DateTime), N'bramirez@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (82, N'Process within toward nothing space most poor national like', N'Board in billion sister through foot. Expert travel reality teacher administration run allow. Drug child life sea show why. Station your successful necessary study. Wrong possible no indicate. Each bank their item claim. Compare only coach stage. Rich she TV consider future.', N'Jeremy Green', N'reject', N'premium', CAST(N'1982-11-30T05:17:42.000' AS DateTime), N'williamsmichael@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (83, N'Leave song this eat expert produce fish', N'Discuss agreement reflect live political throughout name early. Fact which who fall. Story parent one man. East play whose step dream soon tend. Idea not treat politics. Least suddenly son these race. Occur forward decision break security a management. Car speak sense onto.', N'Barbara Sanders', N'reject', N'premium', CAST(N'1971-03-27T20:06:32.000' AS DateTime), N'kellyamber@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (84, N'Image yourself hear parent participant scientist arm shake', N'Change finally fast yet message. Usually important option. Usually detail road meet wall. Officer certainly minute cold. Care entire friend follow career bad fine. Always beautiful president all north. Human win whatever record billion. Receive family side adult.', N'Faith Cabrera', N'submit', N'free', CAST(N'2023-01-01T18:13:35.000' AS DateTime), N'justin39@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (85, N'Respond make rather from company soldier course sit owner author', N'Night yet physical before treatment direction. How test street official special senior population worry. Site stop ten. Position floor amount either sometimes sign chance especially. Value stay they reason very week seat. Actually senior oil bar number open.', N'Timothy Tucker', N'submit', N'free', CAST(N'2012-06-03T21:11:38.000' AS DateTime), N'coxtina@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (86, N'Much tough coach stop age list newspaper pay mouth onto generation small', N'Its suffer manage knowledge. Statement idea week cause hospital involve home along. Daughter organization few use fund. Chair wife nor instead at. Remain enter respond need. Life society girl. Edge travel skin. Even enter somebody herself.', N'Kathy Santana', N'take down', N'free', CAST(N'1979-10-01T03:17:40.000' AS DateTime), N'cjohnson@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (87, N'Director yet president might professional apply culture imagine store all', N'Site personal buy four occur certain at. Teacher exactly seven. Think current so. Rise party three note. Black throughout soldier bar do kind and.', N'Raymond Navarro', N'take down', N'premium', CAST(N'2004-07-14T03:00:39.000' AS DateTime), N'xmacias@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (88, N'Foreign field key approach talk wear half little direction party defense', N'Establish garden because turn training. Clear understand director Mrs. Energy government could report. Bank off still second past candidate candidate. Hope investment who two art. Glass beyond big my. Number threat foot economic. Public also then research film.', N'Richard Kirby', N'submit', N'premium', CAST(N'1993-05-31T19:51:58.000' AS DateTime), N'christystanley@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (89, N'Successful age but appear general today own', N'Bill song federal nothing soon. Appear phone card film appear build discussion. Care trouble kind fund glass five throw. Night else big morning next. Foreign hit skill quite Democrat center. Magazine technology management matter policy strong them. Sure campaign military stay. Ready stop open describe practice series figure.', N'Jenny Richardson', N'reject', N'premium', CAST(N'1990-04-04T00:17:09.000' AS DateTime), N'derrick63@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (90, N'Majority executive common beyond end almost either', N'Rate arrive sense consider. Recently amount health. Seek environment hold. Sea soon everybody none available yourself station. Successful employee magazine point break. Foot Republican hope speak. American like million article arrive sort. Bar threat money individual house.', N'William Garcia', N'submit', N'premium', CAST(N'1977-05-09T14:28:12.000' AS DateTime), N'smithtyler@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (91, N'Modern show against power performance plan air how name citizen decision thus base', N'How everything reality technology thing. Level health begin. Own mean growth matter major. Pull glass buy wind. Down people you identify business. Work century general model instead able. Country we final stage concern situation thought. Difference nearly attorney.', N'Bradley Melton', N'submit', N'premium', CAST(N'2017-09-28T13:08:59.000' AS DateTime), N'sonyafrye@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (92, N'Little model several officer base help official contain certain ok himself', N'Pass law help. Think share performance become movement six. Be follow grow effort assume politics. Partner officer remain. Concern get serious these off partner. Meet eat despite street.', N'Paul Brown', N'reject', N'premium', CAST(N'2007-08-07T12:06:16.000' AS DateTime), N'alexander38@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (93, N'Just go impact affect book mother member everyone', N'Fall season across case north decade although. Board director law author. Everything church war real. Almost guy newspaper sister let quite. Character place find tree. Let majority feel modern growth work.', N'Sarah Villanueva', N'publish', N'premium', CAST(N'2006-03-25T14:29:56.000' AS DateTime), N'sfischer@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (94, N'Build learn individual mean fact mission power statement figure record fund somebody', N'Whole raise compare usually find before test. Determine inside cup. On call measure speak. Everything mind short machine remember. Shake skill source five for. Peace part wish list traditional painting. Own particularly throughout Congress that. Need future indicate within gun without.', N'Julie Chen', N'submit', N'free', CAST(N'1974-10-05T09:42:43.000' AS DateTime), N'bryanfowler@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (95, N'Present ever safe term three true never measure fast rich itself', N'Design require trip difference treat tax foreign oil. Follow let check wife customer my. Them do clear sport ball continue behavior. From everybody money provide season set consumer you. Doctor lead role yard. Evidence throw stand like just tell cover. Miss myself policy person conference by good. Join onto shake offer black exactly concern. Enjoy four probably. Though law parent seat view free mouth the.', N'Matthew Smith', N'submit', N'premium', CAST(N'1997-04-01T17:56:23.000' AS DateTime), N'jesseevans@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (96, N'Side relate remember until rock moment find', N'Manager rest yes adult mouth wait black. Federal dinner look not finally always. Budget rock visit woman side today. Instead indeed as. Month cup early way born happen.', N'Scott Love DDS', N'submit', N'free', CAST(N'2005-12-27T12:41:05.000' AS DateTime), N'richardsbrett@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (97, N'Girl experience high let fish camera', N'True production phone responsibility about field. Control business page modern Mrs lose structure. Night involve place important. History girl goal. Near month responsibility they choice. Size store table employee list. Few executive approach college claim. Town than director top last central.', N'Matthew Russo', N'submit', N'premium', CAST(N'1993-05-14T23:53:27.000' AS DateTime), N'monica30@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (98, N'Answer music return interest wind law there treatment couple happen particular factor hotel', N'Dog institution arm catch wrong short if little. Relate increase response. Particular word Congress real. General produce plan billion agreement more language. Begin career still. Help smile certainly matter. Heart group game message hotel product. Set tend lose poor door attorney green. Then none prepare them rather.', N'Kimberly Maynard', N'take down', N'premium', CAST(N'1975-03-22T18:43:40.000' AS DateTime), N'scott54@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (99, N'Very move create close way usually several real point social guess open take', N'Bar expert night just. Money time coach. Defense would prove. Thousand drop now usually. Box tonight most mind. Month most ready bag. Itself particular even part thus. People suddenly kind chance these office. Fight test administration discover method.', N'William Gonzalez', N'submit', N'premium', CAST(N'1999-03-06T04:42:34.000' AS DateTime), N'douglas70@example.net')
GO
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (100, N'From fund four quickly news room', N'Foreign beat this true read fire car. Big leave heavy serve technology more. Culture management student decade college someone own. Officer bed cost understand two difference down. Research state message action. Like affect weight center town soon. One move everyone discuss. Response already computer daughter. City picture call organization then agent open.', N'Michelle Hughes', N'take down', N'free', CAST(N'1989-02-28T05:16:38.000' AS DateTime), N'pittsmichael@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (101, N'Fear speech cut but fish red budget three attack simple ready message several', N'Really change far my. Part cup wall ahead require job everyone many. Hit bar near sport dog most over. Industry billion goal participant. Year recent too response system laugh decision. Less along woman affect exactly memory pay. Green expect black everyone in threat. Light material interesting away form thousand Mrs.', N'Austin Boyer', N'take down', N'free', CAST(N'1977-07-30T00:56:24.000' AS DateTime), N'jessica35@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (102, N'Sure since skin clear easy until score effort family', N'Opportunity ahead scene. Play understand another. Behavior experience anyone fish. Approach resource dream home under guess necessary. Significant record assume. Money relationship lead dog say inside. Television by for order suddenly place.', N'Rachel Lopez', N'publish', N'premium', CAST(N'2008-01-23T18:00:15.000' AS DateTime), N'bradyeric@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (103, N'Political town all enjoy gun effect lose environmental different contain fish why tax', N'Assume marriage result include anything. Sense president decade along structure. Result responsibility they check lot. Within measure car strategy with. Doctor staff top. Only push item. Forget hope first card. Race allow oil there piece poor despite. Change strong dream.', N'Charles Wolfe', N'take down', N'free', CAST(N'1988-09-17T04:52:28.000' AS DateTime), N'jonesjose@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (104, N'Successful property green miss once form', N'Before among send respond. Sister describe key nice agent sign school. Computer break last attorney buy. Rock cut fall citizen. Response can later represent player report author modern. Mouth five couple. Few three training her large rate school. Wonder walk which old last.', N'William Gonzalez', N'submit', N'free', CAST(N'2018-10-06T08:12:19.000' AS DateTime), N'douglas70@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (105, N'Lawyer produce draw happy wide town determine painting around future appear senior many', N'Fight capital reduce. Picture war side foreign rock generation wish away. Raise early itself already act. Beat instead relationship me imagine summer. Dinner force he must. Make win certainly fear newspaper maybe. Thousand have result need value.', N'Richard Kirby', N'submit', N'free', CAST(N'2014-08-17T07:19:35.000' AS DateTime), N'christystanley@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (106, N'Sense relationship guess lay that international', N'Reality forward local. Conference notice resource she wish. Go simply find politics. Sound sure force once. Other physical character learn story law whatever. Series order speech upon bed some. Computer rather hope effect walk together little collection.', N'David Williams', N'take down', N'free', CAST(N'1991-12-20T00:23:58.000' AS DateTime), N'emily35@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (107, N'Democrat senior your near ago note true stuff decision rich', N'Listen expect anything view both occur. Collection modern step. Side story price reveal give every letter. Other experience scientist rate in. Those beautiful address thing. Rate perhaps fight onto door one hour. Woman board so trade meet. Sign Congress exactly.', N'Scott Love DDS', N'take down', N'premium', CAST(N'1992-07-07T23:43:53.000' AS DateTime), N'richardsbrett@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (108, N'Hour recognize focus or gas recognize sense rise strategy little', N'Responsibility when difference support. Stay can public someone trial gas especially. Process national shake situation live civil. Foot list visit now book maybe guess. Necessary cost already up choice. List author crime win part little. Laugh war from high son hard yourself. No staff know news rock everyone become.', N'Melanie Patrick', N'submit', N'premium', CAST(N'2011-02-03T01:24:10.000' AS DateTime), N'veronica36@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (109, N'Bill recently trip system hospital control law try drop story', N'Country class few PM leader political system group. Season standard heavy science ahead study training. Conference natural month. Control third really detail. Stand as opportunity work process act. Everyone during quite theory quite.', N'Jennifer Summers', N'submit', N'free', CAST(N'2022-04-19T14:14:59.000' AS DateTime), N'ihurst@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (110, N'Explain enjoy deep almost medical manage town ahead only', N'Business language out myself hear travel right. Trip material add southern discuss. Information get shoulder better usually. Among southern stay never high wear window since. It as understand office thing they their successful. Large that they. At whole box like hold. Indeed end country dinner son son old kind. But stop factor world them appear drug.', N'Joshua Carter', N'publish', N'free', CAST(N'2011-12-11T00:19:46.000' AS DateTime), N'jeffrey31@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (111, N'Heart simply scientist wife gun reason', N'Reason hair manage walk. Reason big push month. Idea to exactly.', N'Michelle Kelley', N'publish', N'premium', CAST(N'1985-04-22T18:51:33.000' AS DateTime), N'bennettalan@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (112, N'Line front tough head visit off', N'Indicate between personal mission. Thousand suffer know court recent long on. Mouth prove foreign local short view. Guess politics modern. Move raise character however. Body world huge end less prepare big. Why blue might decade coach.', N'Matthew Russo', N'submit', N'premium', CAST(N'1977-12-08T20:38:14.000' AS DateTime), N'monica30@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (113, N'Around friend miss drug raise herself produce now approach treatment go able trouble', N'Weight each agreement day bring five. Wait home against resource imagine. Sign expect strong per heavy something. Particular pull simply father line assume follow. Nor south ago begin spring. Name mean since matter hear shoulder eat choice. Pressure beautiful skin occur forward carry effect Republican. Court wall instead rich account want.', N'Stephanie Hayes', N'take down', N'free', CAST(N'1998-04-11T21:17:31.000' AS DateTime), N'jordanpowers@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (114, N'Article decade almost know article old great analysis', N'Seat media environment look. Drop up great agreement push about. Day after control fight civil. Indicate leg beautiful nor. Late should first writer right drug. Experience Republican something let police result. Writer test war suffer far. Four pull test energy defense song majority. Reflect go someone church mouth medical rich.', N'Rebecca Sandoval', N'submit', N'premium', CAST(N'1992-07-18T08:35:47.000' AS DateTime), N'bryantjennifer@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (115, N'Against difference strategy poor husband box statement foreign', N'Authority act international nearly. Animal must traditional assume. Test peace pay somebody. World decade spring national anyone concern everybody. Life rich take.', N'Whitney Stark', N'publish', N'premium', CAST(N'2009-03-02T15:50:24.000' AS DateTime), N'bramirez@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (116, N'Many minute face any your try service establish gun rule', N'Turn that already base project may contain. Ball oil maybe. What adult bill recognize. Forget candidate goal just. Activity read require another read dream. Sometimes section name little. Hold deal size sister media reason.', N'Sarah Villanueva', N'submit', N'premium', CAST(N'1976-09-27T11:55:10.000' AS DateTime), N'sfischer@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (117, N'Understand no generation yet meeting do most son there stand garden choose resource', N'Property personal matter. Them less strong nothing. Author bar four west. Tv see give three realize here. Young class important condition. Weight purpose wear check join. Their buy politics management police member toward. Which tonight song hot region real. Order however quite thus. Least door senior responsibility.', N'Taylor Johnson', N'take down', N'premium', CAST(N'1983-05-22T07:41:44.000' AS DateTime), N'igarza@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (118, N'Worry myself any seven maintain determine', N'Human nice stand heart blood. Bad goal show. Produce next could thank statement window. Write interesting pass offer cut. Total pull health. That morning reflect at we agreement. Identify side more.', N'Joshua Clark', N'reject', N'premium', CAST(N'2010-05-23T20:00:09.000' AS DateTime), N'allenmendez@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (119, N'Possible none peace chair fish again cause different form', N'Organization nature according point girl officer here choose. Third same example small top. Stand open your land ahead statement level. Reduce citizen no walk. American today response past. Common same Congress south represent month get. Prevent person still us may. Give thousand hit.', N'Kathy Santana', N'submit', N'free', CAST(N'2019-09-24T13:56:23.000' AS DateTime), N'cjohnson@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (120, N'Suggest agent out require city may attack movie', N'Everyone worker field building. Road author treatment prepare low. Say people air late. Machine size dog together member. Debate activity property strategy art though simply. Course room hard financial throughout street actually.', N'Gloria King', N'submit', N'premium', CAST(N'1970-08-05T01:55:34.000' AS DateTime), N'keymorgan@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (121, N'School pull support success prevent war outside not possible appear finally career', N'Industry operation need interest. Here church thing difference time check truth. Season begin heart hot least thing. Program again body it return order. Stop religious cold. Republican performance ten animal. North past hour create challenge evening. Nothing will approach. Air home just. Hotel something for ever word factor.', N'Susan Harris', N'submit', N'free', CAST(N'2005-03-11T00:12:30.000' AS DateTime), N'joseph76@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (122, N'Family special matter entire break seek difference almost', N'Hospital figure large door. Court speak a international main minute here. Talk religious response two method everything. Degree within recently. Family mean sort dark identify sea. Mean certain office. Wide huge mind owner. Piece company can information want share debate.', N'Jasmine Williams', N'take down', N'free', CAST(N'1980-10-08T01:38:17.000' AS DateTime), N'kburke@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (123, N'Area inside mother score if magazine respond', N'For class his. Form other degree trade office approach still. Usually set small force possible herself mean. About certainly away. Along necessary describe sort real good. Hope friend performance school arm eat series. Herself like alone bit. May ahead really serious card.', N'Caleb Fleming', N'submit', N'premium', CAST(N'1989-04-10T15:31:17.000' AS DateTime), N'davidcrystal@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (124, N'Enough get simple civil land body', N'Believe hard high over today. Black while general sure. Hope themselves different performance wonder. Draw black office. Understand next cut center baby. American sing individual allow contain. Road husband read see. Huge theory exist sing natural mission.', N'Jennifer Torres', N'submit', N'premium', CAST(N'2022-04-24T19:45:29.000' AS DateTime), N'tyoung@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (125, N'Cover factor really agency arrive size dog research provide above team several accept against', N'Term evening decade mean so spring suddenly. Share event speak start evidence. Account whatever skill method stop. How movement pick card surface around. Until write perform everything accept yourself. Military carry what. Where exactly five political business.', N'Hannah Reyes', N'submit', N'premium', CAST(N'2007-02-07T16:54:44.000' AS DateTime), N'julie31@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (126, N'Time environment tough think art green manage member probably look challenge', N'Outside consumer allow it every game whole. Girl wall little structure. Young will word why message consumer would. Design physical when today. Result letter possible your western want recent. Eat drive every law.', N'Michelle Roman', N'submit', N'premium', CAST(N'1989-11-12T08:35:44.000' AS DateTime), N'christopheryoung@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (127, N'Seat hospital central land learn meet ball system notice', N'Money guess move process truth campaign newspaper. Do now physical rule difficult very school talk. Long national for name reduce ability cultural. Seven next program exactly. Whole light team at sing pay list. Compare imagine vote tax born show toward staff. Machine economy soon part special.', N'Meredith Rios', N'reject', N'free', CAST(N'2012-02-06T19:32:38.000' AS DateTime), N'jenniferwaters@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (128, N'Voice far create Mr difference director good stock another arrive', N'Pretty serious well operation range full. Strategy best strategy may may cultural. Open return challenge heart. Case thus example especially maintain. Building television go civil. Suffer despite later on. How pressure various personal these against. Agent main but administration weight past officer. Carry identify medical themselves.', N'Elizabeth Russell', N'submit', N'free', CAST(N'2020-04-01T23:53:09.000' AS DateTime), N'wanda38@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (129, N'Include special that type think politics fish rich lose', N'Bar three class real another rich through. Building station stand decade. Guy follow society father everyone now. Plant place summer position wear treatment. Week training middle control form nearly save. Identify while better a free science. Weight their majority boy. Move ready miss fund to. Citizen standard staff former bar.', N'Eric Owens PhD', N'take down', N'premium', CAST(N'2002-03-14T06:59:36.000' AS DateTime), N'mlee@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (130, N'Run reduce third that relate today compare offer daughter drive', N'Religious wall suffer western suddenly reach. Where rather difficult cost sometimes side network. Newspaper movement movement lay rest. Them who catch no thought. Large quality reflect best week down. Third our organization subject.', N'Sean Green', N'submit', N'premium', CAST(N'1995-03-06T12:34:16.000' AS DateTime), N'kenneth85@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (131, N'Return weight skill stay bad hard perhaps lay skin debate', N'My on all often. Father father mention dark prove recognize step. Half girl military political else. Tell executive you ball explain. Thus billion to past up upon raise wait. Less like expert.', N'Alexa Hernandez', N'take down', N'free', CAST(N'2016-09-20T06:06:06.000' AS DateTime), N'thompsonrobert@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (132, N'Enough follow southern involve at eight stage direction bar research chance citizen point', N'Public within picture. Course why civil. Per poor interview city cut like such. Another perform inside begin top whom type. Adult investment area. Three garden manager fly line add catch television.', N'Terry Wells', N'reject', N'premium', CAST(N'1992-10-10T17:52:09.000' AS DateTime), N'burnettnatalie@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (133, N'Peace degree author through above hit six', N'Stay pretty teach race computer future claim. Usually yes work. Ahead cup service special small war hundred use. My hundred sea always important. Money air media themselves but dinner gun. Rich painting including structure control president movement design. Station smile rate top. Student financial detail manage subject better phone. Resource local whether similar. Pick risk nothing.', N'Andrew Butler', N'reject', N'free', CAST(N'1983-10-19T02:44:47.000' AS DateTime), N'francisco25@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (134, N'Better start year down order assume', N'Bit season say him would class. House sea administration design necessary allow floor. Coach senior line create. Book throughout avoid computer dark. Throw body because feeling reason unit quality. Name service here movie admit stay.', N'Alexa Hernandez', N'take down', N'free', CAST(N'1982-07-27T02:29:21.000' AS DateTime), N'thompsonrobert@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (135, N'Anyone key majority share change hair side quite plant respond', N'Their federal message stand tree. Goal too accept instead order physical word. Old arrive whose give consumer instead trade. Structure foot power. Record admit media loss far allow. Necessary evening son. Front themselves attention wear prove table. Rise anything above follow major. Work author night environmental.', N'Barbara Sanders', N'reject', N'free', CAST(N'1979-05-20T23:14:01.000' AS DateTime), N'kellyamber@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (136, N'Daughter city situation TV entire call important before also success meet key', N'Occur media determine mean relate free add. Discuss point movement rather. Face off ball agreement. North situation understand investment art. Oil interview decade face term. Receive happen page. Size even lead forward imagine. Evidence music around other box week.', N'Peter Mcdowell', N'reject', N'premium', CAST(N'2018-08-02T09:26:28.000' AS DateTime), N'michaelwelch@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (137, N'Price Mr attack section on reason possible natural', N'Leader add rather scene. Make character trial PM large. Bag difference key eye. Full surface particularly writer let personal inside. Create board sure against. Try number close land this laugh. Go for base if specific likely scene the. Meet get couple issue good evidence reality.', N'Caleb Clark', N'submit', N'premium', CAST(N'2016-10-31T01:50:39.000' AS DateTime), N'ericterry@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (138, N'Today daughter last woman morning once deal offer firm arm', N'Team project matter she grow. Style crime blood mouth test. Message establish song weight. Enjoy while whatever health dream discuss base. Simply TV law. Often board reflect say again. Clearly production rich let travel last sense. Campaign cold institution project sometimes all.', N'Susan Williams', N'reject', N'free', CAST(N'1982-12-15T13:45:55.000' AS DateTime), N'virginia18@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (139, N'Call carry deal past remember country', N'Draw tend perhaps audience resource. Size success return along. Happy sit environmental interest. Push sell beyond student third book. Less eye stand purpose successful partner. Among begin tend send painting someone machine. Huge minute direction learn heart exist reality. Head change herself then approach condition pull.', N'Mary Alvarez', N'take down', N'premium', CAST(N'1985-07-07T18:26:51.000' AS DateTime), N'dthompson@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (140, N'Sure certainly four several new course guess your education arrive condition', N'Hard glass know change. Light role section take choose inside human. Suffer few country but south which administration. Nation set pull. Usually TV service major shake audience. Able light site class but use. Tough nature what avoid task join.', N'Elizabeth Russell', N'submit', N'free', CAST(N'2000-05-28T21:24:19.000' AS DateTime), N'wanda38@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (141, N'Natural discussion expect attack south check yard better material', N'End score true feel possible see church. Fund rest relate actually treat. Affect himself past suddenly increase. After president cold. Push painting whole road point. Activity own few service structure sell sense. Practice letter TV.', N'Jonathan Williams', N'submit', N'free', CAST(N'2005-02-04T04:49:07.000' AS DateTime), N'dpearson@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (142, N'Exactly case certainly big concern college only adult wife enough physical vote method', N'World data effort occur. Do top piece line space subject Democrat. Eight sister party four. Particularly safe guess hard base whose. Interview boy prove hot run necessary art. Everything discover hot right never popular city. Have yet who add social rate base. Information practice land future. Indeed only stop force offer hot computer.', N'Lauren Hayes', N'submit', N'premium', CAST(N'2014-03-09T01:31:06.000' AS DateTime), N'owolf@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (143, N'Raise visit early trial bill person TV maybe ago rate young since', N'Tend this event. Thank Mrs mission something country include good. Thing program everyone large close far college. Student money cover scene leave way be. Compare first official decade. Learn anything budget. North can yeah project.', N'Margaret Jones', N'submit', N'free', CAST(N'2009-03-30T08:36:08.000' AS DateTime), N'foxmichael@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (144, N'Firm type cell offer enter yourself event tree family admit Republican federal compare movie', N'Play forget human teach letter music ability. Page pattern range son them. No case democratic work opportunity. Major line fish put walk still body. Choose boy eat where pressure process. Individual easy poor girl quite break they thing. Can why up memory drug road.', N'Michelle Kelley', N'reject', N'free', CAST(N'1997-09-22T18:20:54.000' AS DateTime), N'bennettalan@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (145, N'Standard situation worry gun small thought', N'Room writer society stay worker argue. Us family how wish old animal. Central hit eye minute. Event thus worry say certain ground. Share fish meeting item during policy. However around want station.', N'Barbara Sanders', N'reject', N'free', CAST(N'1990-05-01T10:52:16.000' AS DateTime), N'kellyamber@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (146, N'Lot western prove recently stuff participant total stuff determine million already billion magazine various', N'Appear offer important national stand. Where research all south. Skin safe join news chair. Positive within tough step color follow. Care security all in choose treatment hope. Difficult technology member adult magazine. Customer know will family quite magazine. Window scene the care. Modern so trial. Structure recent woman opportunity color you book fall.', N'Janice Johnston', N'reject', N'premium', CAST(N'2003-07-04T08:41:48.000' AS DateTime), N'granthaley@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (147, N'Weight since same find box list first read wear theory important mean', N'Free clear family common. It in child treat especially night. Red despite network perhaps after force pass six. Their station save soon well.', N'Rebecca Sandoval', N'submit', N'premium', CAST(N'2006-11-08T18:46:43.000' AS DateTime), N'bryantjennifer@example.com')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (148, N'Already these growth never machine child quite general animal ball fall pass', N'Yes tree crime still reflect. Watch skin these these laugh. Serve successful line door customer. Determine within fund behind year. Lay success clearly wear right color yet production. Remain later continue own necessary. Meeting visit service course Mr including. Difference family than middle thus town against single. Here goal political education.', N'Cheryl Bradley', N'submit', N'premium', CAST(N'1979-02-18T10:58:46.000' AS DateTime), N'longjacqueline@example.org')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (149, N'Plant happy else at woman politics education federal after skin her church thousand', N'Book sit she although country relationship. Gun behind window record. Believe strong any purpose newspaper by. Throughout win way guy grow. Successful understand recent year seek. Rich discussion story trade.', N'Taylor Johnson', N'submit', N'free', CAST(N'2012-01-05T02:35:16.000' AS DateTime), N'igarza@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (150, N'Need contain step herself human great area suggest own', N'Five enter factor yet or fight PM church. Site item wonder by. City future several former face office system. Tonight war open material often. Number both morning light nation position. Training left after bit toward adult also. Run everybody onto sing nearly family.', N'Charles Wolfe', N'take down', N'free', CAST(N'1999-04-27T20:55:34.000' AS DateTime), N'jonesjose@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (151, N'Fiera Besari Kecelakaan', N'Fiersa Besari dan timnya mengalami kecelakaan lalu lintas pada Sabtu, 3 Juni 2023 dalam perjalanan darat dari Bone menuju Makassar, Sulawesi Selatan. Melalui unggahan Instagram Story di akunnya, Fiersa mengungkap kronologi kecelakaan yang hampir membuat mobil yang ia dan tim tumpangi jatuh ke jurang.', N'Rebecca Stark', N'submit', N'free', CAST(N'2023-06-05T17:15:46.250' AS DateTime), N'alexander44@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (152, N'Fiera Besari Kecelakaan', N'Fiersa Besari dan timnya mengalami kecelakaan lalu lintas pada Sabtu, 3 Juni 2023 dalam perjalanan darat dari Bone menuju Makassar, Sulawesi Selatan. Melalui unggahan Instagram Story di akunnya, Fiersa mengungkap kronologi kecelakaan yang hampir membuat mobil yang ia dan tim tumpangi jatuh ke jurang.', N'Rebecca Stark', N'submit', N'free', CAST(N'2023-06-05T17:27:20.723' AS DateTime), N'alexander44@example.net')
INSERT [dbo].[artikel] ([idArtikel], [namaArtikel], [isi], [namaPenulis], [status], [tipe], [tanggal], [idPenulis]) VALUES (153, N'Fiera Besari Kecelakaan', N'Fiersa Besari dan timnya mengalami kecelakaan lalu lintas pada Sabtu, 3 Juni 2023 dalam perjalanan darat dari Bone menuju Makassar, Sulawesi Selatan. Melalui unggahan Instagram Story di akunnya, Fiersa mengungkap kronologi kecelakaan yang hampir membuat mobil yang ia dan tim tumpangi jatuh ke jurang.', N'Rebecca Stark', N'submit', N'free', CAST(N'2023-06-05T17:28:38.020' AS DateTime), N'alexander44@example.net')
SET IDENTITY_INSERT [dbo].[artikel] OFF
GO
SET IDENTITY_INSERT [dbo].[DaftarKategoriArtikel] ON 

INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (1, 50, 99)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (2, 126, 29)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (3, 16, 157)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (4, 120, 158)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (5, 87, 32)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (6, 76, 33)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (7, 100, 76)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (8, 32, 133)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (9, 49, 10)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (10, 101, 114)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (11, 96, 49)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (12, 117, 92)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (13, 20, 12)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (14, 11, 125)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (15, 66, 7)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (16, 134, 146)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (17, 147, 56)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (18, 59, 24)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (19, 129, 135)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (20, 108, 130)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (21, 79, 30)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (22, 38, 110)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (23, 145, 109)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (24, 22, 27)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (25, 107, 17)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (26, 26, 107)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (27, 40, 8)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (28, 115, 111)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (29, 107, 8)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (30, 128, 84)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (31, 65, 21)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (32, 91, 19)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (33, 32, 92)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (34, 8, 89)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (35, 90, 46)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (36, 3, 60)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (37, 94, 19)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (38, 37, 54)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (39, 1, 53)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (40, 32, 2)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (41, 76, 95)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (42, 7, 155)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (43, 60, 37)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (44, 48, 117)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (45, 29, 123)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (46, 89, 67)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (47, 34, 8)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (48, 54, 93)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (49, 86, 122)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (50, 75, 76)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (51, 142, 84)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (52, 48, 152)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (53, 21, 27)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (54, 137, 149)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (55, 79, 41)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (56, 97, 38)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (57, 33, 58)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (58, 81, 131)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (59, 63, 61)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (60, 48, 75)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (61, 96, 108)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (62, 12, 34)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (63, 6, 101)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (64, 20, 19)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (65, 34, 108)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (66, 77, 141)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (67, 107, 37)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (68, 109, 77)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (69, 91, 22)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (70, 64, 114)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (71, 95, 136)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (72, 15, 97)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (73, 105, 3)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (74, 107, 83)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (75, 113, 53)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (76, 96, 76)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (77, 121, 24)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (78, 48, 28)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (79, 71, 29)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (80, 143, 156)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (81, 40, 115)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (82, 103, 48)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (83, 108, 111)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (84, 45, 64)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (85, 117, 88)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (86, 134, 37)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (87, 91, 119)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (88, 23, 124)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (89, 53, 76)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (90, 1, 115)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (91, 119, 2)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (92, 56, 77)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (93, 30, 162)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (94, 78, 140)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (95, 40, 109)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (96, 121, 24)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (97, 128, 60)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (98, 140, 104)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (99, 72, 162)
GO
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (100, 6, 31)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (101, 70, 11)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (102, 1, 66)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (103, 102, 135)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (104, 149, 102)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (105, 114, 27)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (106, 65, 91)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (107, 73, 51)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (108, 22, 10)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (109, 19, 68)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (110, 79, 137)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (111, 88, 31)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (112, 136, 64)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (113, 42, 18)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (114, 107, 75)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (115, 73, 134)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (116, 35, 147)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (117, 134, 161)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (118, 54, 137)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (119, 27, 106)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (120, 140, 104)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (121, 72, 75)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (122, 114, 96)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (123, 146, 161)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (124, 36, 41)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (125, 32, 31)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (126, 98, 103)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (127, 120, 36)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (128, 144, 77)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (129, 91, 162)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (130, 122, 107)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (131, 56, 123)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (132, 126, 129)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (133, 82, 127)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (134, 16, 114)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (135, 77, 37)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (136, 127, 14)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (137, 56, 7)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (138, 91, 121)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (139, 101, 3)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (140, 135, 18)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (141, 21, 102)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (142, 2, 93)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (143, 11, 30)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (144, 1, 70)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (145, 75, 59)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (146, 37, 147)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (147, 74, 49)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (148, 27, 112)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (149, 118, 85)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (150, 99, 44)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (151, 85, 108)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (152, 112, 38)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (153, 115, 38)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (154, 135, 81)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (155, 34, 54)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (156, 48, 114)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (157, 90, 100)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (158, 110, 126)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (159, 100, 57)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (160, 51, 113)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (161, 53, 151)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (162, 13, 100)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (163, 9, 60)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (164, 22, 48)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (165, 94, 15)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (166, 45, 60)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (167, 77, 157)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (168, 23, 132)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (169, 73, 91)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (170, 106, 118)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (171, 14, 162)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (172, 133, 141)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (173, 111, 149)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (174, 117, 126)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (175, 66, 122)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (176, 56, 87)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (177, 69, 11)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (178, 12, 14)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (179, 42, 90)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (180, 1, 75)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (181, 2, 36)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (182, 17, 110)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (183, 57, 156)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (184, 102, 143)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (185, 57, 117)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (186, 50, 87)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (187, 27, 156)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (188, 22, 82)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (189, 83, 138)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (190, 117, 84)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (191, 66, 8)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (192, 134, 12)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (193, 49, 95)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (194, 21, 54)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (195, 135, 89)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (196, 49, 52)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (197, 65, 78)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (198, 80, 133)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (199, 99, 66)
GO
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (200, 124, 89)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (201, 151, 1)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (202, 151, 5)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (203, 151, 22)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (204, 151, 26)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (205, 151, 38)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (206, 153, 26)
INSERT [dbo].[DaftarKategoriArtikel] ([idDaftarKategoriArtikel], [idArtikel], [idKategori]) VALUES (207, 153, 38)
SET IDENTITY_INSERT [dbo].[DaftarKategoriArtikel] OFF
GO
SET IDENTITY_INSERT [dbo].[kategori] ON 

INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Family', 1)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Adoption', 2)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Children', 3)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Elder Care', 4)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Fatherhood', 5)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Motherhood', 6)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Health', 7)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Aging', 8)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Coronavirus', 9)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Covid-19', 10)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Death And Dying', 11)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Disease', 12)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Relationships', 13)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Dating', 14)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Divorce', 15)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Friendship', 16)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Love', 17)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Marriage', 18)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Mental Health', 19)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Anxiety', 20)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Counseling', 21)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Grief', 22)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Life Lessons', 23)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Self-awareness', 24)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Productivity', 25)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Career Advice', 26)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Coaching', 27)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Goal Setting', 28)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Morning Routines', 29)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Pomodoro Technique', 30)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Mindfulness', 31)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Guided Meditation', 32)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Journaling', 33)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Meditation', 34)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Transcendental Meditation', 35)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Yoga', 36)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Business', 37)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Entrepreneurship', 38)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Freelancing', 39)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Small Business', 40)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Startups', 41)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Venture Capital', 42)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Marketing', 43)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Advertising', 44)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Branding', 45)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Content Marketing', 46)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Content Strategy', 47)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Digital Marketing', 48)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Leadership', 49)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Employee Engagement', 50)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Leadership Coaching', 51)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Leadership Development', 52)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Management', 53)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Meetings', 54)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Artificial Intelligence', 55)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'ChatGPT', 56)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Conversational AI', 57)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Deep Learning', 58)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Large Language Models', 59)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Machine Learning', 60)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Blockchain', 61)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Bitcoin', 62)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Cryptocurrency', 63)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Decentralized Finance', 64)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Ethereum', 65)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Nft', 66)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Data Science', 67)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Analytics', 68)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Data Engineering', 69)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Data Visualization', 70)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Database Design', 71)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Sql', 72)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Programming', 73)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Android Development', 74)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Coding', 75)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Flutter', 76)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Frontend Engineering', 77)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'iOS Development', 78)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Programming Languages', 79)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Angular', 80)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'CSS', 81)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'HTML', 82)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Java', 83)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'JavaScript', 84)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Dev Ops', 85)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'AWS', 86)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Databricks', 87)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Docker', 88)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Kubernetes', 89)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Terraform', 90)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Writing', 91)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'30 Day Challenge', 92)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Book Reviews', 93)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Books', 94)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Creative Nonfiction', 95)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Diary', 96)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Art', 97)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Comics', 98)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Contemporary Art', 99)
GO
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Drawing', 100)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Fine Art', 101)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Generative Art', 102)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Gaming', 103)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Game Design', 104)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Game Development', 105)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Indie Game', 106)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Metaverse', 107)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Nintendo', 108)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Economics', 109)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Basic Income', 110)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Debt', 111)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Economy', 112)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Inflation', 113)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Stock Market', 114)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Education', 115)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Charter Schools', 116)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Education Reform', 117)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Higher Education', 118)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'PhD', 119)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Public Schools', 120)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Equality', 121)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Disability', 122)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Discrimination', 123)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Diversity In Tech', 124)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Feminism', 125)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Inclusion', 126)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Philosophy', 127)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Atheism', 128)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Epistemology', 129)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Ethics', 130)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Existentialism', 131)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Metaphysics', 132)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Religion', 133)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Buddhism', 134)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Christianity', 135)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Hinduism', 136)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Islam', 137)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Judaism', 138)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Spirituality', 139)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Astrology', 140)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Energy Healing', 141)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Horoscopes', 142)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Mysticism', 143)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Reiki', 144)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Cities', 145)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Abu Dhabi', 146)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Amsterdam', 147)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Athens', 148)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Bangkok', 149)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Barcelona', 150)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Nature', 151)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Birding', 152)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Camping', 153)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Climate Change', 154)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Conservation', 155)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Hiking', 156)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Travel', 157)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Tourism', 158)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Travel Tips', 159)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Travel Writing', 160)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Vacation', 161)
INSERT [dbo].[kategori] ([Topic], [idKategori]) VALUES (N'Vanlife', 162)
SET IDENTITY_INSERT [dbo].[kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[LogArtikel] ON 

INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (1, N'Prevent quickly foot star guy former opportunity article alone kid important risk', N'submit', N'submit', CAST(N'2021-01-26T11:20:17.000' AS DateTime), N'Rebecca Sandoval', N'member', N'bryantjennifer@example.com', 1)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (2, N'Begin phone long scientist agent authority prepare yes both edge', N'submit', N'submit', CAST(N'2020-02-19T04:43:14.000' AS DateTime), N'Stacy Chan', N'member', N'jacob61@example.net', 2)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (3, N'Least sort rise actually born energy think hit', N'submit', N'submit', CAST(N'2012-09-07T19:43:54.000' AS DateTime), N'Paul Brown', N'member', N'alexander38@example.net', 3)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (4, N'Hotel exactly use ago I according', N'submit', N'submit', CAST(N'1986-06-03T06:15:28.000' AS DateTime), N'Kelsey Davis', N'member', N'zachary64@example.com', 4)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (5, N'Treat push first crime onto star board show take no', N'submit', N'submit', CAST(N'1992-04-14T11:46:52.000' AS DateTime), N'Theresa Estrada', N'member', N'crystalburton@example.com', 5)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (6, N'Wall organization certain discover through feel easy charge beat', N'submit', N'submit', CAST(N'1975-11-28T18:21:49.000' AS DateTime), N'Susan Harris', N'member', N'joseph76@example.org', 6)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (7, N'Especially southern group door fall cover', N'submit', N'submit', CAST(N'1986-12-29T07:29:44.000' AS DateTime), N'Terry Wells', N'member', N'burnettnatalie@example.org', 7)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (8, N'Just mind mother building walk actually continue number imagine', N'submit', N'submit', CAST(N'2009-12-01T20:10:29.000' AS DateTime), N'Rachel Lopez', N'member', N'bradyeric@example.net', 8)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (9, N'Tree suddenly information least imagine including study deep accept old writer', N'submit', N'submit', CAST(N'1973-11-03T13:41:17.000' AS DateTime), N'Brian Green', N'member', N'michael76@example.org', 9)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (10, N'Huge wall house himself feeling evening center', N'submit', N'submit', CAST(N'1989-03-13T19:52:15.000' AS DateTime), N'Elizabeth Russell', N'member', N'wanda38@example.net', 10)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (11, N'Short available others thank attack money', N'submit', N'submit', CAST(N'1976-08-03T06:24:17.000' AS DateTime), N'Susan Williams', N'member', N'virginia18@example.com', 11)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (12, N'Attack from attention including everybody human final mention one arm fill character', N'submit', N'submit', CAST(N'1995-04-21T11:11:33.000' AS DateTime), N'Taylor Johnson', N'member', N'igarza@example.net', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (13, N'Inside official hold official attack better even onto story', N'submit', N'submit', CAST(N'1997-06-27T10:19:48.000' AS DateTime), N'Andrew Gould', N'member', N'michaelhenry@example.org', 13)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (14, N'Usually site while strategy say left yes hard', N'submit', N'submit', CAST(N'2002-07-10T11:05:04.000' AS DateTime), N'Lauren Hayes', N'member', N'owolf@example.net', 14)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (15, N'Medical understand political girl thought analysis commercial', N'submit', N'submit', CAST(N'2021-03-31T19:58:55.000' AS DateTime), N'Travis Schultz', N'member', N'bullockarthur@example.net', 15)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (16, N'Girl likely eat bring fly approach fine force back offer subject', N'submit', N'submit', CAST(N'1995-09-19T21:51:01.000' AS DateTime), N'Amy Lowe', N'member', N'csmith@example.org', 16)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (17, N'Scientist any turn blue college receive significant energy reduce find beat lay', N'submit', N'submit', CAST(N'2014-09-20T19:37:38.000' AS DateTime), N'Joseph Freeman', N'member', N'taylorkristin@example.net', 17)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (18, N'Simply somebody along could carry especially just control local even environmental score', N'submit', N'submit', CAST(N'1983-09-08T09:00:54.000' AS DateTime), N'Austin Boyer', N'member', N'jessica35@example.com', 18)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (19, N'Life fear boy role worry program new article protect American case power', N'submit', N'submit', CAST(N'2020-09-04T01:38:22.000' AS DateTime), N'Tasha Rodriguez', N'member', N'wrightcynthia@example.net', 19)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (20, N'Nothing successful change than and again', N'submit', N'submit', CAST(N'1982-02-07T20:58:50.000' AS DateTime), N'Stacy Chan', N'member', N'jacob61@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (21, N'Teacher government pattern politics research too sell hear', N'submit', N'submit', CAST(N'1983-01-26T16:11:06.000' AS DateTime), N'Laurie Wallace', N'member', N'clementslaura@example.com', 21)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (22, N'Leg many effort station by long painting send team number', N'submit', N'submit', CAST(N'2013-01-12T09:48:27.000' AS DateTime), N'Kathy Santana', N'member', N'cjohnson@example.com', 22)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (23, N'Foot dog education little surface stand bill report coach rather many Mr something', N'submit', N'submit', CAST(N'1970-11-25T17:20:09.000' AS DateTime), N'William Garcia', N'member', N'smithtyler@example.com', 23)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (24, N'Business community any eat also her cultural may explain move parent skin', N'submit', N'submit', CAST(N'2018-04-28T23:35:31.000' AS DateTime), N'Kathy Santana', N'member', N'cjohnson@example.com', 24)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (25, N'High poor energy news alone card culture help', N'submit', N'submit', CAST(N'1982-09-15T02:41:31.000' AS DateTime), N'Theresa Estrada', N'member', N'crystalburton@example.com', 25)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (26, N'Doctor would natural laugh all art poor foreign term', N'submit', N'submit', CAST(N'1993-07-11T18:23:07.000' AS DateTime), N'Michelle Kelley', N'member', N'bennettalan@example.net', 26)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (27, N'Conference service social protect style others', N'submit', N'submit', CAST(N'2015-09-11T08:27:34.000' AS DateTime), N'Joseph Jones', N'member', N'kmitchell@example.org', 27)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (28, N'Old clearly administration style control cost', N'submit', N'submit', CAST(N'1994-07-17T16:57:46.000' AS DateTime), N'Dr. James Willis', N'member', N'mejiaashley@example.com', 28)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (29, N'Bank soon risk my others order director', N'submit', N'submit', CAST(N'1985-07-04T14:24:34.000' AS DateTime), N'Victor Nolan', N'member', N'kmalone@example.org', 29)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (30, N'Conference around commercial price popular buy have', N'submit', N'submit', CAST(N'1985-11-08T01:53:15.000' AS DateTime), N'Jill Sherman', N'member', N'cward@example.net', 30)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (31, N'Congress perform read production win form great doctor common treat stay parent', N'submit', N'submit', CAST(N'1979-11-09T12:23:45.000' AS DateTime), N'Taylor Johnson', N'member', N'igarza@example.net', 31)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (32, N'Clearly body whom reduce draw hospital account mean part agent', N'submit', N'submit', CAST(N'2007-02-06T12:10:20.000' AS DateTime), N'Victoria Hernandez MD', N'member', N'ntaylor@example.com', 32)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (33, N'May recent cover debate decade table visit able behind it only method rate', N'submit', N'submit', CAST(N'2018-03-20T22:24:54.000' AS DateTime), N'William Roberts', N'member', N'david95@example.org', 33)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (34, N'Fact sense decade hear wide their', N'submit', N'submit', CAST(N'1990-08-30T02:30:09.000' AS DateTime), N'Jennifer Morales', N'member', N'fcarpenter@example.com', 34)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (35, N'Happen study word public grow activity agreement painting environmental executive successful pretty knowledge', N'submit', N'submit', CAST(N'1995-02-05T03:16:34.000' AS DateTime), N'Sean Green', N'member', N'kenneth85@example.org', 35)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (36, N'Fish road young collection reduce industry', N'submit', N'submit', CAST(N'2004-08-18T19:27:23.000' AS DateTime), N'Heather Roberts', N'member', N'lauragonzales@example.org', 36)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (37, N'Key daughter idea heart camera might here', N'submit', N'submit', CAST(N'2001-11-14T11:43:28.000' AS DateTime), N'Michelle Hughes', N'member', N'pittsmichael@example.net', 37)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (38, N'Than two since any cause computer throughout', N'submit', N'submit', CAST(N'1970-10-30T02:00:27.000' AS DateTime), N'Albert Williams', N'member', N'lwilliams@example.org', 38)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (39, N'Agent matter mother seem medical goal tonight my surface institution', N'submit', N'submit', CAST(N'1986-05-25T08:37:18.000' AS DateTime), N'Faith Cabrera', N'member', N'justin39@example.org', 39)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (40, N'Difference experience get from land population fly season success foreign however government trouble value', N'submit', N'submit', CAST(N'1977-04-15T07:30:31.000' AS DateTime), N'Joshua Hernandez', N'member', N'carl05@example.net', 40)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (41, N'Listen poor draw century process spring health finally effort', N'submit', N'submit', CAST(N'2003-05-17T11:32:10.000' AS DateTime), N'Cheryl Bradley', N'member', N'longjacqueline@example.org', 41)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (42, N'Can these bad sister science green role amount', N'submit', N'submit', CAST(N'1990-04-10T13:22:43.000' AS DateTime), N'Laura Gregory', N'member', N'howardemily@example.com', 42)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (43, N'List she thing west growth important serve compare dark design treatment table', N'submit', N'submit', CAST(N'1995-04-02T03:17:45.000' AS DateTime), N'Matthew Russo', N'member', N'monica30@example.com', 43)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (44, N'Ability always help watch oil himself study middle section nearly', N'submit', N'submit', CAST(N'2016-09-17T10:53:48.000' AS DateTime), N'Katherine Ibarra', N'member', N'lramirez@example.net', 44)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (45, N'Bank condition reduce energy animal still by can this will right fight people', N'submit', N'submit', CAST(N'2001-10-10T23:11:23.000' AS DateTime), N'Lisa Johnston', N'member', N'audreyburton@example.net', 45)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (46, N'Support doctor above national experience soon tree work buy college next son', N'submit', N'submit', CAST(N'2017-08-16T02:03:03.000' AS DateTime), N'Albert Williams', N'member', N'lwilliams@example.org', 46)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (47, N'Type relate piece factor talk start short run run', N'submit', N'submit', CAST(N'2011-05-09T20:03:32.000' AS DateTime), N'Kimberly Maynard', N'member', N'scott54@example.com', 47)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (48, N'Former bag news especially bad no agree sit night do kid', N'submit', N'submit', CAST(N'2018-12-10T01:21:05.000' AS DateTime), N'George Allen', N'member', N'kelsey56@example.com', 48)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (49, N'Believe impact product space plant six agree draw', N'submit', N'submit', CAST(N'2020-03-31T10:32:19.000' AS DateTime), N'Timothy Tucker', N'member', N'coxtina@example.org', 49)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (50, N'Off plant commercial address artist strong page very site score share push kid', N'submit', N'submit', CAST(N'1972-08-21T10:13:02.000' AS DateTime), N'John Richards', N'member', N'tpayne@example.org', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (51, N'Talk begin recently laugh same way process provide medical hour reveal knowledge', N'submit', N'submit', CAST(N'1987-10-06T12:50:27.000' AS DateTime), N'Andrew Butler', N'member', N'francisco25@example.net', 51)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (52, N'Return ever try product thing beyond', N'submit', N'submit', CAST(N'1989-08-12T13:29:16.000' AS DateTime), N'Danny Williams', N'member', N'jennifersimmons@example.net', 52)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (53, N'Especially tell risk decade candidate officer rate detail', N'submit', N'submit', CAST(N'1997-10-01T03:37:01.000' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 53)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (54, N'Artist customer owner decision wish offer difficult particular sound difficult effect read', N'submit', N'submit', CAST(N'1987-03-19T07:32:58.000' AS DateTime), N'Jamie Hutchinson', N'member', N'welchzachary@example.net', 54)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (55, N'Room line because conference street take former describe need eight high mission say', N'submit', N'submit', CAST(N'1980-07-25T19:52:13.000' AS DateTime), N'Meredith Rios', N'member', N'jenniferwaters@example.net', 55)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (56, N'Could risk with more price material week market', N'submit', N'submit', CAST(N'1985-01-17T09:00:05.000' AS DateTime), N'Matthew Bell', N'member', N'gburns@example.com', 56)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (57, N'According paper discover place group force agreement question point under degree when', N'submit', N'submit', CAST(N'1971-01-18T17:13:13.000' AS DateTime), N'Brandi Meyer', N'member', N'coreycannon@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (58, N'Avoid young arm point already world specific include music environment likely', N'submit', N'submit', CAST(N'1979-04-06T15:26:17.000' AS DateTime), N'Vanessa Cooper', N'member', N'williamjones@example.org', 58)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (59, N'Public include return bed style board reflect wear similar', N'submit', N'submit', CAST(N'1988-11-26T16:19:21.000' AS DateTime), N'Mr. Ryan Sanchez', N'member', N'lfox@example.net', 59)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (60, N'Two school structure human southern huge player me whole cup staff let', N'submit', N'submit', CAST(N'2019-11-07T15:31:40.000' AS DateTime), N'Michelle Kelley', N'member', N'bennettalan@example.net', 60)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (61, N'Weight room east suffer child four his need give finish', N'submit', N'submit', CAST(N'1981-06-01T08:10:44.000' AS DateTime), N'Brandi Meyer', N'member', N'coreycannon@example.com', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (62, N'Near mission involve sell represent central feel right performance everybody key who strategy', N'submit', N'submit', CAST(N'1982-07-05T15:24:11.000' AS DateTime), N'Nicholas Massey', N'member', N'anthonyruiz@example.org', 62)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (63, N'Like occur become claim Mrs center', N'submit', N'submit', CAST(N'2000-06-25T13:06:33.000' AS DateTime), N'James Stone', N'member', N'donnasimpson@example.net', 63)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (64, N'Avoid goal view few type feeling grow', N'submit', N'submit', CAST(N'1992-06-03T03:22:30.000' AS DateTime), N'Jill Sherman', N'member', N'cward@example.net', 64)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (65, N'Have oil recent job rule protect lay style position drive within rock short', N'submit', N'submit', CAST(N'2019-12-18T03:33:13.000' AS DateTime), N'Stephanie Bowman', N'member', N'qherrera@example.com', 65)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (66, N'Military realize sport executive door benefit include song oil least stop', N'submit', N'submit', CAST(N'2014-04-07T09:26:40.000' AS DateTime), N'Austin Heath', N'member', N'kingerin@example.net', 66)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (67, N'To point threat address best type tend culture', N'submit', N'submit', CAST(N'2002-10-01T11:29:51.000' AS DateTime), N'Janice Johnston', N'member', N'granthaley@example.net', 67)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (68, N'Economic the for sometimes friend probably course catch degree body', N'submit', N'submit', CAST(N'2017-03-05T22:28:05.000' AS DateTime), N'Danielle Castro', N'member', N'thernandez@example.org', 68)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (69, N'Individual enjoy outside fall can college history instead', N'submit', N'submit', CAST(N'2008-09-21T11:23:46.000' AS DateTime), N'Alexa Hernandez', N'member', N'thompsonrobert@example.org', 69)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (70, N'Fund yard art against PM buy of behavior customer station officer toward', N'submit', N'submit', CAST(N'2001-12-17T22:41:34.000' AS DateTime), N'Gary Perry', N'member', N'tranmark@example.net', 70)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (71, N'Public idea space foot number PM notice key watch their money watch address', N'submit', N'submit', CAST(N'2004-03-12T13:50:22.000' AS DateTime), N'Victor Nolan', N'member', N'kmalone@example.org', 71)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (72, N'Interest culture become once case media special', N'submit', N'submit', CAST(N'2012-08-18T01:38:20.000' AS DateTime), N'Faith Cabrera', N'member', N'justin39@example.org', 72)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (73, N'Contain during as eight red both market necessary open pretty detail', N'submit', N'submit', CAST(N'1997-07-31T23:04:56.000' AS DateTime), N'Christopher Hunter', N'member', N'tyler04@example.net', 73)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (74, N'Blue development goal win example time project enough realize camera impact born not', N'submit', N'submit', CAST(N'1978-01-28T11:27:29.000' AS DateTime), N'Michael Simmons', N'member', N'shudson@example.org', 74)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (75, N'Executive compare artist adult Democrat surface impact against probably drug would seek series', N'submit', N'submit', CAST(N'2012-09-15T01:17:43.000' AS DateTime), N'Austin Heath', N'member', N'kingerin@example.net', 75)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (76, N'Age safe mother fill individual any report speak everyone shoulder subject', N'submit', N'submit', CAST(N'1983-08-11T10:25:39.000' AS DateTime), N'Scott Love DDS', N'member', N'richardsbrett@example.org', 76)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (77, N'Information foreign since charge particularly actually our ahead', N'submit', N'submit', CAST(N'1981-11-28T10:43:21.000' AS DateTime), N'Michelle Kelley', N'member', N'bennettalan@example.net', 77)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (78, N'Only environment culture record recent nor current great little hair money audience scene', N'submit', N'submit', CAST(N'2006-07-04T04:10:42.000' AS DateTime), N'Terry Wells', N'member', N'burnettnatalie@example.org', 78)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (79, N'Popular area group go respond relationship open look play war particular drive not', N'submit', N'submit', CAST(N'2007-06-27T00:04:32.000' AS DateTime), N'Jessica Thompson', N'member', N'jessica32@example.net', 79)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (80, N'Amount forget might company around work director myself nation', N'submit', N'submit', CAST(N'1981-08-28T05:19:50.000' AS DateTime), N'Angela Salazar', N'member', N'nicole00@example.com', 80)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (81, N'Deep protect attack article age others ground machine the billion song television benefit', N'submit', N'submit', CAST(N'2009-12-06T17:55:21.000' AS DateTime), N'Whitney Stark', N'member', N'bramirez@example.org', 81)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (82, N'Process within toward nothing space most poor national like', N'submit', N'submit', CAST(N'1982-11-30T05:17:42.000' AS DateTime), N'Jeremy Green', N'member', N'williamsmichael@example.com', 82)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (83, N'Leave song this eat expert produce fish', N'submit', N'submit', CAST(N'1971-03-27T20:06:32.000' AS DateTime), N'Barbara Sanders', N'member', N'kellyamber@example.net', 83)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (84, N'Image yourself hear parent participant scientist arm shake', N'submit', N'submit', CAST(N'2023-01-01T18:13:35.000' AS DateTime), N'Faith Cabrera', N'member', N'justin39@example.org', 84)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (85, N'Respond make rather from company soldier course sit owner author', N'submit', N'submit', CAST(N'2012-06-03T21:11:38.000' AS DateTime), N'Timothy Tucker', N'member', N'coxtina@example.org', 85)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (86, N'Much tough coach stop age list newspaper pay mouth onto generation small', N'submit', N'submit', CAST(N'1979-10-01T03:17:40.000' AS DateTime), N'Kathy Santana', N'member', N'cjohnson@example.com', 86)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (87, N'Director yet president might professional apply culture imagine store all', N'submit', N'submit', CAST(N'2004-07-14T03:00:39.000' AS DateTime), N'Raymond Navarro', N'member', N'xmacias@example.com', 87)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (88, N'Foreign field key approach talk wear half little direction party defense', N'submit', N'submit', CAST(N'1993-05-31T19:51:58.000' AS DateTime), N'Richard Kirby', N'member', N'christystanley@example.net', 88)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (89, N'Successful age but appear general today own', N'submit', N'submit', CAST(N'1990-04-04T00:17:09.000' AS DateTime), N'Jenny Richardson', N'member', N'derrick63@example.com', 89)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (90, N'Majority executive common beyond end almost either', N'submit', N'submit', CAST(N'1977-05-09T14:28:12.000' AS DateTime), N'William Garcia', N'member', N'smithtyler@example.com', 90)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (91, N'Modern show against power performance plan air how name citizen decision thus base', N'submit', N'submit', CAST(N'2017-09-28T13:08:59.000' AS DateTime), N'Bradley Melton', N'member', N'sonyafrye@example.org', 91)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (92, N'Little model several officer base help official contain certain ok himself', N'submit', N'submit', CAST(N'2007-08-07T12:06:16.000' AS DateTime), N'Paul Brown', N'member', N'alexander38@example.net', 92)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (93, N'Just go impact affect book mother member everyone', N'submit', N'submit', CAST(N'2006-03-25T14:29:56.000' AS DateTime), N'Sarah Villanueva', N'member', N'sfischer@example.org', 93)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (94, N'Build learn individual mean fact mission power statement figure record fund somebody', N'submit', N'submit', CAST(N'1974-10-05T09:42:43.000' AS DateTime), N'Julie Chen', N'member', N'bryanfowler@example.net', 94)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (95, N'Present ever safe term three true never measure fast rich itself', N'submit', N'submit', CAST(N'1997-04-01T17:56:23.000' AS DateTime), N'Matthew Smith', N'member', N'jesseevans@example.org', 95)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (96, N'Side relate remember until rock moment find', N'submit', N'submit', CAST(N'2005-12-27T12:41:05.000' AS DateTime), N'Scott Love DDS', N'member', N'richardsbrett@example.org', 96)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (97, N'Girl experience high let fish camera', N'submit', N'submit', CAST(N'1993-05-14T23:53:27.000' AS DateTime), N'Matthew Russo', N'member', N'monica30@example.com', 97)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (98, N'Answer music return interest wind law there treatment couple happen particular factor hotel', N'submit', N'submit', CAST(N'1975-03-22T18:43:40.000' AS DateTime), N'Kimberly Maynard', N'member', N'scott54@example.com', 98)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (99, N'Very move create close way usually several real point social guess open take', N'submit', N'submit', CAST(N'1999-03-06T04:42:34.000' AS DateTime), N'William Gonzalez', N'member', N'douglas70@example.net', 99)
GO
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (100, N'From fund four quickly news room', N'submit', N'submit', CAST(N'1989-02-28T05:16:38.000' AS DateTime), N'Michelle Hughes', N'member', N'pittsmichael@example.net', 100)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (101, N'Fear speech cut but fish red budget three attack simple ready message several', N'submit', N'submit', CAST(N'1977-07-30T00:56:24.000' AS DateTime), N'Austin Boyer', N'member', N'jessica35@example.com', 101)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (102, N'Sure since skin clear easy until score effort family', N'submit', N'submit', CAST(N'2008-01-23T18:00:15.000' AS DateTime), N'Rachel Lopez', N'member', N'bradyeric@example.net', 102)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (103, N'Political town all enjoy gun effect lose environmental different contain fish why tax', N'submit', N'submit', CAST(N'1988-09-17T04:52:28.000' AS DateTime), N'Charles Wolfe', N'member', N'jonesjose@example.net', 103)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (104, N'Successful property green miss once form', N'submit', N'submit', CAST(N'2018-10-06T08:12:19.000' AS DateTime), N'William Gonzalez', N'member', N'douglas70@example.net', 104)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (105, N'Lawyer produce draw happy wide town determine painting around future appear senior many', N'submit', N'submit', CAST(N'2014-08-17T07:19:35.000' AS DateTime), N'Richard Kirby', N'member', N'christystanley@example.net', 105)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (106, N'Sense relationship guess lay that international', N'submit', N'submit', CAST(N'1991-12-20T00:23:58.000' AS DateTime), N'David Williams', N'member', N'emily35@example.net', 106)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (107, N'Democrat senior your near ago note true stuff decision rich', N'submit', N'submit', CAST(N'1992-07-07T23:43:53.000' AS DateTime), N'Scott Love DDS', N'member', N'richardsbrett@example.org', 107)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (108, N'Hour recognize focus or gas recognize sense rise strategy little', N'submit', N'submit', CAST(N'2011-02-03T01:24:10.000' AS DateTime), N'Melanie Patrick', N'member', N'veronica36@example.org', 108)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (109, N'Bill recently trip system hospital control law try drop story', N'submit', N'submit', CAST(N'2022-04-19T14:14:59.000' AS DateTime), N'Jennifer Summers', N'member', N'ihurst@example.org', 109)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (110, N'Explain enjoy deep almost medical manage town ahead only', N'submit', N'submit', CAST(N'2011-12-11T00:19:46.000' AS DateTime), N'Joshua Carter', N'member', N'jeffrey31@example.net', 110)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (111, N'Heart simply scientist wife gun reason', N'submit', N'submit', CAST(N'1985-04-22T18:51:33.000' AS DateTime), N'Michelle Kelley', N'member', N'bennettalan@example.net', 111)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (112, N'Line front tough head visit off', N'submit', N'submit', CAST(N'1977-12-08T20:38:14.000' AS DateTime), N'Matthew Russo', N'member', N'monica30@example.com', 112)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (113, N'Around friend miss drug raise herself produce now approach treatment go able trouble', N'submit', N'submit', CAST(N'1998-04-11T21:17:31.000' AS DateTime), N'Stephanie Hayes', N'member', N'jordanpowers@example.com', 113)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (114, N'Article decade almost know article old great analysis', N'submit', N'submit', CAST(N'1992-07-18T08:35:47.000' AS DateTime), N'Rebecca Sandoval', N'member', N'bryantjennifer@example.com', 114)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (115, N'Against difference strategy poor husband box statement foreign', N'submit', N'submit', CAST(N'2009-03-02T15:50:24.000' AS DateTime), N'Whitney Stark', N'member', N'bramirez@example.org', 115)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (116, N'Many minute face any your try service establish gun rule', N'submit', N'submit', CAST(N'1976-09-27T11:55:10.000' AS DateTime), N'Sarah Villanueva', N'member', N'sfischer@example.org', 116)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (117, N'Understand no generation yet meeting do most son there stand garden choose resource', N'submit', N'submit', CAST(N'1983-05-22T07:41:44.000' AS DateTime), N'Taylor Johnson', N'member', N'igarza@example.net', 117)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (118, N'Worry myself any seven maintain determine', N'submit', N'submit', CAST(N'2010-05-23T20:00:09.000' AS DateTime), N'Joshua Clark', N'member', N'allenmendez@example.net', 118)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (119, N'Possible none peace chair fish again cause different form', N'submit', N'submit', CAST(N'2019-09-24T13:56:23.000' AS DateTime), N'Kathy Santana', N'member', N'cjohnson@example.com', 119)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (120, N'Suggest agent out require city may attack movie', N'submit', N'submit', CAST(N'1970-08-05T01:55:34.000' AS DateTime), N'Gloria King', N'member', N'keymorgan@example.net', 120)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (121, N'School pull support success prevent war outside not possible appear finally career', N'submit', N'submit', CAST(N'2005-03-11T00:12:30.000' AS DateTime), N'Susan Harris', N'member', N'joseph76@example.org', 121)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (122, N'Family special matter entire break seek difference almost', N'submit', N'submit', CAST(N'1980-10-08T01:38:17.000' AS DateTime), N'Jasmine Williams', N'member', N'kburke@example.org', 122)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (123, N'Area inside mother score if magazine respond', N'submit', N'submit', CAST(N'1989-04-10T15:31:17.000' AS DateTime), N'Caleb Fleming', N'member', N'davidcrystal@example.net', 123)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (124, N'Enough get simple civil land body', N'submit', N'submit', CAST(N'2022-04-24T19:45:29.000' AS DateTime), N'Jennifer Torres', N'member', N'tyoung@example.com', 124)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (125, N'Cover factor really agency arrive size dog research provide above team several accept against', N'submit', N'submit', CAST(N'2007-02-07T16:54:44.000' AS DateTime), N'Hannah Reyes', N'member', N'julie31@example.net', 125)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (126, N'Time environment tough think art green manage member probably look challenge', N'submit', N'submit', CAST(N'1989-11-12T08:35:44.000' AS DateTime), N'Michelle Roman', N'member', N'christopheryoung@example.org', 126)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (127, N'Seat hospital central land learn meet ball system notice', N'submit', N'submit', CAST(N'2012-02-06T19:32:38.000' AS DateTime), N'Meredith Rios', N'member', N'jenniferwaters@example.net', 127)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (128, N'Voice far create Mr difference director good stock another arrive', N'submit', N'submit', CAST(N'2020-04-01T23:53:09.000' AS DateTime), N'Elizabeth Russell', N'member', N'wanda38@example.net', 128)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (129, N'Include special that type think politics fish rich lose', N'submit', N'submit', CAST(N'2002-03-14T06:59:36.000' AS DateTime), N'Eric Owens PhD', N'member', N'mlee@example.org', 129)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (130, N'Run reduce third that relate today compare offer daughter drive', N'submit', N'submit', CAST(N'1995-03-06T12:34:16.000' AS DateTime), N'Sean Green', N'member', N'kenneth85@example.org', 130)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (131, N'Return weight skill stay bad hard perhaps lay skin debate', N'submit', N'submit', CAST(N'2016-09-20T06:06:06.000' AS DateTime), N'Alexa Hernandez', N'member', N'thompsonrobert@example.org', 131)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (132, N'Enough follow southern involve at eight stage direction bar research chance citizen point', N'submit', N'submit', CAST(N'1992-10-10T17:52:09.000' AS DateTime), N'Terry Wells', N'member', N'burnettnatalie@example.org', 132)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (133, N'Peace degree author through above hit six', N'submit', N'submit', CAST(N'1983-10-19T02:44:47.000' AS DateTime), N'Andrew Butler', N'member', N'francisco25@example.net', 133)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (134, N'Better start year down order assume', N'submit', N'submit', CAST(N'1982-07-27T02:29:21.000' AS DateTime), N'Alexa Hernandez', N'member', N'thompsonrobert@example.org', 134)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (135, N'Anyone key majority share change hair side quite plant respond', N'submit', N'submit', CAST(N'1979-05-20T23:14:01.000' AS DateTime), N'Barbara Sanders', N'member', N'kellyamber@example.net', 135)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (136, N'Daughter city situation TV entire call important before also success meet key', N'submit', N'submit', CAST(N'2018-08-02T09:26:28.000' AS DateTime), N'Peter Mcdowell', N'member', N'michaelwelch@example.org', 136)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (137, N'Price Mr attack section on reason possible natural', N'submit', N'submit', CAST(N'2016-10-31T01:50:39.000' AS DateTime), N'Caleb Clark', N'member', N'ericterry@example.com', 137)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (138, N'Today daughter last woman morning once deal offer firm arm', N'submit', N'submit', CAST(N'1982-12-15T13:45:55.000' AS DateTime), N'Susan Williams', N'member', N'virginia18@example.com', 138)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (139, N'Call carry deal past remember country', N'submit', N'submit', CAST(N'1985-07-07T18:26:51.000' AS DateTime), N'Mary Alvarez', N'member', N'dthompson@example.com', 139)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (140, N'Sure certainly four several new course guess your education arrive condition', N'submit', N'submit', CAST(N'2000-05-28T21:24:19.000' AS DateTime), N'Elizabeth Russell', N'member', N'wanda38@example.net', 140)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (141, N'Natural discussion expect attack south check yard better material', N'submit', N'submit', CAST(N'2005-02-04T04:49:07.000' AS DateTime), N'Jonathan Williams', N'member', N'dpearson@example.com', 141)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (142, N'Exactly case certainly big concern college only adult wife enough physical vote method', N'submit', N'submit', CAST(N'2014-03-09T01:31:06.000' AS DateTime), N'Lauren Hayes', N'member', N'owolf@example.net', 142)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (143, N'Raise visit early trial bill person TV maybe ago rate young since', N'submit', N'submit', CAST(N'2009-03-30T08:36:08.000' AS DateTime), N'Margaret Jones', N'member', N'foxmichael@example.com', 143)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (144, N'Firm type cell offer enter yourself event tree family admit Republican federal compare movie', N'submit', N'submit', CAST(N'1997-09-22T18:20:54.000' AS DateTime), N'Michelle Kelley', N'member', N'bennettalan@example.net', 144)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (145, N'Standard situation worry gun small thought', N'submit', N'submit', CAST(N'1990-05-01T10:52:16.000' AS DateTime), N'Barbara Sanders', N'member', N'kellyamber@example.net', 145)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (146, N'Lot western prove recently stuff participant total stuff determine million already billion magazine various', N'submit', N'submit', CAST(N'2003-07-04T08:41:48.000' AS DateTime), N'Janice Johnston', N'member', N'granthaley@example.net', 146)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (147, N'Weight since same find box list first read wear theory important mean', N'submit', N'submit', CAST(N'2006-11-08T18:46:43.000' AS DateTime), N'Rebecca Sandoval', N'member', N'bryantjennifer@example.com', 147)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (148, N'Already these growth never machine child quite general animal ball fall pass', N'submit', N'submit', CAST(N'1979-02-18T10:58:46.000' AS DateTime), N'Cheryl Bradley', N'member', N'longjacqueline@example.org', 148)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (149, N'Plant happy else at woman politics education federal after skin her church thousand', N'submit', N'submit', CAST(N'2012-01-05T02:35:16.000' AS DateTime), N'Taylor Johnson', N'member', N'igarza@example.net', 149)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (150, N'Need contain step herself human great area suggest own', N'submit', N'submit', CAST(N'1999-04-27T20:55:34.000' AS DateTime), N'Charles Wolfe', N'member', N'jonesjose@example.net', 150)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (151, N'112    Around friend miss drug raise herself produce ...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2017-07-20T06:50:06.000' AS DateTime), N'Susan Wagner', N'admin', N'reedgregory@example.org', 1)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (152, N'117    Worry myself any seven maintain determine
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2018-03-23T00:29:04.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 2)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (153, N'20    Teacher government pattern politics research t...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1986-07-19T14:12:54.000' AS DateTime), N'Jorge Sullivan', N'admin', N'crawfordmichelle@example.com', 3)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (154, N'105    Sense relationship guess lay that international
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2011-01-11T22:58:40.000' AS DateTime), N'Jorge Sullivan', N'admin', N'crawfordmichelle@example.com', 4)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (155, N'143    Firm type cell offer enter yourself event tree...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2010-12-01T06:25:49.000' AS DateTime), N'Stephanie Sutton', N'admin', N'michelelopez@example.org', 5)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (156, N'56    According paper discover place group force agr...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1976-03-17T00:54:58.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 6)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (157, N'81    Process within toward nothing space most poor ...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2003-05-28T13:28:47.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 7)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (158, N'73    Blue development goal win example time project...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2010-10-29T06:51:31.000' AS DateTime), N'Jorge Sullivan', N'admin', N'crawfordmichelle@example.com', 8)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (159, N'137    Today daughter last woman morning once deal of...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2019-04-29T03:00:06.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 9)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (160, N'4    Treat push first crime onto star board show ta...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1997-04-28T21:31:31.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 10)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (161, N'106    Democrat senior your near ago note true stuff ...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2004-10-17T17:35:07.000' AS DateTime), N'Susan Levy', N'admin', N'levymichael@example.com', 11)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (162, N'131    Enough follow southern involve at eight stage ...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1993-08-19T09:05:54.000' AS DateTime), N'Susan Wagner', N'admin', N'reedgregory@example.org', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (163, N'30    Congress perform read production win form grea...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1997-09-11T10:38:24.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 13)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (164, N'61    Near mission involve sell represent central fe...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1988-11-29T00:24:13.000' AS DateTime), N'Susan Wagner', N'admin', N'reedgregory@example.org', 14)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (165, N'35    Fish road young collection reduce industry
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2009-07-03T23:02:54.000' AS DateTime), N'Brian Hamilton', N'admin', N'qcooper@example.org', 15)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (166, N'6    Especially southern group door fall cover
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2022-01-17T19:02:30.000' AS DateTime), N'Brian Hamilton', N'admin', N'qcooper@example.org', 16)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (167, N'130    Return weight skill stay bad hard perhaps lay ...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2017-03-07T05:26:52.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 17)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (168, N'54    Room line because conference street take forme...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2020-02-27T17:40:16.000' AS DateTime), N'Elizabeth Woods', N'admin', N'christian11@example.com', 18)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (169, N'91    Little model several officer base help officia...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2010-02-01T19:09:47.000' AS DateTime), N'Elizabeth Woods', N'admin', N'christian11@example.com', 19)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (170, N'3    Hotel exactly use ago I according
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1989-01-26T01:41:52.000' AS DateTime), N'Stephanie Sutton', N'admin', N'michelelopez@example.org', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (171, N'102    Political town all enjoy gun effect lose envir...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1998-08-05T13:50:17.000' AS DateTime), N'Brian Hamilton', N'admin', N'qcooper@example.org', 21)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (172, N'53    Artist customer owner decision wish offer diff...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1997-08-10T11:30:50.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 22)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (173, N'57    Avoid young arm point already world specific i...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2015-04-07T10:13:38.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 23)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (174, N'138    Call carry deal past remember country
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1990-03-06T02:32:05.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 24)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (175, N'5    Wall organization certain discover through fee...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2004-08-30T05:54:34.000' AS DateTime), N'Elizabeth Woods', N'admin', N'christian11@example.com', 25)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (176, N'55    Could risk with more price material week market
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1991-10-23T23:51:04.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 26)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (177, N'79    Amount forget might company around work direct...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2016-07-29T19:19:55.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 27)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (178, N'97    Answer music return interest wind law there tr...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1995-08-09T08:22:46.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 28)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (179, N'10    Short available others thank attack money
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2004-05-22T22:07:22.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 29)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (180, N'128    Include special that type think politics fish ...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2005-09-05T07:54:20.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 30)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (181, N'37    Than two since any cause computer throughout
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1998-03-23T06:13:04.000' AS DateTime), N'Susan Levy', N'admin', N'levymichael@example.com', 31)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (182, N'109    Explain enjoy deep almost medical manage town ...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2019-03-11T23:54:05.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 32)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (183, N'38    Agent matter mother seem medical goal tonight ...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2001-02-20T00:09:43.000' AS DateTime), N'Susan Levy', N'admin', N'levymichael@example.com', 33)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (184, N'9    Huge wall house himself feeling evening center
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1990-12-07T22:25:11.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 34)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (185, N'60    Weight room east suffer child four his need gi...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1982-03-25T16:24:53.000' AS DateTime), N'Jorge Sullivan', N'admin', N'crawfordmichelle@example.com', 35)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (186, N'126    Seat hospital central land learn meet ball sys...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2021-08-19T09:45:31.000' AS DateTime), N'Elizabeth Woods', N'admin', N'christian11@example.com', 36)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (187, N'135    Daughter city situation TV entire call importa...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2022-08-14T04:26:31.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 37)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (188, N'8    Tree suddenly information least imagine includ...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2021-07-23T03:46:07.000' AS DateTime), N'Brian Hamilton', N'admin', N'qcooper@example.org', 38)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (189, N'101    Sure since skin clear easy until score effort ...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2017-11-05T21:13:10.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 39)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (190, N'13    Usually site while strategy say left yes hard
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2005-07-24T05:44:03.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 40)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (191, N'132    Peace degree author through above hit six
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2018-06-28T14:52:35.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 41)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (192, N'29    Conference around commercial price popular buy...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1992-01-28T16:58:40.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 42)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (193, N'41    Can these bad sister science green role amount
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2006-09-15T12:10:39.000' AS DateTime), N'Susan Wagner', N'admin', N'reedgregory@example.org', 43)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (194, N'149    Need contain step herself human great area sug...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2007-04-26T00:02:30.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 44)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (195, N'88    Successful age but appear general today own
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2020-03-13T01:46:39.000' AS DateTime), N'Susan Levy', N'admin', N'levymichael@example.com', 45)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (196, N'82    Leave song this eat expert produce fish
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1999-01-26T20:51:50.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 46)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (197, N'11    Attack from attention including everybody huma...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2000-04-25T04:20:05.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 47)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (198, N'17    Simply somebody along could carry especially j...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2022-12-30T11:41:44.000' AS DateTime), N'Elizabeth Woods', N'admin', N'christian11@example.com', 48)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (199, N'28    Bank soon risk my others order director
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1998-10-08T06:07:24.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 49)
GO
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (200, N'134    Anyone key majority share change hair side qui...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2022-01-21T13:38:14.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (201, N'110    Heart simply scientist wife gun reason
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2013-07-27T16:22:20.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 51)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (202, N'39    Difference experience get from land population...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1995-01-10T09:56:47.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 52)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (203, N'49    Off plant commercial address artist strong pag...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1977-12-21T01:08:06.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 53)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (204, N'70    Public idea space foot number PM notice key wa...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2015-09-18T10:34:26.000' AS DateTime), N'Stephanie Sutton', N'admin', N'michelelopez@example.org', 54)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (205, N'114    Against difference strategy poor husband box s...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2023-03-27T13:13:02.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 55)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (206, N'25    Doctor would natural laugh all art poor foreig...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1998-01-10T04:30:07.000' AS DateTime), N'Stephanie Sutton', N'admin', N'michelelopez@example.org', 56)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (207, N'69    Fund yard art against PM buy of behavior custo...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2021-10-21T03:00:28.000' AS DateTime), N'Elizabeth Woods', N'admin', N'christian11@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (208, N'51    Return ever try product thing beyond
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2011-08-29T14:40:32.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 58)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (209, N'99    From fund four quickly news room
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1991-02-28T19:36:48.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 59)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (210, N'144    Standard situation worry gun small thought
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1992-10-20T04:29:42.000' AS DateTime), N'Susan Levy', N'admin', N'levymichael@example.com', 60)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (211, N'121    Family special matter entire break seek differ...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2018-05-18T02:12:38.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (212, N'92    Just go impact affect book mother member everyone
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2015-12-26T00:38:09.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 62)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (213, N'100    Fear speech cut but fish red budget three atta...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2010-09-25T07:44:19.000' AS DateTime), N'Jorge Sullivan', N'admin', N'crawfordmichelle@example.com', 63)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (214, N'36    Key daughter idea heart camera might here
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2009-03-02T22:37:24.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 64)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (215, N'133    Better start year down order assume
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'1990-02-28T06:30:01.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 65)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (216, N'46    Type relate piece factor talk start short run run
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2018-11-26T05:48:39.000' AS DateTime), N'Brian Hamilton', N'admin', N'qcooper@example.org', 66)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (217, N'66    To point threat address best type tend culture
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2016-12-31T18:21:00.000' AS DateTime), N'Susan Levy', N'admin', N'levymichael@example.com', 67)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (218, N'45    Support doctor above national experience soon ...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2019-06-18T02:32:22.000' AS DateTime), N'Elizabeth Woods', N'admin', N'christian11@example.com', 68)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (219, N'116    Understand no generation yet meeting do most s...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2018-12-05T08:19:35.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 69)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (220, N'85    Much tough coach stop age list newspaper pay m...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2008-01-07T06:29:09.000' AS DateTime), N'Stephanie Sutton', N'admin', N'michelelopez@example.org', 70)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (221, N'145    Lot western prove recently stuff participant t...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2016-07-25T22:55:03.000' AS DateTime), N'Stephanie Sutton', N'admin', N'michelelopez@example.org', 71)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (222, N'34    Happen study word public grow activity agreeme...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2001-07-14T20:18:19.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 72)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (223, N'86    Director yet president might professional appl...
Name: namaArtikel, dtype: object', N'publish', N'publish', CAST(N'2011-08-22T14:57:37.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 73)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (224, N'15    Girl likely eat bring fly approach fine force ...
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'2010-11-11T10:33:13.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 74)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (225, N'19    Nothing successful change than and again
Name: namaArtikel, dtype: object', N'reject', N'reject', CAST(N'1982-09-13T15:40:16.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 75)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (226, N'116    Understand no generation yet meeting do most s...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2019-02-11T01:07:32.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 76)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (227, N'99    From fund four quickly news room
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2009-08-07T08:55:06.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 77)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (228, N'3    Hotel exactly use ago I according
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2016-09-26T07:07:37.000' AS DateTime), N'Jorge Sullivan', N'admin', N'crawfordmichelle@example.com', 78)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (229, N'102    Political town all enjoy gun effect lose envir...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2012-09-26T18:36:53.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 79)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (230, N'85    Much tough coach stop age list newspaper pay m...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2008-03-28T22:08:49.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 80)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (231, N'37    Than two since any cause computer throughout
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2016-06-30T16:32:24.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 81)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (232, N'61    Near mission involve sell represent central fe...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'1998-11-15T16:49:58.000' AS DateTime), N'Elizabeth Woods', N'admin', N'christian11@example.com', 82)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (233, N'41    Can these bad sister science green role amount
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2007-07-01T00:29:06.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 83)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (234, N'4    Treat push first crime onto star board show ta...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2007-10-18T19:22:21.000' AS DateTime), N'Susan Levy', N'admin', N'levymichael@example.com', 84)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (235, N'97    Answer music return interest wind law there tr...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2017-11-21T04:40:04.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 85)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (236, N'35    Fish road young collection reduce industry
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2020-09-01T19:18:18.000' AS DateTime), N'Norma Fisher', N'admin', N'moodyryan@example.com', 86)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (237, N'100    Fear speech cut but fish red budget three atta...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2017-12-19T11:25:04.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 87)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (238, N'121    Family special matter entire break seek differ...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2019-07-26T08:22:31.000' AS DateTime), N'Jorge Sullivan', N'admin', N'crawfordmichelle@example.com', 88)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (239, N'105    Sense relationship guess lay that international
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2014-12-16T06:55:33.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 89)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (240, N'53    Artist customer owner decision wish offer diff...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2010-04-05T22:04:49.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 90)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (241, N'73    Blue development goal win example time project...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2013-08-15T16:45:09.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 91)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (242, N'128    Include special that type think politics fish ...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2023-02-03T07:49:19.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 92)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (243, N'25    Doctor would natural laugh all art poor foreig...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2018-11-13T05:48:13.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 93)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (244, N'149    Need contain step herself human great area sug...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2015-09-09T09:46:04.000' AS DateTime), N'Elizabeth Woods', N'admin', N'christian11@example.com', 94)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (245, N'112    Around friend miss drug raise herself produce ...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2023-05-03T15:27:23.000' AS DateTime), N'Peter Montgomery', N'admin', N'chad23@example.org', 95)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (246, N'138    Call carry deal past remember country
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2005-03-20T11:57:53.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 96)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (247, N'36    Key daughter idea heart camera might here
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2010-04-23T05:40:39.000' AS DateTime), N'Theodore Mcgrath', N'admin', N'donnadennis@example.org', 97)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (248, N'56    According paper discover place group force agr...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'1986-04-20T20:42:25.000' AS DateTime), N'Stephanie Sutton', N'admin', N'michelelopez@example.org', 98)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (249, N'10    Short available others thank attack money
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2009-01-03T15:09:51.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 99)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (250, N'45    Support doctor above national experience soon ...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2020-04-16T09:27:25.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 100)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (251, N'20    Teacher government pattern politics research t...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2010-08-12T08:08:37.000' AS DateTime), N'Jorge Sullivan', N'admin', N'crawfordmichelle@example.com', 101)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (252, N'133    Better start year down order assume
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2006-05-16T05:40:04.000' AS DateTime), N'Stephanie Sutton', N'admin', N'michelelopez@example.org', 102)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (253, N'106    Democrat senior your near ago note true stuff ...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2016-06-22T17:13:04.000' AS DateTime), N'Susan Levy', N'admin', N'levymichael@example.com', 103)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (254, N'130    Return weight skill stay bad hard perhaps lay ...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2022-09-27T13:45:51.000' AS DateTime), N'Stephanie Collins', N'admin', N'carterhannah@example.net', 104)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (255, N'86    Director yet president might professional appl...
Name: namaArtikel, dtype: object', N'take down', N'take down', CAST(N'2021-09-11T21:41:28.000' AS DateTime), N'Brian Hamilton', N'admin', N'qcooper@example.org', 105)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (256, N'Teacher government pattern politics research too sell hear', N'membaca', N'publish', CAST(N'2001-06-06T00:24:22.000' AS DateTime), N'Miss Angela Swanson DVM', N'member', N'jonathan80@example.org', 21)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (257, N'To point threat address best type tend culture', N'membaca', N'publish', CAST(N'2021-09-15T17:07:56.000' AS DateTime), N'Jennifer Morales', N'member', N'fcarpenter@example.com', 67)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (258, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1984-09-27T05:56:01.000' AS DateTime), N'Matthew Russo', N'member', N'monica30@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (259, N'Leave song this eat expert produce fish', N'membaca', N'publish', CAST(N'2009-08-10T00:49:39.000' AS DateTime), N'Miss Angela Swanson DVM', N'member', N'jonathan80@example.org', 83)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (260, N'Standard situation worry gun small thought', N'membaca', N'publish', CAST(N'2012-01-03T11:04:32.000' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 145)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (261, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1985-07-23T19:08:07.000' AS DateTime), N'Debbie Waters MD', N'member', N'patrick03@example.org', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (262, N'Return ever try product thing beyond', N'membaca', N'publish', CAST(N'2018-07-23T15:20:42.000' AS DateTime), N'Norma Mooney', N'member', N'williammartin@example.com', 52)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (263, N'Avoid young arm point already world specific include music environment likely', N'membaca', N'publish', CAST(N'2022-12-03T14:17:00.000' AS DateTime), N'Vanessa Cooper', N'member', N'williamjones@example.org', 58)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (264, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1981-10-03T03:27:15.000' AS DateTime), N'William Gonzalez', N'member', N'douglas70@example.net', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (265, N'Teacher government pattern politics research too sell hear', N'membaca', N'publish', CAST(N'1988-08-28T11:56:32.000' AS DateTime), N'David Williams', N'member', N'emily35@example.net', 21)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (266, N'Congress perform read production win form great doctor common treat stay parent', N'membaca', N'publish', CAST(N'2008-08-20T10:54:51.000' AS DateTime), N'Jonathan Williams', N'member', N'dpearson@example.com', 31)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (267, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1977-11-10T04:16:38.000' AS DateTime), N'Matthew Russo', N'member', N'monica30@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (268, N'Hotel exactly use ago I according', N'membaca', N'publish', CAST(N'1989-12-01T16:09:11.000' AS DateTime), N'Jill Sherman', N'member', N'cward@example.net', 4)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (269, N'Doctor would natural laugh all art poor foreign term', N'membaca', N'publish', CAST(N'1999-08-09T23:04:37.000' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 26)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (270, N'Congress perform read production win form great doctor common treat stay parent', N'membaca', N'publish', CAST(N'2011-10-16T22:09:51.000' AS DateTime), N'Lisa Johnston', N'member', N'audreyburton@example.net', 31)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (271, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1978-11-01T03:16:53.000' AS DateTime), N'Kathy Santana', N'member', N'cjohnson@example.com', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (272, N'From fund four quickly news room', N'membaca', N'publish', CAST(N'1998-05-08T17:45:33.000' AS DateTime), N'Austin Heath', N'member', N'kingerin@example.net', 100)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (273, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1994-05-29T23:51:47.000' AS DateTime), N'George Allen', N'member', N'kelsey56@example.com', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (274, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1979-10-16T14:58:06.000' AS DateTime), N'Angela Salazar', N'member', N'nicole00@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (275, N'Return ever try product thing beyond', N'membaca', N'publish', CAST(N'2017-08-25T02:57:41.000' AS DateTime), N'Melanie Patrick', N'member', N'veronica36@example.org', 52)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (276, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'2005-01-15T18:59:27.000' AS DateTime), N'Scott Love DDS', N'member', N'richardsbrett@example.org', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (277, N'Heart simply scientist wife gun reason', N'membaca', N'publish', CAST(N'2022-05-23T11:45:15.000' AS DateTime), N'Jamie Hutchinson', N'member', N'welchzachary@example.net', 111)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (278, N'Happen study word public grow activity agreement painting environmental executive successful pretty knowledge', N'membaca', N'publish', CAST(N'2008-05-20T08:35:58.000' AS DateTime), N'Stephanie Bowman', N'member', N'qherrera@example.com', 35)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (279, N'Successful age but appear general today own', N'membaca', N'publish', CAST(N'2021-05-19T03:24:26.000' AS DateTime), N'Andrew Gould', N'member', N'michaelhenry@example.org', 89)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (280, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1986-01-21T19:14:15.000' AS DateTime), N'Brandi Meyer', N'member', N'coreycannon@example.com', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (281, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1981-05-12T01:34:45.000' AS DateTime), N'Lorraine Garcia', N'member', N'frytimothy@example.net', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (282, N'Call carry deal past remember country', N'membaca', N'publish', CAST(N'1998-05-06T07:09:35.000' AS DateTime), N'Matthew Smith', N'member', N'jesseevans@example.org', 139)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (283, N'Firm type cell offer enter yourself event tree family admit Republican federal compare movie', N'membaca', N'publish', CAST(N'2021-04-16T03:30:49.000' AS DateTime), N'Margaret Jones', N'member', N'foxmichael@example.com', 144)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (284, N'Enough follow southern involve at eight stage direction bar research chance citizen point', N'membaca', N'publish', CAST(N'2002-04-07T03:10:57.000' AS DateTime), N'Erica Jimenez', N'member', N'jessica66@example.org', 132)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (285, N'From fund four quickly news room', N'membaca', N'publish', CAST(N'2006-02-15T06:24:40.000' AS DateTime), N'William Roberts', N'member', N'david95@example.org', 100)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (286, N'Attack from attention including everybody human final mention one arm fill character', N'membaca', N'publish', CAST(N'2017-10-25T05:49:37.000' AS DateTime), N'Cheryl Bradley', N'member', N'longjacqueline@example.org', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (287, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1976-06-30T04:43:15.000' AS DateTime), N'Laurie Wallace', N'member', N'clementslaura@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (288, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1987-01-12T08:11:25.000' AS DateTime), N'Travis Schultz', N'member', N'bullockarthur@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (289, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1989-08-24T04:18:58.000' AS DateTime), N'Michelle Hughes', N'member', N'pittsmichael@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (290, N'Teacher government pattern politics research too sell hear', N'membaca', N'publish', CAST(N'1988-06-14T19:53:23.000' AS DateTime), N'Gloria King', N'member', N'keymorgan@example.net', 21)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (291, N'Hotel exactly use ago I according', N'membaca', N'publish', CAST(N'1997-06-20T00:27:02.000' AS DateTime), N'Timothy Tucker', N'member', N'coxtina@example.org', 4)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (292, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1987-08-19T00:41:53.000' AS DateTime), N'Susan Harris', N'member', N'joseph76@example.org', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (293, N'Answer music return interest wind law there treatment couple happen particular factor hotel', N'membaca', N'publish', CAST(N'1999-02-16T17:21:51.000' AS DateTime), N'Kelsey Davis', N'member', N'zachary64@example.com', 98)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (294, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1979-12-16T01:32:14.000' AS DateTime), N'William Jenkins', N'member', N'michael45@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (295, N'Fund yard art against PM buy of behavior customer station officer toward', N'membaca', N'publish', CAST(N'2021-11-09T13:58:56.000' AS DateTime), N'Susan Williams', N'member', N'virginia18@example.com', 70)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (296, N'Huge wall house himself feeling evening center', N'membaca', N'publish', CAST(N'2004-02-04T17:32:28.000' AS DateTime), N'Amanda Hernandez', N'member', N'kfinley@example.org', 10)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (297, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1976-05-31T12:28:20.000' AS DateTime), N'William Roberts', N'member', N'david95@example.org', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (298, N'Wall organization certain discover through feel easy charge beat', N'membaca', N'publish', CAST(N'2019-08-03T17:01:28.000' AS DateTime), N'Collin Lopez', N'member', N'lhebert@example.com', 6)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (299, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1986-12-10T00:07:47.000' AS DateTime), N'Lisa Johnston', N'member', N'audreyburton@example.net', 50)
GO
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (300, N'Fish road young collection reduce industry', N'membaca', N'publish', CAST(N'2014-10-03T11:33:32.000' AS DateTime), N'Peter Mcdowell', N'member', N'michaelwelch@example.org', 36)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (301, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1980-05-11T05:57:57.000' AS DateTime), N'Terry Wells', N'member', N'burnettnatalie@example.org', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (302, N'Call carry deal past remember country', N'membaca', N'publish', CAST(N'1997-11-14T00:44:18.000' AS DateTime), N'Amy Lowe', N'member', N'csmith@example.org', 139)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (303, N'Conference around commercial price popular buy have', N'membaca', N'publish', CAST(N'2016-07-07T21:13:42.000' AS DateTime), N'Jesse Sparks', N'member', N'falexander@example.org', 30)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (304, N'Difference experience get from land population fly season success foreign however government trouble value', N'membaca', N'publish', CAST(N'1999-01-17T10:08:54.000' AS DateTime), N'Ryan Rivera', N'member', N'oliverstephen@example.org', 40)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (305, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1983-09-08T09:25:50.000' AS DateTime), N'Marc Williams', N'member', N'htrevino@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (306, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'2005-08-11T13:32:15.000' AS DateTime), N'Jill Sherman', N'member', N'cward@example.net', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (307, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1981-10-18T13:43:21.000' AS DateTime), N'Victor Nolan', N'member', N'kmalone@example.org', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (308, N'Wall organization certain discover through feel easy charge beat', N'membaca', N'publish', CAST(N'2009-06-20T12:09:58.000' AS DateTime), N'Elizabeth Russell', N'member', N'wanda38@example.net', 6)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (309, N'Better start year down order assume', N'membaca', N'publish', CAST(N'1999-12-12T03:46:19.000' AS DateTime), N'Debbie Waters MD', N'member', N'patrick03@example.org', 134)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (310, N'Better start year down order assume', N'membaca', N'publish', CAST(N'2003-09-08T19:42:04.000' AS DateTime), N'Angela Salazar', N'member', N'nicole00@example.com', 134)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (311, N'Artist customer owner decision wish offer difficult particular sound difficult effect read', N'membaca', N'publish', CAST(N'2004-11-11T03:47:55.000' AS DateTime), N'Lauren Hayes', N'member', N'owolf@example.net', 54)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (312, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1985-08-22T12:59:48.000' AS DateTime), N'Mr. Ryan Sanchez', N'member', N'lfox@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (313, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'2007-06-15T14:40:08.000' AS DateTime), N'Jasmine Williams', N'member', N'kburke@example.org', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (314, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1987-07-16T04:45:40.000' AS DateTime), N'Dana Nguyen', N'member', N'robert02@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (315, N'Room line because conference street take former describe need eight high mission say', N'membaca', N'publish', CAST(N'2022-12-30T01:33:10.000' AS DateTime), N'Raymond Navarro', N'member', N'xmacias@example.com', 55)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (316, N'Peace degree author through above hit six', N'membaca', N'publish', CAST(N'2022-07-24T09:30:26.000' AS DateTime), N'Lorraine Garcia', N'member', N'frytimothy@example.net', 133)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (317, N'Happen study word public grow activity agreement painting environmental executive successful pretty knowledge', N'membaca', N'publish', CAST(N'2002-08-27T15:02:03.000' AS DateTime), N'Gary Perry', N'member', N'tranmark@example.net', 35)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (318, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'2016-04-23T17:35:09.000' AS DateTime), N'Autumn Robinson', N'member', N'vwallace@example.com', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (319, N'Huge wall house himself feeling evening center', N'membaca', N'publish', CAST(N'2012-12-13T08:07:51.000' AS DateTime), N'Cindy Davis', N'member', N'simonjohn@example.org', 10)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (320, N'Doctor would natural laugh all art poor foreign term', N'membaca', N'publish', CAST(N'2013-04-22T00:14:00.000' AS DateTime), N'Robin Lopez', N'member', N'nortonmarcus@example.com', 26)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (321, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1977-08-19T21:46:51.000' AS DateTime), N'Cheryl Bradley', N'member', N'longjacqueline@example.org', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (322, N'Than two since any cause computer throughout', N'membaca', N'publish', CAST(N'2011-07-05T14:11:17.000' AS DateTime), N'Kimberly Maynard', N'member', N'scott54@example.com', 38)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (323, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1976-03-25T01:01:21.000' AS DateTime), N'Autumn Robinson', N'member', N'vwallace@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (324, N'Fear speech cut but fish red budget three attack simple ready message several', N'membaca', N'publish', CAST(N'2017-03-13T20:34:40.000' AS DateTime), N'Marc Williams', N'member', N'htrevino@example.com', 101)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (325, N'Fear speech cut but fish red budget three attack simple ready message several', N'membaca', N'publish', CAST(N'2014-11-08T19:22:23.000' AS DateTime), N'Mr. Ryan Sanchez', N'member', N'lfox@example.net', 101)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (326, N'Leave song this eat expert produce fish', N'membaca', N'publish', CAST(N'2000-02-02T01:35:56.000' AS DateTime), N'Charles Gonzalez', N'member', N'allenalexander@example.net', 83)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (327, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1984-04-13T14:11:11.000' AS DateTime), N'Caleb Clark', N'member', N'ericterry@example.com', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (328, N'Attack from attention including everybody human final mention one arm fill character', N'membaca', N'publish', CAST(N'2012-11-03T03:11:22.000' AS DateTime), N'Jeffery Knight', N'member', N'rubiofrank@example.org', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (329, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1999-07-25T14:42:23.000' AS DateTime), N'Caleb Fleming', N'member', N'davidcrystal@example.net', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (330, N'Doctor would natural laugh all art poor foreign term', N'membaca', N'publish', CAST(N'2003-12-14T06:29:19.000' AS DateTime), N'Michelle Hughes', N'member', N'pittsmichael@example.net', 26)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (331, N'Include special that type think politics fish rich lose', N'membaca', N'publish', CAST(N'2011-01-17T10:09:16.000' AS DateTime), N'Stephanie Bowman', N'member', N'qherrera@example.com', 129)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (332, N'Teacher government pattern politics research too sell hear', N'membaca', N'publish', CAST(N'2009-04-23T16:32:23.000' AS DateTime), N'Amy Lowe', N'member', N'csmith@example.org', 21)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (333, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1988-06-03T15:19:03.000' AS DateTime), N'Douglas Allen', N'member', N'fsimmons@example.com', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (334, N'Attack from attention including everybody human final mention one arm fill character', N'membaca', N'publish', CAST(N'2002-12-11T17:54:10.000' AS DateTime), N'Joseph Freeman', N'member', N'taylorkristin@example.net', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (335, N'Near mission involve sell represent central feel right performance everybody key who strategy', N'membaca', N'publish', CAST(N'1997-03-11T13:13:30.000' AS DateTime), N'Matthew Bell', N'member', N'gburns@example.com', 62)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (336, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'2012-01-12T05:33:04.000' AS DateTime), N'Taylor Johnson', N'member', N'igarza@example.net', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (337, N'Return weight skill stay bad hard perhaps lay skin debate', N'membaca', N'publish', CAST(N'2018-01-20T16:36:33.000' AS DateTime), N'Nicole Henson', N'member', N'tarasanders@example.org', 131)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (338, N'Explain enjoy deep almost medical manage town ahead only', N'membaca', N'publish', CAST(N'2019-05-17T02:35:06.000' AS DateTime), N'William Garcia', N'member', N'smithtyler@example.com', 110)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (339, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1987-03-30T11:29:05.000' AS DateTime), N'Andrew Butler', N'member', N'francisco25@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (340, N'Attack from attention including everybody human final mention one arm fill character', N'membaca', N'publish', CAST(N'2020-08-13T00:21:39.000' AS DateTime), N'Alexa Hernandez', N'member', N'thompsonrobert@example.org', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (341, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1988-12-24T22:16:36.000' AS DateTime), N'William Gonzalez', N'member', N'douglas70@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (342, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1990-05-24T01:27:17.000' AS DateTime), N'Brandi Meyer', N'member', N'coreycannon@example.com', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (343, N'Huge wall house himself feeling evening center', N'membaca', N'publish', CAST(N'1994-01-20T01:02:18.000' AS DateTime), N'George Allen', N'member', N'kelsey56@example.com', 10)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (344, N'Attack from attention including everybody human final mention one arm fill character', N'membaca', N'publish', CAST(N'2001-04-30T10:57:43.000' AS DateTime), N'Lauren Hayes', N'member', N'owolf@example.net', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (345, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1985-10-06T14:11:53.000' AS DateTime), N'Brian Green', N'member', N'michael76@example.org', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (346, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1985-07-20T09:03:08.000' AS DateTime), N'Erica Jimenez', N'member', N'jessica66@example.org', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (347, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1977-06-27T01:20:25.000' AS DateTime), N'Patrick Rogers', N'member', N'david27@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (348, N'Agent matter mother seem medical goal tonight my surface institution', N'membaca', N'publish', CAST(N'2019-08-09T00:01:36.000' AS DateTime), N'Michelle Hughes', N'member', N'pittsmichael@example.net', 39)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (349, N'Huge wall house himself feeling evening center', N'membaca', N'publish', CAST(N'2010-05-20T09:04:06.000' AS DateTime), N'Dana Nguyen', N'member', N'robert02@example.net', 10)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (350, N'Political town all enjoy gun effect lose environmental different contain fish why tax', N'membaca', N'publish', CAST(N'1999-11-04T03:01:41.000' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 103)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (351, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1984-07-16T22:29:52.000' AS DateTime), N'Austin Heath', N'member', N'kingerin@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (352, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1982-12-06T16:19:12.000' AS DateTime), N'Caleb Clark', N'member', N'ericterry@example.com', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (353, N'Conference around commercial price popular buy have', N'membaca', N'publish', CAST(N'2007-01-08T05:40:17.000' AS DateTime), N'Brandi Meyer', N'member', N'coreycannon@example.com', 30)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (354, N'Near mission involve sell represent central feel right performance everybody key who strategy', N'membaca', N'publish', CAST(N'1989-02-10T03:27:26.000' AS DateTime), N'Lauren Hayes', N'member', N'owolf@example.net', 62)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (355, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1981-11-25T04:03:58.000' AS DateTime), N'Jeremy Green', N'member', N'williamsmichael@example.com', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (356, N'Fund yard art against PM buy of behavior customer station officer toward', N'membaca', N'publish', CAST(N'2022-09-01T23:14:12.000' AS DateTime), N'Kimberly Smith', N'member', N'garciabeverly@example.org', 70)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (357, N'Enough follow southern involve at eight stage direction bar research chance citizen point', N'membaca', N'publish', CAST(N'2008-11-21T02:26:58.000' AS DateTime), N'Jonathan Williams', N'member', N'dpearson@example.com', 132)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (358, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1986-09-08T16:43:04.000' AS DateTime), N'Jeffery Knight', N'member', N'rubiofrank@example.org', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (359, N'Attack from attention including everybody human final mention one arm fill character', N'membaca', N'publish', CAST(N'2016-08-26T00:37:10.000' AS DateTime), N'Sean Green', N'member', N'kenneth85@example.org', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (360, N'Near mission involve sell represent central feel right performance everybody key who strategy', N'membaca', N'publish', CAST(N'1994-02-12T14:16:02.000' AS DateTime), N'Amanda Hernandez', N'member', N'kfinley@example.org', 62)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (361, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1998-02-23T04:29:15.000' AS DateTime), N'Caleb Clark', N'member', N'ericterry@example.com', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (362, N'Standard situation worry gun small thought', N'membaca', N'publish', CAST(N'2014-05-13T10:41:36.000' AS DateTime), N'William Gonzalez', N'member', N'douglas70@example.net', 145)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (363, N'Near mission involve sell represent central feel right performance everybody key who strategy', N'membaca', N'publish', CAST(N'1990-01-25T09:13:34.000' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 62)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (364, N'Fear speech cut but fish red budget three attack simple ready message several', N'membaca', N'publish', CAST(N'2015-11-30T19:52:13.000' AS DateTime), N'William Jenkins', N'member', N'michael45@example.com', 101)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (365, N'Teacher government pattern politics research too sell hear', N'membaca', N'publish', CAST(N'1988-03-20T17:44:02.000' AS DateTime), N'Emily Howard', N'member', N'patrick56@example.net', 21)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (366, N'Fear speech cut but fish red budget three attack simple ready message several', N'membaca', N'publish', CAST(N'2014-06-29T02:53:59.000' AS DateTime), N'Norma Mooney', N'member', N'williammartin@example.com', 101)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (367, N'Political town all enjoy gun effect lose environmental different contain fish why tax', N'membaca', N'publish', CAST(N'2009-04-14T08:58:44.000' AS DateTime), N'Joshua Carter', N'member', N'jeffrey31@example.net', 103)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (368, N'Could risk with more price material week market', N'membaca', N'publish', CAST(N'2001-10-23T22:23:38.000' AS DateTime), N'Charles Douglas', N'member', N'kinglinda@example.net', 56)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (369, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1986-07-08T04:13:19.000' AS DateTime), N'Hannah Wiggins', N'member', N'scottjones@example.com', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (370, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1982-01-30T11:06:00.000' AS DateTime), N'Faith Cabrera', N'member', N'justin39@example.org', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (371, N'Conference around commercial price popular buy have', N'membaca', N'publish', CAST(N'1998-07-04T03:27:48.000' AS DateTime), N'Lori Bennett', N'member', N'charlotte27@example.org', 30)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (372, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1988-10-27T02:27:23.000' AS DateTime), N'Dustin Greer', N'member', N'linda39@example.net', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (373, N'Usually site while strategy say left yes hard', N'membaca', N'publish', CAST(N'2022-07-09T16:38:50.000' AS DateTime), N'Brandi Meyer', N'member', N'coreycannon@example.com', 14)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (374, N'Attack from attention including everybody human final mention one arm fill character', N'membaca', N'publish', CAST(N'2002-05-08T16:24:19.000' AS DateTime), N'Margaret Jones', N'member', N'foxmichael@example.com', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (375, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1994-06-09T13:54:15.000' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (376, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1984-02-15T18:44:56.000' AS DateTime), N'Kristin Potts', N'member', N'rrobinson@example.com', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (377, N'Attack from attention including everybody human final mention one arm fill character', N'membaca', N'publish', CAST(N'2012-11-30T16:54:37.000' AS DateTime), N'Jennifer Bates', N'member', N'rlewis@example.org', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (378, N'Near mission involve sell represent central feel right performance everybody key who strategy', N'membaca', N'publish', CAST(N'1990-07-14T23:51:52.000' AS DateTime), N'Susan Williams', N'member', N'virginia18@example.com', 62)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (379, N'Could risk with more price material week market', N'membaca', N'publish', CAST(N'1997-06-26T03:03:30.000' AS DateTime), N'Richard Jones', N'member', N'zfields@example.org', 56)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (380, N'Today daughter last woman morning once deal offer firm arm', N'membaca', N'publish', CAST(N'2022-12-30T23:22:51.000' AS DateTime), N'Sarah Villanueva', N'member', N'sfischer@example.org', 138)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (381, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1985-11-20T18:35:32.000' AS DateTime), N'Emily Howard', N'member', N'patrick56@example.net', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (382, N'Artist customer owner decision wish offer difficult particular sound difficult effect read', N'membaca', N'publish', CAST(N'2003-08-31T01:47:27.000' AS DateTime), N'Austin Boyer', N'member', N'jessica35@example.com', 54)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (383, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1980-07-07T18:05:44.000' AS DateTime), N'Lisa Johnston', N'member', N'audreyburton@example.net', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (384, N'Democrat senior your near ago note true stuff decision rich', N'membaca', N'publish', CAST(N'2014-04-14T21:00:59.000' AS DateTime), N'Hannah Reyes', N'member', N'julie31@example.net', 107)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (385, N'Happen study word public grow activity agreement painting environmental executive successful pretty knowledge', N'membaca', N'publish', CAST(N'2009-12-13T20:20:10.000' AS DateTime), N'Jonathan Williams', N'member', N'dpearson@example.com', 35)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (386, N'Could risk with more price material week market', N'membaca', N'publish', CAST(N'1994-07-21T04:42:20.000' AS DateTime), N'Richard Kirby', N'member', N'christystanley@example.net', 56)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (387, N'Standard situation worry gun small thought', N'membaca', N'publish', CAST(N'1994-02-28T07:03:50.000' AS DateTime), N'William Garcia', N'member', N'smithtyler@example.com', 145)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (388, N'Standard situation worry gun small thought', N'membaca', N'publish', CAST(N'1993-11-22T03:50:15.000' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 145)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (389, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1985-04-16T05:42:15.000' AS DateTime), N'Travis Schultz', N'member', N'bullockarthur@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (390, N'Difference experience get from land population fly season success foreign however government trouble value', N'membaca', N'publish', CAST(N'2003-09-16T07:41:45.000' AS DateTime), N'Danielle Castro', N'member', N'thernandez@example.org', 40)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (391, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1986-06-09T15:29:09.000' AS DateTime), N'Jennifer Miller', N'member', N'starkrobert@example.com', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (392, N'Conference around commercial price popular buy have', N'membaca', N'publish', CAST(N'2022-07-29T12:28:34.000' AS DateTime), N'Ryan Rivera', N'member', N'oliverstephen@example.org', 30)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (393, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1978-11-06T13:36:42.000' AS DateTime), N'Joseph Jones', N'member', N'kmitchell@example.org', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (394, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1985-11-30T21:49:07.000' AS DateTime), N'Lorraine Garcia', N'member', N'frytimothy@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (395, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1978-08-25T05:32:30.000' AS DateTime), N'Collin Lopez', N'member', N'lhebert@example.com', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (396, N'Hotel exactly use ago I according', N'membaca', N'publish', CAST(N'1989-07-27T07:25:12.000' AS DateTime), N'Nicholas Kline', N'member', N'jessicacabrera@example.com', 4)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (397, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'2001-08-07T19:23:08.000' AS DateTime), N'Andrew Gould', N'member', N'michaelhenry@example.org', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (398, N'Bank soon risk my others order director', N'membaca', N'publish', CAST(N'2003-03-04T23:31:46.000' AS DateTime), N'Barbara Sanders', N'member', N'kellyamber@example.net', 29)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (399, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1989-01-09T04:29:39.000' AS DateTime), N'Jill Sherman', N'member', N'cward@example.net', 61)
GO
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (400, N'Near mission involve sell represent central feel right performance everybody key who strategy', N'membaca', N'publish', CAST(N'1992-07-08T01:48:41.000' AS DateTime), N'Caleb Clark', N'member', N'ericterry@example.com', 62)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (401, N'Huge wall house himself feeling evening center', N'membaca', N'publish', CAST(N'2005-04-29T01:14:17.000' AS DateTime), N'Melanie Patrick', N'member', N'veronica36@example.org', 10)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (402, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1989-07-08T00:14:08.000' AS DateTime), N'Stacy Chan', N'member', N'jacob61@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (403, N'Hotel exactly use ago I according', N'membaca', N'publish', CAST(N'1998-05-21T10:40:36.000' AS DateTime), N'Nicholas Massey', N'member', N'anthonyruiz@example.org', 4)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (404, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1991-03-21T13:26:34.000' AS DateTime), N'Tasha Rodriguez', N'member', N'wrightcynthia@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (405, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1982-10-29T13:13:00.000' AS DateTime), N'Charles Douglas', N'member', N'kinglinda@example.net', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (406, N'Than two since any cause computer throughout', N'membaca', N'publish', CAST(N'2007-09-13T14:28:39.000' AS DateTime), N'Hannah Reyes', N'member', N'julie31@example.net', 38)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (407, N'Artist customer owner decision wish offer difficult particular sound difficult effect read', N'membaca', N'publish', CAST(N'2001-06-03T20:56:34.000' AS DateTime), N'Jeffery Knight', N'member', N'rubiofrank@example.org', 54)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (408, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1982-10-19T14:04:44.000' AS DateTime), N'Victor Nolan', N'member', N'kmalone@example.org', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (409, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'2018-03-18T02:53:49.000' AS DateTime), N'Jamie Hutchinson', N'member', N'welchzachary@example.net', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (410, N'Hotel exactly use ago I according', N'membaca', N'publish', CAST(N'1990-03-21T11:48:09.000' AS DateTime), N'Dr. James Willis', N'member', N'mejiaashley@example.com', 4)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (411, N'Standard situation worry gun small thought', N'membaca', N'publish', CAST(N'2013-04-12T22:03:09.000' AS DateTime), N'George Allen', N'member', N'kelsey56@example.com', 145)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (412, N'Could risk with more price material week market', N'membaca', N'publish', CAST(N'2002-01-20T15:15:50.000' AS DateTime), N'Charles Gonzalez', N'member', N'allenalexander@example.net', 56)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (413, N'Near mission involve sell represent central feel right performance everybody key who strategy', N'membaca', N'publish', CAST(N'1998-05-29T21:04:49.000' AS DateTime), N'Angela Salazar', N'member', N'nicole00@example.com', 62)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (414, N'Sense relationship guess lay that international', N'membaca', N'publish', CAST(N'2011-09-21T14:56:30.000' AS DateTime), N'Autumn Robinson', N'member', N'vwallace@example.com', 106)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (415, N'Need contain step herself human great area suggest own', N'membaca', N'publish', CAST(N'2014-03-17T01:20:25.000' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 150)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (416, N'Treat push first crime onto star board show take no', N'membaca', N'publish', CAST(N'2000-02-12T12:22:23.000' AS DateTime), N'Alex Woodward', N'member', N'kelly59@example.net', 5)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (417, N'Than two since any cause computer throughout', N'membaca', N'publish', CAST(N'1999-11-20T15:03:51.000' AS DateTime), N'Jasmine Williams', N'member', N'kburke@example.org', 38)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (418, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1998-08-20T14:14:35.000' AS DateTime), N'Dr. James Willis', N'member', N'mejiaashley@example.com', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (419, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1979-03-18T12:25:20.000' AS DateTime), N'Jessica Thompson', N'member', N'jessica32@example.net', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (420, N'Explain enjoy deep almost medical manage town ahead only', N'membaca', N'publish', CAST(N'2020-03-30T12:55:27.000' AS DateTime), N'Tasha Rodriguez', N'member', N'wrightcynthia@example.net', 110)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (421, N'Hotel exactly use ago I according', N'membaca', N'publish', CAST(N'1992-04-03T22:44:22.000' AS DateTime), N'Matthew Smith', N'member', N'jesseevans@example.org', 4)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (422, N'Answer music return interest wind law there treatment couple happen particular factor hotel', N'membaca', N'publish', CAST(N'2000-04-28T00:38:45.000' AS DateTime), N'Eric Owens PhD', N'member', N'mlee@example.org', 98)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (423, N'Hotel exactly use ago I according', N'membaca', N'publish', CAST(N'2002-04-11T14:01:49.000' AS DateTime), N'Miss Angela Swanson DVM', N'member', N'jonathan80@example.org', 4)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (424, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1987-04-23T01:43:51.000' AS DateTime), N'Autumn Robinson', N'member', N'vwallace@example.com', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (425, N'Political town all enjoy gun effect lose environmental different contain fish why tax', N'membaca', N'publish', CAST(N'2010-07-14T14:53:08.000' AS DateTime), N'Austin Boyer', N'member', N'jessica35@example.com', 103)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (426, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1983-01-03T08:26:34.000' AS DateTime), N'Erica Jimenez', N'member', N'jessica66@example.org', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (427, N'Enough follow southern involve at eight stage direction bar research chance citizen point', N'membaca', N'publish', CAST(N'2014-12-23T19:09:25.000' AS DateTime), N'Kimberly Myers', N'member', N'amontgomery@example.org', 132)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (428, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1978-10-01T07:29:06.000' AS DateTime), N'Jennifer Morales', N'member', N'fcarpenter@example.com', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (429, N'Return ever try product thing beyond', N'membaca', N'publish', CAST(N'2015-12-23T20:10:24.000' AS DateTime), N'Michelle Hughes', N'member', N'pittsmichael@example.net', 52)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (430, N'Artist customer owner decision wish offer difficult particular sound difficult effect read', N'membaca', N'publish', CAST(N'1998-12-16T19:01:42.000' AS DateTime), N'Jennifer Bates', N'member', N'rlewis@example.org', 54)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (431, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1988-12-28T06:51:43.000' AS DateTime), N'Dustin Greer', N'member', N'linda39@example.net', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (432, N'From fund four quickly news room', N'membaca', N'publish', CAST(N'2009-03-17T18:45:57.000' AS DateTime), N'Mr. Ryan Sanchez', N'member', N'lfox@example.net', 100)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (433, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1986-01-16T15:32:08.000' AS DateTime), N'Travis Schultz', N'member', N'bullockarthur@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (434, N'Enough follow southern involve at eight stage direction bar research chance citizen point', N'membaca', N'publish', CAST(N'1998-05-27T09:18:12.000' AS DateTime), N'Faith Cabrera', N'member', N'justin39@example.org', 132)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (435, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1984-04-08T16:47:51.000' AS DateTime), N'Lorraine Garcia', N'member', N'frytimothy@example.net', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (436, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1983-11-25T09:08:59.000' AS DateTime), N'Taylor Johnson', N'member', N'igarza@example.net', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (437, N'Attack from attention including everybody human final mention one arm fill character', N'membaca', N'publish', CAST(N'2014-04-29T22:30:05.000' AS DateTime), N'Travis Schultz', N'member', N'bullockarthur@example.net', 12)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (438, N'Difference experience get from land population fly season success foreign however government trouble value', N'membaca', N'publish', CAST(N'2015-11-05T21:29:37.000' AS DateTime), N'Jill Sherman', N'member', N'cward@example.net', 40)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (439, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1985-06-18T15:53:25.000' AS DateTime), N'Jeffery Knight', N'member', N'rubiofrank@example.org', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (440, N'Happen study word public grow activity agreement painting environmental executive successful pretty knowledge', N'membaca', N'publish', CAST(N'2001-11-30T10:53:53.000' AS DateTime), N'Katherine Ibarra', N'member', N'lramirez@example.net', 35)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (441, N'Conference around commercial price popular buy have', N'membaca', N'publish', CAST(N'1995-12-03T04:09:15.000' AS DateTime), N'Bradley Melton', N'member', N'sonyafrye@example.org', 30)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (442, N'Conference around commercial price popular buy have', N'membaca', N'publish', CAST(N'2011-04-14T02:34:25.000' AS DateTime), N'Joshua Hernandez', N'member', N'carl05@example.net', 30)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (443, N'Amount forget might company around work director myself nation', N'membaca', N'publish', CAST(N'2016-12-01T01:10:40.000' AS DateTime), N'Jennifer Miller', N'member', N'starkrobert@example.com', 80)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (444, N'Standard situation worry gun small thought', N'membaca', N'publish', CAST(N'2009-03-11T11:02:56.000' AS DateTime), N'Rebecca Sandoval', N'member', N'bryantjennifer@example.com', 145)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (445, N'Fear speech cut but fish red budget three attack simple ready message several', N'membaca', N'publish', CAST(N'2016-09-19T16:38:30.000' AS DateTime), N'Bobby Flores', N'member', N'brittanyevans@example.com', 101)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (446, N'Bank soon risk my others order director', N'membaca', N'publish', CAST(N'2018-10-13T07:03:56.000' AS DateTime), N'Lori Bennett', N'member', N'charlotte27@example.org', 29)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (447, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1987-06-30T14:53:04.000' AS DateTime), N'Nicholas Kline', N'member', N'jessicacabrera@example.com', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (448, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1982-10-28T04:36:22.000' AS DateTime), N'Michelle Hughes', N'member', N'pittsmichael@example.net', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (449, N'Off plant commercial address artist strong page very site score share push kid', N'membaca', N'publish', CAST(N'1984-08-28T19:09:29.000' AS DateTime), N'Ryan Rivera', N'member', N'oliverstephen@example.org', 50)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (450, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1976-12-04T05:17:44.000' AS DateTime), N'Jennifer Bates', N'member', N'rlewis@example.org', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (451, N'Weight room east suffer child four his need give finish', N'membaca', N'publish', CAST(N'1988-03-12T09:45:15.000' AS DateTime), N'Hannah Reyes', N'member', N'julie31@example.net', 61)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (452, N'Huge wall house himself feeling evening center', N'membaca', N'publish', CAST(N'2009-01-04T00:10:21.000' AS DateTime), N'Jennifer Morales', N'member', N'fcarpenter@example.com', 10)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (453, N'According paper discover place group force agreement question point under degree when', N'membaca', N'publish', CAST(N'1979-04-20T13:30:38.000' AS DateTime), N'Kimberly Smith', N'member', N'garciabeverly@example.org', 57)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (454, N'Happen study word public grow activity agreement painting environmental executive successful pretty knowledge', N'membaca', N'publish', CAST(N'2014-08-26T19:32:27.000' AS DateTime), N'Jonathan Williams', N'member', N'dpearson@example.com', 35)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (455, N'Nothing successful change than and again', N'membaca', N'publish', CAST(N'1988-05-12T00:30:45.000' AS DateTime), N'Robin Lopez', N'member', N'nortonmarcus@example.com', 20)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (456, N'Fiera Besari Kecelakaan', N'submit', N'submit', CAST(N'2023-06-05T17:21:20.597' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 151)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (457, N'Fiera Besari Kecelakaan', N'submit', N'submit', CAST(N'2023-06-05T17:27:20.723' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 151)
INSERT [dbo].[LogArtikel] ([idLog], [namaArtikel], [aktivitas], [status], [tanggal], [namaAktor], [tipeAktor], [idAktor], [idArtikel]) VALUES (458, N'Fiera Besari Kecelakaan', N'submit', N'submit', CAST(N'2023-06-05T17:28:38.020' AS DateTime), N'Rebecca Stark', N'member', N'alexander44@example.net', 153)
SET IDENTITY_INSERT [dbo].[LogArtikel] OFF
GO
SET IDENTITY_INSERT [dbo].[LogHarga] ON 

INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (1, N'qcooper@example.org', 25594.0000, CAST(N'2020-05-27T20:04:12.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (2, N'donnadennis@example.org', 25012.0000, CAST(N'2000-06-19T16:18:35.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (3, N'qcooper@example.org', 72142.0000, CAST(N'1992-09-08T01:20:29.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (4, N'levymichael@example.com', 77374.0000, CAST(N'1996-12-30T22:03:58.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (5, N'carterhannah@example.net', 20942.0000, CAST(N'1995-07-21T04:54:27.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (6, N'levymichael@example.com', 65676.0000, CAST(N'2003-12-10T03:58:49.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (7, N'levymichael@example.com', 28967.0000, CAST(N'1985-11-30T18:59:29.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (8, N'levymichael@example.com', 58852.0000, CAST(N'1976-01-05T04:49:37.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (9, N'moodyryan@example.com', 32846.0000, CAST(N'2017-03-07T12:26:11.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (10, N'michelelopez@example.org', 80163.0000, CAST(N'1990-06-11T21:54:38.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (11, N'donnadennis@example.org', 73852.0000, CAST(N'2017-01-13T15:06:53.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (12, N'reedgregory@example.org', 1067.0000, CAST(N'2015-05-28T16:06:46.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (13, N'moodyryan@example.com', 9161.0000, CAST(N'2012-07-06T03:07:32.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (14, N'christian11@example.com', 32830.0000, CAST(N'1993-07-25T15:36:00.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (15, N'michelelopez@example.org', 89369.0000, CAST(N'1984-01-04T11:16:41.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (16, N'levymichael@example.com', 30359.0000, CAST(N'1986-12-25T03:37:53.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (17, N'crawfordmichelle@example.com', 100253.0000, CAST(N'2000-04-16T05:54:12.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (18, N'qcooper@example.org', 56774.0000, CAST(N'1977-06-12T23:46:22.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (19, N'chad23@example.org', 90525.0000, CAST(N'2008-02-06T11:18:20.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (20, N'donnadennis@example.org', 65674.0000, CAST(N'2019-07-16T06:53:14.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (21, N'reedgregory@example.org', 22392.0000, CAST(N'2010-12-04T22:59:09.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (22, N'donnadennis@example.org', 74055.0000, CAST(N'2012-07-11T08:33:36.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (23, N'donnadennis@example.org', 95044.0000, CAST(N'1983-01-06T21:37:44.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (24, N'michelelopez@example.org', 52225.0000, CAST(N'1977-02-23T06:58:48.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (25, N'michelelopez@example.org', 87931.0000, CAST(N'2023-01-31T22:24:42.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (26, N'donnadennis@example.org', 62416.0000, CAST(N'1994-04-14T20:51:23.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (27, N'crawfordmichelle@example.com', 20213.0000, CAST(N'1979-03-21T07:00:30.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (28, N'reedgregory@example.org', 99848.0000, CAST(N'1999-06-23T13:41:21.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (29, N'crawfordmichelle@example.com', 99519.0000, CAST(N'1985-04-29T08:41:36.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (30, N'christian11@example.com', 52649.0000, CAST(N'2009-03-01T17:29:09.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (31, N'michelelopez@example.org', 93766.0000, CAST(N'2012-08-23T07:05:56.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (32, N'qcooper@example.org', 28527.0000, CAST(N'1979-03-29T19:28:46.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (33, N'donnadennis@example.org', 93303.0000, CAST(N'1987-08-18T01:33:03.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (34, N'moodyryan@example.com', 3788.0000, CAST(N'2004-01-22T18:53:17.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (35, N'carterhannah@example.net', 28174.0000, CAST(N'1988-03-21T14:44:01.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (36, N'crawfordmichelle@example.com', 55045.0000, CAST(N'1973-08-10T09:32:06.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (37, N'levymichael@example.com', 75660.0000, CAST(N'1990-01-14T07:49:53.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (38, N'carterhannah@example.net', 71889.0000, CAST(N'2014-11-05T00:56:31.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (39, N'reedgregory@example.org', 84018.0000, CAST(N'1986-11-11T08:04:29.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (40, N'moodyryan@example.com', 88656.0000, CAST(N'2004-10-01T11:04:43.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (41, N'christian11@example.com', 70578.0000, CAST(N'1984-02-27T04:07:07.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (42, N'michelelopez@example.org', 41452.0000, CAST(N'2007-02-05T10:59:27.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (43, N'carterhannah@example.net', 72292.0000, CAST(N'1973-11-24T07:51:44.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (44, N'qcooper@example.org', 9656.0000, CAST(N'2010-02-01T07:52:25.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (45, N'crawfordmichelle@example.com', 80278.0000, CAST(N'2017-01-01T16:10:01.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (46, N'michelelopez@example.org', 99603.0000, CAST(N'1998-11-23T11:59:10.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (47, N'moodyryan@example.com', 27732.0000, CAST(N'2000-08-21T06:03:36.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (48, N'carterhannah@example.net', 81873.0000, CAST(N'1985-10-09T23:47:24.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (49, N'donnadennis@example.org', 41905.0000, CAST(N'1992-05-01T13:15:34.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (50, N'crawfordmichelle@example.com', 98651.0000, CAST(N'2009-06-24T22:29:39.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (51, N'moodyryan@example.com', 32342.0000, CAST(N'1973-01-07T02:00:14.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (52, N'levymichael@example.com', 4655.0000, CAST(N'1972-01-23T08:58:53.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (53, N'levymichael@example.com', 68193.0000, CAST(N'1978-10-22T10:45:50.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (54, N'donnadennis@example.org', 21103.0000, CAST(N'1996-10-03T13:35:36.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (55, N'michelelopez@example.org', 34868.0000, CAST(N'1978-08-31T05:48:33.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (56, N'crawfordmichelle@example.com', 78793.0000, CAST(N'2001-06-25T01:42:33.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (57, N'michelelopez@example.org', 37497.0000, CAST(N'2020-07-03T20:53:35.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (58, N'reedgregory@example.org', 51163.0000, CAST(N'1982-06-16T12:05:38.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (59, N'carterhannah@example.net', 98776.0000, CAST(N'1975-01-07T14:15:30.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (60, N'qcooper@example.org', 45534.0000, CAST(N'2011-07-07T22:54:10.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (61, N'reedgregory@example.org', 78362.0000, CAST(N'2016-04-22T13:34:01.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (62, N'chad23@example.org', 12662.0000, CAST(N'2012-05-05T22:27:23.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (63, N'moodyryan@example.com', 21288.0000, CAST(N'1970-03-14T17:00:25.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (64, N'donnadennis@example.org', 83174.0000, CAST(N'1993-06-11T23:39:40.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (65, N'levymichael@example.com', 74867.0000, CAST(N'1979-03-06T15:31:38.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (66, N'michelelopez@example.org', 9296.0000, CAST(N'2017-09-30T21:52:56.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (67, N'qcooper@example.org', 63841.0000, CAST(N'1992-03-01T14:58:03.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (68, N'carterhannah@example.net', 42869.0000, CAST(N'1992-09-10T17:47:35.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (69, N'carterhannah@example.net', 96572.0000, CAST(N'2017-11-03T06:15:54.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (70, N'moodyryan@example.com', 16282.0000, CAST(N'1983-12-18T17:49:25.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (71, N'carterhannah@example.net', 80581.0000, CAST(N'1988-01-28T11:15:37.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (72, N'christian11@example.com', 100829.0000, CAST(N'1972-05-19T04:36:42.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (73, N'christian11@example.com', 5079.0000, CAST(N'1991-07-05T07:56:28.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (74, N'crawfordmichelle@example.com', 93471.0000, CAST(N'2011-01-16T08:41:30.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (75, N'carterhannah@example.net', 33490.0000, CAST(N'2006-10-04T17:34:19.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (76, N'moodyryan@example.com', 83486.0000, CAST(N'2005-11-16T19:41:41.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (77, N'chad23@example.org', 35624.0000, CAST(N'1994-06-28T06:16:45.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (78, N'carterhannah@example.net', 16129.0000, CAST(N'2014-12-08T23:38:45.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (79, N'donnadennis@example.org', 39224.0000, CAST(N'1991-01-12T22:45:21.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (80, N'donnadennis@example.org', 81763.0000, CAST(N'1983-11-21T18:56:00.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (81, N'reedgregory@example.org', 98655.0000, CAST(N'2018-12-02T21:41:26.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (82, N'qcooper@example.org', 72030.0000, CAST(N'1979-08-30T02:53:19.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (83, N'moodyryan@example.com', 45400.0000, CAST(N'1983-12-12T09:06:29.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (84, N'qcooper@example.org', 73382.0000, CAST(N'2001-01-12T20:16:43.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (85, N'moodyryan@example.com', 22158.0000, CAST(N'1994-01-31T20:10:54.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (86, N'michelelopez@example.org', 3877.0000, CAST(N'1995-10-19T23:29:21.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (87, N'chad23@example.org', 44460.0000, CAST(N'2003-12-30T14:47:53.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (88, N'christian11@example.com', 46094.0000, CAST(N'1987-07-12T00:50:27.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (89, N'crawfordmichelle@example.com', 81406.0000, CAST(N'1989-02-17T17:32:13.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (90, N'qcooper@example.org', 55742.0000, CAST(N'1985-02-11T18:09:02.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (91, N'crawfordmichelle@example.com', 33967.0000, CAST(N'1994-09-06T11:01:44.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (92, N'levymichael@example.com', 14656.0000, CAST(N'2007-01-24T15:43:17.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (93, N'qcooper@example.org', 10841.0000, CAST(N'1998-08-31T10:54:04.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (94, N'levymichael@example.com', 17811.0000, CAST(N'2005-04-08T23:37:57.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (95, N'michelelopez@example.org', 5542.0000, CAST(N'2005-08-10T13:11:06.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (96, N'qcooper@example.org', 30280.0000, CAST(N'1994-12-22T22:37:21.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (97, N'donnadennis@example.org', 13689.0000, CAST(N'2007-08-16T19:19:36.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (98, N'qcooper@example.org', 93719.0000, CAST(N'2020-08-26T05:30:02.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (99, N'reedgregory@example.org', 24224.0000, CAST(N'1993-03-06T13:53:19.000' AS DateTime))
GO
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (100, N'reedgregory@example.org', 53302.0000, CAST(N'1981-11-06T17:23:11.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (101, N'reedgregory@example.org', 80794.0000, CAST(N'1988-08-05T09:28:58.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (102, N'michelelopez@example.org', 46667.0000, CAST(N'1973-08-26T03:32:07.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (103, N'christian11@example.com', 36281.0000, CAST(N'2016-01-24T14:45:08.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (104, N'donnadennis@example.org', 72732.0000, CAST(N'1980-03-14T04:23:13.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (105, N'reedgregory@example.org', 29320.0000, CAST(N'1979-02-23T14:07:43.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (106, N'michelelopez@example.org', 42121.0000, CAST(N'2014-05-14T03:26:52.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (107, N'christian11@example.com', 37283.0000, CAST(N'1998-09-28T23:12:48.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (108, N'qcooper@example.org', 88091.0000, CAST(N'2000-03-04T05:27:55.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (109, N'moodyryan@example.com', 11915.0000, CAST(N'2020-04-11T03:02:14.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (110, N'donnadennis@example.org', 41417.0000, CAST(N'1997-05-20T17:31:03.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (111, N'donnadennis@example.org', 5601.0000, CAST(N'1992-10-23T19:55:05.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (112, N'crawfordmichelle@example.com', 81178.0000, CAST(N'1988-03-13T07:58:46.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (113, N'moodyryan@example.com', 39326.0000, CAST(N'2007-09-25T21:06:54.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (114, N'crawfordmichelle@example.com', 22821.0000, CAST(N'2007-11-02T11:38:09.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (115, N'chad23@example.org', 27399.0000, CAST(N'2003-05-25T18:39:29.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (116, N'qcooper@example.org', 73702.0000, CAST(N'1983-05-04T01:35:51.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (117, N'donnadennis@example.org', 59863.0000, CAST(N'1998-11-28T15:06:58.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (118, N'crawfordmichelle@example.com', 55344.0000, CAST(N'1982-12-20T08:07:32.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (119, N'qcooper@example.org', 70717.0000, CAST(N'1982-01-13T02:58:33.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (120, N'carterhannah@example.net', 17083.0000, CAST(N'1986-09-14T07:42:52.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (121, N'crawfordmichelle@example.com', 78800.0000, CAST(N'1997-06-12T15:20:41.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (122, N'michelelopez@example.org', 43484.0000, CAST(N'1977-09-25T07:16:37.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (123, N'christian11@example.com', 39871.0000, CAST(N'2021-06-14T21:42:32.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (124, N'reedgregory@example.org', 83355.0000, CAST(N'1975-04-17T08:42:16.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (125, N'carterhannah@example.net', 89294.0000, CAST(N'1994-01-31T04:26:32.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (126, N'chad23@example.org', 5108.0000, CAST(N'1991-10-08T23:27:52.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (127, N'moodyryan@example.com', 2077.0000, CAST(N'2003-09-23T19:04:49.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (128, N'chad23@example.org', 10984.0000, CAST(N'1982-06-16T19:27:13.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (129, N'donnadennis@example.org', 42539.0000, CAST(N'1991-09-03T19:10:53.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (130, N'qcooper@example.org', 86654.0000, CAST(N'1994-08-02T21:17:24.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (131, N'chad23@example.org', 7348.0000, CAST(N'2009-04-03T09:46:13.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (132, N'reedgregory@example.org', 91743.0000, CAST(N'1991-07-07T01:44:22.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (133, N'qcooper@example.org', 19352.0000, CAST(N'1972-11-12T23:12:45.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (134, N'chad23@example.org', 79269.0000, CAST(N'1983-03-12T12:25:51.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (135, N'moodyryan@example.com', 51936.0000, CAST(N'1971-06-28T13:18:24.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (136, N'carterhannah@example.net', 37814.0000, CAST(N'1985-07-27T02:58:44.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (137, N'levymichael@example.com', 30548.0000, CAST(N'1977-09-13T02:44:32.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (138, N'chad23@example.org', 41992.0000, CAST(N'2008-06-13T07:22:11.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (139, N'qcooper@example.org', 65159.0000, CAST(N'1995-12-26T09:09:11.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (140, N'michelelopez@example.org', 93833.0000, CAST(N'1991-11-04T19:59:26.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (141, N'crawfordmichelle@example.com', 56529.0000, CAST(N'2003-06-15T23:40:42.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (142, N'donnadennis@example.org', 23221.0000, CAST(N'2019-03-30T23:04:28.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (143, N'qcooper@example.org', 7721.0000, CAST(N'1982-10-15T09:12:02.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (144, N'reedgregory@example.org', 93564.0000, CAST(N'1981-02-09T18:48:38.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (145, N'michelelopez@example.org', 51292.0000, CAST(N'2003-09-20T20:46:07.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (146, N'moodyryan@example.com', 32259.0000, CAST(N'2020-10-12T02:33:13.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (147, N'crawfordmichelle@example.com', 41409.0000, CAST(N'1972-05-12T15:47:32.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (148, N'crawfordmichelle@example.com', 24936.0000, CAST(N'2009-01-13T05:33:41.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (149, N'christian11@example.com', 58366.0000, CAST(N'1974-06-02T17:29:23.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (150, N'moodyryan@example.com', 99814.0000, CAST(N'1977-02-04T17:14:56.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (151, N'donnadennis@example.org', 69876.0000, CAST(N'2011-02-27T01:15:09.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (152, N'carterhannah@example.net', 17326.0000, CAST(N'2012-02-27T11:33:38.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (153, N'qcooper@example.org', 33313.0000, CAST(N'2012-01-18T18:29:00.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (154, N'michelelopez@example.org', 37921.0000, CAST(N'2021-08-20T19:30:47.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (155, N'chad23@example.org', 53981.0000, CAST(N'1972-01-17T09:29:32.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (156, N'carterhannah@example.net', 62698.0000, CAST(N'1973-05-31T22:21:06.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (157, N'moodyryan@example.com', 22526.0000, CAST(N'1975-06-10T05:07:27.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (158, N'qcooper@example.org', 47832.0000, CAST(N'1972-08-29T01:59:51.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (159, N'reedgregory@example.org', 33665.0000, CAST(N'1997-05-08T21:50:30.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (160, N'christian11@example.com', 30007.0000, CAST(N'1988-06-06T20:30:34.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (161, N'chad23@example.org', 20044.0000, CAST(N'2005-09-04T16:59:09.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (162, N'christian11@example.com', 73309.0000, CAST(N'1997-08-11T08:52:42.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (163, N'chad23@example.org', 72325.0000, CAST(N'2010-06-30T20:25:18.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (164, N'moodyryan@example.com', 24756.0000, CAST(N'1976-11-17T06:17:09.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (165, N'reedgregory@example.org', 95603.0000, CAST(N'2022-07-27T19:53:56.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (166, N'carterhannah@example.net', 93435.0000, CAST(N'1992-09-18T22:18:42.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (167, N'christian11@example.com', 32896.0000, CAST(N'1980-08-03T17:21:55.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (168, N'qcooper@example.org', 17884.0000, CAST(N'2006-06-18T16:04:28.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (169, N'levymichael@example.com', 90287.0000, CAST(N'2005-11-06T16:42:02.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (170, N'christian11@example.com', 98646.0000, CAST(N'1984-03-09T23:38:39.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (171, N'reedgregory@example.org', 69683.0000, CAST(N'2011-09-16T14:50:49.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (172, N'chad23@example.org', 93916.0000, CAST(N'1974-02-04T21:47:02.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (173, N'moodyryan@example.com', 95626.0000, CAST(N'2015-01-29T02:45:25.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (174, N'michelelopez@example.org', 27186.0000, CAST(N'2006-05-24T19:21:43.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (175, N'moodyryan@example.com', 55007.0000, CAST(N'2011-11-07T09:09:43.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (176, N'christian11@example.com', 50940.0000, CAST(N'1981-07-01T20:20:31.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (177, N'qcooper@example.org', 51843.0000, CAST(N'2023-01-17T12:00:34.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (178, N'reedgregory@example.org', 51437.0000, CAST(N'2015-11-21T13:35:49.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (179, N'qcooper@example.org', 69961.0000, CAST(N'2021-03-07T09:14:52.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (180, N'michelelopez@example.org', 14505.0000, CAST(N'2005-07-01T11:26:10.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (181, N'christian11@example.com', 12267.0000, CAST(N'2018-10-03T09:38:12.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (182, N'qcooper@example.org', 2527.0000, CAST(N'2017-02-28T08:27:40.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (183, N'crawfordmichelle@example.com', 2382.0000, CAST(N'2010-09-26T10:47:42.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (184, N'reedgregory@example.org', 98739.0000, CAST(N'1987-12-15T01:19:53.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (185, N'carterhannah@example.net', 60032.0000, CAST(N'2006-09-01T08:36:17.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (186, N'chad23@example.org', 55060.0000, CAST(N'1998-05-04T19:11:33.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (187, N'donnadennis@example.org', 87748.0000, CAST(N'1984-08-19T03:42:15.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (188, N'carterhannah@example.net', 34849.0000, CAST(N'1979-01-04T10:15:04.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (189, N'crawfordmichelle@example.com', 100883.0000, CAST(N'1990-08-16T10:28:36.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (190, N'christian11@example.com', 77812.0000, CAST(N'1991-10-10T19:09:35.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (191, N'reedgregory@example.org', 98094.0000, CAST(N'2005-10-28T06:59:55.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (192, N'reedgregory@example.org', 6943.0000, CAST(N'1985-02-25T08:55:51.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (193, N'moodyryan@example.com', 68013.0000, CAST(N'1989-11-16T18:41:06.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (194, N'crawfordmichelle@example.com', 91848.0000, CAST(N'1988-08-29T05:53:41.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (195, N'michelelopez@example.org', 33635.0000, CAST(N'1977-01-03T02:41:21.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (196, N'michelelopez@example.org', 94079.0000, CAST(N'1991-07-23T03:19:29.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (197, N'christian11@example.com', 79619.0000, CAST(N'2010-10-23T11:11:10.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (198, N'qcooper@example.org', 38900.0000, CAST(N'1992-11-14T08:22:03.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (199, N'moodyryan@example.com', 79428.0000, CAST(N'2004-09-01T11:36:04.000' AS DateTime))
GO
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (200, N'christian11@example.com', 47032.0000, CAST(N'1972-04-25T14:25:46.000' AS DateTime))
INSERT [dbo].[LogHarga] ([idLog], [idAdmin], [harga], [tanggalBerlaku]) VALUES (201, N'qcooper@example.org', 30000.0000, CAST(N'2023-06-05T16:26:50.350' AS DateTime))
SET IDENTITY_INSERT [dbo].[LogHarga] OFF
GO
SET IDENTITY_INSERT [dbo].[membaca] ON 

INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (1, N'jonathan80@example.org', 21)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (2, N'fcarpenter@example.com', 67)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (3, N'monica30@example.com', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (4, N'jonathan80@example.org', 83)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (5, N'alexander44@example.net', 145)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (6, N'patrick03@example.org', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (7, N'williammartin@example.com', 52)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (8, N'williamjones@example.org', 58)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (9, N'douglas70@example.net', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (10, N'emily35@example.net', 21)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (11, N'dpearson@example.com', 31)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (12, N'monica30@example.com', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (13, N'cward@example.net', 4)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (14, N'alexander44@example.net', 26)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (15, N'audreyburton@example.net', 31)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (16, N'cjohnson@example.com', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (17, N'kingerin@example.net', 100)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (18, N'kelsey56@example.com', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (19, N'nicole00@example.com', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (20, N'veronica36@example.org', 52)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (21, N'richardsbrett@example.org', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (22, N'welchzachary@example.net', 111)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (23, N'qherrera@example.com', 35)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (24, N'michaelhenry@example.org', 89)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (25, N'coreycannon@example.com', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (26, N'frytimothy@example.net', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (27, N'jesseevans@example.org', 139)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (28, N'foxmichael@example.com', 144)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (29, N'jessica66@example.org', 132)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (30, N'david95@example.org', 100)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (31, N'longjacqueline@example.org', 12)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (32, N'clementslaura@example.com', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (33, N'bullockarthur@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (34, N'pittsmichael@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (35, N'keymorgan@example.net', 21)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (36, N'coxtina@example.org', 4)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (37, N'joseph76@example.org', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (38, N'zachary64@example.com', 98)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (39, N'michael45@example.com', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (40, N'virginia18@example.com', 70)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (41, N'kfinley@example.org', 10)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (42, N'david95@example.org', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (43, N'lhebert@example.com', 6)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (44, N'audreyburton@example.net', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (45, N'michaelwelch@example.org', 36)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (46, N'burnettnatalie@example.org', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (47, N'csmith@example.org', 139)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (48, N'falexander@example.org', 30)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (49, N'oliverstephen@example.org', 40)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (50, N'htrevino@example.com', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (51, N'cward@example.net', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (52, N'kmalone@example.org', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (53, N'wanda38@example.net', 6)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (54, N'patrick03@example.org', 134)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (55, N'nicole00@example.com', 134)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (56, N'owolf@example.net', 54)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (57, N'lfox@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (58, N'kburke@example.org', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (59, N'robert02@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (60, N'xmacias@example.com', 55)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (61, N'frytimothy@example.net', 133)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (62, N'tranmark@example.net', 35)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (63, N'vwallace@example.com', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (64, N'simonjohn@example.org', 10)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (65, N'nortonmarcus@example.com', 26)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (66, N'longjacqueline@example.org', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (67, N'scott54@example.com', 38)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (68, N'vwallace@example.com', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (69, N'htrevino@example.com', 101)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (70, N'lfox@example.net', 101)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (71, N'allenalexander@example.net', 83)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (72, N'ericterry@example.com', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (73, N'rubiofrank@example.org', 12)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (74, N'davidcrystal@example.net', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (75, N'pittsmichael@example.net', 26)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (76, N'qherrera@example.com', 129)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (77, N'csmith@example.org', 21)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (78, N'fsimmons@example.com', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (79, N'taylorkristin@example.net', 12)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (80, N'gburns@example.com', 62)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (81, N'igarza@example.net', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (82, N'tarasanders@example.org', 131)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (83, N'smithtyler@example.com', 110)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (84, N'francisco25@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (85, N'thompsonrobert@example.org', 12)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (86, N'douglas70@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (87, N'coreycannon@example.com', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (88, N'kelsey56@example.com', 10)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (89, N'owolf@example.net', 12)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (90, N'michael76@example.org', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (91, N'jessica66@example.org', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (92, N'david27@example.com', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (93, N'pittsmichael@example.net', 39)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (94, N'robert02@example.net', 10)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (95, N'alexander44@example.net', 103)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (96, N'kingerin@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (97, N'ericterry@example.com', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (98, N'coreycannon@example.com', 30)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (99, N'owolf@example.net', 62)
GO
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (100, N'williamsmichael@example.com', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (101, N'garciabeverly@example.org', 70)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (102, N'dpearson@example.com', 132)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (103, N'rubiofrank@example.org', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (104, N'kenneth85@example.org', 12)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (105, N'kfinley@example.org', 62)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (106, N'ericterry@example.com', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (107, N'douglas70@example.net', 145)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (108, N'alexander44@example.net', 62)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (109, N'michael45@example.com', 101)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (110, N'patrick56@example.net', 21)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (111, N'williammartin@example.com', 101)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (112, N'jeffrey31@example.net', 103)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (113, N'kinglinda@example.net', 56)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (114, N'scottjones@example.com', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (115, N'justin39@example.org', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (116, N'charlotte27@example.org', 30)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (117, N'linda39@example.net', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (118, N'coreycannon@example.com', 14)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (119, N'foxmichael@example.com', 12)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (120, N'alexander44@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (121, N'rrobinson@example.com', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (122, N'rlewis@example.org', 12)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (123, N'virginia18@example.com', 62)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (124, N'zfields@example.org', 56)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (125, N'sfischer@example.org', 138)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (126, N'patrick56@example.net', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (127, N'jessica35@example.com', 54)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (128, N'audreyburton@example.net', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (129, N'julie31@example.net', 107)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (130, N'dpearson@example.com', 35)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (131, N'christystanley@example.net', 56)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (132, N'smithtyler@example.com', 145)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (133, N'alexander44@example.net', 145)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (134, N'bullockarthur@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (135, N'thernandez@example.org', 40)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (136, N'starkrobert@example.com', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (137, N'oliverstephen@example.org', 30)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (138, N'kmitchell@example.org', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (139, N'frytimothy@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (140, N'lhebert@example.com', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (141, N'jessicacabrera@example.com', 4)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (142, N'michaelhenry@example.org', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (143, N'kellyamber@example.net', 29)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (144, N'cward@example.net', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (145, N'ericterry@example.com', 62)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (146, N'veronica36@example.org', 10)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (147, N'jacob61@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (148, N'anthonyruiz@example.org', 4)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (149, N'wrightcynthia@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (150, N'kinglinda@example.net', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (151, N'julie31@example.net', 38)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (152, N'rubiofrank@example.org', 54)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (153, N'kmalone@example.org', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (154, N'welchzachary@example.net', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (155, N'mejiaashley@example.com', 4)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (156, N'kelsey56@example.com', 145)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (157, N'allenalexander@example.net', 56)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (158, N'nicole00@example.com', 62)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (159, N'vwallace@example.com', 106)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (160, N'alexander44@example.net', 150)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (161, N'kelly59@example.net', 5)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (162, N'kburke@example.org', 38)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (163, N'mejiaashley@example.com', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (164, N'jessica32@example.net', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (165, N'wrightcynthia@example.net', 110)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (166, N'jesseevans@example.org', 4)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (167, N'mlee@example.org', 98)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (168, N'jonathan80@example.org', 4)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (169, N'vwallace@example.com', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (170, N'jessica35@example.com', 103)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (171, N'jessica66@example.org', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (172, N'amontgomery@example.org', 132)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (173, N'fcarpenter@example.com', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (174, N'pittsmichael@example.net', 52)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (175, N'rlewis@example.org', 54)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (176, N'linda39@example.net', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (177, N'lfox@example.net', 100)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (178, N'bullockarthur@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (179, N'justin39@example.org', 132)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (180, N'frytimothy@example.net', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (181, N'igarza@example.net', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (182, N'bullockarthur@example.net', 12)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (183, N'cward@example.net', 40)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (184, N'rubiofrank@example.org', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (185, N'lramirez@example.net', 35)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (186, N'sonyafrye@example.org', 30)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (187, N'carl05@example.net', 30)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (188, N'starkrobert@example.com', 80)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (189, N'bryantjennifer@example.com', 145)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (190, N'brittanyevans@example.com', 101)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (191, N'charlotte27@example.org', 29)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (192, N'jessicacabrera@example.com', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (193, N'pittsmichael@example.net', 20)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (194, N'oliverstephen@example.org', 50)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (195, N'rlewis@example.org', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (196, N'julie31@example.net', 61)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (197, N'fcarpenter@example.com', 10)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (198, N'garciabeverly@example.org', 57)
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (199, N'dpearson@example.com', 35)
GO
INSERT [dbo].[membaca] ([idMembaca], [idPembaca], [idArtikel]) VALUES (200, N'nortonmarcus@example.com', 20)
SET IDENTITY_INSERT [dbo].[membaca] OFF
GO
SET IDENTITY_INSERT [dbo].[mengatur] ON 

INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (1, N'reedgregory@example.org', 113, N'publish', CAST(N'2017-07-20T06:50:06.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (2, N'carterhannah@example.net', 118, N'reject', CAST(N'2018-03-23T00:29:04.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (3, N'crawfordmichelle@example.com', 21, N'publish', CAST(N'1986-07-19T14:12:54.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (4, N'crawfordmichelle@example.com', 106, N'publish', CAST(N'2011-01-11T22:58:40.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (5, N'michelelopez@example.org', 144, N'reject', CAST(N'2010-12-01T06:25:49.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (6, N'moodyryan@example.com', 57, N'publish', CAST(N'1976-03-17T00:54:58.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (7, N'chad23@example.org', 82, N'reject', CAST(N'2003-05-28T13:28:47.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (8, N'crawfordmichelle@example.com', 74, N'publish', CAST(N'2010-10-29T06:51:31.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (9, N'chad23@example.org', 138, N'reject', CAST(N'2019-04-29T03:00:06.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (10, N'chad23@example.org', 5, N'publish', CAST(N'1997-04-28T21:31:31.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (11, N'levymichael@example.com', 107, N'publish', CAST(N'2004-10-17T17:35:07.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (12, N'reedgregory@example.org', 132, N'reject', CAST(N'1993-08-19T09:05:54.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (13, N'moodyryan@example.com', 31, N'reject', CAST(N'1997-09-11T10:38:24.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (14, N'reedgregory@example.org', 62, N'publish', CAST(N'1988-11-29T00:24:13.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (15, N'qcooper@example.org', 36, N'publish', CAST(N'2009-07-03T23:02:54.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (16, N'qcooper@example.org', 7, N'publish', CAST(N'2022-01-17T19:02:30.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (17, N'carterhannah@example.net', 131, N'publish', CAST(N'2017-03-07T05:26:52.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (18, N'christian11@example.com', 55, N'publish', CAST(N'2020-02-27T17:40:16.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (19, N'christian11@example.com', 92, N'reject', CAST(N'2010-02-01T19:09:47.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (20, N'michelelopez@example.org', 4, N'publish', CAST(N'1989-01-26T01:41:52.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (21, N'qcooper@example.org', 103, N'publish', CAST(N'1998-08-05T13:50:17.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (22, N'donnadennis@example.org', 54, N'publish', CAST(N'1997-08-10T11:30:50.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (23, N'donnadennis@example.org', 58, N'reject', CAST(N'2015-04-07T10:13:38.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (24, N'donnadennis@example.org', 139, N'publish', CAST(N'1990-03-06T02:32:05.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (25, N'christian11@example.com', 6, N'reject', CAST(N'2004-08-30T05:54:34.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (26, N'moodyryan@example.com', 56, N'reject', CAST(N'1991-10-23T23:51:04.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (27, N'carterhannah@example.net', 80, N'publish', CAST(N'2016-07-29T19:19:55.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (28, N'donnadennis@example.org', 98, N'publish', CAST(N'1995-08-09T08:22:46.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (29, N'carterhannah@example.net', 11, N'publish', CAST(N'2004-05-22T22:07:22.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (30, N'carterhannah@example.net', 129, N'publish', CAST(N'2005-09-05T07:54:20.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (31, N'levymichael@example.com', 38, N'publish', CAST(N'1998-03-23T06:13:04.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (32, N'donnadennis@example.org', 110, N'publish', CAST(N'2019-03-11T23:54:05.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (33, N'levymichael@example.com', 39, N'publish', CAST(N'2001-02-20T00:09:43.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (34, N'chad23@example.org', 10, N'reject', CAST(N'1990-12-07T22:25:11.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (35, N'crawfordmichelle@example.com', 61, N'reject', CAST(N'1982-03-25T16:24:53.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (36, N'christian11@example.com', 127, N'reject', CAST(N'2021-08-19T09:45:31.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (37, N'moodyryan@example.com', 136, N'reject', CAST(N'2022-08-14T04:26:31.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (38, N'qcooper@example.org', 9, N'reject', CAST(N'2021-07-23T03:46:07.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (39, N'moodyryan@example.com', 102, N'publish', CAST(N'2017-11-05T21:13:10.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (40, N'carterhannah@example.net', 14, N'publish', CAST(N'2005-07-24T05:44:03.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (41, N'chad23@example.org', 133, N'reject', CAST(N'2018-06-28T14:52:35.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (42, N'carterhannah@example.net', 30, N'reject', CAST(N'1992-01-28T16:58:40.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (43, N'reedgregory@example.org', 42, N'publish', CAST(N'2006-09-15T12:10:39.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (44, N'donnadennis@example.org', 150, N'publish', CAST(N'2007-04-26T00:02:30.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (45, N'levymichael@example.com', 89, N'reject', CAST(N'2020-03-13T01:46:39.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (46, N'chad23@example.org', 83, N'reject', CAST(N'1999-01-26T20:51:50.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (47, N'carterhannah@example.net', 12, N'reject', CAST(N'2000-04-25T04:20:05.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (48, N'christian11@example.com', 18, N'reject', CAST(N'2022-12-30T11:41:44.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (49, N'chad23@example.org', 29, N'reject', CAST(N'1998-10-08T06:07:24.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (50, N'carterhannah@example.net', 135, N'reject', CAST(N'2022-01-21T13:38:14.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (51, N'donnadennis@example.org', 111, N'publish', CAST(N'2013-07-27T16:22:20.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (52, N'moodyryan@example.com', 40, N'reject', CAST(N'1995-01-10T09:56:47.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (53, N'donnadennis@example.org', 50, N'reject', CAST(N'1977-12-21T01:08:06.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (54, N'michelelopez@example.org', 71, N'publish', CAST(N'2015-09-18T10:34:26.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (55, N'carterhannah@example.net', 115, N'publish', CAST(N'2023-03-27T13:13:02.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (56, N'michelelopez@example.org', 26, N'publish', CAST(N'1998-01-10T04:30:07.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (57, N'christian11@example.com', 70, N'reject', CAST(N'2021-10-21T03:00:28.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (58, N'carterhannah@example.net', 52, N'reject', CAST(N'2011-08-29T14:40:32.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (59, N'carterhannah@example.net', 100, N'publish', CAST(N'1991-02-28T19:36:48.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (60, N'levymichael@example.com', 145, N'reject', CAST(N'1992-10-20T04:29:42.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (61, N'donnadennis@example.org', 122, N'publish', CAST(N'2018-05-18T02:12:38.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (62, N'moodyryan@example.com', 93, N'publish', CAST(N'2015-12-26T00:38:09.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (63, N'crawfordmichelle@example.com', 101, N'publish', CAST(N'2010-09-25T07:44:19.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (64, N'chad23@example.org', 37, N'publish', CAST(N'2009-03-02T22:37:24.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (65, N'carterhannah@example.net', 134, N'publish', CAST(N'1990-02-28T06:30:01.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (66, N'qcooper@example.org', 47, N'reject', CAST(N'2018-11-26T05:48:39.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (67, N'levymichael@example.com', 67, N'reject', CAST(N'2016-12-31T18:21:00.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (68, N'christian11@example.com', 46, N'publish', CAST(N'2019-06-18T02:32:22.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (69, N'donnadennis@example.org', 117, N'publish', CAST(N'2018-12-05T08:19:35.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (70, N'michelelopez@example.org', 86, N'publish', CAST(N'2008-01-07T06:29:09.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (71, N'michelelopez@example.org', 146, N'reject', CAST(N'2016-07-25T22:55:03.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (72, N'donnadennis@example.org', 35, N'reject', CAST(N'2001-07-14T20:18:19.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (73, N'moodyryan@example.com', 87, N'publish', CAST(N'2011-08-22T14:57:37.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (74, N'moodyryan@example.com', 16, N'reject', CAST(N'2010-11-11T10:33:13.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (75, N'carterhannah@example.net', 20, N'reject', CAST(N'1982-09-13T15:40:16.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (76, N'moodyryan@example.com', 117, N'take down', CAST(N'2019-02-11T01:07:32.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (77, N'carterhannah@example.net', 100, N'take down', CAST(N'2009-08-07T08:55:06.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (78, N'crawfordmichelle@example.com', 4, N'take down', CAST(N'2016-09-26T07:07:37.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (79, N'donnadennis@example.org', 103, N'take down', CAST(N'2012-09-26T18:36:53.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (80, N'chad23@example.org', 86, N'take down', CAST(N'2008-03-28T22:08:49.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (81, N'donnadennis@example.org', 38, N'take down', CAST(N'2016-06-30T16:32:24.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (82, N'christian11@example.com', 62, N'take down', CAST(N'1998-11-15T16:49:58.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (83, N'chad23@example.org', 42, N'take down', CAST(N'2007-07-01T00:29:06.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (84, N'levymichael@example.com', 5, N'take down', CAST(N'2007-10-18T19:22:21.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (85, N'moodyryan@example.com', 98, N'take down', CAST(N'2017-11-21T04:40:04.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (86, N'moodyryan@example.com', 36, N'take down', CAST(N'2020-09-01T19:18:18.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (87, N'donnadennis@example.org', 101, N'take down', CAST(N'2017-12-19T11:25:04.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (88, N'crawfordmichelle@example.com', 122, N'take down', CAST(N'2019-07-26T08:22:31.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (89, N'carterhannah@example.net', 106, N'take down', CAST(N'2014-12-16T06:55:33.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (90, N'chad23@example.org', 54, N'take down', CAST(N'2010-04-05T22:04:49.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (91, N'donnadennis@example.org', 74, N'take down', CAST(N'2013-08-15T16:45:09.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (92, N'donnadennis@example.org', 129, N'take down', CAST(N'2023-02-03T07:49:19.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (93, N'donnadennis@example.org', 26, N'take down', CAST(N'2018-11-13T05:48:13.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (94, N'christian11@example.com', 150, N'take down', CAST(N'2015-09-09T09:46:04.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (95, N'chad23@example.org', 113, N'take down', CAST(N'2023-05-03T15:27:23.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (96, N'carterhannah@example.net', 139, N'take down', CAST(N'2005-03-20T11:57:53.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (97, N'donnadennis@example.org', 37, N'take down', CAST(N'2010-04-23T05:40:39.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (98, N'michelelopez@example.org', 57, N'take down', CAST(N'1986-04-20T20:42:25.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (99, N'carterhannah@example.net', 11, N'take down', CAST(N'2009-01-03T15:09:51.000' AS DateTime))
GO
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (100, N'carterhannah@example.net', 46, N'take down', CAST(N'2020-04-16T09:27:25.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (101, N'crawfordmichelle@example.com', 21, N'take down', CAST(N'2010-08-12T08:08:37.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (102, N'michelelopez@example.org', 134, N'take down', CAST(N'2006-05-16T05:40:04.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (103, N'levymichael@example.com', 107, N'take down', CAST(N'2016-06-22T17:13:04.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (104, N'carterhannah@example.net', 131, N'take down', CAST(N'2022-09-27T13:45:51.000' AS DateTime))
INSERT [dbo].[mengatur] ([idMengatur], [idAdmin], [idArtikel], [status], [tanggal]) VALUES (105, N'qcooper@example.org', 87, N'take down', CAST(N'2021-09-11T21:41:28.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[mengatur] OFF
GO
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'aevans@example.net', N'S@031YnErg', N'Walter Pratt', N'51267 Cervantes Harbors Apt. 287
Greenville, CO 90556', N'premium', N'499-289-6512x182', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'alexander38@example.net', N'+Am9jJpwAc', N'Paul Brown', N'USCGC Robinson
FPO AP 08227', N'premium', N'(714)630-8734', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'alexander44@example.net', N'GyKNmuZQ&3', N'Rebecca Stark', N'87694 Miller Trafficway
Lake Mary, NM 70406', N'free', N'+1-007-586-0080x2813', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'allenalexander@example.net', N'yf4ZBx4z#p', N'Charles Gonzalez', N'482 Brittany Springs Apt. 827
North Lindseystad, WV 44516', N'premium', N'001-643-845-9569', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'allenmendez@example.net', N')u2jHOv54&', N'Joshua Clark', N'272 Fernandez Roads Suite 510
Lake Michael, TN 27172', N'premium', N'019-058-7697x130', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'alyssa48@example.com', N'f^y7Eqopi(', N'Linda Petersen', N'109 Rachel Causeway Apt. 104
Jessicaland, GU 10999', N'premium', N'070-020-7236', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'amontgomery@example.org', N'c*3K4qyU#&', N'Kimberly Myers', N'5152 Foley Fall Suite 715
Josephstad, GU 19958', N'premium', N'(963)913-4724x24003', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'anthonyruiz@example.org', N'64LgS6#5+8', N'Nicholas Massey', N'337 Ross Center
Rosalesbury, DC 52119', N'premium', N'(698)812-9259', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'ashleyramos@example.com', N'^4Zx(gfmeY', N'Christian Johnson', N'22487 Griffin Fields
Jamiemouth, NJ 21911', N'premium', N'594-005-1659x7758', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'audreyburton@example.net', N'V874GIDd7#', N'Lisa Johnston', N'51124 Sandra Street Apt. 366
Port James, NC 37270', N'premium', N'001-367-804-6914', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'bennettalan@example.net', N'#6CzBcFd#m', N'Michelle Kelley', N'0723 Levy Crescent Apt. 676
West Anthonytown, NH 33274', N'premium', N'(315)930-8106x5335', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'bradyeric@example.net', N'_9%6Iy*oOn', N'Rachel Lopez', N'795 Floyd Court
Lake Allenside, OK 48595', N'premium', N'586-979-3314', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'bramirez@example.org', N'*FTCm5Ke8@', N'Whitney Stark', N'5834 Travis Dam Suite 350
Cindybury, PW 01377', N'premium', N'(431)466-5711', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'brittanyevans@example.com', N'xR_F5TUq#G', N'Bobby Flores', N'Unit 8045 Box 5506
DPO AP 45224', N'free', N'209.043.1447x7349', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'bryanfowler@example.net', N'j9UOZ@$&&W', N'Julie Chen', N'479 Derrick Hollow
Lake Vincent, WI 89535', N'free', N'2787680223', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'bryantjennifer@example.com', N'j%Zu+0NerD', N'Rebecca Sandoval', N'649 John Keys Suite 263
Browntown, KY 79820', N'free', N'687.907.8640', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'bullockarthur@example.net', N'@pXJ8(Enl2', N'Travis Schultz', N'70754 Strong Camp
Port Ethan, WA 93954', N'free', N'(055)904-3720', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'burnettnatalie@example.org', N'sdK#2GOi&i', N'Terry Wells', N'46556 Meyers Trace Suite 403
Richardsonland, MD 02163', N'free', N'298.733.8672x09844', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'carl05@example.net', N'2TVFmcp#_1', N'Joshua Hernandez', N'67998 Tammy Rapids
Mccartytown, MA 71081', N'premium', N'+1-961-630-3758x383', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'charlotte27@example.org', N'a1DtN9ir$L', N'Lori Bennett', N'5057 Davidson Mill Apt. 184
Cindymouth, FM 86347', N'premium', N'670-259-1426x6775', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'christopher85@example.org', N'^3kVzpVCgc', N'Michael Stewart', N'469 Diana Park Apt. 747
Sharonland, SD 40900', N'premium', N'001-164-565-6553', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'christopheryoung@example.org', N'YeT^8BMFC)', N'Michelle Roman', N'99773 Gordon Glen
North Sarah, MP 98995', N'free', N'001-386-260-4410x744', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'christystanley@example.net', N'+3HYs*sb_v', N'Richard Kirby', N'23413 Barbara Lane Suite 734
Lake Michaelchester, MA 81001', N'premium', N'6943281583', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'cjohnson@example.com', N'4@9nSRdiYZ', N'Kathy Santana', N'73797 Michelle Manors
North Robert, AS 75349', N'premium', N'580.583.9351', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'clementslaura@example.com', N'5q9XMkSH7@', N'Laurie Wallace', N'5308 Scott Station Apt. 650
Lake Joanne, OH 32464', N'free', N'(059)587-6360', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'coreycannon@example.com', N'%93Oz*HPMq', N'Brandi Meyer', N'68094 Young Brook
North Andrewmouth, DE 83121', N'premium', N'(719)363-4009x589', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'coxtina@example.org', N'^9W7Cr*h(Y', N'Timothy Tucker', N'493 Jacobson Forest Apt. 297
Montoyaberg, CO 35101', N'premium', N'001-432-984-4811', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'crystalburton@example.com', N'B&$d7VK(Ht', N'Theresa Estrada', N'5465 Crystal Brook Suite 251
East Allison, NJ 41266', N'premium', N'(681)594-4677x66641', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'csmith@example.org', N'!@2xChr8ID', N'Amy Lowe', N'6977 Rivera Route
Port Caleb, VI 70581', N'premium', N'001-683-710-9780', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'cward@example.net', N'3h1GR6Kx%@', N'Jill Sherman', N'18146 Carter Islands
Brownbury, KY 92150', N'premium', N'001-676-244-9403x3370', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'danny48@example.net', N'whR)mWA&#5', N'Desiree Cain', N'29796 Kathy Lakes
North Scott, PW 74898', N'premium', N'(517)042-7335x114', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'david27@example.com', N'@REYu2f1@0', N'Patrick Rogers', N'14293 Dennis Stravenue Apt. 744
South Stevenburgh, AZ 22408', N'free', N'001-608-083-8950x21813', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'david32@example.org', N'3pVq03Am+Z', N'Kenneth Kent', N'194 Barron Valley Apt. 002
Colontown, MN 44395', N'free', N'+1-226-852-5237', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'david95@example.org', N'$G72Ai)Ow0', N'William Roberts', N'92727 Alex Trafficway
New Thomasfort, MS 35629', N'free', N'+1-887-272-7785', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'davidcrystal@example.net', N'6GbMQjmW!I', N'Caleb Fleming', N'57012 Elizabeth Harbor Apt. 325
Feliciabury, VI 99500', N'premium', N'101.800.8515x0378', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'derrick63@example.com', N'_SHqJ$uo94', N'Jenny Richardson', N'5395 Bryan Lights
Port Jamie, RI 79613', N'premium', N'(593)906-8566', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'donnasimpson@example.net', N'mO)*5#Efaz', N'James Stone', N'Unit 8839 Box 8318
DPO AA 15966', N'premium', N'0490093855', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'douglas70@example.net', N'&n0x@hHc68', N'William Gonzalez', N'081 Jason Prairie
Claytonville, CT 24182', N'free', N'(763)089-9697', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'dpearson@example.com', N'4IVTBlOb#F', N'Jonathan Williams', N'616 Pope Cape
Bradleystad, SD 88877', N'premium', N'438-562-3889', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'dthompson@example.com', N'&AJg5Qk92*', N'Mary Alvarez', N'4590 Brianna Branch
Kimberlystad, MA 11809', N'free', N'690-738-4309x8416', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'emily35@example.net', N'&6l)LlsGNH', N'David Williams', N'USNV Reyes
FPO AE 79949', N'premium', N'224-292-7195x99389', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'ericterry@example.com', N'^U6ZVNyjD(', N'Caleb Clark', N'67253 John Canyon
South Thomasside, IA 56116', N'free', N'264-546-6984x9763', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'falexander@example.org', N'ygGyF$nG+8', N'Jesse Sparks', N'1146 Romero Pines
North Nathan, MO 16295', N'premium', N'214.580.5802', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'fcarpenter@example.com', N'nP_^+2UmQ$', N'Jennifer Morales', N'380 Sean Stream Suite 288
Lake Jamesport, OH 27504', N'free', N'535-786-8336', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'foxmichael@example.com', N'Ij5Z5NMuK@', N'Margaret Jones', N'7680 Weaver Route
West Kimtown, OR 62149', N'free', N'001-923-559-2966x5586', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'francisco25@example.net', N'km78Wcsm)_', N'Andrew Butler', N'2967 Robert Fort Apt. 577
Lake Stephanieview, PA 17527', N'free', N'(694)234-9974', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'frytimothy@example.net', N'#UN3gyfcj6', N'Lorraine Garcia', N'4354 Gregory Squares Suite 676
New Brent, OK 68931', N'free', N'(206)931-2344', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'fsimmons@example.com', N'#Z!P0NttXe', N'Douglas Allen', N'651 Johnson Springs
Lebury, KS 49918', N'free', N'001-265-316-3237x964', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'garciabeverly@example.org', N'uU0BkyIU!e', N'Kimberly Smith', N'803 Joyce Fort Apt. 210
New Marychester, NH 85752', N'free', N'431.833.8464', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'gburns@example.com', N'^b9Jho^y2y', N'Matthew Bell', N'47363 Riley Burg Suite 060
Lake Brandonchester, RI 39922', N'free', N'(124)339-5200x03107', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'granthaley@example.net', N'#TC&Nm9Ec7', N'Janice Johnston', N'39787 White Greens Apt. 054
Conniebury, MO 01218', N'premium', N'(867)996-9499x124', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'howardemily@example.com', N'c$8YCJkll_', N'Laura Gregory', N'658 Michelle Ford
Jeremyfort, GU 84207', N'premium', N'+1-101-576-6755x02718', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'htrevino@example.com', N'ZsAFLGHz*4', N'Marc Williams', N'17703 Emily Lane Apt. 627
Ashleytown, VI 70138', N'free', N'371-534-7263', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'igarza@example.net', N'+7DzLfny8b', N'Taylor Johnson', N'152 Garcia Mission
Lake Thomas, WY 63283', N'premium', N'001-274-219-2244x415', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'ihurst@example.org', N'IexJCM4H(6', N'Jennifer Summers', N'985 David Hills
Emilyhaven, WV 07092', N'premium', N'799.633.0352x430', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'imacdonald@example.net', N'%iW@vQKJ9i', N'Mr. Dakota Lynch II', N'701 James Cove
New Shellyland, RI 10891', N'premium', N'001-592-549-7283x4172', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jacob61@example.net', N'r21a@+Pt&T', N'Stacy Chan', N'233 Boyer Well Apt. 203
New Adamshire, DE 08835', N'free', N'001-840-500-0353x1303', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'james67@example.net', N'UdPbiM1m^9', N'Jason Carroll', N'8561 Gonzales Court
Lake David, NC 35451', N'free', N'2316299513', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jeffrey31@example.net', N'KB+2I1VaEf', N'Joshua Carter', N'9981 Barbara Run Apt. 777
Rogerton, AZ 96563', N'free', N'+1-980-321-5676x98609', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jenkinscynthia@example.com', N'@8@KPxnr(J', N'Jacob Hooper', N'195 Bright Pass
South Beth, OK 07206', N'premium', N'(886)441-7347x030', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jennifersimmons@example.net', N'9#70yKll*V', N'Danny Williams', N'13591 Nelson Flats
South Shannon, IN 77563', N'premium', N'001-511-351-2283x789', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jenniferwaters@example.net', N'Y+7WDVCj#(', N'Meredith Rios', N'56684 Laura Cliff
Robersonburgh, ID 06877', N'free', N'230-879-8593x6295', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jesseevans@example.org', N's(4%nq_m)N', N'Matthew Smith', N'7944 Gamble Curve Apt. 781
East Frankchester, IL 71152', N'premium', N'(090)620-3963', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jessica32@example.net', N'Fx#c5Vgl2H', N'Jessica Thompson', N'USNS Stewart
FPO AA 61426', N'premium', N'930-464-1890', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jessica35@example.com', N'gJ)YwEl&(1', N'Austin Boyer', N'565 Amanda Trail
New Thomas, PR 77352', N'free', N'890-266-5009', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jessica66@example.org', N't1th*+Wf%J', N'Erica Jimenez', N'12831 Melanie Field
East Nicholasville, MT 44462', N'premium', N'064.979.9765', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jessicacabrera@example.com', N'IMwKBTpz(2', N'Nicholas Kline', N'2256 Bell Orchard Suite 297
West Kathy, SD 57821', N'premium', N'(863)381-0502', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'johndaniel@example.com', N'&V1XjvuRp!', N'Mitchell Smith', N'5727 Brown Rue Apt. 928
Dianaburgh, VA 01057', N'premium', N'473.004.5299x74630', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jonathan80@example.org', N'vqGp5%Vx&T', N'Miss Angela Swanson DVM', N'5219 Gibson Fields
Byrdchester, AR 21162', N'premium', N'+1-023-530-0429x0745', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jonesjose@example.net', N'KKb8MLhw^H', N'Charles Wolfe', N'9884 Susan Point Apt. 056
Nortonshire, AS 30502', N'free', N'111-367-1970', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'jordanpowers@example.com', N'&%3SgvPw!7', N'Stephanie Hayes', N'8221 Clayton Cape Apt. 856
Stephanieville, UT 97658', N'premium', N'(527)497-5415', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'joseph76@example.org', N'2Sn90FiRX_', N'Susan Harris', N'89649 Jeffrey Brook Suite 137
Brittanyport, AL 92706', N'premium', N'001-093-813-1926x73499', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'julie31@example.net', N'3@$1ORQU%b', N'Hannah Reyes', N'069 Anthony Ranch Suite 210
Martintown, VT 39722', N'premium', N'943.408.2395x593', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'justin39@example.org', N'Kb!0pEJhzr', N'Faith Cabrera', N'25399 Brian Crossroad Suite 944
North Joshua, MP 49141', N'premium', N'568-477-7594', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'kburke@example.org', N'x#q7oQxNQ%', N'Jasmine Williams', N'229 Case Shoal Suite 948
Lake Jennifer, FM 89743', N'premium', N'5667856448', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'kelly59@example.net', N'l^4SDL+O@t', N'Alex Woodward', N'6101 Rivera Road
Tammyville, IA 40217', N'premium', N'056-240-1147', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'kellyamber@example.net', N'87+$7VheYP', N'Barbara Sanders', N'38606 Lawrence Points Apt. 115
Patelborough, NM 61043', N'premium', N'(707)645-3053', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'kelsey56@example.com', N'H4I$jg!9%n', N'George Allen', N'548 April Circles Suite 196
Tylerville, VA 60222', N'free', N'068.814.7057x0722', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'kenneth85@example.org', N'^qHq_l!u2G', N'Sean Green', N'337 Collins Turnpike
Jillside, MD 86287', N'free', N'001-484-695-7400x7210', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'keymorgan@example.net', N'3i$lX6es)g', N'Gloria King', N'438 Nelson Turnpike Suite 553
West Kevinville, IA 54057', N'premium', N'557-949-8101x42431', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'kfinley@example.org', N'*kL)6CKh%j', N'Amanda Hernandez', N'3329 Wells Circle
New Kylie, LA 13398', N'free', N'9505513186', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'kingerin@example.net', N'$2PPV1NNTg', N'Austin Heath', N'44059 Good Underpass Suite 345
Joshuafurt, NM 15184', N'free', N'001-864-268-4816x1508', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'kinglinda@example.net', N's$*G1MWe%q', N'Charles Douglas', N'4012 Stephenson Greens
North Daniel, ID 81599', N'premium', N'6154800521', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'kmalone@example.org', N'%GRAQpgsU0', N'Victor Nolan', N'7982 Huerta Hill
West Joshua, DC 96447', N'premium', N'125-879-0892x634', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'kmitchell@example.org', N'QTc!J&hi)2', N'Joseph Jones', N'532 Ferguson Squares
South Monica, RI 14378', N'free', N'(529)897-8166x4579', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'lauragonzales@example.org', N's*9+*7KWJi', N'Heather Roberts', N'2318 Alexandra Road Suite 543
West Susanview, MH 11854', N'premium', N'(244)653-3362x643', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'lfox@example.net', N'li0KItGk^x', N'Mr. Ryan Sanchez', N'2474 Mckinney Rapid Apt. 732
Farmermouth, AZ 97079', N'free', N'001-574-945-2094x207', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'lhebert@example.com', N'$hO0BTqm*!', N'Collin Lopez', N'95920 Laura Estates
North Donald, OH 24969', N'premium', N'(898)642-9146', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'linda39@example.net', N'W9CeDp&8@5', N'Dustin Greer', N'9728 Tina Causeway Suite 933
Lake Austin, DE 51105', N'premium', N'+1-770-987-0091x39183', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'longjacqueline@example.org', N'#$S#IFKj(9', N'Cheryl Bradley', N'80734 Mueller Greens Apt. 697
Parkertown, WV 76028', N'free', N'998.803.2097', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'lramirez@example.net', N'^AURC8zmA4', N'Katherine Ibarra', N'6533 Misty Mills
Edwardsmouth, ND 97090', N'premium', N'174.366.0606x1735', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'lwilliams@example.org', N'D_kd923anZ', N'Albert Williams', N'PSC 0164, Box 5402
APO AA 44469', N'premium', N'361.141.5261', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'mcdanielchristopher@example.net', N'Qjl2e@Xh_I', N'Caroline Chambers', N'33126 Fisher Rest Apt. 808
Moorefort, WA 75588', N'premium', N'(965)966-4366', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'mejiaashley@example.com', N'_sEYaRchI0', N'Dr. James Willis', N'Unit 9905 Box 5997
DPO AE 70224', N'premium', N'(032)803-1280', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'michael45@example.com', N'EVm&2Wrxa^', N'William Jenkins', N'43806 Roberts Grove Apt. 009
East Pamela, AL 71193', N'free', N'430.891.7483', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'michael76@example.org', N'X+(eyPB5Ic', N'Brian Green', N'293 Bell Greens Suite 229
Rodriguezbury, PA 45756', N'free', N'031-958-0497', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'michaelhenry@example.org', N'$EH*TuvE15', N'Andrew Gould', N'875 Mary Stream Apt. 557
New Joshua, CA 59698', N'premium', N'+1-813-642-0695x972', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'michaelwelch@example.org', N'P#1FMJEliz', N'Peter Mcdowell', N'Unit 5516 Box 3594
DPO AE 28393', N'premium', N'001-565-963-5001x9861', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'mlee@example.org', N'Bei9RU(uN^', N'Eric Owens PhD', N'6195 Elizabeth Lakes Apt. 990
West Donnaborough, ME 38405', N'premium', N'(328)992-4772', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'monica30@example.com', N'_sYpqkx!_2', N'Matthew Russo', N'40279 Carl Glen
South Kathleen, GA 28948', N'free', N'001-558-593-8340', N'active')
GO
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'nichole08@example.net', N'3)q2HQqeea', N'Richard Higgins', N'44059 Melvin Loop Apt. 682
Alvarezside, TN 85023', N'free', N'(615)926-8445x290', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'nicole00@example.com', N'i6HENu+n$1', N'Angela Salazar', N'49832 Cunningham Shore Suite 579
North Julie, MO 86670', N'free', N'+1-327-395-4020', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'nortonmarcus@example.com', N'G7EIG$wj(T', N'Robin Lopez', N'96373 Underwood Springs
Stoneburgh, FL 01073', N'free', N'421.321.4775', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'ntaylor@example.com', N'$r0SLUrmFj', N'Victoria Hernandez MD', N'95092 Bates Falls Suite 736
Courtneyside, GU 02279', N'premium', N'731.224.5209x9862', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'oliverstephen@example.org', N'vb5(FCCi_a', N'Ryan Rivera', N'159 Charles Green
Whiteheadborough, DC 14729', N'premium', N'+1-169-838-5486x719', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'owolf@example.net', N'e1IXaGUd(P', N'Lauren Hayes', N'0422 Martinez Road Suite 296
Lake David, AK 60483', N'free', N'001-482-763-5445', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'patrick03@example.org', N'@1S*eWae_O', N'Debbie Waters MD', N'74911 Robinson Center Suite 174
Travisview, IN 89189', N'free', N'+1-671-807-4151x75866', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'patrick56@example.net', N'%QJo7d@Wp6', N'Emily Howard', N'3092 Robert Isle Suite 604
Stanleyshire, OR 02359', N'premium', N'791.838.7279', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'paul43@example.org', N'1c830We*&@', N'Amy Davidson', N'01386 Shaw Course
Phillipsfort, NH 08322', N'premium', N'466-442-0329x7388', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'pittsmichael@example.net', N'&BZ&HUp$I6', N'Michelle Hughes', N'PSC 3498, Box 9003
APO AE 75516', N'free', N'001-283-576-3822x789', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'qherrera@example.com', N'M&FuJ6$y#0', N'Stephanie Bowman', N'119 Michael Expressway Suite 765
Sarahport, MD 56543', N'premium', N'001-882-713-7579x64207', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'rfischer@example.com', N'3*2Bgk1g8S', N'Rachel Martinez', N'387 Thompson Mountains
Harrismouth, ND 50872', N'free', N'934-403-7235', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'richardsbrett@example.org', N'C+7A1UAt*P', N'Scott Love DDS', N'38443 Stephen Place Suite 524
North Jamesstad, ND 23979', N'free', N'243-863-3082x495', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'rlewis@example.org', N'Dj#OyDq6^9', N'Jennifer Bates', N'462 James Hills Apt. 740
South Samueltown, UT 22326', N'free', N'770-730-3349', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'robert02@example.net', N'7IVFfPvD)i', N'Dana Nguyen', N'165 Lisa Ville Suite 918
New Emily, AL 02898', N'free', N'021-811-0126x94071', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'rogerpotter@example.org', N'uG2KGHXhV(', N'Stephanie Lawrence', N'64936 Monica Ridges
South Christina, NM 65211', N'free', N'746.598.2112x6418', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'rrobinson@example.com', N'_v4MbXkFX&', N'Kristin Potts', N'5812 Dana Fort
West Stephaniehaven, WV 50167', N'premium', N'312-338-5183', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'rubiofrank@example.org', N'_i6OgZwgy1', N'Jeffery Knight', N'44021 Benton Haven
South Diane, WV 25347', N'free', N'(297)500-4389x826', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'rwalters@example.com', N'Wzr4KM)aT(', N'Taylor Perry', N'16279 Johns Square
Port Aaron, MH 12796', N'premium', N'+1-797-335-7958x684', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'scallahan@example.net', N'(O@JiChit1', N'Melanie Johnson', N'119 Jason Row Suite 201
Lake Michaelchester, OK 91550', N'free', N'(215)271-2501x4442', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'scott54@example.com', N'(rQX3eAu)2', N'Kimberly Maynard', N'1680 Garcia Centers
West Rodneyshire, LA 09444', N'premium', N'(107)644-6946x92201', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'scottjones@example.com', N'32O26PCrQ&', N'Hannah Wiggins', N'4701 Hall Groves
East Amystad, MN 35533', N'premium', N'+1-450-890-9637x74260', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'sfischer@example.org', N'uD43XMfv^n', N'Sarah Villanueva', N'281 Perkins Points
New Gabrielview, NH 34877', N'free', N'(535)555-2551x45442', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'shudson@example.org', N'ZFY39OkLQ#', N'Michael Simmons', N'38702 Davidson Circles Apt. 474
New Stacey, DC 82859', N'premium', N'+1-768-490-1133x3458', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'simonjohn@example.org', N'HgQ0jSab(_', N'Cindy Davis', N'782 Miller Vista Apt. 768
Angelaton, GU 03245', N'free', N'(888)996-0526', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'smithtyler@example.com', N'P#bL7Rvb8e', N'William Garcia', N'007 Rivera Rue
North Nancyton, MH 07864', N'free', N'258.394.5365x86556', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'sonyafrye@example.org', N'N#30VNyr_l', N'Bradley Melton', N'PSC 8406, Box 5333
APO AA 02812', N'premium', N'001-506-090-3902x13866', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'starkrobert@example.com', N'4S^F8tSjet', N'Jennifer Miller', N'0741 Christopher Stream Suite 838
New Zachary, ME 69135', N'premium', N'(438)141-5728x7814', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'tarasanders@example.org', N'iq_55N5s5)', N'Nicole Henson', N'3013 Sanders Roads
East Christinaport, SD 06335', N'free', N'001-515-404-0065x0795', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'taylorkristin@example.net', N'z079rQtvz!', N'Joseph Freeman', N'Unit 8399 Box 9073
DPO AE 37328', N'free', N'654.098.9788', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'thernandez@example.org', N'7#a@t5zx5T', N'Danielle Castro', N'PSC 0298, Box 3256
APO AE 66776', N'premium', N'(321)478-0636x792', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'thompsonrobert@example.org', N'@4JTonLD6I', N'Alexa Hernandez', N'9017 Allen Mountains Apt. 313
Lake Tabitha, PW 78925', N'free', N'(645)895-2521x514', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'tpayne@example.org', N'%8*(mBlf#m', N'John Richards', N'5072 Carla Union Suite 474
West Fernando, ID 64817', N'free', N'(189)402-0185x194', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'tranmark@example.net', N'*#7M(jraXg', N'Gary Perry', N'Unit 4631 Box 9562
DPO AP 54393', N'premium', N'+1-567-127-7723x21529', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'tthomas@example.org', N'gZ*3YuXvq1', N'Sherry Simpson', N'737 Knight Tunnel Suite 667
East Timothy, WI 25661', N'premium', N'(704)754-6968x1674', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'tyler04@example.net', N'RH(H48OztM', N'Christopher Hunter', N'90643 Bill Fall Suite 923
Kennethfurt, NY 91811', N'premium', N'001-727-313-7056x16269', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'tyoung@example.com', N'+7Ju7e4kDf', N'Jennifer Torres', N'23568 Miller Radial
West Dawnfurt, DE 67460', N'premium', N'+1-992-588-4617x2690', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'veronica36@example.org', N'@(XFRkSj2F', N'Melanie Patrick', N'87203 James Bypass Suite 574
Annettemouth, CO 40155', N'free', N'888.303.7020x2737', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'virginia18@example.com', N'4Fc(Ecqs*2', N'Susan Williams', N'79937 Robin Flat Suite 955
Port Pennyville, MD 51493', N'free', N'+1-438-341-3973x19509', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'vwallace@example.com', N'8+cWbtW#(W', N'Autumn Robinson', N'PSC 6384, Box 6144
APO AE 20250', N'free', N'167.107.6342x977', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'wanda38@example.net', N'Z#2OSrg4WK', N'Elizabeth Russell', N'23458 Lucas Squares Suite 387
Codyborough, RI 63107', N'premium', N'469.775.7883x0533', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'welchzachary@example.net', N'U5F6CNEk!G', N'Jamie Hutchinson', N'2680 Simmons Haven
North Terri, OK 58631', N'premium', N'001-957-501-3901x643', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'william32@example.com', N'^85#BlAtq$', N'April Snyder', N'4841 Berry Glens
Shannonville, PW 77461', N'free', N'+1-668-532-4120', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'williamjones@example.org', N'n1_!9Q5rBY', N'Vanessa Cooper', N'96365 Andre Roads Suite 134
East Ernestshire, UT 57455', N'free', N'107.460.4708x77985', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'williammartin@example.com', N'74B2NBOD#d', N'Norma Mooney', N'PSC 6970, Box 8535
APO AE 04234', N'free', N'265-076-9257x73599', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'williamsmichael@example.com', N'yU!8DQhdJm', N'Jeremy Green', N'3468 Cunningham Stream Apt. 530
Baxterfurt, KY 43676', N'premium', N'217.966.2001x17911', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'wrightcynthia@example.net', N'_1YyV*jd&e', N'Tasha Rodriguez', N'0884 Middleton Trace Suite 150
Guerraburgh, MI 81179', N'free', N'+1-674-739-8616', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'xmacias@example.com', N'$uKMYG+t!6', N'Raymond Navarro', N'59018 Lara Green
Ronaldfurt, UT 01053', N'premium', N'(447)910-0468x63069', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'zachary64@example.com', N'#Ag8^Hbi2q', N'Kelsey Davis', N'742 Margaret Mews Suite 460
North Johnland, AZ 49707', N'premium', N'(842)649-4051', N'active')
INSERT [dbo].[pengguna] ([email], [password], [nama], [alamat], [tipeMember], [noTelp], [flag]) VALUES (N'zfields@example.org', N'gs%3QE_jgl', N'Richard Jones', N'Unit 5650 Box 1105
DPO AP 18140', N'premium', N'651-705-7704', N'active')
GO
SET IDENTITY_INSERT [dbo].[transaksi] ON 

INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (1, N'alexander38@example.net', 78362.0000, CAST(N'2016-07-19T22:58:39.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (2, N'tpayne@example.org', 37921.0000, CAST(N'2022-06-26T14:57:44.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (3, N'allenmendez@example.net', 1067.0000, CAST(N'2015-06-29T16:39:47.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (4, N'michael45@example.com', 10841.0000, CAST(N'1998-09-10T10:30:15.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (5, N'zachary64@example.com', 59863.0000, CAST(N'1999-06-21T01:00:44.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (6, N'michael76@example.org', 78362.0000, CAST(N'2016-10-23T05:18:06.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (7, N'longjacqueline@example.org', 30280.0000, CAST(N'1995-06-16T12:41:05.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (8, N'kingerin@example.net', 41452.0000, CAST(N'2007-03-10T17:17:59.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (9, N'jesseevans@example.org', 4655.0000, CAST(N'1972-03-26T07:57:46.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (10, N'carl05@example.net', 78793.0000, CAST(N'2002-06-21T03:53:39.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (11, N'williamjones@example.org', 4655.0000, CAST(N'1972-01-27T17:30:45.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (12, N'tyler04@example.net', 42121.0000, CAST(N'2014-09-29T11:58:18.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (13, N'thompsonrobert@example.org', 22526.0000, CAST(N'1975-08-04T02:46:24.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (14, N'oliverstephen@example.org', 73702.0000, CAST(N'1983-05-07T12:38:26.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (15, N'gburns@example.com', 73309.0000, CAST(N'1997-12-02T20:04:18.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (16, N'qherrera@example.com', 32259.0000, CAST(N'2020-12-01T19:53:15.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (17, N'tranmark@example.net', 95603.0000, CAST(N'2022-10-25T07:20:30.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (18, N'charlotte27@example.org', 28967.0000, CAST(N'1986-06-16T23:55:36.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (19, N'jordanpowers@example.com', 65159.0000, CAST(N'1996-05-25T09:55:13.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (20, N'rwalters@example.com', 17083.0000, CAST(N'1986-09-18T06:59:54.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (21, N'ntaylor@example.com', 78793.0000, CAST(N'2002-11-22T15:08:11.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (22, N'allenmendez@example.net', 93833.0000, CAST(N'1992-01-04T11:54:39.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (23, N'simonjohn@example.org', 32830.0000, CAST(N'1993-10-21T04:43:39.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (24, N'nortonmarcus@example.com', 46094.0000, CAST(N'1987-07-31T22:49:24.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (25, N'lauragonzales@example.org', 80163.0000, CAST(N'1990-07-28T04:25:45.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (26, N'sonyafrye@example.org', 80163.0000, CAST(N'1990-07-05T15:17:22.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (27, N'rlewis@example.org', 98651.0000, CAST(N'2009-07-24T03:59:03.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (28, N'starkrobert@example.com', 10984.0000, CAST(N'1982-07-20T05:32:19.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (29, N'frytimothy@example.net', 73309.0000, CAST(N'1997-08-15T21:16:58.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (30, N'jessica32@example.net', 84018.0000, CAST(N'1986-12-12T09:25:17.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (31, N'ashleyramos@example.com', 81406.0000, CAST(N'1989-10-22T22:37:30.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (32, N'julie31@example.net', 34849.0000, CAST(N'1979-02-01T11:05:30.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (33, N'rfischer@example.com', 73309.0000, CAST(N'1997-11-06T03:32:25.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (34, N'kburke@example.org', 32830.0000, CAST(N'1993-09-28T15:03:32.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (35, N'shudson@example.org', 33967.0000, CAST(N'1994-12-04T06:40:41.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (36, N'smithtyler@example.com', 78793.0000, CAST(N'2001-07-18T15:53:43.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (37, N'thompsonrobert@example.org', 93766.0000, CAST(N'2014-01-25T04:28:52.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (38, N'williammartin@example.com', 52225.0000, CAST(N'1977-05-10T20:19:40.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (39, N'bryanfowler@example.net', 68193.0000, CAST(N'1978-11-27T05:50:01.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (40, N'lhebert@example.com', 72030.0000, CAST(N'1980-01-16T21:16:39.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (41, N'bullockarthur@example.net', 55007.0000, CAST(N'2012-01-12T14:47:09.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (42, N'monica30@example.com', 72030.0000, CAST(N'1980-02-07T03:00:53.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (43, N'joseph76@example.org', 98646.0000, CAST(N'1984-08-03T01:02:49.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (44, N'amontgomery@example.org', 62416.0000, CAST(N'1994-05-22T04:14:59.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (45, N'robert02@example.net', 4655.0000, CAST(N'1972-03-22T07:45:35.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (46, N'jonesjose@example.net', 10984.0000, CAST(N'1982-09-06T02:59:05.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (47, N'kenneth85@example.org', 93916.0000, CAST(N'1974-04-03T07:31:54.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (48, N'fsimmons@example.com', 87931.0000, CAST(N'2023-03-14T14:07:25.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (49, N'patrick56@example.net', 7348.0000, CAST(N'2009-04-04T09:34:14.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (50, N'donnasimpson@example.net', 58366.0000, CAST(N'1974-11-12T10:40:57.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (51, N'falexander@example.org', 41417.0000, CAST(N'1997-06-10T23:23:15.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (52, N'ihurst@example.org', 41992.0000, CAST(N'2008-09-07T11:11:30.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (53, N'longjacqueline@example.org', 65674.0000, CAST(N'2019-07-22T07:14:37.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (54, N'htrevino@example.com', 30007.0000, CAST(N'1988-07-29T05:08:47.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (55, N'allenalexander@example.net', 65674.0000, CAST(N'2020-03-20T04:43:38.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (56, N'richardsbrett@example.org', 33490.0000, CAST(N'2006-12-23T14:15:57.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (57, N'foxmichael@example.com', 65159.0000, CAST(N'1996-05-22T22:44:58.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (58, N'nicole00@example.com', 96572.0000, CAST(N'2018-05-10T07:44:49.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (59, N'xmacias@example.com', 87748.0000, CAST(N'1984-09-20T17:08:34.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (60, N'audreyburton@example.net', 22821.0000, CAST(N'2008-01-06T04:13:07.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (61, N'aevans@example.net', 98646.0000, CAST(N'1984-05-21T14:35:33.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (62, N'william32@example.com', 65674.0000, CAST(N'2019-12-22T14:43:41.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (63, N'coreycannon@example.com', 37814.0000, CAST(N'1985-08-25T07:17:01.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (64, N'welchzachary@example.net', 65674.0000, CAST(N'2019-10-11T11:49:32.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (65, N'kellyamber@example.net', 43484.0000, CAST(N'1978-05-21T19:10:12.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (66, N'pittsmichael@example.net', 100883.0000, CAST(N'1990-12-02T07:51:42.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (67, N'jeffrey31@example.net', 79269.0000, CAST(N'1983-03-28T00:43:15.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (68, N'thernandez@example.org', 21288.0000, CAST(N'1970-08-29T04:50:29.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (69, N'anthonyruiz@example.org', 37814.0000, CAST(N'1985-10-01T05:02:25.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (70, N'jessica66@example.org', 28967.0000, CAST(N'1986-03-24T11:41:47.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (71, N'tarasanders@example.org', 93471.0000, CAST(N'2011-02-10T21:02:53.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (72, N'lhebert@example.com', 93564.0000, CAST(N'1981-06-18T03:31:14.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (73, N'jennifersimmons@example.net', 28527.0000, CAST(N'1979-08-12T12:40:54.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (74, N'wrightcynthia@example.net', 39224.0000, CAST(N'1991-07-01T00:19:20.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (75, N'michael45@example.com', 89369.0000, CAST(N'1984-02-12T08:54:11.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (76, N'bramirez@example.org', 52225.0000, CAST(N'1977-05-21T05:55:49.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (77, N'kfinley@example.org', 83486.0000, CAST(N'2006-05-11T06:42:01.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (78, N'tranmark@example.net', 99519.0000, CAST(N'1985-07-06T07:49:30.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (79, N'michaelwelch@example.org', 62416.0000, CAST(N'1994-06-09T22:50:30.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (80, N'gburns@example.com', 72732.0000, CAST(N'1980-07-22T18:49:34.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (81, N'david95@example.org', 95626.0000, CAST(N'2015-04-20T03:30:19.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (82, N'scottjones@example.com', 78362.0000, CAST(N'2016-10-23T00:45:28.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (83, N'paul43@example.org', 42539.0000, CAST(N'1991-09-18T05:29:48.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (84, N'wanda38@example.net', 93766.0000, CAST(N'2013-05-05T10:20:10.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (85, N'coreycannon@example.com', 32846.0000, CAST(N'2017-04-23T07:07:34.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (86, N'rogerpotter@example.org', 73702.0000, CAST(N'1983-05-19T16:22:54.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (87, N'csmith@example.org', 12267.0000, CAST(N'2018-10-26T00:14:50.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (88, N'david32@example.org', 41905.0000, CAST(N'1992-08-21T15:35:54.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (89, N'smithtyler@example.com', 78362.0000, CAST(N'2016-08-08T07:23:39.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (90, N'crystalburton@example.com', 96572.0000, CAST(N'2018-05-21T22:47:11.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (91, N'tthomas@example.org', 78800.0000, CAST(N'1997-06-29T17:01:30.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (92, N'cjohnson@example.com', 37814.0000, CAST(N'1985-09-03T20:59:10.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (93, N'csmith@example.org', 80794.0000, CAST(N'1988-08-17T10:21:45.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (94, N'ericterry@example.com', 47832.0000, CAST(N'1972-10-17T10:08:50.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (95, N'scallahan@example.net', 37814.0000, CAST(N'1985-08-10T16:13:10.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (96, N'scallahan@example.net', 93766.0000, CAST(N'2012-11-30T15:04:27.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (97, N'wanda38@example.net', 28967.0000, CAST(N'1986-02-12T09:34:52.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (98, N'justin39@example.org', 39224.0000, CAST(N'1991-04-28T07:08:47.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (99, N'christystanley@example.net', 30280.0000, CAST(N'1995-03-13T06:42:00.000' AS DateTime))
GO
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (100, N'scottjones@example.com', 59863.0000, CAST(N'1999-05-29T18:24:38.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (101, N'ashleyramos@example.com', 28527.0000, CAST(N'1979-05-10T00:36:50.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (102, N'alexander44@example.net', 1067.0000, CAST(N'2015-07-04T22:27:27.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (103, N'ihurst@example.org', 90525.0000, CAST(N'2008-04-12T00:20:26.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (104, N'scott54@example.com', 21103.0000, CAST(N'1996-12-21T04:56:34.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (105, N'gburns@example.com', 39224.0000, CAST(N'1991-05-14T08:09:35.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (106, N'kelly59@example.net', 58852.0000, CAST(N'1976-08-21T20:42:46.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (107, N'kellyamber@example.net', 62698.0000, CAST(N'1973-06-22T09:39:46.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (108, N'aevans@example.net', 19352.0000, CAST(N'1972-12-27T01:47:49.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (109, N'gburns@example.com', 93916.0000, CAST(N'1974-03-30T15:28:04.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (110, N'allenalexander@example.net', 78793.0000, CAST(N'2001-11-22T14:33:00.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (111, N'taylorkristin@example.net', 65159.0000, CAST(N'1996-05-25T22:11:43.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (112, N'granthaley@example.net', 37921.0000, CAST(N'2021-12-05T13:05:39.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (113, N'imacdonald@example.net', 90525.0000, CAST(N'2008-02-18T01:32:32.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (114, N'brittanyevans@example.com', 93564.0000, CAST(N'1981-04-06T01:42:51.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (115, N'ntaylor@example.com', 7348.0000, CAST(N'2009-06-15T20:10:47.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (116, N'igarza@example.net', 98651.0000, CAST(N'2009-09-23T09:57:31.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (117, N'allenmendez@example.net', 22821.0000, CAST(N'2008-01-29T05:46:04.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (118, N'tthomas@example.org', 50940.0000, CAST(N'1981-09-02T04:00:29.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (119, N'bradyeric@example.net', 93766.0000, CAST(N'2012-10-15T00:59:17.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (120, N'dthompson@example.com', 2382.0000, CAST(N'2010-09-30T14:05:12.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (121, N'veronica36@example.org', 93766.0000, CAST(N'2012-12-17T09:47:23.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (122, N'douglas70@example.net', 78793.0000, CAST(N'2003-03-26T15:44:31.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (123, N'ericterry@example.com', 41992.0000, CAST(N'2008-12-29T15:01:02.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (124, N'james67@example.net', 87748.0000, CAST(N'1984-09-18T07:27:28.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (125, N'rubiofrank@example.org', 68193.0000, CAST(N'1978-12-08T04:17:50.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (126, N'bryantjennifer@example.com', 83486.0000, CAST(N'2006-02-26T22:51:56.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (127, N'virginia18@example.com', 99848.0000, CAST(N'1999-09-20T11:26:14.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (128, N'zachary64@example.com', 83174.0000, CAST(N'1993-07-06T19:16:25.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (129, N'fcarpenter@example.com', 36281.0000, CAST(N'2016-03-14T01:05:47.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (130, N'ihurst@example.org', 95626.0000, CAST(N'2015-02-19T01:44:33.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (131, N'bryanfowler@example.net', 75660.0000, CAST(N'1990-06-08T11:39:09.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (132, N'ihurst@example.org', 5542.0000, CAST(N'2005-08-31T20:39:41.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (133, N'rrobinson@example.com', 95626.0000, CAST(N'2015-05-04T23:12:53.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (134, N'mcdanielchristopher@example.net', 78793.0000, CAST(N'2001-08-12T18:50:21.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (135, N'dpearson@example.com', 41452.0000, CAST(N'2007-04-22T19:38:33.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (136, N'michael76@example.org', 93833.0000, CAST(N'1991-11-29T01:36:49.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (137, N'burnettnatalie@example.org', 77374.0000, CAST(N'1997-01-26T22:49:35.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (138, N'garciabeverly@example.org', 73382.0000, CAST(N'2001-04-02T00:20:05.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (139, N'emily35@example.net', 81406.0000, CAST(N'1989-04-20T18:15:17.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (140, N'tranmark@example.net', 33635.0000, CAST(N'1977-01-27T10:14:17.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (141, N'sfischer@example.org', 73852.0000, CAST(N'2017-02-10T06:10:01.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (142, N'patrick03@example.org', 74055.0000, CAST(N'2012-07-30T19:31:41.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (143, N'zachary64@example.com', 69683.0000, CAST(N'2011-10-04T18:24:48.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (144, N'howardemily@example.com', 41905.0000, CAST(N'1992-07-19T16:18:06.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (145, N'paul43@example.org', 72292.0000, CAST(N'1973-12-22T20:26:11.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (146, N'alexander44@example.net', 22158.0000, CAST(N'1994-03-02T09:27:29.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (147, N'bramirez@example.org', 41905.0000, CAST(N'1992-08-01T04:12:46.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (148, N'owolf@example.net', 58852.0000, CAST(N'1976-09-21T14:03:50.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (149, N'oliverstephen@example.org', 75660.0000, CAST(N'1990-05-11T03:00:49.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (150, N'tthomas@example.org', 65674.0000, CAST(N'2019-10-19T02:50:04.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (151, N'kingerin@example.net', 100253.0000, CAST(N'2000-04-19T05:50:27.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (152, N'zfields@example.org', 28174.0000, CAST(N'1988-03-26T23:19:24.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (153, N'christopheryoung@example.org', 99519.0000, CAST(N'1985-07-10T09:24:04.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (154, N'danny48@example.net', 37921.0000, CAST(N'2022-03-15T02:13:49.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (155, N'williamsmichael@example.com', 93766.0000, CAST(N'2013-06-19T14:28:18.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (156, N'ntaylor@example.com', 77812.0000, CAST(N'1991-10-25T16:39:27.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (157, N'david95@example.org', 73702.0000, CAST(N'1983-07-15T23:07:10.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (158, N'danny48@example.net', 72292.0000, CAST(N'1974-01-08T14:30:57.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (159, N'mcdanielchristopher@example.net', 30359.0000, CAST(N'1987-05-16T14:58:46.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (160, N'kellyamber@example.net', 28527.0000, CAST(N'1979-07-19T17:17:05.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (161, N'audreyburton@example.net', 41452.0000, CAST(N'2007-05-29T08:05:46.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (162, N'bryanfowler@example.net', 78793.0000, CAST(N'2003-04-05T05:53:49.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (163, N'simonjohn@example.org', 22821.0000, CAST(N'2008-02-03T01:32:35.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (164, N'foxmichael@example.com', 52225.0000, CAST(N'1977-05-31T00:01:52.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (165, N'ntaylor@example.com', 58366.0000, CAST(N'1974-09-13T19:15:53.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (166, N'mejiaashley@example.com', 100253.0000, CAST(N'2000-06-11T23:46:39.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (167, N'jessicacabrera@example.com', 41992.0000, CAST(N'2008-07-06T19:37:52.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (168, N'mlee@example.org', 22158.0000, CAST(N'1994-03-29T01:02:53.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (169, N'bennettalan@example.net', 30280.0000, CAST(N'1995-07-20T22:52:35.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (170, N'tpayne@example.org', 62416.0000, CAST(N'1994-04-20T06:07:34.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (171, N'frytimothy@example.net', 93766.0000, CAST(N'2013-10-09T01:10:26.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (172, N'johndaniel@example.com', 80163.0000, CAST(N'1990-07-25T08:04:02.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (173, N'rogerpotter@example.org', 78362.0000, CAST(N'2016-06-11T09:12:12.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (174, N'scallahan@example.net', 37283.0000, CAST(N'1998-11-15T15:06:38.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (175, N'derrick63@example.com', 51437.0000, CAST(N'2016-01-16T10:12:50.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (176, N'christopher85@example.org', 22526.0000, CAST(N'1975-06-25T04:43:00.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (177, N'aevans@example.net', 56774.0000, CAST(N'1977-08-12T19:59:28.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (178, N'kburke@example.org', 28967.0000, CAST(N'1986-05-30T00:13:26.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (179, N'scott54@example.com', 73702.0000, CAST(N'1983-07-26T22:21:51.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (180, N'jacob61@example.net', 96572.0000, CAST(N'2018-07-30T11:21:18.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (181, N'scott54@example.com', 65159.0000, CAST(N'1996-07-07T09:39:24.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (182, N'david27@example.com', 98655.0000, CAST(N'2018-12-28T12:14:37.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (183, N'falexander@example.org', 32259.0000, CAST(N'2021-02-04T11:57:51.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (184, N'wanda38@example.net', 21288.0000, CAST(N'1970-05-22T21:05:16.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (185, N'kenneth85@example.org', 90525.0000, CAST(N'2008-05-25T20:55:45.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (186, N'kingerin@example.net', 37921.0000, CAST(N'2022-06-27T00:04:02.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (187, N'keymorgan@example.net', 69876.0000, CAST(N'2011-05-16T07:21:20.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (188, N'clementslaura@example.com', 93303.0000, CAST(N'1987-11-22T02:13:59.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (189, N'bryanfowler@example.net', 73309.0000, CAST(N'1998-04-10T06:38:44.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (190, N'kellyamber@example.net', 71889.0000, CAST(N'2014-11-15T05:06:57.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (191, N'rwalters@example.com', 78793.0000, CAST(N'2001-11-29T00:58:59.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (192, N'fcarpenter@example.com', 37814.0000, CAST(N'1985-08-28T03:24:23.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (193, N'williammartin@example.com', 3877.0000, CAST(N'1995-10-25T05:51:02.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (194, N'kinglinda@example.net', 93303.0000, CAST(N'1987-12-08T23:59:11.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (195, N'rwalters@example.com', 65159.0000, CAST(N'1996-01-12T02:57:51.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (196, N'kmitchell@example.org', 41992.0000, CAST(N'2008-12-04T11:12:43.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (197, N'jacob61@example.net', 37814.0000, CAST(N'1985-08-06T11:13:05.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (198, N'frytimothy@example.net', 73309.0000, CAST(N'1998-01-13T19:05:57.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (199, N'allenalexander@example.net', 87931.0000, CAST(N'2023-03-20T12:55:51.000' AS DateTime))
GO
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (200, N'derrick63@example.com', 17811.0000, CAST(N'2005-05-04T10:57:38.000' AS DateTime))
INSERT [dbo].[transaksi] ([idTransaksi], [idPengguna], [harga], [tanggal]) VALUES (201, N'aevans@example.net', 30000.0000, CAST(N'2023-06-05T16:37:24.103' AS DateTime))
SET IDENTITY_INSERT [dbo].[transaksi] OFF
GO
ALTER TABLE [dbo].[artikel]  WITH CHECK ADD  CONSTRAINT [FK_artikel_pengguna] FOREIGN KEY([idPenulis])
REFERENCES [dbo].[pengguna] ([email])
GO
ALTER TABLE [dbo].[artikel] CHECK CONSTRAINT [FK_artikel_pengguna]
GO
ALTER TABLE [dbo].[DaftarKategoriArtikel]  WITH CHECK ADD  CONSTRAINT [FK_daftar_kategori_artikel_artikel] FOREIGN KEY([idArtikel])
REFERENCES [dbo].[artikel] ([idArtikel])
GO
ALTER TABLE [dbo].[DaftarKategoriArtikel] CHECK CONSTRAINT [FK_daftar_kategori_artikel_artikel]
GO
ALTER TABLE [dbo].[DaftarKategoriArtikel]  WITH CHECK ADD  CONSTRAINT [FK_daftar_kategori_artikel_kategori] FOREIGN KEY([idKategori])
REFERENCES [dbo].[kategori] ([idKategori])
GO
ALTER TABLE [dbo].[DaftarKategoriArtikel] CHECK CONSTRAINT [FK_daftar_kategori_artikel_kategori]
GO
ALTER TABLE [dbo].[LogArtikel]  WITH CHECK ADD  CONSTRAINT [FK_log_artikel_artikel] FOREIGN KEY([idArtikel])
REFERENCES [dbo].[artikel] ([idArtikel])
GO
ALTER TABLE [dbo].[LogArtikel] CHECK CONSTRAINT [FK_log_artikel_artikel]
GO
ALTER TABLE [dbo].[LogHarga]  WITH CHECK ADD  CONSTRAINT [FK_log_harga_admin] FOREIGN KEY([idAdmin])
REFERENCES [dbo].[admin] ([email])
GO
ALTER TABLE [dbo].[LogHarga] CHECK CONSTRAINT [FK_log_harga_admin]
GO
ALTER TABLE [dbo].[membaca]  WITH CHECK ADD  CONSTRAINT [FK_membaca_artikel] FOREIGN KEY([idArtikel])
REFERENCES [dbo].[artikel] ([idArtikel])
GO
ALTER TABLE [dbo].[membaca] CHECK CONSTRAINT [FK_membaca_artikel]
GO
ALTER TABLE [dbo].[membaca]  WITH CHECK ADD  CONSTRAINT [FK_membaca_pengguna] FOREIGN KEY([idPembaca])
REFERENCES [dbo].[pengguna] ([email])
GO
ALTER TABLE [dbo].[membaca] CHECK CONSTRAINT [FK_membaca_pengguna]
GO
ALTER TABLE [dbo].[mengatur]  WITH CHECK ADD  CONSTRAINT [FK_mengatur_admin] FOREIGN KEY([idAdmin])
REFERENCES [dbo].[admin] ([email])
GO
ALTER TABLE [dbo].[mengatur] CHECK CONSTRAINT [FK_mengatur_admin]
GO
ALTER TABLE [dbo].[mengatur]  WITH CHECK ADD  CONSTRAINT [FK_mengatur_artikel] FOREIGN KEY([idArtikel])
REFERENCES [dbo].[artikel] ([idArtikel])
GO
ALTER TABLE [dbo].[mengatur] CHECK CONSTRAINT [FK_mengatur_artikel]
GO
ALTER TABLE [dbo].[transaksi]  WITH CHECK ADD  CONSTRAINT [FK_transaksi_pengguna] FOREIGN KEY([idPengguna])
REFERENCES [dbo].[pengguna] ([email])
GO
ALTER TABLE [dbo].[transaksi] CHECK CONSTRAINT [FK_transaksi_pengguna]
GO
