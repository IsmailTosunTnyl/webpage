-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 04, 2022 at 10:35 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WebPage`
--
CREATE DATABASE IF NOT EXISTS `WebPage` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `WebPage`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `language` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `about_small_content_link` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `about_small_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `about_big_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `about_big_content` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `about_small_content` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`language`, `about_small_content_link`, `about_small_title`, `about_big_title`, `about_big_content`, `about_small_content`) VALUES
('en', 'Click Here', 'Education', 'About Me', 'I am an avid software developer trying to improve myself in hardware and software.', 'I studied Computer Engineering, besides, I continue to improve myself by taking courses and doing personal projects.For more detailed career information'),
('tr', 'buraya tıklayın', 'Eğitimim', 'Benim Hakkımda', 'Donanım ve yazılım alanında kendini geliştirmeye çalışan hevesli bir yazılım geliştiricisiyim', 'Bilgisayar Mühendisliği eğitimi aldım, bunun yanı sıra kurslar alarak ve kişisel (nispeten küçük ve deneysel) projelerle kendimi geliştirmeye çalışıyorum. Daha detaylı kariyer bilgisi için                   tıklayın');

-- --------------------------------------------------------

--
-- Stand-in structure for view `about_common`
-- (See below for the actual view)
--
CREATE TABLE `about_common` (
`about_big_content` char(255)
,`about_big_title` char(255)
,`about_small_content` char(255)
,`about_small_content_link` char(255)
,`about_small_title` char(255)
,`footer_contact` char(255)
,`footer_links` char(255)
,`footer_text` char(255)
,`footer_title` char(255)
,`index_hireus` char(255)
,`index_hireus_text` char(255)
,`language` char(255)
,`navbar_about` char(255)
,`navbar_apps` char(255)
,`navbar_contact` char(255)
,`navbar_home` char(255)
,`navbar_login` char(255)
,`navbar_pageTitle` char(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `app_common`
--

CREATE TABLE `app_common` (
  `language` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id` int NOT NULL,
  `app_link` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `app_color` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `app_title_color` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `app_content` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `app_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_common`
--

INSERT INTO `app_common` (`language`, `id`, `app_link`, `app_color`, `app_title_color`, `app_content`, `app_title`) VALUES
('tr', 1, 'https://github.com/IsmailTosunTnyl/tictactoe.py/releases/tag/1.0', '#F4DF4EFF', '#949398FF', 'Basit tek veya 2 kişilik tic tac toe ( x - o - x ) oyunu.', 'Tic Tac Toe'),
('tr', 2, 'https://github.com/IsmailTosunTnyl/TTSA', '#0063B2FF', '#9CC3D5F', 'Eğlenceli ses dosyalarını Whatsapp üzerinden paylaşmak veya direkt oynatmak için android uygulaması', 'Totally Serious Sound App'),
('tr', 3, 'https://github.com/IsmailTosunTnyl/webpage', '#95DBE5FF', '#078282FF', 'Kişisel tanıtım amaçlı Flask tabanlı web sitesi', 'ismailtosun.net'),
('tr', 4, 'https://github.com/IsmailTosunTnyl/JustBot', '#F2AA4CFF', '#95DBE5FF', 'Eğlence amaçlı Discord botu', 'Discord Bot(Java)'),
('tr', 5, 'https://github.com/IsmailTosunTnyl/PyhBot', '#006B38FF', '#F2AA4CFF', 'Eğlence amaçlı Discord botu-2', 'Discord Bot(Python)'),
('tr', 6, 'https://github.com/biz-meFutures/carGoo', '#FC766AFF', '#006B38FF', 'StarHack 2021 için hazırlanmış yarışma projesi', 'CarGoo'),
('tr', 7, 'https://github.com/IsmailTosunTnyl/carGooSimulation', '#F9A12EFF', '#FC766AFF', 'Cargoo projesi için yazılmış basit simulasyon uygulaması', 'CarGoo Simulation'),
('tr', 8, 'https://github.com/IsmailTosunTnyl/Pythagorean-Triplets-multiprocces-BruteForce-/blob/master/main.py', '#95DBE5FF', '#F9A12EFF', 'Olabilecek Pisagor üçgenlerini hesaplar', 'Multiprocess');

