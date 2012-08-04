-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 28, 2012 at 11:18 AM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clc_id_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `clcers_id` int(11) NOT NULL,
  PRIMARY KEY (`clcers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `contributors`
--

CREATE TABLE IF NOT EXISTS `contributors` (
  `nama_lengkap` varchar(100) NOT NULL,
  `clcers_id` int(11) NOT NULL,
  PRIMARY KEY (`clcers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contributors`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `permalink`, `body`, `status`, `clcers_id`, `categories_id`, `image`, `created`, `modified`) VALUES
(2, 'A Saint Who Lives in Complete Activity', 'A-Saint-Who-Lives-in-Complete-Activity', '<blockquote>The Ignatian man ought to be a saint and he ought to live in complete activity. Previous spirituality opposed these two aspects. Activity seemed to be an obstacle to holiness which was conceived as contemplation. The revolution accomplished by St. Ignatius showed that that which appeared to be an obstacle could become a means. To the heart filled with God, all things speak of Him.</blockquote>\n<p>Jean Danielou, SJ</p>', 1, 1, 1, 'public/media/posts/iggy.jpg', '2012-07-28 11:13:07', '0000-00-00 00:00:00'),
(4, 'A Mother''s Day Prayer', 'A-Mothers-Day-Prayer', '<p>Dear Para Ibu CLC</p>\n<p>Ketika menyiapkan Warta Gereja hari ini, Pastor minta dimuat sesuatu yg cocok untuk Mother&rsquo;s Day. Setelah cari saya temukan di web Creighton Uni ada doa sederhana yg menyentuh kalbu, Selamat Mother''s Day para Ibu.</p>\n<p>dani</p>\n<p>Father in Heaven, I thank you, for my mother I thank you that she gave me life and nurtured me all those years. She gave me my faith, helping me to know You and to know Jesus and His ways. She taught me how to love and how to sacrifice for others.</p>\n<p>She taught me that it was okay to cry and that I should always tell the truth. Bless her with the graces she needs and which You want to give her today. Help her to feel precious in Your eyes today and to know that I love her. Give her strength and courage, compassion and peace.</p>\n<p>Bless her this day with Your love.</p>', 1, 1, 1, 'public/media/posts/mothers_day.png', '2012-07-28 11:02:46', '0000-00-00 00:00:00'),
(5, 'Soegija oleh Wuri Soedjatmiko', 'Soegija-oleh-Wuri-Soedjatmiko', '<p>Teman-teman CLC Ytk., Saya mendahului menshare-kan apa yang saya tangkap dari nonton filem Soegija. Mohon dikomentari dan mari kita diskusikan dan direfleksikan makna apa sebetulnya yang dapat kita ambil dari filem ini.</p>\n<p>Gedung Cinema XXI di Ciputra World--tempat saya nonton--memang memberikan pengumuman bahwa penonton tidak boleh berbicara selama pertunjukan. Tapi saya kira tidak adanya suara bisik2 justru karena penonton terpaku pada apa yang ditayangkan.</p>\n<p>Pertama, filem ini sangat padat. Cuplikan demi cuplikan bergerak menuju ke inti cerita. Latihan koor untuk tahbisan Uskup, doa suster-suster yang diancam mau ditembak, Ling-Ling dan si Englong mewakili kaum Tionghoa, Mariyem yang mewakili perempuan yang sadar gender dan harkat bangsa Indonesia, Suster Belanda yang nyerocos bahasa Jawa mewakili misionaris sejati, si remaja yang hanya bisa membaca ''Merdeka'' mewakili pejuang yang tidak sempat bersekolah.</p>\n<p>Ada Robert yang merasa menjadi mesin perang. Ada Hendrik yang jatuh hati kepada Mariyem, dan Mariyem yang hidup dalam dilema antara jatuh hati kepada Hendrik, tetapi selalu berpikir harga diri sebagai perempuan Jawa yang tidak mau direndahkan.</p>\n<p>Tokoh utama Mgr. Soegija, Uskup Pribumi pertama, sangat kuat. Ia bisa berbahasa Belanda, Bahasa Inggris, Bahasa Jawa dan selalu menulis refleksi. Patriotisme tampak dalam mendukung pertahanan melawan Jepang, melawan penjajahan ulang oleh Belanda, dan yang mendahulukan rakyat daripada para imamnya. Ia yang berani menolak ancaman Jepang yang mau memaksakan Gereja untuk dijadikan markas tentara Jepang karena Gereja adalah tempat suci. Ia yang meletakkan dasar "100% Katolik dan 100% Indonesia."</p>\n<p>Kepadatan cerita ini bagi banyak orang terasa sebagai loncatan-loncatan atau petikan-petikan yang mengganggu. Bagi orang yang detil, ada kritik tentang &ldquo;apakah dasi zaman itu seperti yang dipakai dalam filem ini? Apakah infus pada jaman itu sudah memakai plastik?&rdquo; Percakapan bahasa Jawa ada yang tidak diberi sub-title, padahal tidak semua penonton mengerti bahasa Jawa kromo. Seharusnya percakapan pakai bahasa Melayu atau Indonesia?</p>\n<p>Sekalipun ada sedikit kritik, terasa sekali keindahan sajian Garin Nugroho ini sebagai penuturan seorang budayawan yang dewasa. Perang merupakan penderitaan bukan hanya bagi yang dijatuhi bom, bagi yang bertahan, tetapi juga bagi kaum muda yang dikirim ke medan perang tanpa tahu tujuan untuk apa mereka harus mengangkat senjata. &ldquo;Kami adalah mesin, dan mesin harus terus berjalan,&rdquo; kata Hendrik. Pada akhirnya sang mesin tergugah hatinya ketika menerima surat ibunya yang tidak dapat tidur setiap mendengar bunyi deru pesawat terbang di atas rumahnya. Tragis sekali ia meninggal masih sebagai mesin.</p>\n<p>Kekuasaan ditunjukkan Hendrik yang menendang sambil menghina seorang yang ditangkap yang disuruh baca namanya tapi tidak bisa. Keadaan berbalik ketika Jepang masuk dan ganti dia yang menunduk ditendang-disepak.</p>\n<p>Nilai seni filem ini juda menonjol. Sebagai sastrawan, seniman dan budayawan, ia menyuguhan humor punokawan melalui Min, ajudan Mgr. Soegija. Seorang batur yang sekaligus berani menasihati majikan, membuat penonton gerrr berulang-ulang. Di sela-sela kekerasan perang ada hal-hal manusiawi yang tidak kenal batas musuh yaitu lagu-lagu Belanda yang diindonesiakan, ada latihan koor dan orang-orang pribumi yang sudah berbudaya yang dapat memainkan biola mengantar lagu berbagai bahasa. Ada sindiran-sindiran lewat tokoh anak Ling Ling yang menanyakan mengapa golongannya selalu menjadi korban jarahan, melalui Mgr. Soegija ketika menasihati pemimpin gerilya yang mau masuk politik, tentang situasi Negara masa kini; tetapi semuanya diucapkan sambil lalu. Juga Ling Ling yang selalu menangis merindukan ibunya, tanpa perlu dideskripsikan maupun dikatakan bahwa ibu cantik ini diambil dan dijadikan &ldquo;ianfu&rdquo;.</p>\n<p>Nilai-nilai kemanusiaan dan budaya diangkat tanpa menggurui tapi melalui interpretasi penonton. Meskipun Mgr. Soegija diceritakan mulai dari imam yang naik sepeda ontel, ditahbiskan sebagai Uskup pribumi pertama, sebagai pemimpin umat Katolik yang pejuang, sebagai patriot 100% dan Katolik 100%, dan kemudian dimakamkan, dan judulnya adalah nama Uskup Soegijapranata, filem ini sesungguhnya berkisah tentang hal-hal yang sangat manusiawi: tentang cinta kasih, tentang keadilan, tentang pilihan-pilihan, dan tentang matinya kekuasaan.</p>\n<p>Bagaimana kesan Ibra? bagaimana Rius yang bisa menggalang penonton sampai 1500, saya dengar? yang lain?</p>\n<p>Pak Fadjar... harap bersabar sampai ada DVDnya :-)</p>\n<p>wuri</p>', 1, 1, 1, 'public/media/posts/soegija.jpeg', '2012-07-28 10:52:31', '0000-00-00 00:00:00'),
(6, 'Doa mohon lepas dari kelekatan', 'Doa-mohon-lepas-dari-kelekatan', '<p>Aku mohon ya Allah-ku, Singkirkan segala yang memisahkan Aku dari Engkau, dan Engkau dari aku...</p>\n<p>Singkirkan semua yang membuatku tak berharga Dalam pandangan-Mu, kendali-Mu, penghakiman-Mu, Dari ucapan-Mu dan percakapan-Mu Dari belas kasihan-Mu dan cinta-Mu</p>\n<p>Hindarkanlah aku dari setiap kejahatan, Yang menghalangi penglihatanku kepada-Mu; Mendengar, menghayati, mengecap dan menyentuh-Mu Takut akan dan selalu memikirkan-Mu; Mengenal, mempercayai, mencintai, dan memiliki-Mu; Sadar akan kehadiran-Mu</p>\n<p>Dan, selamanya, menikmati-Mu. Inilah yang kumohon untuk diriku Dan sungguh2 kudambakan dari-Mu. Amen.</p>\n<p>Blessed Peter Faber, SJ (Hearts on Fire, edited by Micheal Harter, SJ)</p>', 1, 1, 1, '', '2012-07-28 11:17:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `spectators`
--

CREATE TABLE IF NOT EXISTS `spectators` (
  `nama_lengkap` varchar(100) NOT NULL,
  `clcers_id` int(11) NOT NULL,
  PRIMARY KEY (`clcers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spectators`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `fk_alumni_users` FOREIGN KEY (`clcers_id`) REFERENCES `clcers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_users1` FOREIGN KEY (`clcers_id`) REFERENCES `clcers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contributors`
--
ALTER TABLE `contributors`
  ADD CONSTRAINT `fk_students_users1` FOREIGN KEY (`clcers_id`) REFERENCES `clcers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `fk_pages_users1` FOREIGN KEY (`clcers_id`) REFERENCES `clcers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_posts_categories1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_users1` FOREIGN KEY (`clcers_id`) REFERENCES `clcers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `spectators`
--
ALTER TABLE `spectators`
  ADD CONSTRAINT `fk_teachers_users1` FOREIGN KEY (`clcers_id`) REFERENCES `clcers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
