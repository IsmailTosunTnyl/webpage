-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 13, 2022 at 05:08 PM
-- Server version: 8.0.28
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
-- Creation: Feb 08, 2022 at 11:42 PM
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
('en', 'Click Here', 'Education', 'About Me', 'I am an avid software developer trying to improve myself in hardware and software.', 'I studied Computer Engineering, besides I continue to improve myself by taking courses and doing personal projects.For more detailed career information'),
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
-- Creation: Feb 08, 2022 at 11:42 PM
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
('en', 1, 'https://github.com/IsmailTosunTnyl/tictactoe.py/releases/tag/1.0', '#F4DF4EFF', '#949398FF', 'Simple single or 2 players tic tac toe ( x - o - x ) game.', 'Tic Tac Toe'),
('en', 2, 'https://github.com/IsmailTosunTnyl/TTSA', '#0063B2FF', '#9CC3D5F', 'Android app to share or play funny audio files via Whatsapp', 'Totally Serious Sound App'),
('en', 3, 'https://github.com/IsmailTosunTnyl/webpage', '#95DBE5FF', '#078282FF', 'Flask-based website for personal promotion', 'ismailtosun.net'),
('en', 4, 'https://github.com/IsmailTosunTnyl/JustBot', '#F2AA4CFF', '#95DBE5FF', 'Discord bot for fun', 'Discord Bot(Java)'),
('en', 5, 'https://github.com/IsmailTosunTnyl/PyhBot', '#006B38FF', '#F2AA4CFF', 'Discord bot for fun-2', 'Discord Bot(Python)'),
('en', 6, 'https://github.com/biz-meFutures/carGoo', '#FC766AFF', '#006B38FF', 'Competition project prepared for StarHack 2021', 'CarGoo'),
('en', 7, 'https://github.com/IsmailTosunTnyl/carGooSimulation', '#F9A12EFF', '#FC766AFF', 'Simple simulation application written for the CarGoo project', 'CarGoo Simulation'),
('en', 8, 'https://github.com/IsmailTosunTnyl/Pythagorean-Triplets-multiprocces-BruteForce-/blob/master/main.py', '#95DBE5FF', '#F9A12EFF', 'Calculates possible Pythagorean triangles', 'Multiprocess'),
('tr', 1, 'https://github.com/IsmailTosunTnyl/tictactoe.py/releases/tag/1.0', '#F4DF4EFF', '#949398FF', 'Basit tek veya 2 kişilik tic tac toe ( x - o - x ) oyunu.', 'Tic Tac Toe'),
('tr', 2, 'https://github.com/IsmailTosunTnyl/TTSA', '#0063B2FF', '#9CC3D5F', 'Eğlenceli ses dosyalarını Whatsapp üzerinden paylaşmak veya direkt oynatmak için android uygulaması', 'Totally Serious Sound App'),
('tr', 3, 'https://github.com/IsmailTosunTnyl/webpage', '#95DBE5FF', '#078282FF', 'Kişisel tanıtım amaçlı Flask tabanlı web sitesi', 'ismailtosun.net'),
('tr', 4, 'https://github.com/IsmailTosunTnyl/JustBot', '#F2AA4CFF', '#95DBE5FF', 'Eğlence amaçlı Discord botu', 'Discord Bot(Java)'),
('tr', 5, 'https://github.com/IsmailTosunTnyl/PyhBot', '#006B38FF', '#F2AA4CFF', 'Eğlence amaçlı Discord botu-2', 'Discord Bot(Python)'),
('tr', 6, 'https://github.com/biz-meFutures/carGoo', '#FC766AFF', '#006B38FF', 'StarHack 2021 için hazırlanmış yarışma projesi', 'CarGoo'),
('tr', 7, 'https://github.com/IsmailTosunTnyl/carGooSimulation', '#F9A12EFF', '#FC766AFF', 'CarGoo projesi için yazılmış basit simulasyon uygulaması', 'CarGoo Simulation'),
('tr', 8, 'https://github.com/IsmailTosunTnyl/Pythagorean-Triplets-multiprocces-BruteForce-/blob/master/main.py', '#95DBE5FF', '#F9A12EFF', 'Olabilecek Pisagor üçgenlerini hesaplar', 'Multiprocess');

-- --------------------------------------------------------