-- --------------------------------------------------------

--
-- Table structure for table `app_sub`
--

CREATE TABLE `app_sub` (
  `language` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `id` int NOT NULL,
  `app_background_color` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `app_color` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `app_title` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `app_image` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `app_content` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `app_title_color` char(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_sub`
--

INSERT INTO `app_sub` (`language`, `id`, `app_background_color`, `app_color`, `app_title`, `app_image`, `app_content`, `app_title_color`) VALUES
('tr', 1, '#949398FF', '#FFFFFF', 'Oynaması Basit !', 'tictactoe.png', 'Python ile yazıldı. Olabildiğince basit yapmaya çalıştığım bir oyun, asıl amacım pygame kütüphanesini kullanarak çalışan bir masaüstü uygulama denemesi yapmaktı, bu proje için istediklerimi yaptım sayılır...', '#000000'),
('tr', 1, '#949398FF', '#FFFFFF', 'Eksikler', 'tictactoe.png', 'Oyunu yazarken öğrendiğim yapay zeka sayılabilecek bir algoritmayı eklemek istiyorum. Min-Max algoritması ile oyuna yenilmesi imkansız bir yapay oyuncu eklemek mümkün, şuanki oyuncu sadece rastgele hamleler yapıyor.', '#000000'),
('tr', 2, '#9CC3D5FF', '#FFFFFF', 'Eğlenceli !', 'TSSA.jpg', 'Java ile yazıldı. Olabildiğince en güncel android özelliklerini kullanmak için yazdığım bir uygulama', '#000000'),
('tr', 2, '#9CC3D5FF', '#FFFFFF', 'Eksikler', 'TSSA.jpg', 'Yeni sürüm android versiyonları ile ses paylaşım özelliği çalışmıyor güncelleme ile kolayca çözülebilecek bir durum ayrıca kullanıcıya kendine özel ses dosyası ekleme fonksiyonu gerekli', '#000000'),
('tr', 3, '#339E66FF', '#FFFFFF', 'Dizayn', 'webpage1.png', 'Genel olarak sade-basit bir tasarım kullandım, site içeriğinin büyük bir kısmı hazır templatelerden oluşmaktadır bunun en büyük sebebi tasarım konusunda yenekti olmamam:(', '#000000'),
('tr', 3, '#9CC3D5F', '#FFFFFF', 'Arkaplan', 'webpage2.png', 'Python ile Flask üzerine yazıldı, database olarak dynamoDB ile yazmaya başladım daha sonra Mysql\'e geçiş yaptım, bunun en büyük sebebi farklı şekillerde siteyi host etmeyi denemem olmasıdır.', '#000000'),
('tr', 3, '#339E66FF', '#FFFFFF', 'Host', 'webpage3.png', 'İlk olarak kendim Raspberry Pi 4 üzerinde hostlamayı denedim ancak CGNAT arkasında olduğumu öğrenmem ile 1.deneme başarısız oldu, daha sonra AWS üzerinde EC2 Ubunutu server ve Apache kullanarak bir süre hostlamayı başardım.', '#000000'),
('tr', 3, '#9CC3D5F', '#FFFFFF', 'Host-2', 'webpage3.png', 'Güncelleme yapmak zor olduğu için (daha önemlisi Docker kullanmayı öğrenmek istediğim için) web sitesini ve Database\'i container haline getirdim docker-compose dosyasını Github sayfasında bulabilirsiniz', '#000000'),
('tr', 4, '#101820FF', '#FFFFFF', 'Yarım', 'jda1.png', 'Discord API kullanarak java ile yazıldı, o dönemki yoğunluğumdan dolayı fazla geliştiremeden bıraktım ancak bu versiyonu dahi çalışır halde', '#FFFFFF'),
('tr', 4, '#990011FF', '#FFFFFF', 'Host', 'heroku.png', 'Kısa çalışma süresince Heroku üzerinden hostladım', '#FFFFFF'),
('tr', 5, '#101820FF', '#FFFFFF', 'Çalışır Halde', 'discordpy.png', 'Önceki java ile yapılan projenin tamamlanmış hali, database\'e eklenen ses dosyalarını çalabilen, puan takibi yapabilen discord botu', '#FFFFFF'),
('tr', 5, '#00539CFF', '#FFFFFF', 'Host', 'firebase.jpg', 'Host servisi olarak Heroku database olarak ise Firebase kullandım, Heroku\'nun free servisi elverdiğince hala çalışmaktadır', '#FFFFFF'),
('tr', 6, '#B0B8B4FF', '#FFFFFF', 'Kazandı!!', 'cargoo.png', 'Elektrikli araçlarla paylışımlı kargo taşımacılığı konusunda yapılmış bir proje, Hackaton kazanması ekibimizi mutlu etti', '#FFFFFF'),
('tr', 6, '#184A45FF', '#FFFFFF', 'Bitmedi', 'starhack.png', 'Sadece 24 saat içinde tüm projenin planlanması ve çalışır hale getirilmesi mümkün olamayacağı için birçok fonksiyonu eksik belki ekip olarak tamamlarız', '#FFFFFF'),
('tr', 7, '#F6EA7BFF', '#000000', 'Deneysel', 'cargoo.png', 'CarGoo uygulaması için gerçek dünya koşullarında gerekenleri hesaplamak için yazılmış bir simulasyon', '#000000'),
('tr', 8, '#078282FF', '#000000', 'Hızlı', 'multiprocess.jpg', 'Python ile yazılmış multiprocessing kütüphanesi kullanıldı, Deneme-yanılma ile olabailecek pisagor üçgenlerini hesaplar sistemdeki CPU sayısına göre kendini optimize eder', '#000000');

-- --------------------------------------------------------

--
-- Table structure for table `common`
--

CREATE TABLE `common` (
  `language` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `navbar_apps` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `navbar_contact` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `navbar_about` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `navbar_login` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `navbar_home` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `footer_text` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `footer_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `navbar_pageTitle` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `footer_contact` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `footer_links` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `index_hireus` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `index_hireus_text` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `common`
--

INSERT INTO `common` (`language`, `navbar_apps`, `navbar_contact`, `navbar_about`, `navbar_login`, `navbar_home`, `footer_text`, `footer_title`, `navbar_pageTitle`, `footer_contact`, `footer_links`, `index_hireus`, `index_hireus_text`) VALUES
('en', 'My Apps', 'Contact', 'About Me', 'Login', 'Home', 'It is the personal website of İsmail Tosun.', 'ismailtosun.net', 'ismailtosun.net', 'Contact information', 'Links', 'Hire Me', 'Work with people who are young, open to learning, self-improving. The button below will direct you to one like this.'),
('tr', 'Uygulamalarım', 'İletişim', 'Hakkımda', 'Giriş Yap', 'Ana Sayfa', 'İsmail Tosun adlı kişinin kişisel web sitesidir.', 'ismailtosun.net', 'ismailtosun.net', 'İletişim Bilgileri', 'Linkler', 'Benimle Çalış', 'Genç, öğrenmeye açık, çalışmak isteyen insanlarla çalışın. Aşağıdaki buton sizi böyle birine yönlendirecek');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `language` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_form_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mail_appeal` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mail_subtitle` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_form_content` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_adresstitle` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mail_subject` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_form_email_error` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_form_content_error` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mail_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mail_footer` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_form_email` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_content` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_form_button` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact_form_name_error` char(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`language`, `contact_form_name`, `mail_appeal`, `mail_subtitle`, `contact_form_content`, `contact_adresstitle`, `mail_subject`, `contact_form_email_error`, `contact_form_content_error`, `mail_title`, `mail_footer`, `contact_form_email`, `contact_title`, `contact_content`, `contact_form_button`, `contact_form_name_error`) VALUES
('en', 'Name', 'Dear', 'We have received your feedback, we will get back to you as soon as possible.', 'Message', 'Address', 'Hello...', 'You must enter a valid Email', 'To communicate, you need to forward a message.', 'As Soon As Possible!', 'This e-mail has been sent for informational purposes only.', 'Email', 'Contact Me', 'You can contact me with the form below for all kinds of issues such as opinions, suggestions, requests, questions.', 'Send', 'Please enter a valid name'),
('tr', 'Isım', 'Sayın', 'Geri bildiriminizi aldık, en yakın zamanda size geri döneceğiz', 'Mesaj', 'Adres', 'Selamlar...', 'Düzgün bir isim girmeniz gerekmekte', 'İletişim kurmak için bir mesaj iletmeniz gerekli', 'En Yakın Zaman !', 'Bu mail  sadece bilgilendirme amaçlı gönderilmiştir', 'Email', 'İletişime Geç', '\"Görüş, öneri, istek, soru gibi her türlü konuda bana aşağıdaki form ile ulaşabilirsiniz', 'Gönder', 'Lütfen geçerli bir isim girin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `contact_common`
-- (See below for the actual view)
--
CREATE TABLE `contact_common` (
`contact_adresstitle` char(255)
,`contact_content` char(255)
,`contact_form_button` char(255)
,`contact_form_content` char(255)
,`contact_form_content_error` char(255)
,`contact_form_email` char(255)
,`contact_form_email_error` char(255)
,`contact_form_name` char(255)
,`contact_form_name_error` char(100)
,`contact_title` char(255)
,`footer_contact` char(255)
,`footer_links` char(255)
,`footer_text` char(255)
,`footer_title` char(255)
,`index_hireus` char(255)
,`index_hireus_text` char(255)
,`language` char(255)
,`mail_appeal` char(255)
,`mail_footer` char(255)
,`mail_subject` char(255)
,`mail_subtitle` char(255)
,`mail_title` char(255)
,`navbar_about` char(255)
,`navbar_apps` char(255)
,`navbar_contact` char(255)
,`navbar_home` char(255)
,`navbar_login` char(255)
,`navbar_pageTitle` char(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `error`
--

CREATE TABLE `error` (
  `language` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `404_linktohome` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `404_title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `error`
--

INSERT INTO `error` (`language`, `404_linktohome`, `404_title`) VALUES
('en', 'Return the Home Page', 'The page you want to go to was not found or could not be loaded, I don\'t really know :('),
('tr', 'Ana Sayfaya dön', 'Gitmek istediğiniz sayfa bulunamadı yada yüklenemedi bilmiyorum :(');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `name` char(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` char(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `content` char(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `date`, `name`, `email`, `content`) VALUES
(1, NULL, '1', '1', '1'),
(2, NULL, 'ALİ', 'ALİ@', 'ASFASASBJKASDBJKSDJK'),
(4, '2022-02-02 00:28:20', 'veli', 'aasdasd', 'conansd'),
(5, '2022-02-02 00:29:56', 'İsmail', 'ismail19991999@gmail.com', 'jkasdhjkasdbjkasdjk'),
(6, '2022-02-02 02:10:38', 'İsmail', 'ismail19991999@gmail.com', 'dasdasdasdas');

-- --------------------------------------------------------

--
-- Table structure for table `index`
--

CREATE TABLE `index` (
  `language` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `index_subheader_link` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `index_subheader` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `index`
--

INSERT INTO `index` (`language`, `index_subheader_link`, `index_subheader`) VALUES
('en', 'https://www.youtube.com/watch?v=Ef7nUOJQA3k', '\"I\'m still learning, don\'t be fooled by the big title'),
('tr', 'https://www.youtube.com/watch?v=Ef7nUOJQA3k', 'Öğrenmeye devam ediyorum büyük başlığa aldanmayın');

-- --------------------------------------------------------

--
-- Stand-in structure for view `index_common`
-- (See below for the actual view)
--
CREATE TABLE `index_common` (
`footer_contact` char(255)
,`footer_links` char(255)
,`footer_text` char(255)
,`footer_title` char(255)
,`index_hireus` char(255)
,`index_hireus_text` char(255)
,`index_subheader` char(255)
,`index_subheader_link` char(255)
,`language` char(255)
,`navbar_about` char(255)
,`navbar_apps` char(255)
,`navbar_contact` char(255)
,`navbar_home` char(255)
,`navbar_login` char(255)
,`navbar_pageTitle` char(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `index_header_list`
--

CREATE TABLE `index_header_list` (
  `id` int NOT NULL,
  `language` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sentences` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `index_header_list`
--

INSERT INTO `index_header_list` (`id`, `language`, `sentences`) VALUES
(1, 'en', 'Web application developer\\\\n'),
(1, 'tr', '\\\"Web  uygulama  developer\\\\n\\\"'),
(2, 'en', 'Backend developer <br>'),
(2, 'tr', 'Backend developer <br>'),
(3, 'en', 'Amele'),
(3, 'tr', 'Amele');

-- --------------------------------------------------------

--
-- Stand-in structure for view `myapps_common`
-- (See below for the actual view)
--
CREATE TABLE `myapps_common` (
`app_color` char(255)
,`app_content` char(255)
,`app_link` char(255)
,`app_title` char(255)
,`app_title_color` char(255)
,`footer_contact` char(255)
,`footer_links` char(255)
,`footer_text` char(255)
,`footer_title` char(255)
,`id` int
,`index_hireus` char(255)
,`index_hireus_text` char(255)
,`language` char(255)
,`navbar_about` char(255)
,`navbar_apps` char(255)
,`navbar_contact` char(255)
,`navbar_home` char(255)
,`navbar_login` char(255)
,`navbar_pageTitle` char(255)
);

-- --------------------------------------------------------

--
-- Structure for view `about_common`
--
DROP TABLE IF EXISTS `about_common`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `about_common`  AS SELECT `about`.`language` AS `language`, `about`.`about_small_content_link` AS `about_small_content_link`, `about`.`about_small_title` AS `about_small_title`, `about`.`about_big_title` AS `about_big_title`, `about`.`about_big_content` AS `about_big_content`, `about`.`about_small_content` AS `about_small_content`, `common`.`navbar_apps` AS `navbar_apps`, `common`.`navbar_contact` AS `navbar_contact`, `common`.`navbar_about` AS `navbar_about`, `common`.`navbar_login` AS `navbar_login`, `common`.`navbar_home` AS `navbar_home`, `common`.`footer_text` AS `footer_text`, `common`.`footer_title` AS `footer_title`, `common`.`navbar_pageTitle` AS `navbar_pageTitle`, `common`.`footer_contact` AS `footer_contact`, `common`.`footer_links` AS `footer_links`, `common`.`index_hireus` AS `index_hireus`, `common`.`index_hireus_text` AS `index_hireus_text` FROM (`about` join `common` on((`about`.`language` = `common`.`language`))) ;

-- --------------------------------------------------------

--
-- Structure for view `contact_common`
--
DROP TABLE IF EXISTS `contact_common`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `contact_common`  AS SELECT `contact`.`language` AS `language`, `contact`.`contact_form_name` AS `contact_form_name`, `contact`.`mail_appeal` AS `mail_appeal`, `contact`.`mail_subtitle` AS `mail_subtitle`, `contact`.`contact_form_content` AS `contact_form_content`, `contact`.`contact_adresstitle` AS `contact_adresstitle`, `contact`.`mail_subject` AS `mail_subject`, `contact`.`contact_form_email_error` AS `contact_form_email_error`, `contact`.`contact_form_content_error` AS `contact_form_content_error`, `contact`.`mail_title` AS `mail_title`, `contact`.`mail_footer` AS `mail_footer`, `contact`.`contact_form_email` AS `contact_form_email`, `contact`.`contact_title` AS `contact_title`, `contact`.`contact_content` AS `contact_content`, `contact`.`contact_form_button` AS `contact_form_button`, `contact`.`contact_form_name_error` AS `contact_form_name_error`, `common`.`navbar_apps` AS `navbar_apps`, `common`.`navbar_contact` AS `navbar_contact`, `common`.`navbar_about` AS `navbar_about`, `common`.`navbar_login` AS `navbar_login`, `common`.`navbar_home` AS `navbar_home`, `common`.`footer_text` AS `footer_text`, `common`.`footer_title` AS `footer_title`, `common`.`navbar_pageTitle` AS `navbar_pageTitle`, `common`.`footer_contact` AS `footer_contact`, `common`.`footer_links` AS `footer_links`, `common`.`index_hireus` AS `index_hireus`, `common`.`index_hireus_text` AS `index_hireus_text` FROM (`contact` join `common` on((`contact`.`language` = `common`.`language`))) ;

-- --------------------------------------------------------

--
-- Structure for view `index_common`
--
DROP TABLE IF EXISTS `index_common`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `index_common`  AS SELECT `index`.`language` AS `language`, `index`.`index_subheader_link` AS `index_subheader_link`, `index`.`index_subheader` AS `index_subheader`, `common`.`navbar_apps` AS `navbar_apps`, `common`.`navbar_contact` AS `navbar_contact`, `common`.`navbar_about` AS `navbar_about`, `common`.`navbar_login` AS `navbar_login`, `common`.`navbar_home` AS `navbar_home`, `common`.`footer_text` AS `footer_text`, `common`.`footer_title` AS `footer_title`, `common`.`navbar_pageTitle` AS `navbar_pageTitle`, `common`.`footer_contact` AS `footer_contact`, `common`.`footer_links` AS `footer_links`, `common`.`index_hireus` AS `index_hireus`, `common`.`index_hireus_text` AS `index_hireus_text` FROM (`index` join `common` on((`index`.`language` = `common`.`language`))) ;

-- --------------------------------------------------------

--
-- Structure for view `myapps_common`
--
DROP TABLE IF EXISTS `myapps_common`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `myapps_common`  AS SELECT `app_common`.`language` AS `language`, `app_common`.`id` AS `id`, `app_common`.`app_link` AS `app_link`, `app_common`.`app_color` AS `app_color`, `app_common`.`app_title_color` AS `app_title_color`, `app_common`.`app_content` AS `app_content`, `app_common`.`app_title` AS `app_title`, `common`.`navbar_apps` AS `navbar_apps`, `common`.`navbar_contact` AS `navbar_contact`, `common`.`navbar_about` AS `navbar_about`, `common`.`navbar_login` AS `navbar_login`, `common`.`navbar_home` AS `navbar_home`, `common`.`footer_text` AS `footer_text`, `common`.`footer_title` AS `footer_title`, `common`.`navbar_pageTitle` AS `navbar_pageTitle`, `common`.`footer_contact` AS `footer_contact`, `common`.`footer_links` AS `footer_links`, `common`.`index_hireus` AS `index_hireus`, `common`.`index_hireus_text` AS `index_hireus_text` FROM (`app_common` join `common` on((`app_common`.`language` = `common`.`language`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`language`);

--
-- Indexes for table `app_common`
--
ALTER TABLE `app_common`
  ADD PRIMARY KEY (`language`,`id`),
  ADD UNIQUE KEY `app_common_id_uindex` (`id`);

--
-- Indexes for table `app_sub`
--
ALTER TABLE `app_sub`
  ADD KEY `app_sub_language_index` (`language`);

--
-- Indexes for table `common`
--
ALTER TABLE `common`
  ADD PRIMARY KEY (`language`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`language`);

--
-- Indexes for table `error`
--
ALTER TABLE `error`
  ADD PRIMARY KEY (`language`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form_id_uindex` (`id`);

--
-- Indexes for table `index`
--
ALTER TABLE `index`
  ADD PRIMARY KEY (`language`);

--
-- Indexes for table `index_header_list`
--
ALTER TABLE `index_header_list`
  ADD PRIMARY KEY (`id`,`language`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
