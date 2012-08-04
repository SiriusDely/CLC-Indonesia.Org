-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 04, 2012 at 10:18 AM
-- Server version: 5.1.63
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clcacorg_db_clc_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `clcers_id` int(11) NOT NULL,
  PRIMARY KEY (`clcers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `permalink`) VALUES
(1, 'Articles', 'Articles', 'Articles'),
(2, 'Events', 'Events', 'Events');

-- --------------------------------------------------------

--
-- Table structure for table `clcers`
--

CREATE TABLE IF NOT EXISTS `clcers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(45) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `registered` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `clcers`
--

INSERT INTO `clcers` (`id`, `username`, `password`, `email`, `type`, `status`, `registered`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gie-art.com', 'admin', 1, '2011-01-19 03:18:21', '2011-01-19 03:18:26'),
(2, 'students', '75d37c6cbf460947005c97e3f12906a9', 'students@gie-art.com', 'students', 1, '2011-01-19 03:18:03', '2011-01-19 03:18:08'),
(3, 'teachers', 'ad7d0e29419cc0843e35c6fe93b14d09', 'teachers@gie-art.com', 'teachers', 1, '2011-01-19 03:16:41', '2011-01-19 03:16:44'),
(4, 'alumni', '9855f5cdff0306ae33a49f89e087ccbc', 'alumni@gie-art.com', 'alumni', 1, '2011-01-19 03:19:10', '2011-01-19 03:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `clcers_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_users1` (`clcers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contributors`
--

CREATE TABLE IF NOT EXISTS `contributors` (
  `nama_lengkap` varchar(100) NOT NULL,
  `clcers_id` int(11) NOT NULL,
  PRIMARY KEY (`clcers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `clcers_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pages_users1` (`clcers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `permalink`, `body`, `status`, `clcers_id`) VALUES
(1, 'CLC di Indonesia', 'CLC-di-Indonesia', '<h2>CLC di Indonesia</h2>\n<p>Christian Life Community (CLC) berakar pada kelompok-kelompok orang awam (pria dan wanita, tua dan muda, dari segala kelompok sosial) yang saling mendukung dalam menanggapi panggilan untuk mencintai Allah dengan menegaskan cara yang paling tepat dan khas sesuai dengan situasi yang ada.</p>\n<p>Pada mulanya komunitas ini bernama Kongregasi Maria, didirikan oleh Pater Jean Leunis, Sj dan diakui oleh gereja dengan Bulla &ldquo;Omnipotentis Dei&rdquo; pada tahun 1565. Kelompok pertama yang secara resmi diakui Gereja adalah kelompok mahasiswa di Collegium Romanum. Pada tahun 1967 seiring dengan semangat pembaruan pada Konsili Vatican II, nama tersebut diubah menjadi CLC yang dirasa lebih tepat mengungkapkan identitasnya.</p>\n<p>Di Indonesia, CLC juga pernah dikenal dengan nama Komunitas Hidup Kristiani (KHK) sejak tahun 1980 hingga&nbsp; 2007. Pada SUN ke XI tahun 2007, komunitas memilih dan memutuskan untuk menggunakan nama internasional CLC, untuk menunjukkan semangat persatuan dengan komunitas dunia. Saat ini terdapat lebih dari 20.000 pria dan wanita, tua dan muda, yang menjadi anggota CLC di seluruh penjuru dunia.</p>\n<p>CLC khususnya cocok bagi mereka yang ingin mengungkapkan kasih kepada Allah ditengah kesibukan dunia sehari-hari, sehingga semakin kokoh pengabdiannya kepada sesama dalam lingkungan keluarga, masyarakat, profesi maupun dalam lingkungan Gereja.</p>\n<p>Siapa saja yang ingin bergabung dengan CLC diterima dengan senang hati dan tangan terbuka.</p>\n<blockquote>Our first mission is the ordinary life, finding and serving God in all our daily activities as work, family, studies, etc?. <br /> Our apostolic life, through institutions, can be extended and complements that first mission.</blockquote>\n<p>&nbsp;</p>\n<h2>Esensi Formasi CLC</h2>\n<p>Anggota CLC harus memiliki pengertian dan rasa memiliki yang tegas akan Asas Umum dan Asas Dasar yang menyampaikan Visi CLC dan 3 pilar, Spiritualias, Komunitas dan Kerasulan.</p>\n<table class="table1" width="100%">\n<tbody>\n<tr><th>Komunitas</th><th>Spritualitas</th><th>Kerasulan</th></tr>\n<tr>\n<td width="33%">Dalam komunitas, kami:\n<ul>\n<li>Saling berbagi pengalaman iman</li>\n<li>Berdoa dan discernment</li>\n<li>Saling menginspirasi dan menantang diri</li>\n<li>Mendukung</li>\n<li>Bersosialisasi dan merayakan bersama</li>\n<li>Merayakan Ekaristi dan Sakramen lainnya</li>\n</ul>\n</td>\n<td width="33%">Berlatih Rohani, ala Ignatian:\n<ul>\n<li>Pemeriksaan batin harian</li>\n<li>Doa dengan Kitab Suci</li>\n<li>Kontemplasi</li>\n<li>Renungan Doa</li>\n<li>Doa Hening</li>\n<li>Discernment (Penegasan Rohani)</li>\n<li>Rosario</li>\n</ul>\nSecara bersama, kami juga:\n<ul>\n<li>Merayakan Liturgi</li>\n<li>Retret</li>\n<li>Communal Discernment</li>\n</ul>\n</td>\n<td width="33%">Kami berikhtiar untuk menjadi tubuh apostolis:\n<ul>\n<li>Mengabarkan karya keselamatan di tengah masyarakat lewat kesaksian hidup sederhana dan kasih</li>\n<li>Membangun kerajaan Allah</li>\n</ul>\nKomunitas berbagi panggilan dan kerasulan pribadi melalui:\n<ul>\n<li>Discerning,</li>\n<li>Sending,</li>\n<li>Supporting,</li>\n<li>Evaluating</li>\n</ul>\nKomunitas melakukan kerasulan baik pribadi maupun kelompok, setelah melakukan discernement pribadi dan komuntal</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<table class="table2" width="100%">\n<tbody>\n<tr>\n<td><strong>Keseimbangan</strong><br /> Contemplation &amp; Action</td>\n</tr>\n<tr>\n<td><strong>Pengalaman</strong><br /> Kita mengalami kehadiran dan Kasih Tuhan lewat doa dan aktivitas sehari-hari, melalui relasi dengan sesama dan lingkungan.</td>\n</tr>\n<tr>\n<td><strong>Refleksi</strong><br />Kami mengambil jeda secara periodic untuk merefleksikan pengalaman kami:\n<ul>\n<li>Dimanakah Tuhan dalam hidupku (kami)?</li>\n<li>Apakah aku mengalami-Nya dalam pengalaman ini? sekarang?</li>\n<li>Apakah Tuhan memanggilku untuk melakukan sesuatu?</li>\n<li>Bagaimana saya (kami) akan merespon panggilan tersebut?</li>\n</ul>\n</td>\n</tr>\n<tr>\n<td><strong>Aksi</strong><br /> Untuk menegaskan sebuah kerasulan, aksi maupun arah, kami menggunakan kriteria yang terdapat di Latihan Rohani.</td>\n</tr>\n<tr>\n<td><strong>Evaluasi</strong><br /> Kami mengevaluasi gerakan Roh dalam pengalaman merasul.</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>', 1, 1),
(2, 'Hubungi Kami', 'Hubungi-Kami', '<h2>Hubungi Kami</h2>\n<h3>Jakarta:</h3>\n<p>Sdr. Dadang<br />phone: 081315378419</p>\n<h3>Bandung:</h3>\n<p>Sdr. Suwardi Tedja<br />phone: 08562157771<br />email: coencoenz@yahoo.com</p>\n<h3>Semarang:</h3>\n<p>Sdr. Felix<br />phone: 081390251968<br />email: felsandy2009@gmail.com</p>\n<h3>Magelang:</h3>\n<p>Sdri. Djuwahir<br />phone: 081328092232</p>\n<h3>Wonosari:</h3>\n<p>Sdr. Pratiknyo<br />phone: 081227860789</p>\n<h3>Jogja:</h3>\n<p>Sdr. Juarto<br />phone: 08886953280</p>\n<h3>Solo:</h3>\n<p>Sdri. Vero<br />phone: 085229093654<br />email: vero_ary@yahoo.com</p>\n<h3>Surabaya:</h3>\n<p>Sdri. Asisi / Sdri. Wuri<br />phone: 081330752426</p>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `clcers_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_posts_users1` (`clcers_id`),
  KEY `fk_posts_categories1` (`categories_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `permalink`, `body`, `status`, `clcers_id`, `categories_id`, `image`, `created`, `modified`) VALUES
(2, 'A Saint Who Lives in Complete Activity', 'A-Saint-Who-Lives-in-Complete-Activity', '<blockquote>The Ignatian man ought to be a saint and he ought to live in complete activity. Previous spirituality opposed these two aspects. Activity seemed to be an obstacle to holiness which was conceived as contemplation. The revolution accomplished by St. Ignatius showed that that which appeared to be an obstacle could become a means. To the heart filled with God, all things speak of Him.</blockquote>\n<p>Jean Danielou, SJ</p>', 1, 1, 1, 'public/media/posts/iggy.jpg', '2012-07-28 11:13:07', '0000-00-00 00:00:00'),
(4, 'A Mother''s Day Prayer', 'A-Mothers-Day-Prayer', '<p>Dear Para Ibu CLC</p>\n<p>Ketika menyiapkan Warta Gereja hari ini, Pastor minta dimuat sesuatu yg cocok untuk Mother&rsquo;s Day. Setelah cari saya temukan di web Creighton Uni ada doa sederhana yg menyentuh kalbu, Selamat Mother''s Day para Ibu.</p>\n<p>dani</p>\n<p>Father in Heaven, I thank you, for my mother I thank you that she gave me life and nurtured me all those years. She gave me my faith, helping me to know You and to know Jesus and His ways. She taught me how to love and how to sacrifice for others.</p>\n<p>She taught me that it was okay to cry and that I should always tell the truth. Bless her with the graces she needs and which You want to give her today. Help her to feel precious in Your eyes today and to know that I love her. Give her strength and courage, compassion and peace.</p>\n<p>Bless her this day with Your love.</p>', 1, 1, 2, 'public/media/posts/mothers_day.png', '2012-07-28 19:07:31', '0000-00-00 00:00:00'),
(5, 'Soegija oleh Wuri Soedjatmiko', 'Soegija-oleh-Wuri-Soedjatmiko', '<p>Teman-teman CLC Ytk., Saya mendahului menshare-kan apa yang saya tangkap dari nonton filem Soegija. Mohon dikomentari dan mari kita diskusikan dan direfleksikan makna apa sebetulnya yang dapat kita ambil dari filem ini.</p>\n<p>Gedung Cinema XXI di Ciputra World--tempat saya nonton--memang memberikan pengumuman bahwa penonton tidak boleh berbicara selama pertunjukan. Tapi saya kira tidak adanya suara bisik2 justru karena penonton terpaku pada apa yang ditayangkan.</p>\n<p>Pertama, filem ini sangat padat. Cuplikan demi cuplikan bergerak menuju ke inti cerita. Latihan koor untuk tahbisan Uskup, doa suster-suster yang diancam mau ditembak, Ling-Ling dan si Englong mewakili kaum Tionghoa, Mariyem yang mewakili perempuan yang sadar gender dan harkat bangsa Indonesia, Suster Belanda yang nyerocos bahasa Jawa mewakili misionaris sejati, si remaja yang hanya bisa membaca ''Merdeka'' mewakili pejuang yang tidak sempat bersekolah.</p>\n<p>Ada Robert yang merasa menjadi mesin perang. Ada Hendrik yang jatuh hati kepada Mariyem, dan Mariyem yang hidup dalam dilema antara jatuh hati kepada Hendrik, tetapi selalu berpikir harga diri sebagai perempuan Jawa yang tidak mau direndahkan.</p>\n<p>Tokoh utama Mgr. Soegija, Uskup Pribumi pertama, sangat kuat. Ia bisa berbahasa Belanda, Bahasa Inggris, Bahasa Jawa dan selalu menulis refleksi. Patriotisme tampak dalam mendukung pertahanan melawan Jepang, melawan penjajahan ulang oleh Belanda, dan yang mendahulukan rakyat daripada para imamnya. Ia yang berani menolak ancaman Jepang yang mau memaksakan Gereja untuk dijadikan markas tentara Jepang karena Gereja adalah tempat suci. Ia yang meletakkan dasar "100% Katolik dan 100% Indonesia."</p>\n<p>Kepadatan cerita ini bagi banyak orang terasa sebagai loncatan-loncatan atau petikan-petikan yang mengganggu. Bagi orang yang detil, ada kritik tentang &ldquo;apakah dasi zaman itu seperti yang dipakai dalam filem ini? Apakah infus pada jaman itu sudah memakai plastik?&rdquo; Percakapan bahasa Jawa ada yang tidak diberi sub-title, padahal tidak semua penonton mengerti bahasa Jawa kromo. Seharusnya percakapan pakai bahasa Melayu atau Indonesia?</p>\n<p>Sekalipun ada sedikit kritik, terasa sekali keindahan sajian Garin Nugroho ini sebagai penuturan seorang budayawan yang dewasa. Perang merupakan penderitaan bukan hanya bagi yang dijatuhi bom, bagi yang bertahan, tetapi juga bagi kaum muda yang dikirim ke medan perang tanpa tahu tujuan untuk apa mereka harus mengangkat senjata. &ldquo;Kami adalah mesin, dan mesin harus terus berjalan,&rdquo; kata Hendrik. Pada akhirnya sang mesin tergugah hatinya ketika menerima surat ibunya yang tidak dapat tidur setiap mendengar bunyi deru pesawat terbang di atas rumahnya. Tragis sekali ia meninggal masih sebagai mesin.</p>\n<p>Kekuasaan ditunjukkan Hendrik yang menendang sambil menghina seorang yang ditangkap yang disuruh baca namanya tapi tidak bisa. Keadaan berbalik ketika Jepang masuk dan ganti dia yang menunduk ditendang-disepak.</p>\n<p>Nilai seni filem ini juda menonjol. Sebagai sastrawan, seniman dan budayawan, ia menyuguhan humor punokawan melalui Min, ajudan Mgr. Soegija. Seorang batur yang sekaligus berani menasihati majikan, membuat penonton gerrr berulang-ulang. Di sela-sela kekerasan perang ada hal-hal manusiawi yang tidak kenal batas musuh yaitu lagu-lagu Belanda yang diindonesiakan, ada latihan koor dan orang-orang pribumi yang sudah berbudaya yang dapat memainkan biola mengantar lagu berbagai bahasa. Ada sindiran-sindiran lewat tokoh anak Ling Ling yang menanyakan mengapa golongannya selalu menjadi korban jarahan, melalui Mgr. Soegija ketika menasihati pemimpin gerilya yang mau masuk politik, tentang situasi Negara masa kini; tetapi semuanya diucapkan sambil lalu. Juga Ling Ling yang selalu menangis merindukan ibunya, tanpa perlu dideskripsikan maupun dikatakan bahwa ibu cantik ini diambil dan dijadikan &ldquo;ianfu&rdquo;.</p>\n<p>Nilai-nilai kemanusiaan dan budaya diangkat tanpa menggurui tapi melalui interpretasi penonton. Meskipun Mgr. Soegija diceritakan mulai dari imam yang naik sepeda ontel, ditahbiskan sebagai Uskup pribumi pertama, sebagai pemimpin umat Katolik yang pejuang, sebagai patriot 100% dan Katolik 100%, dan kemudian dimakamkan, dan judulnya adalah nama Uskup Soegijapranata, filem ini sesungguhnya berkisah tentang hal-hal yang sangat manusiawi: tentang cinta kasih, tentang keadilan, tentang pilihan-pilihan, dan tentang matinya kekuasaan.</p>\n<p>Bagaimana kesan Ibra? bagaimana Rius yang bisa menggalang penonton sampai 1500, saya dengar? yang lain?</p>\n<p>Pak Fadjar... harap bersabar sampai ada DVDnya :-)</p>\n<p>wuri</p>', 1, 1, 2, 'public/media/posts/soegija.jpeg', '2012-07-28 19:07:23', '0000-00-00 00:00:00'),
(6, 'Doa mohon lepas dari kelekatan', 'Doa-mohon-lepas-dari-kelekatan', '<p>Aku mohon ya Allah-ku, Singkirkan segala yang memisahkan Aku dari Engkau, dan Engkau dari aku...</p>\n<p>Singkirkan semua yang membuatku tak berharga Dalam pandangan-Mu, kendali-Mu, penghakiman-Mu, Dari ucapan-Mu dan percakapan-Mu Dari belas kasihan-Mu dan cinta-Mu</p>\n<p>Hindarkanlah aku dari setiap kejahatan, Yang menghalangi penglihatanku kepada-Mu; Mendengar, menghayati, mengecap dan menyentuh-Mu Takut akan dan selalu memikirkan-Mu; Mengenal, mempercayai, mencintai, dan memiliki-Mu; Sadar akan kehadiran-Mu</p>\n<p>Dan, selamanya, menikmati-Mu. Inilah yang kumohon untuk diriku Dan sungguh2 kudambakan dari-Mu. Amen.</p>\n<p>Blessed Peter Faber, SJ (Hearts on Fire, edited by Micheal Harter, SJ)</p>', 1, 1, 1, '', '2012-07-28 11:17:01', '0000-00-00 00:00:00'),
(7, 'Mengenal Soegija lebih dekat', 'Mengenal-Soegija-lebih-dekat', '<p><strong>Soegija</strong>, merupakan panggilan akrab tokoh yang lahir di Solo, yang pada agustus 1931 menjadi iman Katolik dan pada 6 November 1940, ia ditahbiskan sebagai Uskup pribumi Indonesia pertama untuk Vikaris Apostolik Semarang oleh Mgr. Willekens, SJ. (Vikaris Apostolik Batavia), Mgr. AJE Albers,O.Carm (Vikaris Apostolik Malang) dan Mgr. HM Mekkelholt, SCJ (Vikaris Apostolik Palembang).</p>\n<p>Sejak tahun 1940-1949, <strong>Mgr Soegija</strong> bersama Mgr. Willekens SJ, beliau menghadapi penguasa pendudukan pemerintah Belanda dan pemerintahan Jepang dalam masa masa peralihan. Satu dasawarsa penuh gejolak ini ditandai dengan akhir penjajahan Belanda, masuk dan dimulainya masa pendudukan Jepang, proklamasi kemerdekaan RI, dan kembalinya Belanda yang ingin mengambil kembali Indonesia sehingga memulai perang kemerdekaan Indonesia.</p>\n<p>Peristiwa-peristiwa tersebut dituangkan Soegija dalam renungan-renungan dalam catatan hariannya, dan juga peran sertanya dalam meringankan beban penderitaan rakyat di tengah kekacauan perang. Dia mencoba berperan di semua tingkat, baik <strong>politik lokal, nasional dan internasional</strong>. Atas peran serta diplomasinya, beberapa negara di Eropa mengakui kemerdekaan Indonesia sejak 1947. Presiden Soekarno memberikan penghargaan gelar Pahlawan Nasional.</p>\n<p>Terinspirasi dari nilai nilai perjuangan beliau, dan bersamaan dengan momentum Peringatan Kebangkitan Nasional dan Lahirnya Pancasila, maka kami berfikir sangat perlu menyebarluaskan serta mengingatkan kembali masyarakat luas akan nilai nilai perjuangan beliau dengan mengadakan serangkaian kegiatan yang akan dimulai pada tanggal 20 Mei sampai dengan 12 Juni 2012, semua itu menjadi satu rangkaian utuh dalam rangka <strong>Belajar Pluralisme dari Mgr. Soegija Pranata; Karena Kemanusiaan Itu Satu.</strong></p>', 1, 1, 2, 'public/media/posts/soegija1.jpeg', '2012-07-28 19:02:33', '0000-00-00 00:00:00'),
(8, 'Kopi Versus Cangkirnya', 'Kopi-Versus-Cangkirnya', '<p><span>Dalam acara reuni, beberapa alumni menjumpai guru sekolah mereka dulu. Melihat para alumni tsb ramai2 membicarakan kesuksesan mereka, guru tsb segera ke dapur dan mengambil seteko kopi panas dan beberapa cangkir kopi yg berbeda2.</span><span>&nbsp;</span></p>\n<p><br /><span>Mulai yg terbuat dr kristal, kaca, melamin dan plastik. Guru tsb menyuruh para alumni utk mengambil cangkir dan mengisinya dg kopi. Setelah masing2 alumni sudah mengisi cangkirnya dg kopi, guru berkata, "Perhatikanlah bahwa kalian semua memilih cangkir yg bagus dan kini yg tersisa hanyalah cangkir yg murah dan tidak menarik. Memilih hal yg terbaik adl wajar dan manusiawi. Namun persoalannya, ketika kalian tdk mendapatkan cangkir yg bagus perasaan kalian mulai terganggu. Kalian secara otomatis melihat cangkir yg dipegang org lain dan mulai membandingkannya. Pikiran kalian terfokus pada cangkir, padahal yg kalian nikmati bukanlah cangkirnya melainkan kopinya ! Hidup kita seperti kopi dlm analogi di atas, sedangkan cangkirnya adl pekerjaan, jabatan, dan harta benda yg kita miliki.&nbsp;</span><br /><br /><span>Pesan moralnya, jgn pernah membiarkan cangkir mempengaruhi kopi yg kita nikmati. Cangkir bukanlah yg utama, kualitas kopi itulah yg terpenting.&nbsp;</span><br /><br /><span>Jgn berpikir bahwa kekayaan yg melimpah, karier yg bagus dan pekerjaan yg mapan merupakan jaminan kebahagian. Itu konsep yg sangat keliru. Kualitas hidup kita ditentukan oleh "Apa yg ada di dalam" bukan "Apa yang kelihatan dr luar". Apa gunanya kita memiliki segalanya, namun kita tdk pernah merasakan damai, sukacita, dan kebahagian di dalam kehidupan kita? Itu sangat menyedihkan, karena itu sama seperti kita menikmati kopi basi yg disajikan di sebuah cangkir kristal yg mewah dan mahal. Kunci menikmati kopi bukanlah seberapa bagus cangkirnya, tetapi seberapa bagus kualitas kopinya.&nbsp;</span><br /><br /><span>Selamat menikmati secangkir kopi kehidupan !&nbsp;</span><br /><span>Ibrahim Aryon&nbsp;</span></p>', 1, 1, 1, '', '2012-07-28 19:08:25', '0000-00-00 00:00:00'),
(9, 'Meanwhile in USA', 'Meanwhile-in-USA', '<iframe width="420" height="315" src="http://www.youtube.com/embed/baT7wGRoTg0" frameborder="0" allowfullscreen></iframe>\r\n\r\n<p>\r\n"A Worldwide Association of lays Ignatian Christian who are bringing their faith their sprituality into mission."</p>\r\n\r\n<p>\r\n"A support group of people that come together, who share faith, who share life, who commit themselves to actively exploring their spirituality, their faith, and who also try to integrate that into daily life through community and through services."</p>', 1, 1, 1, '', '2012-07-28 20:06:05', '0000-00-00 00:00:00'),
(10, 'Seek God Everywhere - Reflections on the Spiritual Exercises of St. Ignatius', 'Seek-God-Everywhere-Reflections-on-the-Spiritual-Exercises-of-St.-Ignatius', '<p>Seek God Everywhere - Reflections on the Spiritual Exercises of St. Ignatius</p>\r\n\r\n<iframe class="scribd_iframe_embed" src="http://www.scribd.com/embeds/88373108/content?start_page=1&view_mode=list&access_key=key-ywjchwovo04clkaf2tc" data-auto-height="true" data-aspect-ratio="0.648305084745763" scrolling="no" id="doc_66428" width="100%" height="600" frameborder="0"></iframe>', 1, 1, 1, '', '2012-07-28 20:10:38', '0000-00-00 00:00:00'),
(11, 'The 35th General Congregation of the Jesuits - So What?', 'The-35th-General-Congregation-of-the-Jesuits-So-What', '<h1>The 35th General Congregation of the Jesuits &ndash; So What?</h1>\n<p>The Jesuits&rsquo; 35th General Congregation (GC35) in Rome lasted from 7th January to 7th March 2008. There cannot be many organisations in the world that afford themselves the luxury of a meeting lasting two months. Jesuit General Congregations &ndash; the highest authority of the Society, outranking even the Superior General &ndash; are supposed to be rare, called only for serious business. We certainly enjoyed being together; but many of us did wonder whether GC35 needed to take so long. What came out of it?</p>\n<h2>Congregations and decrees</h2>\n<p>Previous Congregations produced weighty volumes of &ldquo;decrees&rdquo; for Jesuits to reflect on. GC31 met during the Second Vatican Council; apart from electing Fr Pedro Arrupe as Superior General, it was the Jesuits&rsquo; first attempt to adapt to the momentous changes in the Church, in the theology of the Church, and in religious life. A decade or so later, GC32 gave the Society a radical reformulation of its mission, linking the proclamation of the Gospel with the promotion of justice. The decrees of GC32 were especially influential and controversial. By no means everyone inside or outside the Society agreed with its account of the Jesuit vocation, and the 1970s were years of excitement for some and pain for others. The dramatic haemorrhaging of Jesuits from the Society had already begun; and in 1981 an unprecedented event took place &ndash; the most significant papal intervention in the internal governance of the Society since the Suppression. When Fr Arrupe had the stroke that incapacitated him, the normal procedures were suspended by Pope John Paul II, who appointed his own Jesuit delegate to govern the Society. Only in 1983 were the Jesuits allowed to call GC33 to elect Fr Peter-Hans Kolvenbach. Even after 25 years, the trauma can still be felt.</p>\n<p>GC34 was called primarily to adopt changes in the Society&rsquo;s legislation required by recent congregations and the new Code of Canon Law. However, that congregation also produced a very large number (26) of decrees on a variety of subjects. In particular, it &lsquo;fine-tuned&rsquo; the GC32&rsquo;s linking of gospel and justice by giving it a broader and more generous interpretation to include issues of dialogue and culture. This was the Jesuits&rsquo; first consciously &lsquo;postmodern&rsquo; Congregation: the Society tried to adapt itself and its mission to the realities of globalisation, the communications revolution, the end of the &lsquo;cold war&rsquo;, and so on. Its many decrees adopted the genre of GC31 and GC32, which had perhaps modelled theirs on Vatican II.</p>\n<p>When GC35 met earlier this year, there was a repeatedly expressed desire not to produce yet more documents. Most felt that the three previous General Congregations had said much of what needed to be said: what remained was implementation. Something would need to be written, of course: but any decrees should be few, short, and &ldquo;inspirational&rdquo;! This, however, was not so easy. The issues that had been sent to the General Congregation by Jesuits from all over the Society were real, and they needed to be addressed. Other important issues had come through preparatory commissions appointed by the General. Also in the background were certain hints dropped by Pope Benedict XVI in various letters and addresses. In the end, GC35 did issue a small number of documents, but these are of a variety of different types (though technically they are all &lsquo;decrees&rsquo;).</p>\n<h2>A decree on obedience</h2>\n<p>&ldquo;Obedience in the Life of the Society of Jesus&rdquo; has the traditional look and feel of the decrees of GC31 to GC34. It completes a trio: GC32 had a decree on poverty, GC34 on chastity. Also, Benedict XVI had asked that the Fourth Vow of special obedience to the pope regarding missions be discussed. This decree, then, is a small treatise on Jesuit obedience, locating the roots in the Spiritual Exercises and in the experience of St Ignatius and his first companions, especially the promises at Montmartre in 1534, the confirmation at La Storta, and later the &ldquo;deliberatio of the first fathers&rdquo; in 1539. There is a brief theology of obedience, affirming that &ldquo;faith in Jesus Christ teaches us that self-realization comes from self-giving and that freedom is not so much the power to choose as the power to order our choices toward love&rdquo;; such love, it says, requires trustful commitment, including &ldquo;commitment to the concrete mediations of the Word&rdquo; that are found in the Church, in the Society, and in our communities. Overall, the decree emphasises the account of conscience, trust between subjects and superiors (for obedience has two sides, each with roles and responsibilities, and requires both effective delegation by superiors and apostolic creativity on the part of subjects), and the role of obedience in community life. Through the Fourth Vow, the Society puts itself &ldquo;at the disposition of the ministry of Peter &lsquo;for distribution into the vineyard of Christ our Lord&rsquo;&rdquo; and is incorporated into the structure of the Church. &ldquo;Taken together, the fourth vow and our ecclesial spirituality move us to offer the service asked of us by the pope.&rdquo;</p>\n<h2>A decree on governance</h2>\n<p>&ldquo;Governance at the Service of Universal Mission&rdquo; is very different. Instead of a continuous treatise, it gives three guiding principles for governance in the Society (the most important being &ldquo;a perspective of greater universality&rdquo;), and then gathers together the congregation&rsquo;s decisions on a variety of matters. So the decree asks Father General to institute a comprehensive review of the Formulae for Congregations (General, Provincial, and Procurators), and of central governance of the Society, i.e., the Curia in Rome. It confirms the role of the Conferences of Major Superiors, and settles a number of contentious issues, in particular that of the proper relation between the conference &lsquo;moderator&rsquo; or &lsquo;president&rsquo; and the major superiors, including the difficult point of the moderator&rsquo;s power to assign members of the provinces. At Province level, the decree highlights the increased need, in today&rsquo;s world, for cooperation and coordination across province boundaries, and encourages a participatory approach to decision-making at all levels, with clarity about the roles of consultors, commissions, delegates, etc. It emphasizes the major superior&rsquo;s responsibility for the apostolic works of the province as well as for the men, and also the importance of training of Jesuits for leadership and management. At the community level, stress is laid on the local superior&rsquo;s role in sustaining and developing the apostolic vitality of Jesuit communities, by supporting members in their ministerial as well as their religious lives. The decree ends with some reflections on relations between local superiors and directors of works, whether Jesuit or non-Jesuit.</p>\n<h2>A decree on Jesuit identity</h2>\n<p>After some debate, GC35 decided to produce a new document on Jesuit identity and mission (later the part on mission became a separate decree on its own), even though GC34 had said much on this subject that was by no means outdated. This was to be, though, a new kind of decree: &lsquo;inspirational&rsquo; rather than &lsquo;legalistic&rsquo;, giving not one more account of who we are and what we do, but the reason why we do it. In the end, &ldquo;A Fire that Kindles Other Fires: rediscovering our charism&rdquo; is perhaps the most original decree of GC35. It uses many images and pictures, of which the overarching one is the &ldquo;fire that kindles other fires&rdquo; (a quotation from St Albert Hurtado), employing what was described as a &lsquo;cinematographical logic&rsquo; that is difficult to summarise. What is new in it &ndash; and hopefully what will help &ndash; is not so much its content but its style, its spirit, its enthusiasm.</p>\n<h2>A decree on mission</h2>\n<p>A large majority of the postulata that came from the provinces to GC35 concerned the new context of the Society&rsquo;s mission in the world. It was felt that the identity document, because of its style, could not respond adequately to these concerns, and a separate decree eventually emerged. &ldquo;Challenges to Our Mission Today: Sent to the Frontiers&rdquo; begins by reaffirming the formulation of our mission given by GC34: faith, justice, dialogue, culture. It then describes the new context in which we seek to fulfil that mission: globalisation &ndash; with all its consequences, good and bad. In this new context, we are called to a ministry of reconciliation, by crossing boundaries just as Jesus did in many different ways, and by living the tension between centre and periphery. The decree describes this in terms of &ldquo;building right relationships&rdquo;; with God, with one another, and with creation. The decree ends by confirming the list of &lsquo;apostolic priorities&rsquo; of the Society of Jesus that had been announced by Fr Kolvenbach (after consultation with major superiors) in 2003: namely, (i) Africa, (ii) China, (iii) the &lsquo;intellectual apostolate&rsquo;, (iv) the Roman inter-provincial houses, and (v) migrants and refugees.</p>\n<h2>A decree on collaboration</h2>\n<p>Many postulata concerned the issue of collaboration between Jesuits and others (non-Jesuits) in our many works, even though this, too, had been addressed by GC34. It was felt, though, that a new attempt to state the centrality of collaboration to Jesuit mission was helpful, and also to address certain specific questions. &ldquo;Collaboration at the Heart of Mission&rdquo; expresses gratitude to the many non-Jesuits who labour with Jesuits in their various works, acknowledging that the variety of our collaborators is growing as well as the modes of collaboration. The decree tries to answer three questions: (1) What is a Jesuit work, and how can it be sustained where non-Jesuits are in leadership positions? (2) What kind of formation do Jesuits and non-Jesuit collaborators need in order to grow in the spirit and practice of our mission? (3) What kinds of bonds can best unite those who work together in the Society&rsquo;s mission? It ends by addressing a very particular issue that had been left to it by the previous congregation, namely, the future of an experiment inaugurated by GC34 to admit a small number of lay Catholics into a &lsquo;juridical bond&rsquo; with the Society.</p>\n<h2>A response to Pope Benedict XVI</h2>\n<p>Benedict XVI was, perhaps, &lsquo;the invisible member&rsquo; at GC35&rsquo;. At the beginning, he wrote to Fr Kolvenbach and to the congregation, expressing his real esteem and gratitude for Fr Kolvenbach&rsquo;s work over nearly 25 years in guiding the Society, and for &ldquo;the valid contribution which the Society offers to the Church&rsquo;s activity in various ways and in so many ways&rdquo;. &ldquo;The Church,&rdquo; he said, &ldquo;has even more need today of this fidelity of yours, which constitutes a distinctive sign of your Order&rdquo;. He went on to express a hope that GC35 would clearly affirm the authentic charism of our founder &ldquo;so as to encourage all Jesuits to promote true and healthy Catholic doctrine&rdquo;, even mentioning a number of particular &ldquo;neuralgic points&rdquo; where such teaching is attacked by &ldquo;secular culture&rdquo; and where such an affirmation would be, he said, &ldquo;extremely useful&rdquo;. The congregation was deeply moved by this letter and gave time and much serious thought to the response that it demanded. On the 21st February 2008, the whole of GC35 had a private audience with the Holy Father, at which he spoke with great warmth, using the language and spirituality of the Jesuits, and ending with the prayer &ndash; which, he said, &ldquo;I almost dare not to say&rdquo; &ndash; Take, Lord, receive. Clearly, Benedict has a high regard for the Society, especially the role it plays in the contemporary battle against secularism, and he is calling for the Society&rsquo;s help in this great task. &ldquo;The Church is in urgent need of people of solid and deep faith, of a serious culture and a genuine human and social sensitivity, or religious priests who devote their lives to stand on those frontiers in order to witness and help to understand that there is in fact a profound harmony between faith and reason, between evangelical spirit, thirst for justice and action for peace.&rdquo;</p>\n<h2>GC35 &ndash; so what?</h2>\n<p>There are many valuable and important issues raised in these documents, worthy of reflection for Jesuits and their collaborators. They do not say everything about being a Jesuit today, or in the future. But what could say everything?</p>', 0, 1, 2, '', '2012-08-01 23:17:34', '0000-00-00 00:00:00'),
(12, 'Review of the Day for Managers', 'Review-of-the-Day-for-Managers', '<h1>Review of the Day for Managers</h1>\n<p>By Paul Brian Campbell, S.J.</p>\n<p><em>This is an adaptation of the Ignatian Examen designed for managers.</em></p>\n<p>Imagine you&rsquo;re at home at the end of another busy day at work. You plop down in front of the TV and, instead of some dumb quiz show, you&rsquo;re looking at yourself going through the day at work.</p>\n<p>Some leaders like to simply watch the day unfold like a movie and then reflect on certain aspects of it; others prefer to pause the &ldquo;movie&rdquo; at certain points to think about what just happened.</p>\n<p>Some questions you might ask yourself:</p>\n<ul>\n<li><strong>From your perspective as a manager, what was the high point of the day?</strong>\n<ul>\n<li>Why?</li>\n<li>Can you discern a pattern in what constitutes high points?</li>\n<li>What can you do to increase the number and duration of these high points?</li>\n</ul>\n</li>\n<li><strong>The low point of the day&hellip; Again, look for reasons and patterns.</strong>\n<ul>\n<li>What would you do differently if you were given the chance for a &ldquo;do over&rdquo;?</li>\n<li>How can you decrease the likelihood of repeating the same kinds of low points?</li>\n</ul>\n</li>\n<li><strong>When were you working at your best during the day?</strong>\n<ul>\n<li>Recall as many details as you can. What made it your best work?</li>\n<li>Were you working alone? With others?</li>\n<li>Who brings out the best (and worst) in you? Why?</li>\n</ul>\n</li>\n<li><strong>When did you struggle to stay focused and engaged?</strong>\n<ul>\n<li>What were you doing that challenged your focus?</li>\n<li>Was this an isolated incident, or is this something you deal with a lot of the time?</li>\n</ul>\n</li>\n<li><strong>How hectic was the day?</strong>\n<ul>\n<li>Do you prefer to be busy and on-the-go all the time, or would you rather have more time to pause and reflect? Why?</li>\n</ul>\n</li>\n<li><strong>Think about each of your direct reports. Imagine how he/she might have pictured interacting with you.</strong>\n<ul>\n<li>Do you think there might be a disconnect between his/her perceptions and reality? Why?</li>\n<li>What concrete things could you do to improve communication between you and your direct reports?</li>\n</ul>\n</li>\n<li><strong>Look toward tomorrow.</strong>\n<ul>\n<li>Are you going to make any changes in your demeanor, communication styles, and attitudes?</li>\n<li>What are you going to do to help your direct reports work more effectively and with greater satisfaction?</li>\n</ul>\n</li>\n</ul>\n<p><a href="http://www.ignatianspirituality.com/ignatian-prayer/the-examen/review-of-the-day-for-managers/">source</a></p>', 0, 1, 1, '', '2012-08-02 15:17:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `spectators`
--

CREATE TABLE IF NOT EXISTS `spectators` (
  `nama_lengkap` varchar(100) NOT NULL,
  `clcers_id` int(11) NOT NULL,
  PRIMARY KEY (`clcers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE IF NOT EXISTS `subscriber` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `name`, `email`) VALUES
(17, 'Gregorius.W', 'gregorius.w@gmail.com'),
(16, 'coencoenz', 'coencoenz@yahoo.com'),
(15, 'nks_27', 'nks_27@yahoo.com'),
(31, 'Tri Hascaryo', 'j_3has@yahoo.com'),
(32, 'ignatius setiabudi', 'setiabudi@kyokushin.or.id'),
(12, 'Paul SJ', 'paulparno@gmail.com'),
(11, 'Gerry', 'gerry@clc-indonesia.org'),
(34, 'drs Felix Sutandy MH.Kes', 'felsandy2010@yahoo.com'),
(33, 'Wuri Soedjatmiko', 'wuri.soedjatmiko@gmail.com'),
(29, 'Sirius Dely', 'rious.delie@gmail.com'),
(28, 'Ibra', 'aryonibrahim@gmail.com'),
(27, 'adhi wiraswata', 'adhi.wiraswata@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