--
-- Table structure for table `app_sub`
--
-- Creation: Feb 08, 2022 at 11:42 PM
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
('tr', 2, '#9CC3D5FF', '#FFFFFF', 'Eğlenceli !', 'TSSA.jpg', 'Java ile yazıldı. Olabildiğince en güncel android özelliklerini kullanmak ve öğrenmek için yazdığım bir uygulama', '#000000'),
('tr', 2, '#9CC3D5FF', '#FFFFFF', 'Eksikler', 'TSSA.jpg', 'Yeni sürüm android versiyonları ile ses paylaşım özelliği çalışmıyor güncelleme ile kolayca çözülebilecek bir durum ayrıca kullanıcıya kendine özel ses dosyası ekleme fonksiyonu gerekli', '#000000'),
('tr', 3, '#339E66FF', '#FFFFFF', 'Dizayn', 'webpage1.png', 'Genel olarak sade-basit bir tasarım kullandım, site içeriğinin büyük bir kısmı hazır templatelerden oluşmaktadır bunun en büyük sebebi tasarım konusunda yetnekli olmamam:(', '#000000'),
('tr', 3, '#9CC3D5F', '#FFFFFF', 'Arkaplan', 'webpage2.png', 'Python ile Flask üzerine yazıldı, database olarak dynamoDB ile yazmaya başladım daha sonra Mysql\'e geçiş yaptım, bunun en büyük sebebi farklı şekillerde siteyi host etmeyi denemem olmasıdır.', '#000000'),
('tr', 3, '#339E66FF', '#FFFFFF', 'Hosting', 'webpage3.png', 'İlk olarak kendim Raspberry Pi 4 üzerinde hostlamayı denedim ancak CGNAT arkasında olduğumu öğrenmem ile 1.deneme başarısız oldu, daha sonra AWS üzerinde EC2 Ubunutu server ve Apache kullanarak bir süre hostlamayı başardım.', '#000000'),
('tr', 3, '#9CC3D5F', '#FFFFFF', 'Hosting-2', 'webpage3.png', 'Güncelleme yapmak zor olduğu için (daha önemlisi Docker kullanmayı öğrenmek istediğim için) web sitesini ve Database\'i container haline getirdim docker-compose dosyasını Github sayfasında bulabilirsiniz', '#000000'),
('tr', 4, '#101820FF', '#FFFFFF', 'Yarım', 'jda1.png', 'Discord API kullanarak java ile yazıldı, o dönemki yoğunluğumdan dolayı fazla geliştiremeden bıraktım ancak bu versiyonu dahi çalışır halde', '#FFFFFF'),
('tr', 4, '#990011FF', '#FFFFFF', 'Hosting', 'heroku.png', 'Kısa çalışma süresince Heroku üzerinden hostladım', '#FFFFFF'),
('tr', 5, '#101820FF', '#FFFFFF', 'Çalışır Halde', 'discordpy.png', 'Önceki java ile yapılan projenin tamamlanmış hali, database\'e eklenen ses dosyalarını çalabilen, puan takibi yapabilen discord botu', '#FFFFFF'),
('tr', 5, '#00539CFF', '#FFFFFF', 'Hosting', 'firebase.jpg', 'Host servisi olarak Heroku database olarak ise Firebase kullandım, Heroku\'nun free servisi elverdiğince hala çalışmaktadır', '#FFFFFF'),
('tr', 6, '#B0B8B4FF', '#FFFFFF', 'Kazandı!!', 'cargoo.png', 'Elektrikli araçlarla paylışımlı kargo taşımacılığı konusunda yapılmış bir proje, Hackaton kazanması ekibimizi mutlu etti', '#FFFFFF'),
('tr', 6, '#184A45FF', '#FFFFFF', 'Bitmedi', 'starhack.png', 'Sadece 24 saat içinde tüm projenin planlanması ve çalışır hale getirilmesi mümkün olamayacağı için birçok fonksiyonu eksik belki ekip olarak tamamlarız', '#FFFFFF'),
('tr', 7, '#F6EA7BFF', '#000000', 'Deneysel', 'cargoo.png', 'CarGoo uygulaması için gerçek dünya koşullarında gerekenleri hesaplamak için yazılmış bir simulasyon', '#000000'),
('tr', 8, '#078282FF', '#000000', 'Hızlı', 'multiprocess.jpg', 'Python ile yazıldı ve multiprocessing kütüphanesi kullanıldı, Deneme-yanılma ile olabailecek pisagor üçgenlerini hesaplar sistemdeki CPU sayısına göre kendini optimize eder', '#000000'),
('en', 1, '#949398FF', '#FFFFFF', 'Plug and  Play!', 'tictactoe.png', 'Written in Python. A game I tried to write as simple as possible, my main goal was to made working desktop application using the pygame library, I think I did what I wanted for this project...', '#000000'),
('en', 1, '#949398FF', '#FFFFFF', 'Deficiencies', 'tictactoe.png', 'I want to add an algorithm that can be considered artificial intelligence that I learned while writing the game. With the Min-Max algorithm, it is possible to add an invincible artificial player to the game, the current AI player only makes random moves.', '#000000'),
('en', 2, '#9CC3D5FF', '#FFFFFF', 'Fun !', 'TSSA.jpg', 'Written in Java. An application I wrote to use and learn the most up-to-date android features as possible.', '#000000'),
('en', 2, '#9CC3D5FF', '#FFFFFF', 'Deficiencies', 'TSSA.jpg', 'The sound sharing feature does not work with the new android versions, a situation that can be easily solved with an update, and the user needs the function of adding a special sound file.', '#000000'),
('en', 3, '#339E66FF', '#FFFFFF', 'Design', 'webpage1.png', 'In general, I used a plain-simple design, most of the site content consists of free templates, the biggest reason for this is that I am not good at design :(', '#000000'),
('en', 3, '#9CC3D5F', '#FFFFFF', 'Backend', 'webpage2.png', 'It was written in  Python using  Flask framework, I started writing with dynamoDB as a database, then I switched to Mysql, the biggest reason for this is that I tried to host the site in different ways.', '#000000'),
('en', 3, '#339E66FF', '#FFFFFF', 'Hosting', 'webpage3.png', 'First I tried to host it myself on Raspberry Pi 4, but the 1st attempt failed when I learned that I was behind CGNAT, then I managed to host it for a while using EC2 Ubuntu server and Apache on AWS.', '#000000'),
('en', 3, '#9CC3D5F', '#FFFFFF', 'Hosting-2', 'webpage3.png', 'Since it is difficult to update (more importantly because I want to learn to use Docker) I converted the website and Database into containers. You can find the docker-compose file on the Github page.', '#000000'),
('en', 4, '#101820FF', '#FFFFFF', 'Unfinished', 'jda1.png', 'Written in java using the Discord API, I left it without further development due to my busy schedule at that time even this version is still working but I couldn\'t did what I a want .', '#FFFFFF'),
('en', 4, '#990011FF', '#FFFFFF', 'Hosting', 'heroku.png', 'I used Heroku as hosting provider  during short working time', '#FFFFFF'),
('en', 5, '#101820FF', '#FFFFFF', 'In Operation', 'discordpy.png', 'Completed version of the previous project which written with java, a discord bot that can play the audio files thats added to the database and track scores', '#FFFFFF'),
('en', 5, '#00539CFF', '#FFFFFF', 'Hosting', 'firebase.jpg', 'I used Firebase as database and Heroku a hosting service, Heroku free service still works as much as possible.', '#FFFFFF'),
('en', 6, '#B0B8B4FF', '#FFFFFF', 'Winner!!', 'cargoo.png', 'A project on cargo transportation with  shared  electric vehicles, winning Hackathon made our team happy', '#FFFFFF'),
('en', 6, '#184A45FF', '#FFFFFF', 'Unfinished', 'starhack.png', 'As it is not possible to plan and make the whole project work in just 24 hours this project only have simple functions,\nwe may complete project as a team.', '#FFFFFF'),
('en', 7, '#F6EA7BFF', '#000000', 'Experimental', 'cargoo.png', 'A simulation written for the CarGoo application to calculate the requirements in real world conditions', '#000000'),
('en', 8, '#078282FF', '#000000', 'Fast!!', 'multiprocess.jpg', 'Written in Python and used a multiprocessing library, it calculates possible pythagorean triangles by trial and error, and optimizes itself according to the number of CPUs in the system.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `common`
--
-- Creation: Feb 08, 2022 at 11:42 PM
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
('en', 'My projects', 'Contact', 'About Me', 'Login', 'Home', 'It is the personal website of İsmail Tosun.', 'ismailtosun.net', 'ismailtosun.net', 'Contact information', 'Links', 'Hire Me', 'Work with people who are young, open to learning, self-improving. The button below will direct you to one like this.'),
('tr', 'Uygulamalarım', 'İletişim', 'Hakkımda', 'Giriş Yap', 'Ana Sayfa', 'İsmail Tosun adlı kişinin kişisel web sitesidir.', 'ismailtosun.net', 'ismailtosun.net', 'İletişim Bilgileri', 'Linkler', 'Benimle Çalış', 'Genç, öğrenmeye açık, çalışmak isteyen insanlarla çalışın. Aşağıdaki buton sizi böyle birine yönlendirecek');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--
-- Creation: Feb 08, 2022 at 11:42 PM
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
  `contact_form_name_error` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_flash_success` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_flash_failure` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`language`, `contact_form_name`, `mail_appeal`, `mail_subtitle`, `contact_form_content`, `contact_adresstitle`, `mail_subject`, `contact_form_email_error`, `contact_form_content_error`, `mail_title`, `mail_footer`, `contact_form_email`, `contact_title`, `contact_content`, `contact_form_button`, `contact_form_name_error`, `about_flash_success`, `about_flash_failure`) VALUES
('en', 'Name', 'Dear', 'We have received your feedback, we will get back to you as soon as possible.', 'Message', 'Address', 'Hello...', 'You must enter a valid Email', 'To communicate, you need to forward a message.', 'As Soon As Possible!', 'This e-mail has been sent for informational purposes only.', 'Email', 'Contact Me', 'You can contact me with the form below for all kinds of issues such as opinions, suggestions, requests, questions.', 'Send', 'Please enter a valid name', 'We take your message', 'Something wrong I can feel it, please try again later'),
('tr', 'Isım', 'Sayın', 'Geri bildiriminizi aldık, en yakın zamanda size geri döneceğiz', 'Mesaj', 'Adres', 'Selamlar...', 'Düzgün bir isim girmeniz gerekmekte', 'İletişim kurmak için bir mesaj iletmeniz gerekli', 'En Yakın Zaman !', 'Bu mail  sadece bilgilendirme amaçlı gönderilmiştir', 'Email', 'İletişime Geç', '\"Görüş, öneri, istek, soru gibi her türlü konuda bana aşağıdaki form ile ulaşabilirsiniz', 'Gönder', 'Lütfen geçerli bir isim girin', 'Geri bilgiriminiz alındı, teşekkürler', 'Birşeyler yanlış, lütfen daha sonra tekrar deneyin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `contact_common`
-- (See below for the actual view)
--
CREATE TABLE `contact_common` (
`about_flash_failure` char(255)
,`about_flash_success` char(255)
,`contact_adresstitle` char(255)
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
-- Creation: Feb 08, 2022 at 11:42 PM
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
-- Creation: Feb 08, 2022 at 11:42 PM
-- Last update: Jul 05, 2022 at 02:53 PM
--

CREATE TABLE `form` (
  `id` int NOT NULL,
  `date` datetime DEFAULT NULL,
  `name` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` char(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `content` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `date`, `name`, `email`, `content`) VALUES
(1, NULL, '1', '1', '1'),
(18, '2022-03-09 16:37:50', 'İsmail', 'ismail19991999@gmail.com', 'ssssss'),
(19, '2022-03-15 07:47:32', 'Lavina Naumann', 'lavina@datalist.biz', 'Hello,\n\nIt is with sad regret to inform you that DataList.biz is shutting down. We have made all our databases available for you at a one-time fee.\n\nYou can visit us on DataList.biz\n\nRegards.\nLavina'),
(20, '2022-03-22 03:58:13', 'Ines', 'ines.palmore@gmail.com', 'Good day \r\n \r\nPawSafer™ Can Safely Trim Your Dog\'S Nails In No Time From Home.\r\n\r\nGet it while it\'s still 50% OFF + FREE Shipping\r\n\r\nBuy here: https://pawsafer.shop\r\n \r\nBest Wishes, \r\n \r\nInes'),
(21, '2022-03-23 22:07:50', 'Roland', 'roland.blackston@googlemail.com', 'The ultimate smashing machine! Grinding Coffee Beans, Nuts & Spices in seconds.\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nOrder here: https://aromaonline.store\r\n\r\nRegards,\r\n\r\nRoland\r\nismailtosun.net'),
(22, '2022-03-24 23:43:08', 'Ulrich', 'info@ismailtosun.net', 'Hi \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: https://caredogbest.com\r\n \r\nTo your success, \r\n \r\nUlrich\r\nismailtosun.net'),
(23, '2022-04-14 17:59:43', 'Christina Genders', 'christina@zippyleads.org', 'ZippyLeads.org is running an easter special till the 18th of April.\n\nGet all the leads you need for your company with our easter special.'),
(24, '2022-04-19 21:52:53', 'Ramon Meredith', 'ramon@topdatalist.com', 'Hello.\r\n\r\nIt is with sad regret to inform you TopDataList.com is shutting down.\r\n\r\nWe have made all our databases available for you for a once off fee.\r\n\r\nVisit us on TopDataList.com'),
(25, '2022-05-04 22:46:55', 'Jesse Schell', 'jesse@customdata.info', 'Hello, from CustomData.info we are a provider of unique databases that could help your business.\r\n\r\nPlease visit us at CustomData.info to see if we can help you.\r\n\r\nRegards,\r\nJesse\r\n'),
(26, '2022-05-05 19:44:34', 'Irish', 'heather@groundedseries.com', 'Hello \r\n \r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED \r\n\r\nBuy now: https://thawking.store\r\n \r\nBest Wishes, \r\n \r\nIrish'),
(27, '2022-05-19 16:23:05', 'Vance Kreitmayer', 'vance@topdatalist.com', 'Hi, It is with sad regret to inform you TopDataList.com is shutting down.\r\n\r\nWe are ceasing operations on TopDataList.com and have made our leads available at a $149 once off fee.\r\n\r\nVisit us on TopDataList.com\r\nRegards,\r\nVance'),
(28, '2022-05-19 18:13:45', 'Mohammad Stern', 'mohammad@customdatabases.org', 'Your go-to source for leads. We can provide business to business and business to consumer leads, custom-tailored to your needs.\r\n\r\nCustomDatabases.org'),
(29, '2022-06-02 15:31:17', 'Marcel', 'anamaria.canale@hansaperu.com', 'EASE YOUR PAIN IN 10 MINUTES EFFORTLESSLY\r\n\r\nBe Free from Neck Pain\r\nTry NeckFlexer & Relieve Neck Pain Effortlessly In 10 Min!\r\nSave 50% OFF + FREE Worldwide Shipping\r\n\r\nShop Now: neckflexer.online\r\n\r\nMarcel \r\nismailtosun.net'),
(30, '2022-07-05 17:53:27', 'Nickolas Lennox', 'nickolas@makemysitemobile.com', 'Convert ismailtosun.net to an app with one click!\r\n\r\n80% of users browse websites from their phones. \r\n\r\nHave the App send out push notifications without any extra marketing costs!\r\n\r\nMakeMySiteMobile.com\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `index`
--
-- Creation: Feb 08, 2022 at 11:42 PM
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
('en', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', '\"I\'m still learning, don\'t be fooled by the big title'),
('tr', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', 'Öğrenmeye devam ediyorum büyük başlığa aldanmayın');

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
-- Creation: Feb 08, 2022 at 11:42 PM
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
(1, 'en', 'Full Stack Developer<br>'),
(1, 'tr', '\\\"Full Stack Developer <br>\"'),
(2, 'en', 'Backend Developer \\\\n'),
(2, 'tr', 'Backend Developer \\\\n'),
(3, 'en', 'developer?'),
(3, 'tr', 'developer?');

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
-- Table structure for table `my_projects`
--
-- Creation: Feb 08, 2022 at 11:42 PM
--

CREATE TABLE `my_projects` (
  `language` char(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `title` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sub_title` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `my_projects`
--

INSERT INTO `my_projects` (`language`, `title`, `sub_title`) VALUES
('en', 'My Works', 'On this page, you can find brief information about the projects I have done, continue to do or have given up. You can find the source code by clicking the title(mostly)'),
('tr', 'Çalışmalarım', 'Bu sayfada yaptığım, yapmaya devam ettiğim yada yapmaktan vazgeçtiğim projeler hakkında kısa bilgiler bulabilirsiniz. Proje başlığına tıklayarak kaynak koduna erişebilirsiniz(çoğunlukla) ');

-- --------------------------------------------------------

--
-- Stand-in structure for view `my_project_common`
-- (See below for the actual view)
--
CREATE TABLE `my_project_common` (
`footer_contact` char(255)
,`footer_links` char(255)
,`footer_text` char(255)
,`footer_title` char(255)
,`index_hireus` char(255)
,`index_hireus_text` char(255)
,`language` char(100)
,`navbar_about` char(255)
,`navbar_apps` char(255)
,`navbar_contact` char(255)
,`navbar_home` char(255)
,`navbar_login` char(255)
,`navbar_pageTitle` char(255)
,`sub_title` longtext
,`title` char(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `soon`
--
-- Creation: Feb 08, 2022 at 11:42 PM
--

CREATE TABLE `soon` (
  `language` char(20) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `link_to_home` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` char(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `soon`
--

INSERT INTO `soon` (`language`, `link_to_home`, `title`) VALUES
('en', 'Return the Home Page', 'Added to the to-do list (I hope so).'),
('tr', 'Ana Sayfaya dön', 'Yakında yapılacaklar listesine eklendi (umarım).');

-- --------------------------------------------------------

--
-- Structure for view `about_common`
--
DROP TABLE IF EXISTS `about_common`;
-- Creation: Feb 08, 2022 at 11:42 PM
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `about_common`  AS SELECT `about`.`language` AS `language`, `about`.`about_small_content_link` AS `about_small_content_link`, `about`.`about_small_title` AS `about_small_title`, `about`.`about_big_title` AS `about_big_title`, `about`.`about_big_content` AS `about_big_content`, `about`.`about_small_content` AS `about_small_content`, `common`.`navbar_apps` AS `navbar_apps`, `common`.`navbar_contact` AS `navbar_contact`, `common`.`navbar_about` AS `navbar_about`, `common`.`navbar_login` AS `navbar_login`, `common`.`navbar_home` AS `navbar_home`, `common`.`footer_text` AS `footer_text`, `common`.`footer_title` AS `footer_title`, `common`.`navbar_pageTitle` AS `navbar_pageTitle`, `common`.`footer_contact` AS `footer_contact`, `common`.`footer_links` AS `footer_links`, `common`.`index_hireus` AS `index_hireus`, `common`.`index_hireus_text` AS `index_hireus_text` FROM (`about` join `common` on((`about`.`language` = `common`.`language`))) ;

-- --------------------------------------------------------

--
-- Structure for view `contact_common`
--
DROP TABLE IF EXISTS `contact_common`;
-- Creation: Feb 08, 2022 at 11:42 PM
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `contact_common`  AS SELECT `contact`.`language` AS `language`, `contact`.`contact_form_name` AS `contact_form_name`, `contact`.`mail_appeal` AS `mail_appeal`, `contact`.`mail_subtitle` AS `mail_subtitle`, `contact`.`contact_form_content` AS `contact_form_content`, `contact`.`contact_adresstitle` AS `contact_adresstitle`, `contact`.`mail_subject` AS `mail_subject`, `contact`.`contact_form_email_error` AS `contact_form_email_error`, `contact`.`contact_form_content_error` AS `contact_form_content_error`, `contact`.`mail_title` AS `mail_title`, `contact`.`mail_footer` AS `mail_footer`, `contact`.`contact_form_email` AS `contact_form_email`, `contact`.`contact_title` AS `contact_title`, `contact`.`contact_content` AS `contact_content`, `contact`.`contact_form_button` AS `contact_form_button`, `contact`.`contact_form_name_error` AS `contact_form_name_error`, `contact`.`about_flash_success` AS `about_flash_success`, `contact`.`about_flash_failure` AS `about_flash_failure`, `common`.`navbar_apps` AS `navbar_apps`, `common`.`navbar_contact` AS `navbar_contact`, `common`.`navbar_about` AS `navbar_about`, `common`.`navbar_login` AS `navbar_login`, `common`.`navbar_home` AS `navbar_home`, `common`.`footer_text` AS `footer_text`, `common`.`footer_title` AS `footer_title`, `common`.`navbar_pageTitle` AS `navbar_pageTitle`, `common`.`footer_contact` AS `footer_contact`, `common`.`footer_links` AS `footer_links`, `common`.`index_hireus` AS `index_hireus`, `common`.`index_hireus_text` AS `index_hireus_text` FROM (`contact` join `common` on((`contact`.`language` = `common`.`language`))) ;

-- --------------------------------------------------------

--
-- Structure for view `index_common`
--
DROP TABLE IF EXISTS `index_common`;
-- Creation: Feb 08, 2022 at 11:42 PM
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `index_common`  AS SELECT `index`.`language` AS `language`, `index`.`index_subheader_link` AS `index_subheader_link`, `index`.`index_subheader` AS `index_subheader`, `common`.`navbar_apps` AS `navbar_apps`, `common`.`navbar_contact` AS `navbar_contact`, `common`.`navbar_about` AS `navbar_about`, `common`.`navbar_login` AS `navbar_login`, `common`.`navbar_home` AS `navbar_home`, `common`.`footer_text` AS `footer_text`, `common`.`footer_title` AS `footer_title`, `common`.`navbar_pageTitle` AS `navbar_pageTitle`, `common`.`footer_contact` AS `footer_contact`, `common`.`footer_links` AS `footer_links`, `common`.`index_hireus` AS `index_hireus`, `common`.`index_hireus_text` AS `index_hireus_text` FROM (`index` join `common` on((`index`.`language` = `common`.`language`))) ;

-- --------------------------------------------------------

--
-- Structure for view `myapps_common`
--
DROP TABLE IF EXISTS `myapps_common`;
-- Creation: Feb 08, 2022 at 11:42 PM
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `myapps_common`  AS SELECT `app_common`.`language` AS `language`, `app_common`.`id` AS `id`, `app_common`.`app_link` AS `app_link`, `app_common`.`app_color` AS `app_color`, `app_common`.`app_title_color` AS `app_title_color`, `app_common`.`app_content` AS `app_content`, `app_common`.`app_title` AS `app_title`, `common`.`navbar_apps` AS `navbar_apps`, `common`.`navbar_contact` AS `navbar_contact`, `common`.`navbar_about` AS `navbar_about`, `common`.`navbar_login` AS `navbar_login`, `common`.`navbar_home` AS `navbar_home`, `common`.`footer_text` AS `footer_text`, `common`.`footer_title` AS `footer_title`, `common`.`navbar_pageTitle` AS `navbar_pageTitle`, `common`.`footer_contact` AS `footer_contact`, `common`.`footer_links` AS `footer_links`, `common`.`index_hireus` AS `index_hireus`, `common`.`index_hireus_text` AS `index_hireus_text` FROM (`app_common` join `common` on((`app_common`.`language` = `common`.`language`))) ;

-- --------------------------------------------------------

--
-- Structure for view `my_project_common`
--
DROP TABLE IF EXISTS `my_project_common`;
-- Creation: Feb 08, 2022 at 11:42 PM
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `my_project_common`  AS SELECT `my_projects`.`language` AS `language`, `my_projects`.`title` AS `title`, `my_projects`.`sub_title` AS `sub_title`, `common`.`navbar_apps` AS `navbar_apps`, `common`.`navbar_contact` AS `navbar_contact`, `common`.`navbar_about` AS `navbar_about`, `common`.`navbar_login` AS `navbar_login`, `common`.`navbar_home` AS `navbar_home`, `common`.`footer_text` AS `footer_text`, `common`.`footer_title` AS `footer_title`, `common`.`navbar_pageTitle` AS `navbar_pageTitle`, `common`.`footer_contact` AS `footer_contact`, `common`.`footer_links` AS `footer_links`, `common`.`index_hireus` AS `index_hireus`, `common`.`index_hireus_text` AS `index_hireus_text` FROM (`my_projects` join `common` on((`my_projects`.`language` = `common`.`language`))) ;

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
  ADD PRIMARY KEY (`language`,`id`);

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
-- Indexes for table `my_projects`
--
ALTER TABLE `my_projects`
  ADD PRIMARY KEY (`language`),
  ADD UNIQUE KEY `my_project_language_uindex` (`language`);

--
-- Indexes for table `soon`
--
ALTER TABLE `soon`
  ADD PRIMARY KEY (`language`),
  ADD UNIQUE KEY `soon_language_uindex` (`language`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
