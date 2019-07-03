-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2019 at 04:43 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medtouriran`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'left',
  `order` int(11) DEFAULT 1,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `link`, `image`, `created_at`, `updated_at`, `position`, `order`, `icon`) VALUES
(2, ' ', ' Travel like a pro, Live healthy.                                                                                       Let us help you to be healthy', '', 'banners/February2019/14gtK7RVARZPdGqxTgeF.jpg', '2019-01-10 10:12:00', '2019-02-21 12:00:19', 'right', 2, NULL),
(3, '24/7 HOURS SERVICES', 'ALL EMERGENCY CASES ARE HANDLED', '/', 'banners/February2019/fSfjK8vIjxkNKJ2lRlOb.jpg', '2019-01-10 10:31:00', '2019-02-17 14:26:19', 'left', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `icon`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'fa fa-eye', 'Clarity in prices and services', 'The packages contain all details of the services.', '2019-01-04 12:47:00', '2019-01-26 22:00:32'),
(2, 'fa fa-thumbs-up', 'High quality services', 'The services are reviewed by qualified medical tourists.  ', '2019-01-04 12:51:00', '2019-01-27 17:50:18'),
(3, 'fa fa-money', 'Saving money', 'We save up to 70% of your charges for using our services', '2019-01-04 12:52:00', '2019-01-04 12:59:28'),
(4, 'fa fa-map-pin', 'Traceable process', 'we keep your family informed about your status.\n', '2019-01-04 13:03:00', '2019-03-03 11:09:44'),
(5, 'fa fa-edit', 'Flexible packages', 'There are gold/silver/bronze Packages for your convenience\n', '2019-01-04 13:06:00', '2019-01-27 17:46:30'),
(6, 'fa fa-phone', '7/24 Support', 'Medical advisers provide 24/7 support for our customers', '2019-01-04 13:08:00', '2019-01-26 22:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `title`, `slug`, `created_at`, `updated_at`, `body`, `image`, `icon`, `excerpt`) VALUES
(1, NULL, 2, 'Cosmetic', 'Cosmetic', '2018-12-15 19:38:02', '2019-01-26 21:04:41', '<p>In this article we want to consider 7 popular cosmetic surgeries, nose surgery, eyelid surgery, laser skin, hair transplantation, neck lift, face lift, arm lift. In this review you will see photos before and after doing any cosmetic surgery. In this article, along with Lifestyle zoom, we will explore a variety of beauty surgeries.</p>\n<p>Risk for beauty?</p>\n<p>If you read the history of fashion or on the Internet, you know that the first plastic surgery was done in Victorian women. Through cosmetic surgery, women used their lower limbs to achieve a slightly narrower, fashionable age.</p>\n<p>&nbsp;</p>\n<table style=\"width: 1143px;\">\n<tbody>\n<tr>\n<td style=\"width: 425px;\"><img style=\"font-size: 11px; float: left;\" src=\"/storage/categories/January2019/images.jpg\" alt=\"\" width=\"371\" height=\"247\" /></td>\n<td style=\"width: 736px;\">\n<p style=\"font-size: 14px;\">This is a myth. The mortality rate for amputation surgery was very high in the mid-nineteenth century. Considering these complications, it was very difficult to imagine that a person volunteered for a cosmetic surgery.</p>\n<p style=\"font-size: 14px;\">Forearm Surgery: 13%</p>\n<p style=\"font-size: 14px;\">Arm: 52%</p>\n<p style=\"font-size: 14px;\">Leg: 50%</p>\n<p style=\"font-size: 14px;\">Thigh: 85%</p>\n<p style=\"font-size: 14px;\">Once cosmetic surgery was only suitable for rich people. Each year, more than a million Americans look for beautiful surgeons to have a smoother stomach, make their breasts larger or change their nose</p>\n<p style=\"padding-left: 30px;\">&nbsp;</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', 'categories/January2019/NST13oSMBq1Ivi3rsx69.jpg', 'icon-i-dermatology', 'MedtourIran company with the presence of the best plastic surgeons serves the health of tourists from all over the world.'),
(2, NULL, 1, 'Medical', 'Medical', '2018-12-15 19:38:02', '2019-01-26 21:52:20', '', 'categories/January2019/5dvi8Bf0BlDdJFC9PUXP.jpg', 'icon-i-health-services', 'MedtourIran suggests the health tourists to visit Iran and use appropriate medical services at resealable prices.'),
(3, 1, 3, 'Plastic surgery', 'plastic-surgery', '2019-01-03 14:06:54', '2019-02-13 11:17:59', '<p style=\"box-sizing: inherit; margin: 0px 0px 25px; padding: 0px; font-size: 16px; line-height: 1.8; text-rendering: optimizelegibility; font-family: Lora; color: #545353;\"><span style=\"color: #000000;\">&nbsp;</span></p>\n<h1 class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"color: #000000;\">Plastic surgery in Iran</span></h1>\n<p><span style=\"color: #000000;\"><span style=\"font-size: 11.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Ask</span>&nbsp;anyone,&nbsp;<span id=\"602\">what</span>&nbsp;the&nbsp;<span id=\"651\">best</span>&nbsp;country&nbsp;<span id=\"1042-1043\">is</span>&nbsp;to&nbsp;<span id=\"1044-1045-653\">visit</span>&nbsp;to&nbsp;<span id=\"1046-1047-654\">have</span>&nbsp;plastic surgery&nbsp;<span id=\"617\">in the Middle</span>&nbsp;East, and nine&nbsp;<span id=\"685-952-953\">times</span><span id=\"685\">&nbsp;out</span>&nbsp;of ten will&nbsp;<span id=\"1048-1049-655\">tell</span>&nbsp;you to&nbsp;<span id=\"1050-1051\">go</span>&nbsp;to&nbsp;<span id=\"620\">Iran</span>.<span id=\"p1110\">&nbsp;Thus, travelers in the Middle East often head to Iran for liposuction, a tummy tuck or a hair transplant, the clientele also includes men who want to look thinner and younger.</span><span style=\"font-size: 11.5pt;\"><br /> <span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span id=\"622\"><span id=\"p570\">Iran</span>&nbsp;has&nbsp;<span id=\"1054-1055\">become</span>&nbsp;a&nbsp;<span id=\"959-960\">reference</span>&nbsp;for plastic surgery&nbsp;<span id=\"619\">in the Middle</span>&nbsp;Este.</span><span id=\"p571\">&nbsp;<span id=\"626\">It</span>&nbsp;is&nbsp;<span id=\"1056\">estimated</span>&nbsp;that more than 30,000 plastic surgeries are&nbsp;<span id=\"1057-1058\">performed</span>&nbsp;per&nbsp;<span id=\"961-962\">year</span>&nbsp;in the&nbsp;<span id=\"963-964\">country</span>.</span></span><br /> <span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span id=\"p572\">Tourism&nbsp;<span id=\"629\">aesthetic</span>&nbsp;is already consolidated in the country, and&nbsp;<span id=\"627\">it</span>&nbsp;<span id=\"1059-1060-658\">attracts</span>&nbsp;not only people from the continent itself but&nbsp;<span id=\"967\">tourists</span>&nbsp;from around the&nbsp;<span id=\"968-969\">world</span>&nbsp;<span id=\"605\"><span class=\"s-rg-t\">who</span></span>&nbsp;<span id=\"1061-1062-689\">seek</span>&nbsp;to&nbsp;<span id=\"1063-1064-659\">make</span>&nbsp;<span id=\"630\">aesthetic</span>&nbsp;improvements on their&nbsp;<span id=\"970-971\">bodies</span>.</span></span><br /> <span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span id=\"p1111\">In order to have an enjoyable journey, not only Iran has some of the best plastic surgeons in the world, but it is a spectacular city with first-class hotels and restaurants.</span></span></span></span></p>\n<h2><span style=\"color: #000000;\"><span style=\"font-size: 11.5pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span id=\"p576\">The skilled doctors</span></span><br /> </span></span></h2>\n<p><span style=\"color: #000000;\"><span style=\"font-size: 11.5pt;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">the&nbsp;<span id=\"980-981\">choice</span>&nbsp;of the&nbsp;<span id=\"665\">best</span>&nbsp;plastic surgeon&nbsp;<span id=\"1071-1072-667\">plays</span>&nbsp;an&nbsp;<span id=\"666\">important</span>&nbsp;and crucial role in&nbsp;<span id=\"982-983\">surgery</span>&nbsp;and&nbsp;<span id=\"1073-1074\">produces</span>&nbsp;favorable results.</span></span></span><br /><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"> <span id=\"984-985\"><span id=\"p578\">Doctors</span>&nbsp;are always trained in the&nbsp;<span id=\"986-987\">country</span>&rsquo;s&nbsp;<span id=\"668-691\">top</span>&nbsp;medical universities or in other Western-style schools.</span><span id=\"p579\">&nbsp;</span></span><br /><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"> <span id=\"p1112\">Thanks to Iranian surgeon&rsquo;s unique set of skills and the latest medical technology at world-class facilities, they perform More than 30,000 plastic surgeries per year.</span></span></p>\n<h3><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"><span id=\"670\"><span id=\"p582\">Low</span>&nbsp;<span id=\"631\">cost</span></span></span></h3>\n<p><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"><span id=\"p583\">One of the primary reasons to&nbsp;<span id=\"1079-1080\">visit</span>&nbsp;Iran for&nbsp;<span id=\"614-992-993\">surgery</span>&nbsp;<span id=\"1081-1082\">is</span>&nbsp;the&nbsp;<span id=\"632\">cost</span>&nbsp;Plastic&nbsp;<span id=\"615\">surgery</span>&nbsp;<span id=\"671\">is usually&nbsp;</span><span id=\"650-671\">not covered</span><span id=\"671\">&nbsp;by</span>&nbsp;<span id=\"994-995\">insurance</span>.</span><span id=\"p584\">&nbsp;As a&nbsp;<span id=\"996-997\">result</span>, the&nbsp;<span id=\"633-998-999\">cost</span>&nbsp;can be&nbsp;<span id=\"672\">quite</span>&nbsp;outrageous</span></span><br /><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"> <span id=\"p1115\">People can generally expect to save at least 60% when performing plastic surgery in Iran as compared to.</span></span><br /><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"> <span id=\"p586\">Western nation.</span><span id=\"p587\">&nbsp;This&nbsp;<span id=\"1083-1084\">includes</span>&nbsp;all the travel expenses like airfares,&nbsp;<span id=\"1002-1003\">hotel</span>, and&nbsp;<span id=\"1004-1005\">food</span>&nbsp;during one&rsquo;s&nbsp;<span id=\"1006-1007\">stay</span>.</span></span></p>\n<h3><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"> <span id=\"p589\">Low&nbsp;<span id=\"634\">waiting</span>&nbsp;period</span></span></h3>\n<p><br /><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"> <span id=\"p590\">the&nbsp;<span id=\"635\">wait</span>&nbsp;times for&nbsp;<span id=\"1008-1009\">procedures</span>&nbsp;in&nbsp;<span id=\"623\">Iran</span>&nbsp;are usually non-existent.</span><span id=\"p1113\">&nbsp;Compare this to the Western nations for instance, in Canada.</span><span id=\"p1114\">&nbsp;It takes a patient about 4 weeks to consult a specialist, whereas, in Iran, the patients have immediate access to consult a specialist and get their treatment done, many people use medical tourism in Iran as an option to get procedures done faster when they are fed up with the wait times in their native countries.</span></span></p>\n<h3 class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><br /><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"> <span id=\"1026-1027\"><span id=\"p593\">Privacy</span></span></span></h3>\n<p><br /><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"> <span id=\"1028-1029\"><span id=\"p594\">Privacy</span>&nbsp;<span id=\"1101-1102-682\">is</span>&nbsp;another&nbsp;<span id=\"1030-1031\">reason</span>&nbsp;to&nbsp;<span id=\"1103-1104-683\">have</span>&nbsp;plastic surgery away from&nbsp;<span id=\"1032-1033\">home</span>.</span><span id=\"p595\">&nbsp;<span id=\"1034-1035\">Most</span>&nbsp;of us do not wish to&nbsp;<span id=\"1105-1106\">run</span>&nbsp;into our neighbors while&nbsp;<span id=\"1107-1108\">recovering</span>.</span><span id=\"p596\">&nbsp;In Iran, you will be&nbsp;<span id=\"684\">able</span>&nbsp;to&nbsp;<span id=\"692\">recuperate</span>&nbsp;in&nbsp;<span id=\"1036-1037\">peace</span>.</span></span><br /> <br /><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: #000000;\"> <span id=\"p600\">How much?</span><span id=\"p601\">&nbsp;A&nbsp;<span id=\"694\">nose job</span>&nbsp;is around&nbsp;<span id=\"645\">USD</span>&nbsp;$1,000 and a&nbsp;<span id=\"693-695\">tummy tuck</span>&nbsp;is approximately $800&nbsp;<span id=\"p598\">&ndash; $1,800.</span><span id=\"p599\">&nbsp;A&nbsp;<span id=\"1038-1039\">facelift</span>&nbsp;<span id=\"1109-1110\">is</span>&nbsp;about $800 &ndash;</span>&nbsp;$1,400, while a forehead lift can go up to&nbsp;<span id=\"646\">USD</span>&nbsp;$4,000.</span></span></p>', 'categories/February2019/aDYgzZaxyYacqjdNVvd6.jpg', NULL, ''),
(4, 1, 4, 'Rhinoplasty', 'rhinoplasty', '2019-01-03 14:07:20', '2019-05-06 03:45:04', '<p class=\"MsoNormal\">&nbsp;<strong><span style=\"font-size: 17.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">What is Rhinoplasty?</span></strong></p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\">&nbsp;Rhinoplasty which is also referred to as a <a title=\"Nose job\" href=\"https://medtouriran.com\" target=\"_blank\" rel=\"noopener noreferrer\">nose job</a> is a kind of plastic surgery that can be done to help the patients feel better about their appearance or it might have medical reasons. A nose job can be accompanied by other plastic surgery operations such as blepharoplasty (eyelid surgery) or genioplasty (chin surgery) to enhance the result. Rhinoplasty has become very common among peoples of all nations (especially Iran).</p>\n<p class=\"MsoNormal\" style=\"tab-stops: 98.25pt;\"><span style=\"mso-bidi-language: FA;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"rhinoplasty surgery in iran\" src=\"/storage/categories/January2019/rhinoplasty-www.medtouriran-com.jpg\" alt=\"Rhinoplasty surgery is one of the most popular cosmetic surgeries that attracts many people toward IRAN from different parts of the world every year\" width=\"564\" height=\"404\" /></span></p>\n<p class=\"MsoNormal\">&nbsp;<strong><span style=\"font-size: 13.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">Types of Rhinoplasty</span></strong></p>\n<p>Rhinoplasty generally can be divided into 2 categories of \"aesthetic rhinoplasty\" and \"functional rhinoplasty:&nbsp;</p>\n<p>&bull; <strong>Aesthetic rhinoplasty:&nbsp;</strong></p>\n<p>Aesthetic rhinoplasty has cosmetic reasons and the patients usually intend to change the appearance of their nose so that it will be in better harmony with other parts of their face and to generally suit their face more. Note that your health insurance might not cover cosmetic surgeries.</p>\n<p>&nbsp;&bull; <strong>Functional rhinoplasty:&nbsp;</strong></p>\n<p>Functional rhinoplasty can be done for medical problems; for instance to improve breathing or correct a birth defect.</p>\n<p>We can also put a nose surgery into 2 groups of primary and secondary or revision rhinoplasty.</p>\n<p>&bull; <strong>Primary rhinoplasty</strong> means that it is the first time ever that you\'re having a nose job; whether it\'s aesthetic or functional.</p>\n<p>&nbsp;&bull; <strong>Secondary rhinoplasty</strong> indicates that you have already got a nose job, but it wasn\'t successful (which is not that common) and you need to reshape your nose due to problems like asymmetry, pinched tip and more. That\'s why it is also called a <strong>revision rhinoplasty</strong>. The latter usually involves a more difficult procedure since the surgeon must recreate the nasal support that was probably destroyed in the primary rhinoplasty.</p>\n<p>&nbsp;&nbsp;<strong><span style=\"font-size: 13.0pt; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">Why Iran?</span></strong></p>\n<p>Iran is called the nose job capital of the world and there must be a good reason for that. We might be able to say that nose surgery has become a part of a fashion trend these days and the main reason that nose surgery has become very popular among Iranians is their Persian nose. It is usually identified with a large nose with a hump while most people prefer the European nose which results in increasing rate of nose surgery in Iran. Recently people from all over the world, especially the Middle East, show a special interest in flocking to Iran for their nose operation. The cause of this high demand can be traced to the following reasons:</p>\n<ul>\n<li>The high-quality plastic surgery that patients experience in Iran plays an important role in this matter.</li>\n<li>Surgeon\'s experience is important in predicting success rates. Iranian surgeons are well-educated and highly-experienced in this area which is no wonder if you consider the number of people they deal with every day.</li>\n<li>High levels of clinical care is another reason for the popularity of rhinoplasty in Iran.</li>\n<li>You can do the operation in the capital city of Iran, Tehran, and its other big towns such as Mashhad, Shiraz, Isfahan, etc. Therefore, aside from dealing with medical issues, you can also take a tour of these historical towns and visit their top attractions while you are in the city.</li>\n<li>You can get plastic surgery at a lower cost in Iran (compared to other countries) which is one of the main reasons that foreigners choose this country to get a nose job. Especially with the decline in Iran\'s currency value against the dollar, plastic surgery has become even more affordable than ever.</li>\n</ul>\n<h2 class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 17.3333px;\">Best age for a nose job</span>&nbsp;</h2>\n<p>If you have a medical reason for getting surgery, a nose job can be done at younger ages. However, if you solely want to get a nose job to look better and improve your appearance, the proper age for girls is about age 15 and a bit older in case of boys.&nbsp;</p>\n<h2 class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 17.3333px;\">Risks of Rhinoplasty</span>&nbsp;</h2>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\">No surgery is risk-free and rhinoplasty is no exception. However, it can cause:</p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\">&bull; A numb nose</p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\">&bull; Breathing difficulties</p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\">&bull; Bleeding</p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\">&bull; Infection</p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\">&bull; Dissatisfaction with the final result</p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\">If you are not satisfied with your nose after the operation, you might want a second surgery which can be done, but in this case, you should wait until your nose is fully healed (maybe a year) and then get prepared for the second operation.</p>\n<h2 class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 17.3333px;\">Rhinoplasty Procedure</span>&nbsp;</h2>\n<p>1. First, you meet with a surgeon and discuss the details about your medical conditions, if getting a nose job is a good choice for you and how you want your nose to look after the surgery.</p>\n<p>2. Your surgeon will closely examine the skin on the inside and outside of your nose and might ask you to get a blood test.</p>\n<p>3. In addition to that, they might take pictures of your nose from various angles to use them during the surgery or to make comparisons and assess the results after a while.</p>\n<p>4. Remember not to take medicines or painkillers (before or after the operation) without consulting your surgeon.</p>\n<p>5. A nose job can be done in a hospital or a doctor\'s office</p>\n<p>6. You&rsquo;ll either be unconscious during the surgery or your surgeon will numb your face, but you\'ll stay awake.</p>\n<p>7. Then the operation and reshaping of your nose will be started and it can take 1 to 2 hours or even longer if the procedure is more complex.</p>\n<h2 class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 17.3333px;\">Recovery from Rhinoplasty</span></h2>\n<p><span style=\"font-size: 14px; font-weight: 400;\">1. You will return home and it\'s necessary to follow your doctor\'s instructions.</span></p>\n<p><span style=\"font-size: 14px; font-weight: 400;\">2. Get enough rest and let the bone tissues heal after being cut.</span></p>\n<p><span style=\"font-size: 14px; font-weight: 400;\">3. Your surgeon might describe medications to alleviate pain.</span></p>\n<p><span style=\"font-size: 14px; font-weight: 400;\">4. It usually takes one week before you can go outside and the bruising around your eyes will heal in the second week.</span></p>\n<p><span style=\"font-size: 14px; font-weight: 400;\">5. If the surgeon hasn\'t used dissolvable stitches, you\'ll need to see your doctor again a week after surgery to get the stitches taken out.</span></p>\n<p><span style=\"font-size: 14px; font-weight: 400;\">6. Your doctor will inform you to avoid running, swimming, laughing, wearing eyeglasses or blowing your nose.</span></p>\n<p><span style=\"font-size: 14px; font-weight: 400;\">7. Above all, you need to avoid sun exposure as the skin around your nose is more prone to sun damage after the surgery.</span></p>\n<p><span style=\"font-size: 14px; font-weight: 400;\">8. You can also use cold compresses after the operation to decrease swelling.</span></p>\n<p><span style=\"font-size: 14px; font-weight: 400;\">9. At the end remember that it can take a whole year before you can see the final result of the surgery. So don\'t be so quick to judge your new nose and give it enough time to fully recover and become a normal nose again.</span></p>\n<p><span style=\"font-size: 14px; font-weight: 400;\">If you\'re thinking about rhinoplasty and you\'ve chosen to do it in Iran, you can always ask for help from <a href=\"https://medtouriran.com\" target=\"_blank\" rel=\"noopener noreferrer\">Medtouriran </a>specialists and consult a surgeon to decide what is best for you.</span></p>\n<p style=\"font-size: 14px; font-weight: 400;\">&nbsp;&nbsp;<a class=\"btn btn-default\" href=\"https://medtouriran.com/en/service/3/plastic-surgery\" target=\"_blank\" rel=\"noopener noreferrer\">Read more</a></p>\n<p>&nbsp;</p>', 'categories/February2019/IxGI6juHRwyeBRINL7S2.jpg', NULL, ''),
(5, 2, 5, 'Dental health', 'dental-health', '2019-01-03 14:07:51', '2019-02-13 11:19:41', '', 'categories/February2019/2tcSvdNtiu9JPLe6WCb0.jpg', NULL, ''),
(6, 2, 6, 'eye care ', 'eye-care', '2019-01-03 14:08:16', '2019-01-27 18:17:10', '<p>This is a test message</p>', 'categories/January2019/0Ggz7VBUjnHluRCACOvv.jpg', NULL, ''),
(7, 1, 1, 'Hair transplantation', 'health-Hair-transplantation', '2019-01-26 13:08:07', '2019-02-05 08:48:59', '<p>gdfgdfg</p>', 'categories/February2019/vI6KJ9MOq7iU4YjY85HA.jpg', NULL, ''),
(8, 2, 1, 'Infertility treatment', 'Infertility -IVF-medical', '2019-01-26 13:58:11', '2019-07-02 05:04:58', '<p style=\"text-align: center;\">&nbsp;</p>\n<p style=\"text-align: center;\">&nbsp;</p>\n<p style=\"text-align: center;\">The cost of infertility treatment in Iran is about 10% to 20% of the cost of infertility in the world, so in our country this costs a maximum of $ 2,000, while in Europe and the United States it costs $ 20,000 to treat infertility.</p>\n<h2>&nbsp;</h2>\n<h2>What is infertility?</h2>\n<p>Infertility is referred to as having unprotected sex for six months to one year (depending on your age), but do not get pregnant. In fact, the main sign of infertility is the same as not getting pregnant, and you may not see any signs or symptoms in addition to the mark. Signs of infertility depend on the causes of infertility. Many medical and health conditions can make pregnancy difficult. Of course, in some cases, no specific cause for infertility is detected.</p>\n<h3 id=\"h3sjrd9c31f1w1wjyc1hr07s81645mx2\">&nbsp;Causes of Infertility in Women</h3>\n<p><img title=\"infertility in women\" src=\"/storage/categories/January2019/57762e9b1800002500fa379a.jpeg\" alt=\"\" width=\"326\" height=\"217\" /></p>\n<p>The main causes of infertility in women are:</p>\n<p>1) Ovulation disorder</p>\n<p>2) Impairment of uterine tubes</p>\n<p>3) Endometriosis</p>\n<p>4) Disorders of the uterus or uterus</p>\n<p>5) Immune system disorders</p>\n<p><a class=\"btn btn-default\" href=\"https://medtouriran.com/en\" target=\"_blank\" rel=\"noopener noreferrer\">Read more</a></p>\n<p>&nbsp;----------------------------------------------------------------------------------------------------------------------------------------------------------------</p>\n<h2>&nbsp;</h2>\n<h3 id=\"h13sjrda1fhepybekgrlhusy2sqjqi\"><strong>&nbsp;- Infertility in men</strong></h3>\n<p>&nbsp;<img title=\"Infertility in men\" src=\"/storage/categories/January2019/download1.jpg\" alt=\"\" width=\"275\" height=\"183\" /></p>\n<p>The main causes of infertility in men are:</p>\n<p>1) Sperm disorders</p>\n<p>2) Abnormalities related to body building</p>\n<p><a class=\"btn btn-default\" href=\"https://medtouriran.com/en\" target=\"_blank\" rel=\"noopener noreferrer\">Read more</a></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', 'categories/June2019/Fpk0KgybTLfas4gKf1aD.jpg', NULL, 'Infertility is referred to as having unprotected sex for six months to one year (depending on your age), but do not get pregnant. In fact, the main sign of infertility is the same as not getting pregnant, and you may not see any signs or symptoms in addition to the mark. Signs of infertility depend on the causes of infertility. Many medical and health conditions can make pregnancy difficult. Of course, in some cases, no specific cause for infertility is detected.'),
(10, 1, 8, 'Plastic surgery ', 'plastic-surgery -2', '2019-06-28 17:50:06', '2019-07-02 06:21:43', '<div class=\"mceTmpl\">\n<p class=\"paragraph-medium paragraph-black\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem molestias cumque, dolore assumenda recusandae nobis at harum suscipit temporibus aliquid laudantium, minima aspernatur inventore omnis laboriosam labore, numquam iste earum.</p>\n<div id=\"procedure-page--images\" class=\"row\">\n<div class=\"col-md-4\">\n<div class=\"theme-img procedure-page--images\"><img src=\"/uploads/service-2.jpg\" alt=\"\" /></div>\n</div>\n<div class=\"col-md-4\">\n<div class=\"theme-img theme-img-scale procedure-page--images\"><img src=\"/uploads/service-1.jpg\" alt=\"\" /></div>\n</div>\n<div class=\"col-md-4\">\n<div class=\"theme-img theme-img-scalerotate procedure-page--images\"><img src=\"/uploads/service-5.jpg\" alt=\"\" /></div>\n</div>\n</div>\n<p class=\"paragraph-medium paragraph-black\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut tempora quibusdam dolorem, excepturi hic vel corrupti quos. Tempora illum voluptate perspiciatis, a. Dignissimos tenetur architecto, quae consequatur sit, provident esse totam quo soluta laboriosam beatae commodi dolor, minima omnis accusamus iste, suscipit libero. Beatae soluta excepturi natus quos alias, possimus repellendus pariatur quidem quo quas minus fugit labore delectus iste repudiandae, accusantium. Facilis cumque neque quae architecto? Accusamus, ipsa accusantium deleniti ducimus unde error at doloribus temporibus voluptate et, rem minus quia sequi, blanditiis sed. Id cupiditate, doloribus quibusdam nostrum, ratione nulla, quo alias inventore minima ducimus illo! Nesciunt commodi reprehenderit suscipit corporis quibusdam sed asperiores, culpa atque a illum exercitationem debitis voluptatem dolor, consequuntur eaque iusto unde hic repudiandae esse mollitia. Mollitia nulla ab perspiciatis illum, nobis cum a iusto vero, saepe dolore necessitatibus accusamus ut odio asperiores facere, maiores quis sapiente aut! Ducimus ea aperiam ut sit, soluta quasi est obcaecati odio, omnis dolorum possimus fuga dolorem voluptates, cumque provident. Quidem omnis facere dolore nisi explicabo cum at, cumque doloremque, recusandae quae minima, odit corporis ut amet, vel vitae. Ipsam minima labore ab eveniet vero nam aperiam accusamus doloremque fugiat iusto accusantium perspiciatis cum pariatur laboriosam asperiores hic velit unde, quas recusandae voluptas optio reprehenderit, vitae porro? Dolor, vero modi illum sapiente enim nihil aspernatur quaerat, non hic, atque eum assumenda corrupti earum beatae odit exercitationem. Aperiam eos repellendus corporis nihil aliquid nemo est mollitia, totam nesciunt veritatis magni doloribus! Esse nulla ea sed id provident quisquam illo, velit labore molestias eaque odit laborum veritatis cupiditate harum similique corrupti cum, alias tenetur, eum. Qui deserunt voluptate dolor similique debitis quae vero blanditiis, in voluptatem soluta ea quia! Ea aliquid harum odit cumque dolorum reprehenderit veritatis aspernatur eum ex distinctio. Corporis pariatur ullam, perferendis vero amet similique temporibus voluptate sed. Neque reprehenderit optio, quos laboriosam nulla adipisci eos, beatae in expedita commodi odio fuga sequi quod error et quaerat sed dignissimos. Sed ullam, facere. Aspernatur quam quod error ex odio, animi, officiis repudiandae totam voluptates porro vero facilis voluptas quas, soluta laudantium vel nobis. Molestiae, eum deserunt sapiente laborum corporis atque facilis quibusdam quam ea et explicabo doloribus provident maiores modi odit quaerat non perspiciatis quis laudantium necessitatibus itaque unde, consequuntur earum? Voluptatum dignissimos, maxime accusamus, vel magnam voluptatem saepe consequuntur ea. Beatae consectetur error perspiciatis magnam et ducimus fugiat eveniet ad repudiandae culpa, quas pariatur sed tempore doloremque enim reprehenderit accusantium corporis. Nisi atque quae labore quam laborum autem temporibus voluptatum animi, rem harum. Id, porro! Eum vitae voluptate, aliquid ea omnis iusto libero minus. Quam illo quaerat ipsum, itaque similique porro nesciunt consequatur, hic, voluptas quae fugit optio illum molestiae nostrum! Amet numquam in, expedita repellat fugiat sit. Saepe dolor doloribus inventore tempore minus, cum fuga officiis. Odio deleniti delectus dolorem labore repudiandae ab rem quia ratione dolore harum dicta qui blanditiis itaque assumenda quidem et voluptatibus nemo, rerum optio voluptatem? Debitis sequi similique odit quasi aspernatur tenetur hic quae doloremque sed sunt obcaecati, ipsam quod omnis.</p>\n</div>', NULL, 'fa fa-edit', 'magnam voluptatem saepe consequuntur ea. Beatae consectetur error perspiciatis magnam et ducimus fugiat eveniet ad repudiandae culpa, quas pariatur sed tempore doloremque enim reprehenderit accusantium corporis. Nisi atque quae labore quam laborum autem temporibus voluptatum animi, rem harum. Id, porro! Eum vitae voluptate, aliquid ea omnis iusto libero minus. Quam illo quaerat ipsum, itaque similique porro nesciunt consequatur, hic, voluptas quae fugit optio illum molestiae nostrum! Amet numquam in, expedita repellat fugiat sit. Saepe dolor doloribus inventore tempore minus, cum fuga officiis. Odio deleniti delectus dolorem labore repudiandae ab rem quia ratione dolore harum dicta qui blanditiis itaq');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tehran', NULL, '2019-06-30 07:12:17', '2019-06-30 07:12:17'),
(2, 'Shiraz', NULL, '2019-06-30 07:13:37', '2019-06-30 07:13:37'),
(3, 'Mashhad', NULL, '2019-06-30 07:20:57', '2019-06-30 07:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"title\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 7),
(51, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 10),
(54, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 11),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 13),
(57, 4, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(58, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(60, 9, 'icon', 'text', 'Icon', 1, 1, 1, 1, 1, 1, '{}', 3),
(61, 9, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 4),
(62, 9, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{\"default\":1}', 5),
(63, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(64, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(65, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 10, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 2),
(67, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(68, 10, 'body', 'text_area', 'Body', 0, 1, 1, 1, 1, 1, '{}', 4),
(69, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(70, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(71, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 12, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(73, 12, 'subtitle', 'text', 'Subtitle', 0, 1, 1, 1, 1, 1, '{}', 4),
(74, 12, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 5),
(75, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 6),
(76, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 7),
(77, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 8),
(78, 12, 'position', 'select_dropdown', 'Position', 0, 1, 1, 1, 1, 1, '{\"default\":\"left\",\"options\":{\"left\":\"left\",\"right\":\"right\",\"center\":\"center\"}}', 9),
(79, 12, 'order', 'number', 'Order', 0, 1, 1, 1, 1, 1, '{}', 10),
(80, 4, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 8),
(81, 4, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 9),
(82, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 13, 'first_name', 'text', 'First Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(84, 13, 'last_name', 'text', 'Last Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 13, 'country_code', 'text', 'Country Code', 0, 1, 1, 1, 1, 1, '{}', 4),
(86, 13, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(87, 13, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 6),
(88, 13, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(89, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 8),
(90, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(91, 13, 'request_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(92, 13, 'message', 'text', 'Message', 0, 0, 1, 1, 1, 1, '{}', 10),
(93, 4, 'icon', 'text', 'Icon', 0, 0, 1, 1, 1, 1, '{}', 10),
(94, 4, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 11),
(95, 12, 'icon', 'text', 'Icon', 0, 0, 1, 1, 1, 1, '{}', 2),
(96, 15, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(97, 15, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(98, 15, 'image', 'image', 'Logo', 1, 1, 1, 1, 1, 1, '{}', 3),
(99, 15, 'link', 'text', 'Link', 0, 0, 1, 1, 1, 1, '{}', 4),
(100, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(101, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(102, 16, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(103, 16, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(104, 16, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 3),
(105, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(106, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(107, 17, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(108, 17, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(109, 17, 'about', 'text_area', 'About', 0, 0, 1, 1, 1, 1, '{}', 6),
(110, 17, 'testimonal', 'text_area', 'Testimonial  (youteube video id, separate by semi colon ; )', 0, 0, 1, 1, 1, 1, '{}', 7),
(111, 17, 'address', 'text', 'Address', 0, 0, 1, 1, 1, 1, '{}', 8),
(112, 17, 'phone', 'text', 'Phone', 0, 0, 1, 1, 1, 1, '{}', 9),
(113, 17, 'email', 'text', 'Email', 0, 0, 1, 1, 1, 1, '{}', 10),
(114, 17, 'website', 'text', 'Website', 0, 0, 1, 1, 1, 1, '{}', 11),
(115, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(116, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(117, 17, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 14),
(118, 17, 'images', 'multiple_images', 'Images', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 15),
(120, 17, 'doctor_belongstomany_category_relationship', 'relationship', 'Specialties', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"doctor_category\",\"pivot\":\"1\",\"taggable\":\"on\"}', 12),
(121, 17, 'order', 'number', 'Order', 0, 0, 0, 0, 0, 0, '{}', 18),
(122, 17, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:doctors,slug\"}}', 3),
(123, 18, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(124, 18, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(125, 18, 'link', 'text', 'Link', 1, 1, 1, 1, 1, 1, '{}', 3),
(126, 18, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 4),
(127, 18, 'doctor_id', 'text', 'Doctor Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(128, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(129, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(130, 18, 'network_hasone_doctor_relationship', 'relationship', 'Doctor', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Doctor\",\"table\":\"doctors\",\"type\":\"belongsTo\",\"column\":\"doctor_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(132, 17, 'doctor_hasmany_network_relationship', 'relationship', 'Social networks', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Network\",\"table\":\"networks\",\"type\":\"hasMany\",\"column\":\"doctor_id\",\"key\":\"id\",\"label\":\"link\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(133, 6, 'css', 'code_editor', 'Css', 0, 0, 1, 1, 1, 1, '{}', 6),
(134, 20, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(135, 20, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(136, 20, 'position', 'text', 'Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(137, 20, 'quote', 'text', 'Quote', 1, 0, 1, 1, 1, 1, '{}', 4),
(138, 20, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"500\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 5),
(139, 20, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 7),
(140, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(141, 21, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(142, 21, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(143, 21, 'before_price', 'text', 'Before Price', 0, 0, 1, 1, 1, 1, '{}', 12),
(144, 21, 'after_price', 'text', 'After Price', 0, 0, 1, 1, 1, 1, '{}', 14),
(145, 21, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 17),
(146, 21, 'timeline', 'rich_text_box', 'Timeline', 0, 0, 1, 1, 1, 1, '{}', 18),
(147, 21, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 13),
(148, 21, 'subtitle', 'text', 'Subtitle', 0, 0, 1, 1, 1, 1, '{}', 11),
(149, 21, 'images', 'multiple_images', 'Images', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 20),
(150, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 21),
(151, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 22),
(152, 21, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:packages,slug\"}}', 10),
(153, 21, 'options', 'text_area', 'Options (separate by semi colon ; )', 0, 0, 1, 1, 1, 1, '{}', 16),
(154, 20, 'language', 'select_dropdown', 'Language', 0, 1, 1, 1, 1, 1, '{\"default\":\"en\",\"options\":{\"en\":\"en\",\"ar\":\"ar\"}}', 6),
(155, 21, 'background', 'image', 'Background', 0, 0, 1, 1, 1, 1, '{}', 19),
(156, 17, 'rate', 'number', 'Rate (0 to 100)', 0, 1, 1, 1, 1, 1, '{}', 17),
(157, 21, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"title\"}}', 3),
(158, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(159, 22, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(160, 22, 'icon', 'text', 'Icon', 0, 0, 1, 1, 1, 1, '{}', 3),
(161, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(162, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(163, 21, 'package_belongstomany_package_item_relationship', 'relationship', 'package_items', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\PackageItem\",\"table\":\"package_items\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"package_package_item\",\"pivot\":\"1\",\"taggable\":\"on\"}', 4),
(164, 21, 'video', 'text', 'Youtube Video id', 0, 0, 1, 1, 1, 1, '{}', 9),
(165, 23, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 2),
(166, 23, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(167, 23, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 4),
(168, 23, 'order', 'number', 'Order', 0, 1, 1, 1, 1, 1, '{}', 5),
(169, 21, 'package_belongstomany_timeline_relationship', 'relationship', 'timelines', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Timeline\",\"table\":\"timelines\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"description\",\"pivot_table\":\"package_timeline\",\"pivot\":\"1\",\"taggable\":\"on\"}', 6),
(170, 23, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 1),
(171, 23, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 6),
(172, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(173, 24, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(174, 24, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(175, 24, 'description', 'text', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(176, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(177, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(178, 21, 'package_belongstomany_city_relationship', 'relationship', 'cities', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"package_city\",\"pivot\":\"1\",\"taggable\":\"on\"}', 5),
(179, 25, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(180, 25, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(181, 25, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 3),
(182, 25, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 4),
(183, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(184, 21, 'package_belongstomany_package_price_relationship', 'relationship', 'package_prices', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\PackagePrice\",\"table\":\"package_prices\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"package_package_price\",\"pivot\":\"1\",\"taggable\":\"on\"}', 8),
(185, 21, 'testimonial', 'text_area', 'Testimonial  (youteube video id, separate by semi colon ; )', 0, 0, 1, 1, 1, 1, '{}', 15),
(186, 26, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(187, 26, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(188, 26, 'star', 'text', 'Star', 0, 1, 1, 1, 1, 1, '{}', 4),
(189, 26, 'city_id', 'text', 'City Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(190, 26, 'location', 'coordinates', 'Location', 0, 0, 1, 1, 1, 1, '{}', 8),
(191, 26, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(192, 26, 'person', 'number', 'Person Capacity', 0, 0, 1, 1, 1, 1, '{}', 10),
(193, 26, 'bed', 'number', 'Number of Beds', 0, 0, 1, 1, 1, 1, '{}', 11),
(194, 26, 'price', 'number', 'Price from', 0, 0, 1, 1, 1, 1, '{}', 12),
(195, 26, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 13),
(196, 26, 'images', 'multiple_images', 'Images', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 14),
(197, 26, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 15),
(198, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(199, 26, 'hotel_hasone_city_relationship', 'relationship', 'City', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(200, 28, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(201, 28, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(202, 28, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 3),
(203, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(204, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(205, 26, 'hotel_belongstomany_hotel_item_relationship', 'relationship', 'hotel_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\HotelItem\",\"table\":\"hotel_items\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"hotel_hotel_item\",\"pivot\":\"1\",\"taggable\":\"on\"}', 6),
(206, 26, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:hotels,slug\"}}', 3),
(207, 21, 'package_belongstomany_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"package_category\",\"pivot\":\"1\",\"taggable\":\"on\"}', 7),
(208, 17, 'education', 'text_area', 'Education (json format)', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"json\"}}', 4),
(209, 17, 'skills', 'text_area', 'Skills (json format)', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"json\"}}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2018-12-15 19:38:02', '2019-07-02 23:30:30'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-15 19:38:02', '2019-02-24 22:31:19'),
(9, 'socials', 'socials', 'Social Network', 'Social Networks', 'voyager-world', 'App\\Models\\Social', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null}', '2019-01-04 08:38:41', '2019-01-04 08:40:14'),
(10, 'benefits', 'benefits', 'Benefit', 'Benefits', 'voyager-receipt', 'App\\Models\\Benefit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-01-04 12:42:39', '2019-01-04 12:42:39'),
(12, 'banners', 'banners', 'Banner', 'Banners', 'voyager-photo', 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-01-10 10:00:49', '2019-02-02 12:23:46'),
(13, 'requests', 'requests', 'Request', 'Requests', 'voyager-question', 'App\\Models\\Request', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-01-10 12:41:52', '2019-01-10 13:56:05'),
(15, 'partners', 'partners', 'Partner', 'Partners', NULL, 'App\\Models\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-02-02 23:42:57', '2019-02-02 23:44:23'),
(16, 'links', 'links', 'Link', 'Important Links', NULL, 'App\\Models\\Link', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-02-03 01:32:59', '2019-02-03 01:33:28'),
(17, 'doctors', 'doctors', 'Doctor', 'Doctors', NULL, 'App\\Models\\Doctor', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-02-08 19:01:07', '2019-07-03 10:06:29'),
(18, 'networks', 'networks', 'Doctor\'s Socials', 'Networks', NULL, 'App\\Models\\Network', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-02-08 19:30:50', '2019-02-08 20:11:33'),
(20, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', NULL, 'App\\Models\\Testimonial', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-02-24 20:24:19', '2019-03-01 19:24:07'),
(21, 'packages', 'packages', 'Package', 'Packages', NULL, 'App\\Models\\Package', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-02-24 21:19:53', '2019-07-01 15:55:35'),
(22, 'package_items', 'package-items', 'Package Item', 'Package Items', 'voyager-list-add', 'App\\Models\\PackageItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-06-29 06:08:58', '2019-06-29 06:08:58'),
(23, 'timelines', 'timelines', 'Package Timeline', 'Package Timelines', 'voyager-dashboard', 'App\\Models\\Timeline', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"description\"}', '2019-06-30 02:33:20', '2019-06-30 02:42:16'),
(24, 'cities', 'cities', 'City', 'Cities', 'voyager-tree', 'App\\Models\\City', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-06-30 04:12:02', '2019-06-30 04:12:02'),
(25, 'package_prices', 'package-prices', 'Package Price', 'Package Prices', 'voyager-credit-card', 'App\\Models\\PackagePrice', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-06-30 09:40:52', '2019-06-30 09:40:52'),
(26, 'hotels', 'hotels', 'Hotel', 'Hotels', 'voyager-shop', 'App\\Models\\Hotel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-07-01 01:02:20', '2019-07-01 10:36:44'),
(28, 'hotel_items', 'hotel-items', 'Hotel Item', 'Hotel Items', NULL, 'App\\Models\\HotelItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-07-01 01:31:04', '2019-07-01 01:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT 1,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int(11) DEFAULT 100,
  `education` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `about`, `testimonal`, `address`, `phone`, `email`, `website`, `created_at`, `updated_at`, `avatar`, `images`, `order`, `slug`, `rate`, `education`, `skills`) VALUES
(2, 'Dr. Abdolreza Jamilian', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Specialties</h2>\n<p><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;Dr. Jamilian&nbsp; is an Iranian orthodontist and a prestigious USPTO patent holder including: Method and system for treatment of maxillary deficiency using miniscrews.</span>&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Education and training</h2>\n<ul>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\"><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">Dental surgery degree (D.D.S.) from Shahid Beheshti University of medical sciences in 1991</span></span></li>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\"><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">Orthodontics degree&nbsp;</span></span><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">from Shahid Beheshti University of medical sciences in 1998</span></span></li>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\"><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">Fellowship of orthognathic surgery and craniofacial syndromes from Shahid Beheshti University of medical sciences in 2011</span></span></li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Experience and Board certification</h2>\n<p>Dr. Jamilian is an outstanding member of the Iranian and European Board of Orthodontics, and renowned for his awesome innovations in designing therapeutic modalities for class III malocclusion patients</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Professional memberships</h2>\n<ul>\n<li>&nbsp;World Federation of Orthodontists. (WFO)</li>\n<li>&nbsp;America Association of Orthodontists. (AAO)</li>\n<li>&nbsp;European Orthodontic Society. (EOS)</li>\n<li>&nbsp;Iranian Association of Orthodontists. (IOA)&nbsp;</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Language spoken</h2>\n<ul>\n<li>English</li>\n</ul>\n<p>&nbsp;</p>', '<p><iframe title=\"Medtouriran-Jamilian5\" src=\"https://www.youtube.com/embed/qkLgamwEKKk?wmode=opaque&amp;theme=dark\" width=\"570\" height=\"321\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>', '', NULL, NULL, 'http://www.drghazipour.com/', '2019-02-11 11:07:00', '2019-05-03 03:33:58', 'doctors/May2019/imt7qILLtctF8JFZzGm1.jpg', '[\"doctors\\/April2019\\/UKatMXOD6JhafgvCUNMc.jpg\",\"doctors\\/April2019\\/wIBFq8J2AhyRAHEaUoDH.jpg\",\"doctors\\/April2019\\/RjD4J1G6gFioWZX0jwK9.jpg\"]', 1, 'dr-abdolreza-jamilian', 100, NULL, NULL),
(3, 'Dr. Mohsen PourHaghighi', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Specialties</h2>\n<p><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;Dr. Mohsen PourHaghighi is a restorative dentistry.</span>&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Education and training</h2>\n<ul>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\"><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">Tehran University of Medical Sciences</span></span></li>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\"><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\">Fellowship in Laser Dentistry from university of geneva</span></li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Experience and Board certification</h2>\n<p>Specialist board in the field of restorative and beauty dentistry</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Professional memberships</h2>\n<ul>\n<li>&nbsp;Iranian Association for Restorative and Beauty Dentistry</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Language spoken</h2>\n<ul>\n<li>English</li>\n</ul>\n<p>&nbsp;</p>', '', 'Shiraz, Iran', NULL, NULL, NULL, '2019-02-14 06:55:00', '2019-05-03 03:33:42', 'doctors/May2019/yD4e6Q7AY20BOm1CgFO6.jpg', '[\"doctors\\/April2019\\/KogwbIE18iBI9wKOVI7w.jpg\",\"doctors\\/April2019\\/0IQUTWEAH2nzGt9NLQRs.jpg\",\"doctors\\/April2019\\/a6ePYUXfGrEnJDKGy51F.jpg\",\"doctors\\/April2019\\/1E7TkPgTXRzjgeLi2GJo.jpg\"]', 2, 'dr-mohsen-pourhaghighi', 100, NULL, NULL),
(4, 'Dr. Bahram Badamchi', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Specialties</h2>\n<p><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">Dr. Bahram Badamchi is a specialist in ENT.</span>&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Education and training</h2>\n<ul>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\"><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">He is one the first physicians in Iran to have a broad and complete experience in endoscopy and Nasal polyps.</span></span></li>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\"><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">He has conducted more than 3000 rhinoplasty and nasal plastic surgeries.</span></span></li>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\"><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">He is also active in participating in conferences and international congresses in Iran and Europe, and due to this, he is familiar with the latest methods of procedures in his field.</span></span>&nbsp;</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Experience and Board certification</h2>\n<ul>\n<li><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">7 years in the Kohkiloyeh va Boir Ahmad state and deprived areas</span></span></li>\n<li><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">Since 1386 in Tehran; Bahman Hospital, Ibn Sina hospital, 501 military hospital and in Behgar clinic</span></span></li>\n<li><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">3 years in Qiyasi charity hospital and Ziyaian hospital affiliated to Tehran university of medical sciences</span></span>&nbsp;</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Professional memberships</h2>\n<ul>\n<li>RRS (Rhinology Research Society).&nbsp;&nbsp;</li>\n<li>Iranian society of Rhinology &nbsp;</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Language spoken</h2>\n<ul>\n<li>English</li>\n</ul>\n<p>&nbsp;</p>', '<p><iframe title=\"\" src=\"https://www.youtube.com/embed/883nSp_R_Xo?wmode=opaque&amp;theme=dark\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>', '', NULL, NULL, NULL, '2019-02-14 10:00:00', '2019-05-13 02:22:42', 'doctors/April2019/Zg83myji12pCTSQmGiUt.jpg', '[\"doctors\\/May2019\\/IhGiNgKrNYool3lSpBF8.jpg\",\"doctors\\/May2019\\/kIRceDOxI66et4evs1RW.jpeg\",\"doctors\\/May2019\\/eQoaB8YNuZ9xZKT6uPNz.jpeg\"]', 4, 'dr-bahram-badamchi', 100, NULL, NULL),
(6, 'Dr. Behzad Alizadeh', '', '', '', NULL, NULL, NULL, '2019-03-16 02:22:00', '2019-05-03 03:29:35', 'doctors/April2019/FyJUPCD1eJaC7haeNIBK.jpg', NULL, 5, 'dr-behzad-alizadeh', 100, NULL, NULL),
(8, 'Dr. MirMohammad Sadeghi', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Specialties</h2>\n<p><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;Dr. MirMohammad Sadeghi is a surgeon and eye specialist. &nbsp;Dr.Sadeghi&rsquo;s specialty covers different types of cornea transplantation surgeries, ICL, Artisan lens surgery, cataract surgery (specially with phaco method), LASIK, LASEK and Femto LASIK.</span></p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Education and training</h2>\n<ul>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">Plastic Surgery and facial cosmetic surgery (for 10 months), Iran University of Medical Sciences, Tehran, 2005</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Experience and Board certification</h2>\n<ul>\n<li>Plastic Surgery Fellowship, LASIK and Phaco</li>\n<li>XXIX Congress of the European Society of Cataract and Refractive Surgeons, Vienna, Austria, September 2011.</li>\n<li>XXVII Congress of the European Society of Cataract and Refractive Surgeons, Barcelona, Spain, September 2009.</li>\n<li>XXV Congress of the European Society of Cataract and Refractive Surgeons, Stockholm, Sweden, September 2007.</li>\n<li>XXIV Congress of the European Society of Cataract and Refractive Surgeons, London, UK, September 2006.</li>\n<li>XXIII Congress of the European Society of Cataract and Refractive Surgeons, Lisbon, Portugal, September 2005.</li>\n<li>NIDEK Refractive Surgery Symposium, Dubai, UAE, April 2005.</li>\n<li>14th Iranian Congress of Ophthalmology, Iranian Society of Ophthalmology, Tehran, Iran, December 2004.</li>\n<li>XXI Congress of the European Society of Cataract and Refractive Surgeons, Munich, Germany, September 2003.</li>\n<li>XIX Congress of the European Society of Cataract and Refractive Surgeons, Amsterdam, Netherlands, September 2001.</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Professional memberships</h2>\n<ul>\n<li>Member of the European Association for the Cataract and Refractive Surgeons Association (ESCRS), 2000 - so far</li>\n<li>Member of the American Academy of Ophthalmology (AAO), 2009 - present</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Language spoken</h2>\n<ul>\n<li>English</li>\n</ul>\n<p>&nbsp;</p>', '', '', NULL, NULL, NULL, '2019-05-02 18:00:00', '2019-05-03 03:29:35', 'doctors/May2019/46EdsonDPPhWZFhw1YW2.jpg', '[\"doctors\\/May2019\\/lZdrQs7ax1dGvCkzwYNb.jpg\",\"doctors\\/May2019\\/ms2BOcQ3VhWzs6TfyuBu.jpg\"]', 7, 'dr-mirmohammad-sadeghi', 100, NULL, NULL),
(9, 'Dr. Mohammad Eshaghi', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Specialties</h2>\n<p><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;Dr. Mohammad Eshaghi is specialist in plastic and reconstructive surgery, strabismus and pediatric eye.</span></p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Education and training</h2>\n<ul>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">Fellowship (Specialist) Plastic Surgery (Recuperation) and Eye Deviation from Shahid Beheshti University&nbsp;</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Experience and Board certification</h2>\n<ul>\n<li>Faculty member of Mazandaran University of Medical Sciences and Shahid Beheshti University of Medical Sciences.&nbsp;&nbsp;</li>\n<li>Publishing 7 internal and 5 external scientific papers</li>\n<li>Speech at national and international conferences</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Professional memberships</h2>\n<ul>\n<li>Member of Iranian Society of Ophthalmology&nbsp;</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Language spoken</h2>\n<ul>\n<li>English</li>\n</ul>\n<p>&nbsp;</p>', '', '', NULL, NULL, NULL, '2019-05-03 02:49:00', '2019-05-11 07:56:36', 'doctors/May2019/WUMM6loElAbfINbZeqy4.jpg', NULL, 8, 'dr-mohammad-eshaghi', 100, NULL, NULL),
(10, 'Dr. Mahtab Marjani', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Specialties</h2>\n<p><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">Dr. Mahtab Marjani Gynecologist and women&rsquo;s health specialist was born in Tehran, 1972. She acquired her general practitioner&rsquo;s degree from Tehran university of medical sciences in the year 1997. She went on further to qualify as a specialist in her current field in 2002 from the same university. She is specialist in pregnancy, childbirth, and a woman\'s reproductive system.</span>&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Education and training</h2>\n<ul>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">Tehran University of Medical Sciences&nbsp;</li>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\"><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">Completing complementary courses in Laparoscopy, Hysteroscopy, Colposcopy and Sonography.</span></span></li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Professional memberships</h2>\n<ul>\n<li>Member of scientific committee and editorial board of the Scientific association of women and midwifery of IRAN.</li>\n<li>Member of the Association of Mother and Embryo medicine</li>\n<li>Member of the Association of Cancers of women-IRAN</li>\n<li>Member of the Association of Laparoscopic surgeries of IRAN</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\"><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 16px;\">Treatment Practices</span></span></h2>\n<ul>\n<li><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 16px;\">Infertility diagnosis and treatment&nbsp;</span></span></li>\n<li><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 16px;\">Recurrent miscarriage</span></span></li>\n<li><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 16px;\">Laparoscopy and Hysteroscopy</span></span></li>\n<li><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 16px;\">Ovarian failure problems</span></span></li>\n<li><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 16px;\">Female reproductive system</span></span></li>\n<li><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 16px;\">Pre-marriage counseling&nbsp;</span></span></li>\n<li><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 16px;\">All women related surgeries</span></span></li>\n<li><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 16px;\">Pre-pregnancy counseling, pain management during labor, Caesarian</span></span></li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Language spoken</h2>\n<ul>\n<li>English</li>\n</ul>\n<p>&nbsp;</p>', '', '', NULL, NULL, NULL, '2019-05-03 03:27:00', '2019-07-03 09:57:05', 'doctors/May2019/WxkFw8InN5SGqQdmfCgC.jpg', '[\"doctors\\/May2019\\/EBrhQQ375eprBLrOC27J.jpg\",\"doctors\\/May2019\\/nu92yx58t80e6rugJq3I.jpg\"]', 3, 'dr-mahtab-marjani', 100, '{}', '{}'),
(11, 'Dr. Elham Emamjome', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Specialties</h2>\n<p><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;</span>Dr. Emamjome has female cosmetic surgery fellowship from the United States. Among her specialties is treatment of infertility, normal delivery, cesarean delivery, vaginal cosmetic surgery, and gynecological surgery.</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Education and training</h2>\n<ul>\n<li style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\"><span style=\"color: #656464; font-family: \'Open Sans\', sans-serif;\"><span style=\"font-size: 13px;\">Iran University of Medical Sciences</span></span></li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Experience and Board certification</h2>\n<p>Dr. Emamjome has a women\'s specialized board from Iran University of Medical Sciences</p>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Professional memberships&nbsp;</h2>\n<ul>\n<li>Member of Iranian Society of Surgeons</li>\n<li>Member of the American and European Women\'s Beauty Association</li>\n</ul>\n<h2 style=\"box-sizing: border-box; margin: 10px 0px 5px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #333333; font-size: 16px;\">Language spoken</h2>\n<ul>\n<li>English</li>\n</ul>\n<p>&nbsp;</p>', '', '', NULL, NULL, NULL, '2019-05-03 04:40:00', '2019-07-03 09:06:31', 'doctors/May2019/BzRN8xD1AkilDgG3uMLj.jpg', '[\"doctors\\/May2019\\/9fC1bpYrEdgoJxsdD0j6.jpeg\"]', 1, 'dr-elham-emamjome', 100, '{}', '{}'),
(12, 'Dr. Akbar Mehrafzan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit minus, modi adipisci nesciunt, illum atque temporibus cupiditate blanditiis quo illo cumque doloribus laborum rem neque dolorum, ipsa officiis fugiat expedita.Perspiciatis facere magnam reiciendis modi ratione asperiores fugit minus dolores dignissimos cum.', 'ZgJ8-LdttpQ; ZgJ8-LdttpQ', '', NULL, NULL, NULL, '2019-05-12 09:11:00', '2019-07-03 10:10:57', 'doctors/May2019/QvJheO5iuYTWk052FZj8.jpg', '[\"doctors\\\\July2019\\\\Uul8JEx5o0migekNXUu3.jpg\",\"doctors\\\\July2019\\\\lOOYxp80Ygrc4HezuIWC.jpg\",\"doctors\\\\July2019\\\\AhFTocN5QdP1ScFjlfIe.jpg\"]', 1, 'Dr. Akbar Mehrafzan', 90, '{\n    \"1\": {\n        \"name\": \"Universty of world for Medicine\",\n        \"degree\": \"Bachelor of Medicine(BM)\",\n        \"date\": \"Dec 1991\"\n    },\n    \"2\": {\n        \"name\": \"Universty of world for Medicine1\",\n        \"degree\": \"Bachelor of Medicine(BM)1\",\n        \"date\": \"Dec 1991 1\"\n    }\n}', '{\n    \"1\": {\n        \"skill\": \"Brain Surgery\",\n        \"percent\": \"75\"\n    },\n    \"2\": {\n        \"skill\": \"Heart Surgery\",\n        \"percent\": \"65\"\n    },\n    \"3\": {\n        \"skill\": \"Trauma Surgery\",\n        \"percent\": \"85\"\n    },\n    \"4\": {\n        \"skill\": \"Central Surgery\",\n        \"percent\": \"89\"\n    },\n    \"5\": {\n        \"skill\": \"Weekly Consultancy\",\n        \"percent\": \"55\"\n    }\n}');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_category`
--

CREATE TABLE `doctor_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_category`
--

INSERT INTO `doctor_category` (`id`, `category_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(3, 5, 1, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 1, 6, NULL, NULL),
(10, 3, 6, NULL, NULL),
(11, 1, 7, NULL, NULL),
(12, 3, 7, NULL, NULL),
(13, 7, 6, NULL, NULL),
(14, 5, 2, NULL, NULL),
(15, 1, 3, NULL, NULL),
(16, 5, 3, NULL, NULL),
(17, 1, 4, NULL, NULL),
(18, 3, 4, NULL, NULL),
(19, 6, 8, NULL, NULL),
(20, 6, 9, NULL, NULL),
(21, 2, 10, NULL, NULL),
(22, 8, 10, NULL, NULL),
(23, 4, 4, NULL, NULL),
(24, 3, 11, NULL, NULL),
(25, 8, 11, NULL, NULL),
(26, 1, 12, NULL, NULL),
(27, 4, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `location` geometry DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `title`, `star`, `city_id`, `location`, `description`, `person`, `bed`, `price`, `image`, `images`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Espinas Palace Hotel', 4, 1, 0x0000000001010000002befbfbd43334f4a5defbfbdefbfbd40efbfbd4defbfbd5b4040, '<p class=\"paragraph-medium paragraph-black text-left\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; line-height: 1.6; font-size: 16px; font-family: Montserrat, sans-serif; color: #777777;\">Sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p class=\"paragraph-medium paragraph-black text-left\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; line-height: 1.6; font-size: 16px; font-family: Montserrat, sans-serif; color: #777777;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum modi libero molestias quaerat veritatis impedit consequatur est ut, officiis, sit ea qui architecto nostrum reiciendis accusantium eaque assumenda quas deserunt!</p>\n<div class=\"row\" style=\"box-sizing: border-box; display: flex; flex-wrap: wrap; margin-right: -15px; margin-left: -15px; color: #212529; font-family: Montserrat, sans-serif; font-size: 12px;\">\n<div class=\"col-md-12\" style=\"box-sizing: border-box; position: relative; width: 710px; min-height: 1px; padding-right: 15px; padding-left: 15px; flex: 0 0 100%; max-width: 100%;\">\n<ol class=\"theme-list\" style=\"box-sizing: border-box; margin: 0px 0px 10px; letter-spacing: 0px; font-size: 14px; line-height: 24px; padding: 0px;\">\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">1. Asperiores quis voluptates voluptas</li>\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">2. Asperiores quis voluptates voluptas</li>\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">3. Asperiores quis voluptates voluptas</li>\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">4. Asperiores quis voluptates voluptas</li>\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">5. Asperiores quis voluptates voluptas</li>\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">6. Asperiores quis voluptates voluptas</li>\n</ol>\n</div>\n</div>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; line-height: 1.6; color: #212529; font-family: Montserrat, sans-serif;\">&nbsp;</p>\n<p class=\"paragraph-medium paragraph-black text-left\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; line-height: 1.6; font-size: 16px; font-family: Montserrat, sans-serif; color: #777777;\">Food poisoning, also referred foodborne illness is the result of eating contaminated, spoiled, or toxic food as well as chemical or natural toxins such as poisonous mushrooms. Contamination can also occur at home if food is incorrectly handled or cooked.</p>', 3, 2, 300, 'hotels\\July2019\\sgP3Z9vl3I7rtg05nGLr.jpg', '[\"hotels\\\\July2019\\\\AQ8lgZgt8t9E1ZqT22ID.jpg\",\"hotels\\\\July2019\\\\ZTgOFvIeqqKvyMpzuWuH.jpg\",\"hotels\\\\July2019\\\\eeyyNQLHy3pNhAcnVqzE.jpg\"]', '2019-07-01 10:11:00', '2019-07-01 11:27:20', 'espinas-palace-hotel');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_hotel_item`
--

CREATE TABLE `hotel_hotel_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `hotel_item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_hotel_item`
--

INSERT INTO `hotel_hotel_item` (`id`, `hotel_id`, `hotel_item_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_items`
--

CREATE TABLE `hotel_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_items`
--

INSERT INTO `hotel_items` (`id`, `title`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Parking', 'flaticon-garage', '2019-07-01 02:40:35', '2019-07-01 02:40:35'),
(2, 'coffee shop', 'flaticon-coffee-cup', '2019-07-01 02:41:20', '2019-07-01 02:41:20'),
(3, 'Elevator', 'flaticon-elevator', '2019-07-01 02:44:46', '2019-07-01 02:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `title`, `link`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '/en/page/about-us', '2019-02-03 01:40:00', '2019-03-17 12:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(2, 'front', '2018-12-16 14:38:29', '2018-12-16 14:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-12-15 19:38:01', '2018-12-15 19:38:01', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-12-15 19:38:01', '2019-01-04 09:43:28', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-12-15 19:38:01', '2018-12-15 19:38:01', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-12-15 19:38:01', '2018-12-15 19:38:01', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2018-12-15 19:38:01', '2019-01-04 09:45:44', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 2, '2018-12-15 19:38:01', '2019-01-09 18:40:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 4, '2018-12-15 19:38:01', '2019-01-09 18:40:39', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 5, '2018-12-15 19:38:01', '2019-01-09 18:40:39', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 6, '2018-12-15 19:38:01', '2019-01-09 18:40:39', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 3, '2018-12-15 19:38:01', '2019-01-09 18:40:39', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 23, 1, '2018-12-15 19:38:02', '2019-01-09 18:39:19', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 23, 2, '2018-12-15 19:38:02', '2019-01-09 18:39:19', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 23, 13, '2018-12-15 19:38:02', '2019-02-24 22:12:04', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 1, '2018-12-15 19:38:03', '2019-01-09 18:40:39', 'voyager.hooks', NULL),
(15, 2, 'Medical tourism', '', '_self', 'fa fa-home', '#000000', NULL, 1, '2018-12-16 14:39:58', '2019-01-26 18:13:03', 'سياحة طبية', 'null'),
(18, 2, 'Blog', '', '_blank', 'fa fa-pencil-square-o', '#000000', NULL, 2, '2018-12-16 14:59:24', '2019-03-10 03:43:56', NULL, 'null'),
(19, 2, 'contact us', '', '_self', 'fa fa-envelope', '#000000', NULL, 7, '2018-12-16 15:00:23', '2019-04-01 08:51:28', 'pages.show', '{\"slug\":\"contact-us\"}'),
(21, 2, 'Packages', '', '_blank', 'fa fa-archive', '#000000', NULL, 3, '2019-01-03 14:46:02', '2019-02-05 06:09:57', 'عروضنا', 'null'),
(22, 1, 'Social Networks', '', '_self', 'voyager-world', NULL, 23, 4, '2019-01-04 08:38:41', '2019-02-08 19:23:30', 'voyager.socials.index', NULL),
(23, 1, 'Models', '', '_self', 'voyager-paw', '#000000', NULL, 5, '2019-01-04 09:45:18', '2019-01-04 09:45:28', NULL, ''),
(24, 1, 'Benefits', '', '_self', 'voyager-receipt', NULL, 23, 12, '2019-01-04 12:42:39', '2019-02-24 22:12:04', 'voyager.benefits.index', NULL),
(25, 2, 'About us', '', '_self', 'fa fa-envelope', '#000000', 19, 1, '2019-01-08 20:19:45', '2019-04-01 08:52:10', 'pages.show', '{\"slug\":\"about-us\"}'),
(26, 1, 'Banners', '', '_self', 'voyager-photos', '#000000', 23, 8, '2019-01-10 10:00:49', '2019-02-24 22:12:06', 'voyager.banners.index', 'null'),
(27, 1, 'Requests', '', '_self', 'voyager-question', NULL, 23, 10, '2019-01-10 12:41:52', '2019-02-24 22:12:04', 'voyager.requests.index', NULL),
(28, 2, 'Travel to Iran', '', '_blank', 'fa fa-plane', '#000000', 15, 1, '2019-01-23 02:05:43', '2019-01-26 19:06:19', 'travel.index', 'null'),
(29, 2, 'our services', '', '_blank', 'fa fa-medkit', '#000000', NULL, 4, '2019-01-23 02:18:17', '2019-02-05 06:09:57', 'خدماتنا', 'null'),
(30, 2, 'Quick Request', '', '_blank', 'fa fa-book', '#000000', NULL, 5, '2019-01-23 02:38:45', '2019-03-03 10:21:07', 'pages.show', '{\"slug\":\"quick-quotes\"}'),
(32, 2, 'FAQ', '', '_blank', 'fa fa-question', '#000000', NULL, 6, '2019-01-23 05:59:45', '2019-03-03 10:21:56', 'pages.show', '{\"slug\":\"faq\"}'),
(33, 2, 'visa to iran', '', '_blank', NULL, '#000000', 28, 1, '2019-01-23 06:11:51', '2019-02-02 12:35:05', 'pages.show', '{\"slug\":\"visa-to-iran\"}'),
(34, 2, 'cultural guide', '', '_blank', NULL, '#000000', 28, 2, '2019-01-23 06:12:59', '2019-01-26 20:40:02', 'دليل ثقافي', 'null'),
(35, 2, 'Our doctors', '', '_blank', NULL, '#000000', 29, 2, '2019-01-23 06:14:52', '2019-02-09 11:18:04', 'doctor.index', NULL),
(36, 2, 'Our medical centers', '', '_blank', NULL, '#000000', 29, 1, '2019-01-23 06:15:21', '2019-02-04 05:03:16', 'pages.show', '{\"slug\":\"Our-medical-centers\"}'),
(37, 2, 'our hotels', '', '_blank', NULL, '#000000', 29, 3, '2019-01-23 06:16:05', '2019-02-04 05:00:11', 'pages.show', '{\"slug\":\"Our-hotels\"}'),
(38, 2, 'cosmetic', '', '_blank', NULL, '#000000', 21, 1, '2019-01-23 06:17:17', '2019-01-26 20:58:15', 'Plastic surgery', 'null'),
(39, 2, 'Medical', '', '_blank', NULL, '#000000', 21, 2, '2019-01-23 06:18:08', '2019-01-26 20:58:15', 'Medical', 'null'),
(40, 2, 'Plastic surgery', '', '_blank', NULL, '#000000', 38, 1, '2019-01-23 06:18:47', '2019-01-23 07:42:25', 'Plastic surgery', 'null'),
(41, 2, 'Rhinoplasty', '', '_blank', NULL, '#000000', 38, 2, '2019-01-23 06:19:28', '2019-01-23 14:22:52', 'Rhinoplasty', 'null'),
(42, 2, 'Hair transplant', '', '_blank', NULL, '#000000', 38, 3, '2019-01-23 06:20:06', '2019-02-05 08:45:26', 'page.shows', '{\"slug\":\"health-Hair-transplantation\"}'),
(43, 2, 'Weight loss surgery', '', '_blank', NULL, '#000000', 38, 4, '2019-01-23 06:21:06', '2019-01-26 13:03:50', 'Weight loss surgery', 'null'),
(44, 2, 'Cosmetic dentistry', '', '_blank', NULL, '#000000', 38, 5, '2019-01-23 06:21:36', '2019-01-26 13:03:50', 'Cosmetic dentistry', 'null'),
(45, 2, 'Non-surg cosmetic operations', '', '_blank', NULL, '#000000', 38, 6, '2019-01-23 06:22:36', '2019-01-26 13:03:50', 'Non-surg cosmetic operations', 'null'),
(46, 2, 'Dental health', '', '_blank', NULL, '#000000', 39, 1, '2019-01-23 06:23:21', '2019-01-23 06:23:36', 'Dental health', 'null'),
(47, 2, 'Eye care', '', '_blank', NULL, '#000000', 39, 2, '2019-01-23 06:23:58', '2019-01-23 06:24:07', 'Eye care', 'null'),
(48, 2, 'Fertility treatment –IVF', '', '_blank', NULL, '#000000', 39, 3, '2019-01-23 06:24:31', '2019-02-05 08:50:47', 'pages.show', '{\"slug\":\"Infertility -IVF-medical\"}'),
(49, 1, 'Partners', '', '_self', 'voyager-people', '#000000', 23, 9, '2019-02-02 23:42:57', '2019-02-24 22:12:04', 'voyager.partners.index', 'null'),
(50, 1, 'Important Links', '', '_self', 'voyager-paperclip', '#000000', 23, 11, '2019-02-03 01:32:59', '2019-02-24 22:12:04', 'voyager.links.index', 'null'),
(51, 1, 'Doctors', '', '_self', 'voyager-people', '#000000', 23, 3, '2019-02-08 19:01:07', '2019-02-08 19:24:43', 'voyager.doctors.index', 'null'),
(52, 1, 'Doctors Socials', '', '_self', 'voyager-chat', '#000000', 23, 5, '2019-02-08 19:30:50', '2019-02-08 19:34:08', 'voyager.networks.index', 'null'),
(53, 2, 'Our team', '', '_self', NULL, '#000000', 19, 2, '2019-02-24 07:35:32', '2019-04-01 08:52:15', 'pages.show', '{\"slug\":\"Our-team\"}'),
(55, 1, 'Testimonials', '', '_self', 'voyager-star', '#000000', 23, 7, '2019-02-24 20:24:19', '2019-02-24 22:12:06', 'voyager.testimonials.index', 'null'),
(56, 1, 'Packages', '', '_self', 'voyager-backpack', '#000000', 23, 6, '2019-02-24 21:19:53', '2019-02-24 22:12:04', 'voyager.packages.index', 'null'),
(57, 1, 'Package Items', '', '_self', 'voyager-list-add', NULL, NULL, 8, '2019-06-29 06:08:58', '2019-06-29 06:08:58', 'voyager.package-items.index', NULL),
(58, 1, 'Package Timelines', '', '_self', 'voyager-dashboard', NULL, NULL, 9, '2019-06-30 02:33:20', '2019-06-30 02:33:20', 'voyager.timelines.index', NULL),
(59, 1, 'Cities', '', '_self', 'voyager-tree', NULL, NULL, 10, '2019-06-30 04:12:03', '2019-06-30 04:12:03', 'voyager.cities.index', NULL),
(60, 1, 'Package Prices', '', '_self', 'voyager-credit-card', NULL, NULL, 11, '2019-06-30 09:40:52', '2019-06-30 09:40:52', 'voyager.package-prices.index', NULL),
(61, 1, 'Hotels', '', '_self', 'voyager-shop', NULL, NULL, 12, '2019-07-01 01:02:22', '2019-07-01 01:02:22', 'voyager.hotels.index', NULL),
(62, 1, 'Hotel Items', '', '_self', NULL, NULL, NULL, 13, '2019-07-01 01:31:05', '2019-07-01 01:31:05', 'voyager.hotel-items.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2019_07_02_052021_create_banners_table', 0),
(28, '2019_07_02_052021_create_benefits_table', 0),
(29, '2019_07_02_052021_create_categories_table', 0),
(30, '2019_07_02_052021_create_cities_table', 0),
(31, '2019_07_02_052021_create_data_rows_table', 0),
(32, '2019_07_02_052021_create_data_types_table', 0),
(33, '2019_07_02_052021_create_doctor_category_table', 0),
(34, '2019_07_02_052021_create_doctors_table', 0),
(35, '2019_07_02_052021_create_hotel_hotel_item_table', 0),
(36, '2019_07_02_052021_create_hotel_items_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `networks`
--

CREATE TABLE `networks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `before_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `before_price`, `after_price`, `description`, `timeline`, `price`, `subtitle`, `images`, `created_at`, `updated_at`, `slug`, `options`, `background`, `parent_id`, `video`, `testimonial`) VALUES
(1, 'Hair transplant', 'From', '', '<p>test</p>', '<p>test</p>', 700, 'Package In Tehran', NULL, '2019-02-24 21:24:00', '2019-05-14 16:32:46', 'زراعة- الشعر', 'Visa;\nTransfer within Tehran;\nAccommodation;\nInterpreter;\nFollow-up;\nCity Sightseeing\n', 'packages/May2019/t6fNX1gELLVNTdTMpQES.jpg', NULL, NULL, NULL),
(2, 'Rhinoplasty', 'From', '', '<p>rerger</p>', '<p>defwfw</p>', 1600, 'Package In Tehran', NULL, '2019-02-25 12:43:00', '2019-05-14 16:31:53', 'عملية- تجميل- الأنف', 'Visa;\nTransfer within Tehran;\nAccommodation;\nInterpreter;\nFollow-up;\nCity Sightseeing\n', 'packages/May2019/ffUt2DDxX886KmEX3LI0.jpg', NULL, NULL, NULL),
(3, 'DENTAL IMPLANT', 'From', 'per tooth', '<div class=\"mceTmpl\">\n<p class=\"paragraph-medium paragraph-black\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus quod unde architecto dolorum fugiat saepe qui, repellat, eius illo eos aliquid quis fuga optio non impedit nostrum pariatur culpa dignissimos.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem molestias cumque, dolore assumenda recusandae nobis at harum suscipit temporibus aliquid laudantium, minima aspernatur inventore omnis laboriosam labore, numquam iste earum.</p>\n<div class=\"row\">\n<div class=\"col-md-6 m-auto\">\n<div class=\"theme-img theme-img-scalerotate my-2 package-page--image\"><img src=\"/images/packages/1/rhinoplasty4.jpg\" alt=\"\" /></div>\n</div>\n</div>\n<p class=\"paragraph-medium paragraph-black\">Ullum doming tamquam eu nam, est quaeque constituam inciderint ut. Alii alienum eu mei, evertitur instructior deterruisset et eum. Mel cu causae eirmod scribentur, id habeo brute tempor vim. Duo ignota denique ei, eros perpetua an mei. Bonorum debitis eu quo.</p>\n</div>', '', 300, 'Package In Tehran', '[\"packages\\\\June2019\\\\bAAHka3csc0Tr5hX6A6U.jpg\",\"packages\\\\June2019\\\\cUj2lpQDzZoelBtsfxhL.jpg\",\"packages\\\\June2019\\\\zwOdcza3RnlGqR1985ya.jpg\"]', '2019-02-25 13:03:00', '2019-06-30 10:53:46', 'dental-implant', 'Visa;\nTransfer within Tehran;\nAccommodation;\nInterpreter;\nFollow-up;\nCity Sightseeing\n\n', 'packages/June2019/B00AbTJl3cAVqWN6l134.jpg', NULL, 'ugj5q5kOqJE', 'LRaks4ZDqvw;\ntgbNymZ7vqY'),
(4, 'Mashhad', 'From', '', '', '', 100, '', NULL, '2019-06-29 06:51:25', '2019-06-29 06:51:25', 'mashhad', '', 'packages/June2019/O9B8efdq7K43dD86UX2M.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_category`
--

CREATE TABLE `package_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_category`
--

INSERT INTO `package_category` (`id`, `package_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_city`
--

CREATE TABLE `package_city` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_city`
--

INSERT INTO `package_city` (`id`, `package_id`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_items`
--

CREATE TABLE `package_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_items`
--

INSERT INTO `package_items` (`id`, `title`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Clinic & Doctor VIsit', 'fa fa-user-md', '2019-06-29 06:13:33', '2019-06-29 06:13:33'),
(2, 'Transfer', 'fa fa-taxi', '2019-06-29 06:14:38', '2019-06-29 06:14:38'),
(3, 'Sim Card & Internet', 'fa fa-wifi', '2019-06-29 06:15:31', '2019-06-29 06:15:31'),
(4, 'Visa', 'fa fa-cc-visa', '2019-06-29 06:16:19', '2019-06-29 06:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `package_package_item`
--

CREATE TABLE `package_package_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_package_item`
--

INSERT INTO `package_package_item` (`id`, `package_id`, `package_item_id`) VALUES
(1, 3, 1),
(2, 3, 3),
(3, 3, 4),
(4, 4, 1),
(5, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `package_package_price`
--

CREATE TABLE `package_package_price` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_price_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_package_price`
--

INSERT INTO `package_package_price` (`id`, `package_id`, `package_price_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_prices`
--

CREATE TABLE `package_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_prices`
--

INSERT INTO `package_prices` (`id`, `title`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Treatment', 300, '2019-06-30 09:45:10', '2019-06-30 09:45:10'),
(2, 'Treatment + 3star Hotel', 600, '2019-06-30 09:45:36', '2019-06-30 09:45:36'),
(3, 'Treatment + 5star Hotel', 900, '2019-06-30 09:46:02', '2019-06-30 09:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `package_timeline`
--

CREATE TABLE `package_timeline` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `timeline_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_timeline`
--

INSERT INTO `package_timeline` (`id`, `package_id`, `timeline_id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `css`) VALUES
(2, 1, 'About us', '', '<p><span style=\"text-decoration: underline;\"><span style=\"color: #0000ff;\"><a style=\"color: #0000ff; text-decoration: underline;\" href=\"https://medtouriran.com/en\" target=\"_blank\" rel=\"noopener noreferrer\">MedtourIran </a></span></span>is an organization established in Tehran, which provides A to Z services for medical tourists in Iran. The verified medical doctors, high quality accommodation&nbsp;and transfer services are the main values of&nbsp;<a style=\"color: #0000ff; text-decoration: underline;\" href=\"https://medtouriran.com/en\" target=\"_blank\" rel=\"noopener noreferrer\">MedtourIran.</a></p>\n<p><a class=\"btn btn-info\" title=\"Our Team\" href=\"https://medtouriran.com/en/page/Our-team\" target=\"_blank\" rel=\"noopener noreferrer\">Our Team</a></p>', 'pages/January2019/CFx6H3uyI3tcxx6oIqBJ.jpg', 'about-us', 'MedtourIran,medical tourism,Iran', 'test', 'ACTIVE', '2019-01-08 19:36:52', '2019-03-31 09:39:17', NULL),
(3, 2, 'Travel to Iran', 'Explaining Iran capabilities', '<h1 class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; text-justify: kashida; text-kashida: 0%; line-height: normal;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi;\">Why Iran is an ideal medical tourism spot?</span></h1>\n<p><span style=\"font-size: 12pt;\"><span style=\"font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi; background: white;\">Many people come to Iran due to the cost, quality, waiting period and facilities</span><span style=\"font-family: \'Times New Roman\', serif;\">. Iran </span><span style=\"font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi; background: white;\">provides better quality treatment at lower costs compared to other countries. <a title=\"Travel to Iran\" href=\"https://medtouriran.com/en/page/visa-to-iran\" target=\"_blank\" rel=\"noopener noreferrer\">Iran </a></span><span style=\"font-family: \'Times New Roman\', serif;\">has one of the best qualified surgeons in every field. With more than 4 million surgeries a year, Iran has the most competent doctors and excellent medical facilities</span></span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi;\"><a title=\"Travel to Iran\" href=\"https://medtouriran.com/en/page/visa-to-iran\" target=\"_blank\" rel=\"noopener noreferrer\">Iran</a>, with its first-class medical facilities and skilled physicians, provides <a title=\"Medical services\" href=\"https://medtouriran.com/en/page/Our-medical-centers\" target=\"_blank\" rel=\"noopener noreferrer\">health services</a> at the level of each western country at a lower cost, these qualities have made Iran an exceptional destination for patients who do not need immediate emergency treatment.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi;\">Cost of medical treatments in Iran is a fraction of being incurred in your country. In addition to providing medical treatment, you will visit the tourist destinations of Iran and have a pleasant stay.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi;\">Nose job is one of the most common surgeries in Iran, Iranian doctors have a special skill in this surgery. The quality of cosmetic surgery, especially nose surgery, is very affordable.</span></p>\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi;\">Many people can get treatment in Iran that could otherwise not afford it in their home country. Here is five main reasons that make Iran India an ideal medical tourism spot:</span></p>\n<ol>\n<li class=\"MsoNormal\" style=\"margin: 6.0pt; text-align: justify; text-justify: kashida; text-kashida: 0%; line-height: 18.0pt; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;\"><span style=\"font-size: 14pt;\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family: \'Times New Roman\', serif;\">&nbsp;</span><span style=\"mso-ascii-font-family: \'Times New Roman\'; mso-ascii-theme-font: major-bidi; mso-hansi-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-bidi; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: major-bidi;\">World class professional surgeons and doctors (medical experts)</span></span></li>\n</ol>\n<p><span style=\"mso-ascii-font-family: \'Times New Roman\'; mso-ascii-theme-font: major-bidi; mso-hansi-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-bidi; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: major-bidi;\">Despite being in a &ldquo;developing&rdquo; country, there are numerous doctors, surgeons, and specialists who are highly qualified and experienced in their fields<span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi;\">, i</span><span style=\"font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi;\">n Iran hospitals and healthcare centers, provide premium, Western-standardized care to their patients</span></span></p>\n<ol>\n<li><span style=\"font-size: 14pt;\"><span style=\"font-family: \'Times New Roman\', serif;\">Lower cast treatment (affordability</span><strong><span style=\"font-family: \'Times New Roman\', serif;\">)</span></strong></span></li>\n</ol>\n<p>&nbsp;</p>\n<ol>\n<li><span style=\"font-size: 14pt;\"><span style=\"font-family: \'Times New Roman\', serif;\">Lower cast treatment (affordability</span><strong><span style=\"font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi;\">)</span></strong></span></li>\n</ol>\n<p class=\"MsoNormal\" style=\"text-align: justify; text-justify: kashida; text-kashida: 0%; line-height: 18.0pt; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt; margin: 6.0pt 6.0pt 6.0pt .25in;\"><span style=\"font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi; background: white;\">Medical treatment in Iran offer competitive costs and help save up to 50% of expenses for medical tourists from the Arab states of the Persian Gulf, United States, Britain and other European countries</span></p>\n<p class=\"MsoListParagraph\" style=\"mso-add-space: auto; text-align: justify; text-justify: kashida; text-kashida: 0%; text-indent: -.25in; line-height: 18.0pt; mso-list: l0 level1 lfo1; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt; margin: 6.0pt 6.0pt 6.0pt .5in;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: major-bidi; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi; color: black;\"><span style=\"mso-list: Ignore;\">3-<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi;\">Low waiting period</span></p>\n<p class=\"MsoNormal\" style=\"text-align: justify; text-justify: kashida; text-kashida: 0%; line-height: 18.0pt; tab-stops: 45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt 412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt; margin: 6.0pt 6.0pt 6.0pt 21.3pt;\"><span style=\"font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi;\">The wait times for procedures in Iran are usually non-existent. Compare this to the Western nations for instance, in Canada, it takes a patient about 4 weeks to consult a specialist, whereas, in Iran, the patients have immediate access to consult a specialist and get their treatment done, many people use medical tourism in Iran as an option to get procedures done faster when they are fed up with the wait times in their native countries</span></p>\n<pre style=\"text-align: justify; text-justify: kashida; text-kashida: 0%; background: white;\"><span dir=\"RTL\" lang=\"FA\" style=\"font-size: 11.0pt; font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi; mso-bidi-language: FA;\">&nbsp;</span></pre>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"text-align: justify; text-justify: kashida; text-kashida: 0%; direction: rtl; unicode-bidi: embed;\"><span lang=\"FA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-theme-font: major-bidi; mso-hansi-theme-font: major-bidi; mso-bidi-theme-font: major-bidi; mso-bidi-language: FA;\">&nbsp;</span></p>', 'pages/January2019/W0vTURe5tYsvcVgcC8eP.jpg', 'visa-to-iran', 'Visa', 'medical tour, Iran, Visa', 'ACTIVE', '2019-01-25 02:56:43', '2019-04-06 10:22:55', NULL),
(4, 2, 'Treatment of Infertility of Women in Iran', 'MedtourIran provides this service', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">The main causes of infertility in women are:</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">1) Ovulation disorder</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">2) Impairment of uterine tubes</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">3) Endometriosis</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">4) Disorders of the uterus or uterus</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">5) Immune system disorders</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">1) Ovulation disorder</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">Ovulation disorder is a major cause of infertility in women. So that 39% of the causes of female infertility are related to this issue. Without ovulation, fertilization is not performed, and therefore the woman is not pregnant. Some women may not ovulate or ovulate irregularly and oily, and therefore may not have a monthly habit or have a mild or irregular mood, and even some women, even if they have a regular, regular habit, Have ocular disorder.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">2) Impairment of uterine tubes</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">In some women, the uterine tubes are completely or incompletely closed. As a result, the sperm does not reach the egg. The closure of the uterine tubes can be due to infection, endometriosis or adhesions after surgery. These tubes may also be closed after an ectopic pregnancy. In developing countries, the incidence of uterine tuberculosis is higher in the developing countries due to the prevalence of infectious diseases of the reproductive system. In general, 30% of the causes of female infertility are due to abnormalities in the uterine tubes.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">3) Endometriosis</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8; outline: none !important;\">Endometriosis is a condition in which the uterine stomach grows and extends beyond the uterus and covers the uterine tubes, and even closes them and in practice causes ovulation to interfere. Endometriosis is the cause of 13% of infertility cases, and about 70% of women with endometriosis are infertile.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">4) Disorders of the uterus or uterus</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">Cervical abnormalities can cause infertility, including problems with body building, neck and womb infections, or inappropriate quality of uterine secretions. On the other hand, malignant tumors of the uterus or some of the wounds on the uterus wall are responsible for infertility.</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">5) Immune system disorders</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; padding: 0px; border: 0px; outline: none; color: #656464; font-size: 13px; font-family: \'Open Sans\', sans-serif; background-color: #f8f8f8;\">Problems with the immune system and immunological factors play an important role in the development of infertility. Diagnosis and treatment of these patients is difficult. In some women, a man is secreted against the sperm of an antibody called the antibody that eliminates or inactivates the sperm, or even causes spontaneous abortion in some pregnancies.</p>\n<h2 style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; font-family: \'Open Sans\', sans-serif; line-height: 1.1; color: #1aabdd; font-size: 20px; background-color: #f8f8f8;\">&nbsp;</h2>', NULL, 'Treatment-of-Infertility-of-Women-in-Iran', 'MedtourIran,infertility ,Iran', 'MedtourIran,infertility ,Iran', 'ACTIVE', '2019-01-26 14:29:47', '2019-02-04 05:47:37', NULL),
(5, 2, 'Treatment of Infertility of men in Iran', 'medtouriran', '<p>&nbsp;</p>\n<p>1) Sperm disorders</p>\n<p>&nbsp;Naturally, the sperm is produced in the testis of the sperm and ejaculates it when ejaculated. If there is a disorder in the following cases, the chance of fertilization is reduced and the infertile man is considered.</p>\n<p>&nbsp;&nbsp;&bull; Small sperm count</p>\n<p>&nbsp; &nbsp;&bull; Sperm maturation</p>\n<p>&nbsp; &bull; Abnormal sperm shape</p>\n<p>&nbsp; &bull; Inability to properly move sperm</p>\n<p>&nbsp;Factors that affect the number, shape, maturity, and sperm motility are:</p>\n<ul>\n<li><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif;\">Infectious diseases Infectious diseases with inflammatory conditions, such as mumps, cause genital infections or inflammation and testicles disappear in the male. About 25% of men who have mumps after puberty become infertile.</span></li>\n<li><span style=\"font-family: Symbol;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;</span></span><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif;\">Hormonal disorders: Hormonal disorders cause about 2-5% of infertility problems in men. The inappropriate production of FSH and LH hormones affects the production of hormone masculinity or testosterone and sperm production.</span></li>\n<li><span style=\"font-size: 10.5pt; font-family: Verdana, sans-serif;\">Problems with the immune system: In some men, the body produces a substance called antibody that reduces sperm movements or binds together.</span></li>\n</ul>\n<p class=\"MsoNormal\">&nbsp;2) Abnormalities related to body building</p>\n<p>Some factors, such as the closure of sperm outflow tubes (deferens, epididymums), cause infertility in men. The closure of sperm outflow tubes can be due to congenital, genetic defects, infections, or genitourinary inflammation. Of course, prior surgery can also close those tubes. Among other factors, infertility in men is varicocele. In this case, the veins in the testis sacs dilate and the quality of the sperm decreases.</p>', NULL, 'treatment-of-infertility-of-men-in-iran', 'infertility,men,Iran', 'infertility,men,Iran', 'ACTIVE', '2019-01-26 14:32:19', '2019-01-26 14:35:14', NULL),
(6, 2, 'Our medical centers', 'our medical centers', '<div class=\"my-tabs\">\n<div id=\"nav-tabContent\" class=\"tab-content\">\n<div id=\"nav-home\" class=\"tab-pane fade show active\" role=\"tabpanel\" aria-labelledby=\"nav-home-tab\">&nbsp;</div>\n</div>\n</div>\n<section class=\"c67263\">\n<div class=\"col-xl-6 col-lg-6 col-md-6 col-sm-6 c35426\">\n<div class=\"col-md-12\">\n<div class=\"container\">\n<h4 id=\"i04tfp2\" data-type=\"header\">Modify your search</h4>\n<div class=\"row\">\n<div class=\"col-4\">\n<h4 id=\"iw4mbaw\" data-type=\"header\">Treatment</h4>\n<select id=\"single_select\" class=\"custom-select\">\n<option value=\"1\">Rhinoplasty</option>\n<option value=\"2\">Dental health</option>\n<option value=\"3\">Hair transplant</option>\n</select></div>\n<div class=\"col-4\">\n<h4 id=\"i8qtgdd\" data-type=\"header\">Location</h4>\n<select class=\"custom-select\">\n<option value=\"1\">Tehran</option>\n<option value=\"2\">Shiraz</option>\n<option value=\"3\">Mashhad</option>\n</select></div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section class=\"c68264\">\n<div class=\"card-group\">&nbsp;</div>\n</section>\n<div class=\"row c74646\">&nbsp;</div>\n<section class=\"c108987\">\n<div class=\"card-group\">\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/Gandhi.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\">Gandi Hotel Hospital (Tehran)</h5>\n<p class=\"card-text\" data-type=\"paragraph\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\n<button class=\"btn btn-primary\" type=\"button\">More</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/atieh.jpeg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\">Atieh hospital (Tehran)</h5>\n<p class=\"card-text\" data-type=\"paragraph\">This card has supporting text below as a natural lead-in to additional content.</p>\n<div>&nbsp;</div>\n<button class=\"btn btn-primary\" type=\"button\">More</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/erfan.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\">Erfan hospital (Tehran)</h5>\n<p class=\"card-text\" data-type=\"paragraph\">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height&nbsp;</p>\n<button class=\"btn btn-primary\" type=\"button\">More</button></div>\n</div>\n</div>\n<div class=\"card-group\">\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/WhatsApp Image 2019-02-14 at 10.22.104.jpeg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\">Basir eye center (Shiraz)</h5>\n<p class=\"card-text\" data-type=\"paragraph\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\n<button class=\"btn btn-primary\" type=\"button\">More</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/khodadoost.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\">Khodadoost eye center (Shiraz)</h5>\n<p class=\"card-text\" data-type=\"paragraph\">This card has supporting text below as a natural lead-in to additional content.</p>\n<div>&nbsp;</div>\n<button class=\"btn btn-primary\" type=\"button\">More</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/central.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\">Central hospital (Shiraz)</h5>\n<p class=\"card-text\" data-type=\"paragraph\">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height&nbsp;</p>\n<button class=\"btn btn-primary\" type=\"button\">More</button></div>\n</div>\n</div>\n</section>\n<div class=\"row c115482\">&nbsp;</div>', 'pages/February2019/8XVlUmRmz8kHaf7U0gjx.png', 'our-medical-centers', 'our medical centers', 'our medical centers', 'ACTIVE', '2019-02-04 04:52:46', '2019-04-01 11:11:19', '<style>\r\n#i04tfp2{\r\n  font-size:21px;\r\n  font-family:\"Comic Sans MS\", cursive, sans-serif;\r\n  letter-spacing:0px;\r\n  font-weight:500;\r\n  line-height:34px;\r\n  text-align:left;\r\n  text-shadow:rgb(36, 116, 211) 0px 0px 5px;\r\n}\r\n#iw4mbaw{\r\n  font-size:20px;\r\n  color:rgb(0, 3, 6);\r\n}\r\n#i8qtgdd{\r\n  font-size:20px;\r\n  color:rgb(0, 3, 6);\r\n}\r\n.img-gradient{\r\n  position:relative;\r\n  display:inline-block;\r\n}\r\n.img-gradient::after{\r\n  content:\"\";\r\n  position:absolute;\r\n  left:0px;\r\n  top:0px;\r\n  width:100%;\r\n  height:100%;\r\n  display:inline-block;\r\n  background-image:linear-gradient(rgba(0, 47, 75, 0.5) 0%, rgba(220, 66, 37, 0.5) 100%);\r\n  background-position-x:initial;\r\n  background-position-y:initial;\r\n  background-size:initial;\r\n  background-repeat-x:initial;\r\n  background-repeat-y:initial;\r\n  background-attachment:initial;\r\n  background-origin:initial;\r\n  background-clip:initial;\r\n  background-color:initial;\r\n}\r\n.img-gradient img{\r\n  display:block;\r\n}\r\n.img-gradient-overlay{\r\n  background-image:linear-gradient(rgba(0, 47, 75, 0.5) 0%, rgba(220, 66, 37, 0.5) 100%);\r\n  background-position-x:initial;\r\n  background-position-y:initial;\r\n  background-size:initial;\r\n  background-repeat-x:initial;\r\n  background-repeat-y:initial;\r\n  background-attachment:initial;\r\n  background-origin:initial;\r\n  background-clip:initial;\r\n  background-color:initial;\r\n  border-top-left-radius:0.3rem;\r\n  border-top-right-radius:0.3rem;\r\n  border-bottom-right-radius:0.3rem;\r\n  border-bottom-left-radius:0.3rem;\r\n}\r\n.c105280{\r\n  background-image:url(\"https://mdbootstrap.com/img/Photos/Horizontal/City/6-col/img%20(47).jpg\");\r\n}\r\n.c107632{\r\n  width:18rem;\r\n}\r\n.card-img-top{\r\n  height:209px;\r\n  margin-top:0px;\r\n  margin-right:-6px;\r\n  margin-bottom:0px;\r\n  margin-left:0px;\r\n  width:279px;\r\n  border-radius:4px;\r\n  border:0 none rgb(33, 37, 41);\r\n  left:60px;\r\n  float:none;\r\n  margin:0 -25px 0 0;\r\n  text-align:center;\r\n}\r\n.card{\r\n  margin-top:0px;\r\n  margin-right:14px;\r\n  margin-bottom:0px;\r\n  margin-left:0px;\r\n  background-color:rgb(255, 255, 255);\r\n  border-top-width:1px;\r\n  border-right-width:1px;\r\n  border-bottom-width:1px;\r\n  border-left-width:1px;\r\n  border-top-style:solid;\r\n  border-right-style:solid;\r\n  border-bottom-style:solid;\r\n  border-left-style:solid;\r\n  border-top-color:rgb(26, 171, 221);\r\n  border-right-color:rgb(26, 171, 221);\r\n  border-bottom-color:rgb(26, 171, 221);\r\n  border-left-color:rgb(26, 171, 221);\r\n  border-image-source:initial;\r\n  border-image-slice:initial;\r\n  border-image-width:initial;\r\n  border-image-outset:initial;\r\n  border-image-repeat:initial;\r\n}\r\n.card-body{\r\n  margin-top:0px;\r\n  margin-right:10px;\r\n  margin-bottom:0px;\r\n  margin-left:0px;\r\n}\r\n.c108987{\r\n  min-height:75px;\r\n}\r\n.card-text{\r\n  min-height:12px;\r\n  margin-top:0px;\r\n  margin-right:0px;\r\n  margin-bottom:19px;\r\n  margin-left:0px;\r\n}\r\n.col-xl-6.col-lg-6.col-md-6.col-sm-6.c35426{\r\n  margin-top:0px;\r\n  margin-right:0px;\r\n  margin-bottom:14px;\r\n  margin-left:0px;\r\n}\r\n.c115490{\r\n  min-height:75px;\r\n}\r\n.c115499{\r\n  min-height:75px;\r\n}\r\n.c115508{\r\n  min-height:75px;\r\n}\r\n.c115482{\r\n  min-height:75px;\r\n}\r\n.col-xl-4.col-lg-4.col-md-4.col-sm-4.col-12.c115490{\r\n  margin-top:15px;\r\n  margin-right:14px;\r\n  margin-bottom:0px;\r\n  margin-left:14px;\r\n  padding-top:20px;\r\n  padding-right:1px;\r\n  padding-bottom:20px;\r\n  padding-left:15px;\r\n}\r\n.col-xl-4.col-lg-4.col-md-4.col-sm-4.col-12.c115499{\r\n  margin-top:15px;\r\n  margin-right:14px;\r\n  margin-bottom:0px;\r\n  margin-left:0px;\r\n}\r\n.col-xl-4.col-lg-4.col-md-4.col-sm-4.col-12.c115508{\r\n  margin-top:15px;\r\n  margin-right:14px;\r\n  margin-bottom:0px;\r\n  margin-left:0px;\r\n  border-top-width:initial;\r\n  border-right-width:initial;\r\n  border-bottom-width:initial;\r\n  border-left-width:initial;\r\n  border-top-style:solid;\r\n  border-right-style:solid;\r\n  border-bottom-style:solid;\r\n  border-left-style:solid;\r\n  border-top-color:rgb(26, 171, 221);\r\n  border-right-color:rgb(26, 171, 221);\r\n  border-bottom-color:rgb(26, 171, 221);\r\n  border-left-color:rgb(26, 171, 221);\r\n  border-image-source:initial;\r\n  border-image-slice:initial;\r\n  border-image-width:initial;\r\n  border-image-outset:initial;\r\n  border-image-repeat:initial;\r\n}\r\n\r\n</style>'),
(7, 2, 'our doctors', 'our doctors', '', NULL, 'our-doctors', 'our doctors', 'our doctors', 'ACTIVE', '2019-02-04 04:53:48', '2019-02-04 05:05:45', NULL),
(8, 2, 'our hotels', '', '<div class=\"movie-card\">\n<div class=\"container\">\n<div class=\"my-tabs\">&nbsp;&nbsp;</div>\n<section class=\"c67263\">\n<div class=\"col-xl-6 col-lg-6 col-md-6 col-sm-6 c35426\">\n<div class=\"col-md-12\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-4\">\n<h4 id=\"iw4mbaw\" data-type=\"header\">Type</h4>\n<select id=\"single_select\" class=\"custom-select\">\n<option value=\"1\">Hotel</option>\n<option value=\"2\">Hostel</option>\n</select></div>\n<div class=\"col-4\">\n<h4 id=\"i8qtgdd\" data-type=\"header\">Location</h4>\n<select class=\"custom-select\">\n<option value=\"1\">Tehran</option>\n<option value=\"2\">Shiraz</option>\n<option value=\"3\">Mashhad</option>\n</select></div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<div class=\"row\">&nbsp;</div>\n</div>\n</div>\n<section class=\"c68264\">\n<div class=\"card-group\">&nbsp;</div>\n</section>\n<div class=\"row c74646\">&nbsp;</div>\n<section class=\"c108987\">\n<div class=\"card-group\">\n<div class=\"card\"><img class=\"card-img-top\" title=\"Aramis Hotel (Tehran)\" src=\"/storage/pages/April2019/aramis.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\">Aramis Hotel (Tehran)</h5>\n<p class=\"card-text\" data-type=\"paragraph\"><strong>Hotel facilities</strong>: Elevator, conference room, meeting room, fire alarm, gym, laundry, prayer room, hairdresser, ATM, coffee shop, parking.</p>\n<button class=\"btn btn-primary\" type=\"button\">More</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" title=\"Parsian Evin Hotel\" src=\"/storage/pages/April2019/Parsian evin2.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Parsian Evin Hotel (Tehran)</span></span></h5>\n<p class=\"card-text\" data-type=\"paragraph\"><strong>Hotel facilities</strong>: Elevator, conference room, meeting room, fire alarm, gym, laundry, prayer room, hairdresser, ATM, coffee shop, parking.</p>\n<div>&nbsp;</div>\n<button class=\"btn btn-primary\" type=\"button\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">More</span></span></button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" title=\"Zandieh Hotel (Shiraz)\" src=\"/storage/pages/April2019/esteghlal.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" /><br />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\">Esteghlal Hotel (Tehran)</h5>\n<p class=\"card-text\" data-type=\"paragraph\"><strong>Hotel facilities</strong>:Elevator, conference room, meeting room, fire alarm, gym, laundry, prayer room, hairdresser, ATM, coffee shop, parking.&nbsp;</p>\n<button class=\"btn btn-primary\" type=\"button\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">More</span></span></button></div>\n</div>\n</div>\n<div class=\"card-group\">\n<div class=\"card\"><img class=\"card-img-top\" title=\"Zandieh Hotel (Shiraz)\" src=\"/storage/pages/March2019/11.jpeg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\">Zandieh Hotel (Shiraz)</h5>\n<p class=\"card-text\" data-type=\"paragraph\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><strong>Hotel facilities</strong>:Elevator, conference room, meeting room, fire alarm, gym, laundry, prayer room, hairdresser, ATM, coffee shop, parking.</span></span></p>\n<button class=\"btn btn-primary\" type=\"button\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">More</span></span></button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" title=\"Homa Hotel (Shiraz)\" src=\"/storage/pages/March2019/Homa (shiraz).jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">Homa Hotel (Shiraz)</span></span></h5>\n<p class=\"card-text\" data-type=\"paragraph\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><strong>Hotel facilities</strong>:Elevator, conference room, meeting room, fire alarm, gym, laundry, prayer room, hairdresser, ATM, coffee shop, parking.</span></span></p>\n<div>&nbsp;</div>\n<button class=\"btn btn-primary\" type=\"button\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">More</span></span></button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" title=\"Arg Hotel (Shiraz)\" src=\"/storage/pages/March2019/arg hotel (shiraz).jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" data-type=\"header\">Arg Hotel (Shiraz)</h5>\n<p class=\"card-text\" data-type=\"paragraph\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\"><strong>Hotel facilities</strong>:Elevator, conference room, meeting room, fire alarm, gym, laundry, prayer room, hairdresser, ATM, coffee shop, parking&nbsp;</span></span></p>\n<button class=\"btn btn-primary\" type=\"button\"><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">More</span></span></button></div>\n</div>\n</div>\n</section>\n<div class=\"row c115482\">&nbsp;</div>\n<div class=\"description\">\n<div class=\"column2\"><!-- end avatars --></div>\n<!-- end column2 --></div>\n<!-- end description -->\n<p>&nbsp;</p>\n<!-- end container -->\n<p>&nbsp;</p>\n<!-- end movie-card -->', 'pages/February2019/BW8lMpvIvVW80vhRxJ5I.png', 'our-hotels', 'our hotels', 'our hotels', 'ACTIVE', '2019-02-04 04:54:30', '2019-04-01 10:55:03', '<style>\r\n#i04tfp2{\r\n  font-size:21px;\r\n  font-family:\"Comic Sans MS\", cursive, sans-serif;\r\n  letter-spacing:0px;\r\n  font-weight:500;\r\n  line-height:34px;\r\n  text-align:left;\r\n  text-shadow:rgb(36, 116, 211) 0px 0px 5px;\r\n}\r\n#iw4mbaw{\r\n  font-size:20px;\r\n  color:rgb(0, 3, 6);\r\n}\r\n#i8qtgdd{\r\n  font-size:20px;\r\n  color:rgb(0, 3, 6);\r\n}\r\n.img-gradient{\r\n  position:relative;\r\n  display:inline-block;\r\n}\r\n.img-gradient::after{\r\n  content:\"\";\r\n  position:absolute;\r\n  left:0px;\r\n  top:0px;\r\n  width:100%;\r\n  height:100%;\r\n  display:inline-block;\r\n  background-image:linear-gradient(rgba(0, 47, 75, 0.5) 0%, rgba(220, 66, 37, 0.5) 100%);\r\n  background-position-x:initial;\r\n  background-position-y:initial;\r\n  background-size:initial;\r\n  background-repeat-x:initial;\r\n  background-repeat-y:initial;\r\n  background-attachment:initial;\r\n  background-origin:initial;\r\n  background-clip:initial;\r\n  background-color:initial;\r\n}\r\n.img-gradient img{\r\n  display:block;\r\n}\r\n.img-gradient-overlay{\r\n  background-image:linear-gradient(rgba(0, 47, 75, 0.5) 0%, rgba(220, 66, 37, 0.5) 100%);\r\n  background-position-x:initial;\r\n  background-position-y:initial;\r\n  background-size:initial;\r\n  background-repeat-x:initial;\r\n  background-repeat-y:initial;\r\n  background-attachment:initial;\r\n  background-origin:initial;\r\n  background-clip:initial;\r\n  background-color:initial;\r\n  border-top-left-radius:0.3rem;\r\n  border-top-right-radius:0.3rem;\r\n  border-bottom-right-radius:0.3rem;\r\n  border-bottom-left-radius:0.3rem;\r\n}\r\n.c105280{\r\n  background-image:url(\"https://mdbootstrap.com/img/Photos/Horizontal/City/6-col/img%20(47).jpg\");\r\n}\r\n.c107632{\r\n  width:18rem;\r\n}\r\n.card-img-top{\r\n  height:234px;\r\n  margin-top:0px;\r\n  margin-right:-6px;\r\n  margin-bottom:0px;\r\n  margin-left:0px;\r\n  width:312px;\r\n  border-radius:4px;\r\n  border:0 none rgb(33, 37, 41);\r\n  left:60px;\r\n  float:none;\r\n  margin:0 -25px 0 0;\r\n  text-align:center;\r\n}\r\n.card{\r\n  margin-top:0px;\r\n  margin-right:14px;\r\n  margin-bottom:0px;\r\n  margin-left:0px;\r\n  background-color:rgb(255, 255, 255);\r\n  border-top-width:1px;\r\n  border-right-width:1px;\r\n  border-bottom-width:1px;\r\n  border-left-width:1px;\r\n  border-top-style:solid;\r\n  border-right-style:solid;\r\n  border-bottom-style:solid;\r\n  border-left-style:solid;\r\n  border-top-color:rgb(26, 171, 221);\r\n  border-right-color:rgb(26, 171, 221);\r\n  border-bottom-color:rgb(26, 171, 221);\r\n  border-left-color:rgb(26, 171, 221);\r\n  border-image-source:initial;\r\n  border-image-slice:initial;\r\n  border-image-width:initial;\r\n  border-image-outset:initial;\r\n  border-image-repeat:initial;\r\n}\r\n.card-body{\r\n  margin-top:0px;\r\n  margin-right:10px;\r\n  margin-bottom:0px;\r\n  margin-left:0px;\r\n}\r\n.c108987{\r\n  min-height:75px;\r\n}\r\n.card-text{\r\n  min-height:12px;\r\n  margin-top:0px;\r\n  margin-right:0px;\r\n  margin-bottom:19px;\r\n  margin-left:0px;\r\n}\r\n.col-xl-6.col-lg-6.col-md-6.col-sm-6.c35426{\r\n  margin-top:0px;\r\n  margin-right:0px;\r\n  margin-bottom:14px;\r\n  margin-left:0px;\r\n}\r\n.c115490{\r\n  min-height:75px;\r\n}\r\n.c115499{\r\n  min-height:75px;\r\n}\r\n.c115508{\r\n  min-height:75px;\r\n}\r\n.c115482{\r\n  min-height:75px;\r\n}\r\n.col-xl-4.col-lg-4.col-md-4.col-sm-4.col-12.c115490{\r\n  margin-top:15px;\r\n  margin-right:14px;\r\n  margin-bottom:0px;\r\n  margin-left:14px;\r\n  padding-top:20px;\r\n  padding-right:1px;\r\n  padding-bottom:20px;\r\n  padding-left:15px;\r\n}\r\n.col-xl-4.col-lg-4.col-md-4.col-sm-4.col-12.c115499{\r\n  margin-top:15px;\r\n  margin-right:14px;\r\n  margin-bottom:0px;\r\n  margin-left:0px;\r\n}\r\n.col-xl-4.col-lg-4.col-md-4.col-sm-4.col-12.c115508{\r\n  margin-top:15px;\r\n  margin-right:14px;\r\n  margin-bottom:0px;\r\n  margin-left:0px;\r\n  border-top-width:initial;\r\n  border-right-width:initial;\r\n  border-bottom-width:initial;\r\n  border-left-width:initial;\r\n  border-top-style:solid;\r\n  border-right-style:solid;\r\n  border-bottom-style:solid;\r\n  border-left-style:solid;\r\n  border-top-color:rgb(26, 171, 221);\r\n  border-right-color:rgb(26, 171, 221);\r\n  border-bottom-color:rgb(26, 171, 221);\r\n  border-left-color:rgb(26, 171, 221);\r\n  border-image-source:initial;\r\n  border-image-slice:initial;\r\n  border-image-width:initial;\r\n  border-image-outset:initial;\r\n  border-image-repeat:initial;\r\n}\r\n\r\n</style>'),
(9, 2, 'Quick Quotes', 'Med Tour Iran', '<div class=\"container\">&nbsp;</div>\n<p>&nbsp;</p>\n<div class=\"card\">\n<div class=\"card-body\"><form action=\"#\">\n<div class=\"form-group\"><label for=\"exampleInputEmail\">First Name:</label> <input type=\"email\" class=\"form-control\" placeholder=\"your@email.com\" /></div>\n<div class=\"form-group\"><label for=\"exampleInputEmail\">Last Name:</label> <input type=\"email\" class=\"form-control\" placeholder=\"your@email.com\" /></div>\n<div class=\"form-group\"><label for=\"exampleInputEmail\">Your country</label> <input type=\"email\" class=\"form-control\" placeholder=\"your@email.com\" /></div>\n<div class=\"form-group\"><label for=\"exampleInputMessage\">Your Message:</label> <textarea class=\"form-control\" name=\"message\" rows=\"5\"></textarea></div>\n<button class=\"btn btn-primary\" type=\"submit\">Submit</button></form></div>\n</div>', 'pages/March2019/dZVgPSL5ry3qUcLLCjR4.jpg', 'quick-quotes', 'quick quotes', 'quick quotes', 'ACTIVE', '2019-02-04 05:05:35', '2019-03-01 19:48:03', NULL);
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `css`) VALUES
(10, 2, 'FAQ', 'FAQ', '<section class=\"faq\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-md-6\">\n<h1>Booking</h1>\n<div id=\"heading2\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse1\" data-toggle=\"collapse\" data-parent=\"#accordion1\" aria-expanded=\"false\" aria-controls=\"collapse2\">How can I book a medical treatment in Iran?</a></h4>\n</div>\n<div id=\"collapse2\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading2\">\n<div class=\"panel-body\">Sint diceret in usu. Cu duo exerci regione neglegentur, scripta alterum facilis has cu. Admodum probatus periculis nam eu, primis patrioque vim et. Utinam scaevola eum in. Etiam causae intellegebat id has, ei usu doming reprehendunt.</div>\n</div>\n<div id=\"accordion1\" class=\"panel-group\" role=\"tablist\" aria-multiselectable=\"true\">\n<div class=\"panel panel-default\">\n<div id=\"heading1\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse2\" data-toggle=\"collapse\" data-parent=\"#accordion1\" aria-expanded=\"false\" aria-controls=\"collapse2\">Sint diceret in usu. Cu duo exerci regione neglegentur.</a></h4>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"collapse2\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading2\">\n<div class=\"panel-body\">Sint diceret in usu. Cu duo exerci regione neglegentur, scripta alterum facilis has cu. Admodum probatus periculis nam eu, primis patrioque vim et. Utinam scaevola eum in. Etiam causae intellegebat id has, ei usu doming reprehendunt.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading3\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse3\" data-toggle=\"collapse\" data-parent=\"#accordion1\" aria-expanded=\"false\" aria-controls=\"collapse3\"> Vim at nobis veritus cotidieque, mei ex modo dicta. </a></h4>\n</div>\n<div id=\"collapse3\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading3\">\n<div class=\"panel-body\">Vim at nobis veritus cotidieque, mei ex modo dicta. Tollit labores ad pri, his et ubique admodum, at consul officiis cotidieque has. An altera fierent consequat qui, cu elitr legere ridens ius. Vocibus hendrerit usu cu, ad eam case tation ancillae. Ut cum invenire suavitate, error tempor at sit.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading4\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse4\" data-toggle=\"collapse\" data-parent=\"#accordion1\" aria-expanded=\"false\" aria-controls=\"collapse4\"> Pri wisi civibus at, propriae epicurei id his. </a></h4>\n</div>\n<div id=\"collapse4\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading4\">\n<div class=\"panel-body\">Pri wisi civibus at, propriae epicurei id his. Et dico quidam has, et mea illud euripidis temporibus. Esse minimum ius ea. Duo recusabo deseruisse ex, te quaestio hendrerit pri. Unum etiam graeco has at. Wisi vidit eligendi sed at, ad qui vide nulla virtute. Duo ei justo dicam.</div>\n</div>\n</div>\n</div>\n<h1>Membership</h1>\n<div id=\"accordion2\" class=\"panel-group\" role=\"tablist\" aria-multiselectable=\"true\">\n<div class=\"panel panel-default\">\n<div id=\"heading5\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse5\" data-toggle=\"collapse\" data-parent=\"#accordion2\" aria-expanded=\"false\" aria-controls=\"collapse5\"> Lorem ipsum dolor sit amet, summo pericula eam ea. </a></h4>\n</div>\n<div id=\"collapse5\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading5\">\n<div class=\"panel-body\">Lorem ipsum dolor sit amet, summo pericula eam ea. Eu vel erant libris. Ad utroque mediocrem consequuntur eam. Agam nobis assueverit et est. Ex pri animal repudiandae necessitatibus, at cum facete iisque.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading6\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse6\" data-toggle=\"collapse\" data-parent=\"#accordion2\" aria-expanded=\"false\" aria-controls=\"collapse6\"> Sint diceret in usu. Cu duo exerci regione neglegentur. </a></h4>\n</div>\n<div id=\"collapse6\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading6\">\n<div class=\"panel-body\">Sint diceret in usu. Cu duo exerci regione neglegentur, scripta alterum facilis has cu. Admodum probatus periculis nam eu, primis patrioque vim et. Utinam scaevola eum in. Etiam causae intellegebat id has, ei usu doming reprehendunt.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading7\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse7\" data-toggle=\"collapse\" data-parent=\"#accordion2\" aria-expanded=\"false\" aria-controls=\"collapse7\"> Vim at nobis veritus cotidieque, mei ex modo dicta. </a></h4>\n</div>\n<div id=\"collapse7\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading7\">\n<div class=\"panel-body\">Vim at nobis veritus cotidieque, mei ex modo dicta. Tollit labores ad pri, his et ubique admodum, at consul officiis cotidieque has. An altera fierent consequat qui, cu elitr legere ridens ius. Vocibus hendrerit usu cu, ad eam case tation ancillae. Ut cum invenire suavitate, error tempor at sit.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading8\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse8\" data-toggle=\"collapse\" data-parent=\"#accordion2\" aria-expanded=\"false\" aria-controls=\"collapse8\"> Pri wisi civibus at, propriae epicurei id his. </a></h4>\n</div>\n<div id=\"collapse8\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading8\">\n<div class=\"panel-body\">Pri wisi civibus at, propriae epicurei id his. Et dico quidam has, et mea illud euripidis temporibus. Esse minimum ius ea. Duo recusabo deseruisse ex, te quaestio hendrerit pri. Unum etiam graeco has at. Wisi vidit eligendi sed at, ad qui vide nulla virtute. Duo ei justo dicam.</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"col-md-6\">\n<h1>Lab Tests</h1>\n<div id=\"accordion3\" class=\"panel-group\" role=\"tablist\" aria-multiselectable=\"true\">\n<div class=\"panel panel-default\">\n<div id=\"heading9\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse9\" data-toggle=\"collapse\" data-parent=\"#accordion3\" aria-expanded=\"false\" aria-controls=\"collapse9\"> Lorem ipsum dolor sit amet, summo pericula eam ea. </a></h4>\n</div>\n<div id=\"collapse9\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading9\">\n<div class=\"panel-body\">Lorem ipsum dolor sit amet, summo pericula eam ea. Eu vel erant libris. Ad utroque mediocrem consequuntur eam. Agam nobis assueverit et est. Ex pri animal repudiandae necessitatibus, at cum facete iisque.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading10\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse10\" data-toggle=\"collapse\" data-parent=\"#accordion3\" aria-expanded=\"false\" aria-controls=\"collapse10\"> Sint diceret in usu. Cu duo exerci regione neglegentur. </a></h4>\n</div>\n<div id=\"collapse10\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading10\">\n<div class=\"panel-body\">Sint diceret in usu. Cu duo exerci regione neglegentur, scripta alterum facilis has cu. Admodum probatus periculis nam eu, primis patrioque vim et. Utinam scaevola eum in. Etiam causae intellegebat id has, ei usu doming reprehendunt.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading11\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse11\" data-toggle=\"collapse\" data-parent=\"#accordion3\" aria-expanded=\"false\" aria-controls=\"collapse11\"> Vim at nobis veritus cotidieque, mei ex modo dicta. </a></h4>\n</div>\n<div id=\"collapse11\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading11\">\n<div class=\"panel-body\">Vim at nobis veritus cotidieque, mei ex modo dicta. Tollit labores ad pri, his et ubique admodum, at consul officiis cotidieque has. An altera fierent consequat qui, cu elitr legere ridens ius. Vocibus hendrerit usu cu, ad eam case tation ancillae. Ut cum invenire suavitate, error tempor at sit.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading12\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse12\" data-toggle=\"collapse\" data-parent=\"#accordion3\" aria-expanded=\"false\" aria-controls=\"collapse12\"> Pri wisi civibus at, propriae epicurei id his. </a></h4>\n</div>\n<div id=\"collapse12\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading12\">\n<div class=\"panel-body\">Pri wisi civibus at, propriae epicurei id his. Et dico quidam has, et mea illud euripidis temporibus. Esse minimum ius ea. Duo recusabo deseruisse ex, te quaestio hendrerit pri. Unum etiam graeco has at. Wisi vidit eligendi sed at, ad qui vide nulla virtute. Duo ei justo dicam.</div>\n</div>\n</div>\n</div>\n<h1>Clinical Service</h1>\n<div id=\"accordion4\" class=\"panel-group\" role=\"tablist\" aria-multiselectable=\"true\">\n<div class=\"panel panel-default\">\n<div id=\"heading13\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse13\" data-toggle=\"collapse\" data-parent=\"#accordion4\" aria-expanded=\"false\" aria-controls=\"collapse13\"> Lorem ipsum dolor sit amet, summo pericula eam ea. </a></h4>\n</div>\n<div id=\"collapse13\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading13\">\n<div class=\"panel-body\">Lorem ipsum dolor sit amet, summo pericula eam ea. Eu vel erant libris. Ad utroque mediocrem consequuntur eam. Agam nobis assueverit et est. Ex pri animal repudiandae necessitatibus, at cum facete iisque.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading14\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse14\" data-toggle=\"collapse\" data-parent=\"#accordion4\" aria-expanded=\"false\" aria-controls=\"collapse14\"> Sint diceret in usu. Cu duo exerci regione neglegentur. </a></h4>\n</div>\n<div id=\"collapse14\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading14\">\n<div class=\"panel-body\">Sint diceret in usu. Cu duo exerci regione neglegentur, scripta alterum facilis has cu. Admodum probatus periculis nam eu, primis patrioque vim et. Utinam scaevola eum in. Etiam causae intellegebat id has, ei usu doming reprehendunt.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading15\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse15\" data-toggle=\"collapse\" data-parent=\"#accordion4\" aria-expanded=\"false\" aria-controls=\"collapse15\"> Vim at nobis veritus cotidieque, mei ex modo dicta. </a></h4>\n</div>\n<div id=\"collapse15\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading15\">\n<div class=\"panel-body\">Vim at nobis veritus cotidieque, mei ex modo dicta. Tollit labores ad pri, his et ubique admodum, at consul officiis cotidieque has. An altera fierent consequat qui, cu elitr legere ridens ius. Vocibus hendrerit usu cu, ad eam case tation ancillae. Ut cum invenire suavitate, error tempor at sit.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading16\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse16\" data-toggle=\"collapse\" data-parent=\"#accordion4\" aria-expanded=\"false\" aria-controls=\"collapse16\"> Pri wisi civibus at, propriae epicurei id his. </a></h4>\n</div>\n<div id=\"collapse16\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading16\">\n<div class=\"panel-body\">Pri wisi civibus at, propriae epicurei id his. Et dico quidam has, et mea illud euripidis temporibus. Esse minimum ius ea. Duo recusabo deseruisse ex, te quaestio hendrerit pri. Unum etiam graeco has at. Wisi vidit eligendi sed at, ad qui vide nulla virtute. Duo ei justo dicam.</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>', NULL, 'faq', 'FAQ', 'FAQ', 'ACTIVE', '2019-02-04 05:06:32', '2019-03-28 06:54:47', NULL),
(12, 2, 'contact us', 'العربیه', '<p><span style=\"text-decoration: underline;\"><span style=\"color: #0000ff;\"><a style=\"color: #0000ff; text-decoration: underline;\" href=\"https://medtouriran.com/en\" target=\"_blank\" rel=\"noopener noreferrer\">MedtourIran </a></span></span>is an organization established in Tehran, which provides A to Z services for medical tourists in Iran. The verified medical doctors, high quality accommodation&nbsp;and transfer services are the main values of&nbsp;<a style=\"color: #0000ff; text-decoration: underline;\" href=\"https://medtouriran.com/en\" target=\"_blank\" rel=\"noopener noreferrer\">MedtourIran.</a></p>\n<p><a class=\"btn btn-info\" title=\"Our Team\" href=\"https://medtouriran.com/en/page/Our-team\" target=\"_blank\" rel=\"noopener noreferrer\">Our Team</a></p>\n<p>&nbsp;</p>', NULL, 'contact-us', 'contact us', 'contact us', 'INACTIVE', '2019-02-04 06:46:17', '2019-03-31 09:38:58', '<style>\r\n:root{\r\n  --jumbotron-padding-y: 3rem;\r\n}\r\n.jumbotron{\r\n  padding-top:var(--jumbotron-padding-y);\r\n  padding-bottom:var(--jumbotron-padding-y);\r\n  margin-bottom:0px;\r\n  background-color:rgb(255, 255, 255);\r\n}\r\n.jumbotron p:last-child{\r\n  margin-bottom:0px;\r\n}\r\n.jumbotron-heading{\r\n  font-weight:300;\r\n}\r\n.jumbotron .container{\r\n  max-width:40rem;\r\n}\r\nfooter{\r\n  padding-top:3rem;\r\n  padding-bottom:3rem;\r\n}\r\nfooter p{\r\n  margin-bottom:0.25rem;\r\n}\r\n@media (min-width: 768px){\r\n  .jumbotron{\r\n	padding-top:calc(var(--jumbotron-padding-y) * 2);\r\n	padding-bottom:calc(var(--jumbotron-padding-y) * 2);\r\n  }\r\n}\r\n</style>'),
(13, 2, 'Gallery', 'Gallery', '<section class=\"bg-dark\"></section>\n<div class=\"container\">\n<div class=\"row text-center text-lg-left\">\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/pWkk7iiCoDM/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/aob0ukAYfuI/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/EUfxH-pze7s/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/M185_qYH8vg/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/sesveuG_rNo/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/AvhMzHwiE_0/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/2gYsZUmockw/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/EMSDtjVHdQ8/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/8mUEy0ABdNE/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/G9Rfc1qccH4/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/aJeH0KcFkuc/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n<div class=\"col-lg-3 col-md-4 col-xs-6\"><a class=\"d-block mb-4\" href=\"#\"><img class=\"img-fluid img-thumbnail\" src=\"https://source.unsplash.com/p2TQ-3Bh3Oo/400x300\" alt=\"\" data-type=\"image\" /></a></div>\n</div>\n</div>', NULL, 'gallery', 'Gallery', 'Gallery', 'INACTIVE', '2019-02-05 06:06:34', '2019-04-15 11:11:14', '<style>\r\n\r\n.main-timeline7{overflow:hidden;position:relative}\r\n.main-timeline7 .timeline{width:50%;float:left;z-index:1;position:relative}\r\n.main-timeline7 .timeline:after,.main-timeline7 .timeline:before{content:\"\";display:block;clear:both}\r\n.main-timeline7 .timeline:before{content:\"\";width:40px;height:90%;background:#727cb6;position:absolute;top:10%;right:-20px}\r\n.main-timeline7 .timeline:last-child:before{height:0}\r\n.main-timeline7 .timeline-icon{width:80px;height:80px;border-radius:50%;background:#727cb6;overflow:hidden;text-align:center;position:absolute;top:0;right:-40px;z-index:3}\r\n.main-timeline7 .timeline-icon:before{content:\"\";width:60px;height:60px;border-radius:50%;background:#fff;border:2px solid #727cb6;box-shadow:0 0 0 4px #a5afe4;margin:auto;position:absolute;top:0;left:0;bottom:0;right:0}\r\n.main-timeline7 .timeline-icon i{font-size:35px;color:#303a3b;line-height:80px;z-index:1;position:relative}\r\n.main-timeline7 .year{display:block;padding:0 60px 0 30px;font-size:30px;color:#303a3b;text-align:right;border-bottom:2px solid #303a3b;z-index:2;position:relative}\r\n.main-timeline7 .year:before{content:\"\";display:block;width:30px;height:30px;border-radius:50%;background:#727cb6;border:5px solid #fff;box-shadow:0 0 0 4px #727cb6;margin:auto;position:absolute;bottom:-15px;left:4px}\r\n.main-timeline7 .year:after{content:\"\";border-left:10px solid #303a3b;border-top:10px solid transparent;border-bottom:10px solid transparent;position:absolute;bottom:-11px;left:50px}\r\n.main-timeline7 .timeline-content{padding:18px 60px 18px 40px;text-align:right;position:relative;z-index:1}\r\n.main-timeline7 .timeline-content:after,.main-timeline7 .timeline-content:before{content:\"\";width:80px;height:150px;border-radius:50%;background:#fff;position:absolute;top:-7%;right:15px;z-index:-1}\r\n.main-timeline7 .timeline-content:after{left:auto;right:-95px}\r\n.main-timeline7 .timeline:last-child .timeline-content:after,.main-timeline7 .timeline:last-child .timeline-content:before{width:0;height:0}\r\n.main-timeline7 .title{font-size:22px;font-weight:700;color:#727cb6;margin-top:0}\r\n.main-timeline7 .description{font-size:15px;color:#7f8386;line-height:25px}\r\n.main-timeline7 .timeline:nth-child(2){margin-top:140px}\r\n.main-timeline7 .timeline:nth-child(even){margin-bottom:80px}\r\n.main-timeline7 .timeline:nth-child(odd){margin:-140px 0 0}\r\n.main-timeline7 .timeline:first-child,.main-timeline7 .timeline:last-child:nth-child(even){margin:0!important}\r\n.main-timeline7 .timeline:nth-child(2n) .timeline-icon,.main-timeline7 .timeline:nth-child(2n):before{right:auto;left:-20px;background:#e77e21}\r\n.main-timeline7 .timeline:nth-child(2n) .timeline-icon{left:-40px}\r\n.main-timeline7 .timeline:nth-child(2n) .year{padding:0 30px 0 60px;text-align:left}\r\n.main-timeline7 .timeline:nth-child(2n) .year:before{left:auto;right:3px}\r\n.main-timeline7 .timeline:nth-child(2n) .year:after{border-left:none;border-right:10px solid #303a3b;right:50px}\r\n.main-timeline7 .timeline:nth-child(2n) .timeline-content{padding:18px 40px 18px 60px;text-align:left}\r\n.main-timeline7 .timeline:nth-child(2n) .timeline-content:before{left:-95px}\r\n.main-timeline7 .timeline:nth-child(2n) .timeline-content:after{left:15px}\r\n.main-timeline7 .timeline:nth-child(2n) .timeline-icon:before{border-color:#e77e21;box-shadow:0 0 0 4px #f1a563}\r\n.main-timeline7 .timeline:nth-child(2n) .year:before{background:#e77e21;box-shadow:0 0 0 4px #e77e21}\r\n.main-timeline7 .timeline:nth-child(2n) .title{color:#e77e21}\r\n.main-timeline7 .timeline:nth-child(3n) .timeline-icon,.main-timeline7 .timeline:nth-child(3n):before{background:#008b8b}\r\n.main-timeline7 .timeline:nth-child(3n) .timeline-icon:before{border-color:#008b8b;box-shadow:0 0 0 4px #50b5b4}\r\n.main-timeline7 .timeline:nth-child(3n) .year:before{background:#008b8b;box-shadow:0 0 0 4px #008b8b}\r\n.main-timeline7 .timeline:nth-child(3n) .title{color:#008b8b}\r\n.main-timeline7 .timeline:nth-child(4n) .timeline-icon,.main-timeline7 .timeline:nth-child(4n):before{background:#ed687c}\r\n.main-timeline7 .timeline:nth-child(4n) .timeline-icon:before{border-color:#ed687c;box-\r\nshadow:0 0 0 4px #f798a8}\r\n.main-timeline7 .timeline:nth-child(4n) .year:before{background:#ed687c;box-shadow:0 0 0 4px #ed687c}\r\n.main-timeline7 .timeline:nth-child(4n) .title{color:#ed687c}\r\n@media only screen and (max-width:990px){.main-timeline7 .timeline{width:100%}\r\n.main-timeline7 .timeline:nth-child(even),.main-timeline7 .timeline:nth-child(odd){margin:0}\r\n.main-timeline7 .timeline:before,.main-timeline7 .timeline:nth-child(2n):before{width:30px;height:100%;left:25px}\r\n.main-timeline7 .timeline-icon,.main-timeline7 .timeline:nth-child(2n) .timeline-icon{left:0}\r\n.main-timeline7 .timeline:nth-child(2n) .year,.main-timeline7 .year{text-align:left;padding:0 30px 0 100px}\r\n.main-timeline7 .timeline:nth-child(2n) .year:before,.main-timeline7 .year:before{left:auto;right:4px}\r\n.main-timeline7 .year:after{left:auto;right:50px;border-right:10px solid #303a3b;border-left:none}\r\n.main-timeline7 .timeline-content .description{color:#666}\r\n.main-timeline7 .timeline-content,.main-timeline7 .timeline:nth-child(2n) .timeline-content{text-align:left;padding:18px 40px 18px 100px}\r\n.main-timeline7 .timeline-content:after,.main-timeline7 .timeline-content:before{width:0;height:0}\r\n}\r\n\r\n</style>'),
(15, 2, 'Our Team', '', '<p style=\"text-align: left;\">&nbsp;</p>\n<!------ Include the above in your HEAD tag ---------->\n<p style=\"text-align: left;\">&nbsp;</p>\n<div class=\"container\" style=\"text-align: left;\">\n<div class=\"row\">\n<div class=\"col-md-10 col-md-offset-1\">\n<div class=\"col-lg-12\">\n<h6 class=\"description\" style=\"text-align: left;\">&nbsp;</h6>\n<div class=\"row pt-md\">\n<div class=\"col-lg-3 col-md-3 col-sm-4 col-xs-12 profile\" style=\"text-align: left;\">\n<div class=\"img-box\"><img class=\"img-responsive\" src=\"/storage/pages/March2019/mohammad taghi9.jpg\" width=\"600\" height=\"700\" /></div>\n<h1 style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">Mohammad Zarrinkolah</span></h1>\n<h2 style=\"text-align: center;\"><span style=\"font-size: 18pt;\"><span style=\"font-size: 14pt; color: #3366ff;\"><strong><em>Founder</em></strong></span></span></h2>\n<p>&nbsp;</p>\n</div>\n<div class=\"col-lg-3 col-md-3 col-sm-4 col-xs-12 profile\" style=\"text-align: left;\">\n<div class=\"img-box\"><img class=\"img-responsive\" src=\"/storage/pages/March2019/mohammad5.jpg\" width=\"600\" height=\"700\" /></div>\n<h1 style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">Mohammad Nikouei</span></h1>\n<h2 style=\"text-align: center;\"><span style=\"color: #3366ff;\"><strong><span style=\"font-size: 14pt;\">Co-founder</span></strong></span></h2>\n<p>&nbsp;</p>\n</div>\n<div class=\"col-lg-3 col-md-3 col-sm-4 col-xs-12 profile\" style=\"text-align: left;\">\n<div class=\"img-box\"><img class=\"img-responsive\" src=\"/storage/pages/March2019/alireza5.jpg\" width=\"600\" height=\"700\" /></div>\n<h1 style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">Alireza Taghdisi</span></h1>\n<h2 style=\"text-align: center;\"><strong><span style=\"font-size: 14pt; color: #3366ff;\">Conent marketing Manager</span></strong></h2>\n<p>&nbsp;</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', 'pages/March2019/huRks3lg316TdrUxzd5v.jpg', 'our-team', 'medical tourism', 'medtouriran', 'ACTIVE', '2019-03-17 17:31:17', '2019-04-25 19:09:32', '<style>\r\n@import url(https://fonts.googleapis.com/css?family=Quicksand:400,300);\r\nbody{\r\n    font-family: \'Quicksand\', sans-serif;\r\n}\r\n.team{\r\n    padding:75px 0;\r\n}\r\nh6.description{\r\n	font-weight: bold;\r\n	letter-spacing: 2px;\r\n	color: #999;\r\n	border-bottom: 1px solid rgba(0, 0, 0,0.1);\r\n	padding-bottom: 5px;\r\n}\r\n.profile{\r\n	margin-top: 25px;\r\n}\r\n.profile h1{\r\n	font-weight: normal;\r\n	font-size: 20px;\r\n	margin:10px 0 0 0;\r\n}\r\n.profile h2{\r\n	font-size: 14px;\r\n	font-weight: lighter;\r\n	margin-top: 5px;\r\n}\r\n.profile .img-box{\r\n	opacity: 1;\r\n	display: block;\r\n	position: relative;\r\n}\r\n.profile .img-box:after{\r\n	content:\"\";\r\n	opacity: 0;\r\n	background-color: rgba(0, 0, 0, 0.75);\r\n	position: absolute;\r\n	right: 0;\r\n	left: 0;\r\n	top: 0;\r\n	bottom: 0;\r\n}\r\n.img-box ul{\r\n	position: absolute;\r\n	z-index: 2;\r\n	bottom: 50px;\r\n	text-align: center;\r\n	width: 100%;\r\n	padding-left: 0px;\r\n	height: 0px;\r\n	margin:0px;\r\n	opacity: 0;\r\n}\r\n.profile .img-box:after, .img-box ul, .img-box ul li{\r\n	-webkit-transition: all 0.5s ease-in-out 0s;\r\n    -moz-transition: all 0.5s ease-in-out 0s;\r\n    transition: all 0.5s ease-in-out 0s;\r\n}\r\n.img-box ul i{\r\n	font-size: 20px;\r\n	letter-spacing: 10px;\r\n}\r\n.img-box ul li{\r\n	width: 30px;\r\n    height: 30px;\r\n    text-align: center;\r\n    border: 1px solid #88C425;\r\n    margin: 2px;\r\n    padding: 5px;\r\n	display: inline-block;\r\n}\r\n.img-box a{\r\n	color:#fff;\r\n}\r\n.img-box:hover:after{\r\n	opacity: 1;\r\n}\r\n.img-box:hover ul{\r\n	opacity: 1;\r\n}\r\n.img-box ul a{\r\n	-webkit-transition: all 0.3s ease-in-out 0s;\r\n	-moz-transition: all 0.3s ease-in-out 0s;\r\n	transition: all 0.3s ease-in-out 0s;\r\n}\r\n.img-box a:hover li{\r\n	border-color: #fff;\r\n	color: #88C425;\r\n}\r\na{\r\n    color:#88C425;\r\n}\r\na:hover{\r\n    text-decoration:none;\r\n    color:#519548;\r\n}\r\ni.red{\r\n    color:#BC0213;\r\n}\r\n\r\n</style>');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Sharif University of Technology-Sharif accelerator', 'partners/February2019/dmvlwbwFkHlHJb1Jm7gg.png', NULL, '2019-02-02 23:44:00', '2019-02-03 13:19:11'),
(2, 'Iran Cultural Heritage Handcrafts and Tourism Organization', 'partners/February2019/2tUedfCn7wigqXNXaZVP.png', NULL, '2019-02-02 23:45:00', '2019-02-03 13:19:03'),
(3, 'Trip advisor', 'partners/February2019/2ZxH34VYx1YMpOsWGNZy.png', NULL, '2019-02-03 18:11:00', '2019-02-04 04:37:32'),
(4, 'Sharif University of Technology', 'partners/February2019/WHnEIrJKJkT0ddJYkNiI.png', NULL, '2019-02-03 18:18:00', '2019-02-03 13:18:53'),
(5, 'Ministry of Health and Medical Education', 'partners/February2019/zxzVIKmf5nTT5pnbFYoq.png', NULL, '2019-02-03 18:26:00', '2019-02-03 13:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(2, 'browse_bread', NULL, '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(3, 'browse_database', NULL, '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(4, 'browse_media', NULL, '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(5, 'browse_compass', NULL, '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(6, 'browse_menus', 'menus', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(7, 'read_menus', 'menus', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(8, 'edit_menus', 'menus', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(9, 'add_menus', 'menus', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(10, 'delete_menus', 'menus', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(11, 'browse_roles', 'roles', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(12, 'read_roles', 'roles', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(13, 'edit_roles', 'roles', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(14, 'add_roles', 'roles', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(15, 'delete_roles', 'roles', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(16, 'browse_users', 'users', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(17, 'read_users', 'users', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(18, 'edit_users', 'users', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(19, 'add_users', 'users', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(20, 'delete_users', 'users', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(21, 'browse_settings', 'settings', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(22, 'read_settings', 'settings', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(23, 'edit_settings', 'settings', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(24, 'add_settings', 'settings', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(25, 'delete_settings', 'settings', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(26, 'browse_categories', 'categories', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(27, 'read_categories', 'categories', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(28, 'edit_categories', 'categories', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(29, 'add_categories', 'categories', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(30, 'delete_categories', 'categories', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(31, 'browse_posts', 'posts', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(32, 'read_posts', 'posts', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(33, 'edit_posts', 'posts', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(34, 'add_posts', 'posts', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(35, 'delete_posts', 'posts', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(36, 'browse_pages', 'pages', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(37, 'read_pages', 'pages', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(38, 'edit_pages', 'pages', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(39, 'add_pages', 'pages', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(40, 'delete_pages', 'pages', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(41, 'browse_hooks', NULL, '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(42, 'browse_socials', 'socials', '2019-01-04 08:38:41', '2019-01-04 08:38:41'),
(43, 'read_socials', 'socials', '2019-01-04 08:38:41', '2019-01-04 08:38:41'),
(44, 'edit_socials', 'socials', '2019-01-04 08:38:41', '2019-01-04 08:38:41'),
(45, 'add_socials', 'socials', '2019-01-04 08:38:41', '2019-01-04 08:38:41'),
(46, 'delete_socials', 'socials', '2019-01-04 08:38:41', '2019-01-04 08:38:41'),
(47, 'browse_benefits', 'benefits', '2019-01-04 12:42:39', '2019-01-04 12:42:39'),
(48, 'read_benefits', 'benefits', '2019-01-04 12:42:39', '2019-01-04 12:42:39'),
(49, 'edit_benefits', 'benefits', '2019-01-04 12:42:39', '2019-01-04 12:42:39'),
(50, 'add_benefits', 'benefits', '2019-01-04 12:42:39', '2019-01-04 12:42:39'),
(51, 'delete_benefits', 'benefits', '2019-01-04 12:42:39', '2019-01-04 12:42:39'),
(52, 'browse_banners', 'banners', '2019-01-10 10:00:49', '2019-01-10 10:00:49'),
(53, 'read_banners', 'banners', '2019-01-10 10:00:49', '2019-01-10 10:00:49'),
(54, 'edit_banners', 'banners', '2019-01-10 10:00:49', '2019-01-10 10:00:49'),
(55, 'add_banners', 'banners', '2019-01-10 10:00:49', '2019-01-10 10:00:49'),
(56, 'delete_banners', 'banners', '2019-01-10 10:00:49', '2019-01-10 10:00:49'),
(57, 'browse_requests', 'requests', '2019-01-10 12:41:52', '2019-01-10 12:41:52'),
(58, 'read_requests', 'requests', '2019-01-10 12:41:52', '2019-01-10 12:41:52'),
(59, 'edit_requests', 'requests', '2019-01-10 12:41:52', '2019-01-10 12:41:52'),
(60, 'add_requests', 'requests', '2019-01-10 12:41:52', '2019-01-10 12:41:52'),
(61, 'delete_requests', 'requests', '2019-01-10 12:41:52', '2019-01-10 12:41:52'),
(62, 'browse_partners', 'partners', '2019-02-02 23:42:57', '2019-02-02 23:42:57'),
(63, 'read_partners', 'partners', '2019-02-02 23:42:57', '2019-02-02 23:42:57'),
(64, 'edit_partners', 'partners', '2019-02-02 23:42:57', '2019-02-02 23:42:57'),
(65, 'add_partners', 'partners', '2019-02-02 23:42:57', '2019-02-02 23:42:57'),
(66, 'delete_partners', 'partners', '2019-02-02 23:42:57', '2019-02-02 23:42:57'),
(67, 'browse_links', 'links', '2019-02-03 01:32:59', '2019-02-03 01:32:59'),
(68, 'read_links', 'links', '2019-02-03 01:32:59', '2019-02-03 01:32:59'),
(69, 'edit_links', 'links', '2019-02-03 01:32:59', '2019-02-03 01:32:59'),
(70, 'add_links', 'links', '2019-02-03 01:32:59', '2019-02-03 01:32:59'),
(71, 'delete_links', 'links', '2019-02-03 01:32:59', '2019-02-03 01:32:59'),
(72, 'browse_doctors', 'doctors', '2019-02-08 19:01:07', '2019-02-08 19:01:07'),
(73, 'read_doctors', 'doctors', '2019-02-08 19:01:07', '2019-02-08 19:01:07'),
(74, 'edit_doctors', 'doctors', '2019-02-08 19:01:07', '2019-02-08 19:01:07'),
(75, 'add_doctors', 'doctors', '2019-02-08 19:01:07', '2019-02-08 19:01:07'),
(76, 'delete_doctors', 'doctors', '2019-02-08 19:01:07', '2019-02-08 19:01:07'),
(77, 'browse_networks', 'networks', '2019-02-08 19:30:50', '2019-02-08 19:30:50'),
(78, 'read_networks', 'networks', '2019-02-08 19:30:50', '2019-02-08 19:30:50'),
(79, 'edit_networks', 'networks', '2019-02-08 19:30:50', '2019-02-08 19:30:50'),
(80, 'add_networks', 'networks', '2019-02-08 19:30:50', '2019-02-08 19:30:50'),
(81, 'delete_networks', 'networks', '2019-02-08 19:30:50', '2019-02-08 19:30:50'),
(82, 'browse_testimonials', 'testimonials', '2019-02-24 20:24:19', '2019-02-24 20:24:19'),
(83, 'read_testimonials', 'testimonials', '2019-02-24 20:24:19', '2019-02-24 20:24:19'),
(84, 'edit_testimonials', 'testimonials', '2019-02-24 20:24:19', '2019-02-24 20:24:19'),
(85, 'add_testimonials', 'testimonials', '2019-02-24 20:24:19', '2019-02-24 20:24:19'),
(86, 'delete_testimonials', 'testimonials', '2019-02-24 20:24:19', '2019-02-24 20:24:19'),
(87, 'browse_packages', 'packages', '2019-02-24 21:19:53', '2019-02-24 21:19:53'),
(88, 'read_packages', 'packages', '2019-02-24 21:19:53', '2019-02-24 21:19:53'),
(89, 'edit_packages', 'packages', '2019-02-24 21:19:53', '2019-02-24 21:19:53'),
(90, 'add_packages', 'packages', '2019-02-24 21:19:53', '2019-02-24 21:19:53'),
(91, 'delete_packages', 'packages', '2019-02-24 21:19:53', '2019-02-24 21:19:53'),
(92, 'browse_package_items', 'package_items', '2019-06-29 06:08:58', '2019-06-29 06:08:58'),
(93, 'read_package_items', 'package_items', '2019-06-29 06:08:58', '2019-06-29 06:08:58'),
(94, 'edit_package_items', 'package_items', '2019-06-29 06:08:58', '2019-06-29 06:08:58'),
(95, 'add_package_items', 'package_items', '2019-06-29 06:08:58', '2019-06-29 06:08:58'),
(96, 'delete_package_items', 'package_items', '2019-06-29 06:08:58', '2019-06-29 06:08:58'),
(97, 'browse_timelines', 'timelines', '2019-06-30 02:33:20', '2019-06-30 02:33:20'),
(98, 'read_timelines', 'timelines', '2019-06-30 02:33:20', '2019-06-30 02:33:20'),
(99, 'edit_timelines', 'timelines', '2019-06-30 02:33:20', '2019-06-30 02:33:20'),
(100, 'add_timelines', 'timelines', '2019-06-30 02:33:20', '2019-06-30 02:33:20'),
(101, 'delete_timelines', 'timelines', '2019-06-30 02:33:20', '2019-06-30 02:33:20'),
(102, 'browse_cities', 'cities', '2019-06-30 04:12:02', '2019-06-30 04:12:02'),
(103, 'read_cities', 'cities', '2019-06-30 04:12:02', '2019-06-30 04:12:02'),
(104, 'edit_cities', 'cities', '2019-06-30 04:12:02', '2019-06-30 04:12:02'),
(105, 'add_cities', 'cities', '2019-06-30 04:12:02', '2019-06-30 04:12:02'),
(106, 'delete_cities', 'cities', '2019-06-30 04:12:02', '2019-06-30 04:12:02'),
(107, 'browse_package_prices', 'package_prices', '2019-06-30 09:40:52', '2019-06-30 09:40:52'),
(108, 'read_package_prices', 'package_prices', '2019-06-30 09:40:52', '2019-06-30 09:40:52'),
(109, 'edit_package_prices', 'package_prices', '2019-06-30 09:40:52', '2019-06-30 09:40:52'),
(110, 'add_package_prices', 'package_prices', '2019-06-30 09:40:52', '2019-06-30 09:40:52'),
(111, 'delete_package_prices', 'package_prices', '2019-06-30 09:40:52', '2019-06-30 09:40:52'),
(112, 'browse_hotels', 'hotels', '2019-07-01 01:02:21', '2019-07-01 01:02:21'),
(113, 'read_hotels', 'hotels', '2019-07-01 01:02:21', '2019-07-01 01:02:21'),
(114, 'edit_hotels', 'hotels', '2019-07-01 01:02:21', '2019-07-01 01:02:21'),
(115, 'add_hotels', 'hotels', '2019-07-01 01:02:21', '2019-07-01 01:02:21'),
(116, 'delete_hotels', 'hotels', '2019-07-01 01:02:21', '2019-07-01 01:02:21'),
(117, 'browse_hotel_items', 'hotel_items', '2019-07-01 01:31:04', '2019-07-01 01:31:04'),
(118, 'read_hotel_items', 'hotel_items', '2019-07-01 01:31:04', '2019-07-01 01:31:04'),
(119, 'edit_hotel_items', 'hotel_items', '2019-07-01 01:31:04', '2019-07-01 01:31:04'),
(120, 'add_hotel_items', 'hotel_items', '2019-07-01 01:31:04', '2019-07-01 01:31:04'),
(121, 'delete_hotel_items', 'hotel_items', '2019-07-01 01:31:04', '2019-07-01 01:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3),
(91, 1),
(91, 3),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 2, ' The Isfahan Royan Institute achieved a new method for treating infertility', '', 'Researchers at the center of Royan Institute in Isfahan for the first time in the world achieved a new method for selecting healthy sperm for IVF fertilization in the treatment of infertility.', '<p>The director of the cell research center of Royan Institute in Isfahan said:</p>\n<p>Researchers at the Center for the first time in the world achieved a new method for selecting healthy sperm for IVF fertilization in the treatment of infertility. Dr. Mohammad Hussein Nasr Esfahani said on Tuesday in a special interview with IRNA:</p>\n<p>Researchers of Isfahan Royan Research Institute have managed to isolate normal sperms and increase the likelihood of fertile fertilization by using the negative burden of sperm surface.</p>\n<p>He stressed that the likelihood of infertility treatment with this method in Iran would increase from 30 to 40 percent.</p>\n<p>Nasr Isfahani, pointing out that the more healthy the sperm is, the more negative the burden, he stressed: Using this property and a positive-laboratory laboratory tube, high quality sperms stick to the tube and are separated from millions of sperm.</p>\n<p>The researcher said that half of the genome of a fetus is inherited from his father, he continued: \"The more healthy the sperm is, the more healthy the fetus will be.\"</p>\n<p>According to him, the embryos produced by this method can be frozen to be used in later stages.</p>\n<p>The new method of treating infertility has been tested in two groups of infertile patients, according to the head of the Cell Science Research Center of the Royan Institute in Isfahan.</p>\n<p>Nasr Isfahani added that this plan will be implemented as a national treatment method if successful in the third group of patients testing that will begin soon.</p>\n<p>\"This new method, in addition to increasing the chances of fertility, reduces the cost of treatment,\" he said.</p>', 'posts/February2019/7bQSBRlOLl1AF9YPSVNA.jpg', 'the-isfahan-royan-institute-achieved-a-new-method-for-treating-infertility', 'infertility, MedtourIran, tourism', 'infertility, MedtourIran, tourism', 'PUBLISHED', 0, '2018-12-15 19:38:02', '2019-02-14 06:20:09'),
(6, 2, 1, 'The New York Times: Iran, the Middle East jewel', '', 'Iran was introduced as one of 52 tourism destinations in the world (The New York Times)', '<p><a href=\"https://medtouriran.com\">Iran </a>is the forty-fifth destination that the American newspaper has proposed to travel in 2019. <a href=\"https://www.nytimes.com/interactive/2019/travel/places-to-visit.html\" target=\"_blank\" rel=\"noopener noreferrer\">The New York Times</a> has introduced Iran with an image of <a href=\"https://medtouriran.com\">Yazd</a>, which was globalized in 2017 as the historic city of the UNESCO World list, and stated: \"With The tensions between Iran and the United States have increased since the arrival of President Tramp at the White House, the desire of adventurous tourists to visit Iran is still evident: from ancient Persia to mosques of the great hundreds of years old <a href=\"https://medtouriran.com\">Shiraz </a>and <a href=\"https://medtouriran.com\">Isfahan </a>and the great bazaar and Golestan Palace In <a href=\"https://medtouriran.com\">Tehran.</a></p>\n<p><img class=\"img-responsive\" style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Yazd as the historic city of the UNESCO World list\" src=\"/storage/posts/January2019/Untitled 6.jpg\" alt=\"Yazd was globalized in 2017 as the historic city of the UNESCO World list\" width=\"424\" height=\"267\" /></p>\n<p>&nbsp;But what made the a trip to Iran in 2019 explainable for the New York Times newspaper is the presentation of 500 featured works of art, \"Portrait, Still Life, and Landscape\" from February 21 to April 20 (March 2nd to 31st, 2010) at the <a href=\"https://medtouriran.com/\">Museum of Contemporary Art</a>, which is a favorite hangout for Iranian youth.&nbsp;\"The works include Andy Warhol, Mark Rootko and Marcel Douxan alongside about 40 works from Picasso, recently excavated from the museum\'s warehouse (most of the works from the 1979 Revolution have been in decades that are still packed in the Museum\'s Warehouse Remaining) will be displayed. &raquo;&nbsp;&nbsp;The New York Times noted that the US Foreign Ministry had not banned the travel of its nationals to Iran. So Americans can travel to Iran with managed tours.</p>\n<p>The Author proposes <a href=\"https://medtouriran.com\">MedtourIran </a>as a professional tourism organization for traveling to Iran.</p>', 'posts/January2019/LJcdwwKceI3AvuPrnlEo.jpg', 'the-new-york-times-iran-the-middle-east-jewel', '', '', 'PUBLISHED', 0, '2019-01-28 12:02:42', '2019-02-07 18:57:43'),
(7, 2, 1, 'Great apps for travelers', 'top 3 apps for travelers', 'If you’ve got a trip coming up, rather than wasting a week of your life downloading useless junk, start with these 3 great travel apps instead.', '<h3 class=\"MsoNormal\">Trover</h3>\n<p>&nbsp;</p>\n<p class=\"MsoNormal\">Trover is one of the best apps available when looking for travel inspiration. The home screen presents you with many different feeds of beautiful images to view, including a \"hot\" feed, a \"new\" feed, feeds specific to different locations, or feeds based on hashtags that have been assigned by users. This app focuses more on the travel experiences of individual users and beautiful photographs than providing in-depth reviews or traveler tips. These functions make Trover ideal for conceptualizing a vacation you hope to take, but another app may be required to make your trip a reality.</p>\n<h3 class=\"MsoNormal\">Google trips</h3>\n<p>&nbsp;</p>\n<table style=\"width: 690px; height: 170px;\">\n<tbody>\n<tr>\n<td style=\"width: 422px;\"><img class=\"img-responsive\" title=\"google trips\" src=\"/storage/posts/February2019/Google trips1.png\" alt=\"google trips\" /></td>\n<td style=\"width: 514px;\">\n<p class=\"MsoNormal\" style=\"text-align: left;\">Trips Google\'s brand new it-does everything app for travel junkies. Bundle reservations, find nearby attractions, customize daily itineraries, and get recommendations based on your search history. Better yet? Access it all offline.</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<h3 class=\"MsoNormal\">Tripit</h3>\n<table style=\"height: 94px; width: 642px;\">\n<tbody>\n<tr>\n<td style=\"width: 287px;\">\n<p class=\"MsoNormal\">A bit like a pocket travel agent, Tripit pulls together travel information from your confirmation emails for flights, hotels, and rental s events bookings and converts it into a single itinerary. Just forward your emails to the app and it will do the rest. If you\'re traveling with others you can easily share the plans, making this a useful app for coordinating a group trip.</p>\n</td>\n<td style=\"width: 345px;\"><img class=\"img-responsive\" style=\"float: right;\" title=\"Tripit\" src=\"/storage/posts/February2019/Tripit1.png\" alt=\"Tripit\" width=\"228\" height=\"171\" /></td>\n</tr>\n</tbody>\n</table>\n<p>&nbsp;</p>\n<h3 class=\"MsoNormal\">Expensify</h3>\n<p>&nbsp;</p>\n<table style=\"width: 637px;\">\n<tbody>\n<tr>\n<td style=\"width: 291px;\"><img class=\"img-responsive\" title=\"Expensify\" src=\"/storage/posts/February2019/Expensify.png\" alt=\"Expensify\" /></td>\n<td style=\"width: 358px;\">\n<p class=\"MsoNormal\">A sleek, no-fuss app for tracking all your travel expenses on the go. Create different categories</p>\n<p class=\"MsoNormal\">Based on your spending habits, pick currencies, \"scan your receipts, and see it all summarized me the end of each trip in your home currency</p>\n</td>\n</tr>\n</tbody>\n</table>', 'posts/June2019/krhuDMzBbxKg5SFr2Gq1.jpg', 'great-apps-for-travelers', 'There’s no shortage of travel apps cluttering up the Android and Apple marketplaces these days — and that’s a problem, as most of them are terrible. Sorting out useless ones from those worth installing is not the most fun you’ll ever have with your smartphone, but no one wants to pay for a worthless app.\n\nIf you’ve got a trip coming up, rather than wasting a week of your life downloading useless junk, start with these 3 great travel apps instead:', 'top BEST 3  APPS travel\n', 'PUBLISHED', 0, '2019-02-17 12:44:59', '2019-06-29 10:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `first_name`, `last_name`, `country_code`, `phone`, `email`, `category_id`, `created_at`, `updated_at`, `message`) VALUES
(5, 'Zaman', 'Drat', '0092', '03495576218', 'asifjanan4321@gmail.com', 8, '2019-05-02 03:22:47', '2019-05-02 03:22:47', 'I want to know the total cost of ivf and iui and plz tell me the about sperm donation'),
(6, 'Masoud', NULL, 'Iran', '9144062667', 'mrhn2005@gmail.com', NULL, '2019-06-29 13:28:07', '2019-06-29 13:28:07', 'test'),
(7, 'Masoud', NULL, 'Iran', '9144062667', 'mrhn2005@gmail.com', NULL, '2019-06-29 13:33:13', '2019-06-29 13:33:13', 'tes24323'),
(8, 'Masoud', NULL, 'Iran', '9144062667', 'mrhn2005@gmail.com', NULL, '2019-06-30 01:14:14', '2019-06-30 01:14:14', 'test2'),
(9, 'Masoud', NULL, 'Iran', '9144062667', 'mrhn2005@gmail.com', NULL, '2019-06-30 01:54:58', '2019-06-30 01:54:58', 'tes2');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(2, 'user', 'Normal User', '2018-12-15 19:38:01', '2018-12-15 19:38:01'),
(3, 'Owner', 'Owner', '2019-01-11 21:23:23', '2019-01-22 12:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'en.title', 'Site Title', 'MedtourIran: A professional medical tourism provider in Iran', '', 'text', 1, 'en'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/April2019/k2SzAl0n9xMM3vicCOz8.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '294562765821-01uuigrki9rdgps5m3n87cgh5b5fq7co.apps.googleusercontent.com', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'site.title', 'Admin Title', 'medtouriran', '', 'text', 1, 'Site'),
(7, 'admin.description', 'Admin Description', 'MedTourIran', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/April2019/2lDXoQZJapiB1KyV98Ma.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '655244161638-vep0p6a9to8qjvtvuk20b516oqradidp.apps.googleusercontent.com', '', 'text', 1, 'Admin'),
(11, 'ar.title', 'Arabic Title', 'مدتورایران: مزود السياحة الطبية المهنية في إيران', NULL, 'text', 13, 'ar'),
(12, 'en.phone', 'Phone Number', '+982166165560', NULL, 'text', 7, 'en'),
(13, 'site.email', 'Email', 'info@medtouriran.com', NULL, 'text', 8, 'Site'),
(15, 'site.menu_font', 'Menu font size', '12', NULL, 'text', 9, 'Site'),
(16, 'en.about', 'About footer', 'MedtourIran provides the qualified and affordable services for medical tourists in Iran. Our mission is to provide a memorable service to medical tourists, and our slogan is: One Click to Health.', NULL, 'text_area', 10, 'en'),
(17, 'ar.about', 'About footer', 'مدتورایران توفر الخدمات المؤهلة وبأسعار معقولة للسياحة الطبية في إيران. مهمتنا هي توفير خدمة لا تنسى للسياح العلاجيين ، وشعارنا هو: نقرة واحدة الى الصحة.', NULL, 'text_area', 11, 'ar'),
(18, 'en.address', 'Address', 'Sharif University of Technology, Tehran, Iran', NULL, 'text_area', 12, 'en'),
(19, 'ar.address', 'Address', 'طهران ، جامعة شريف للتكنولوجيا، خدمات تكنولوجيا متكاملة', NULL, 'text_area', 14, 'ar'),
(22, 'ar.phone', 'Phone number', '+982166165560', NULL, 'text', 11, 'ar'),
(23, 'site.phone', 'phone', '+982166165560', NULL, 'text', 15, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `title`, `icon`, `link`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'fa fa-facebook', 'https://www.facebook.com/MedtourIran', 1, '2019-01-04 08:42:02', '2019-03-28 03:57:00'),
(2, 'Youtube', 'fa fa-youtube', 'https://www.youtube.com/channel/UCPNFj1yPGM2qehDfqPVR0bg', 2, '2019-01-04 08:43:52', '2019-05-04 01:53:43'),
(3, 'Twitter', 'fa fa-twitter', 'https://twitter.com/IranMedtour', 3, '2019-01-04 08:44:42', '2019-02-14 11:48:41'),
(4, 'Pinterest', 'fa fa-pinterest', 'https://www.pinterest.com/medtouriran/', 4, '2019-01-04 08:46:07', '2019-02-14 11:47:02'),
(5, 'Instagram', 'fa fa-instagram', 'https://www.instagram.com/medtouriran.arabic/', 1, '2019-01-04 08:47:30', '2019-05-16 12:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `quote`, `avatar`, `created_at`, `updated_at`, `language`) VALUES
(2, 'Aksel', 'Norway', 'MedtourIran handled all of my trip to Iran for dental health service. Its welcoming tour-guide motivated me to come back again and use the transplant service of this company.', 'testimonials/February2019/0QdeOjyQptUFjCr2VUjz.jpg', '2019-02-24 20:29:00', '2019-03-01 19:40:30', 'en'),
(3, 'Matteo', 'ITALY', 'I really suggest this professional medical tourism company due to their qualified medical centers and doctors. I actually enjoyed the Parsian hotel with it\'s smiley servants.', 'testimonials/February2019/gRxRhuAs9c0fiWDUrq2B.jpg', '2019-02-25 13:31:00', '2019-03-01 19:40:22', 'en'),
(4, 'احمد غريب حسين', 'عراق', 'لقد ساعدني شركة مدتورایران في علاج ابني. أنا حقا أشكركم على تصرفاتكم الترحيبية', 'testimonials/April2019/5YZLTahCGmLIDHebeqMr.jpeg', '2019-03-01 19:41:00', '2019-04-25 19:05:39', 'ar'),
(5, 'یحیي', 'عمان', 'أقترح إيران لرحلة طبية بسبب الخدمات بأسعار معقولة والمدن عالية الجودة', 'testimonials/April2019/02UINiHj1UwgRcXcKjlM.JPG', '2019-03-01 19:41:00', '2019-04-30 01:10:19', 'ar'),
(6, 'محمد الحمدی', 'عراق', 'ساعدت الشركة مدتورإیران ابني في علاج عينيه في شيراز. أنا حقا شكرا لأسعار معقولة والخدمات المؤهلة', 'testimonials/April2019/UnkzvoQ4K8a6RSwvRLto.JPG', '2019-04-30 01:05:00', '2019-04-30 01:05:50', 'ar');

-- --------------------------------------------------------

--
-- Table structure for table `timelines`
--

CREATE TABLE `timelines` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timelines`
--

INSERT INTO `timelines` (`id`, `description`, `icon`, `order`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci culpa dolore explicabo fuga pariatur gjkfdgj quis reprehenderit tenetur vel!', 'fa fa-users', 1, 'FIRST DAY', '2019-06-30 03:40:29', '2019-06-30 03:40:29'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci culpa dolore explicabo fuga pariatur gjkfdgj quis reprehenderit tenetur vel!', 'fa fa-hotel', 2, 'SECOND DAY', '2019-06-30 03:40:00', '2019-06-30 03:41:08'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci culpa dolore explicabo fuga pariatur gjkfdgj quis reprehenderit tenetur vel! dolore explicabo fuga pariatur gjkfdgj quis reprehenderit tenetur vel!', 'fa fa-car', 3, 'THIRD DAY', '2019-06-30 03:42:52', '2019-06-30 03:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-12-15 19:38:02', '2018-12-15 19:38:02'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-12-15 19:38:03', '2018-12-15 19:38:03'),
(31, 'menu_items', 'title', 15, 'ar', 'السياحة طبية', '2018-12-16 14:39:58', '2019-03-03 10:08:08'),
(34, 'menu_items', 'title', 18, 'ar', 'المدونة', '2018-12-16 14:59:24', '2019-01-23 14:48:00'),
(35, 'menu_items', 'title', 19, 'ar', 'اتصل بنا', '2018-12-16 15:00:23', '2019-01-26 20:46:47'),
(37, 'menu_items', 'title', 20, 'pt,', '', '2019-01-02 19:44:41', '2019-01-02 19:44:41'),
(38, 'categories', 'slug', 1, 'ar', 'التجمیل', '2019-01-03 13:35:23', '2019-01-26 21:02:04'),
(39, 'categories', 'slug', 1, 'pt,', 'category-1', '2019-01-03 13:35:23', '2019-01-03 13:35:23'),
(40, 'categories', 'name', 1, 'ar', 'Category 1', '2019-01-03 13:35:23', '2019-01-03 13:35:23'),
(41, 'categories', 'name', 1, 'pt,', 'Category 1', '2019-01-03 13:35:23', '2019-01-03 13:35:23'),
(42, 'categories', 'slug', 2, 'ar', 'category-2', '2019-01-03 14:05:03', '2019-01-03 14:05:03'),
(43, 'categories', 'slug', 2, 'pt,', 'category-2', '2019-01-03 14:05:03', '2019-01-03 14:05:03'),
(44, 'categories', 'name', 2, 'ar', 'Category 2', '2019-01-03 14:05:03', '2019-01-03 14:05:03'),
(45, 'categories', 'name', 2, 'pt,', 'Category 2', '2019-01-03 14:05:03', '2019-01-03 14:05:03'),
(46, 'categories', 'slug', 3, 'ar', 'جراحة تجميلية', '2019-01-03 14:06:54', '2019-01-27 17:58:51'),
(47, 'categories', 'slug', 3, 'pt,', '', '2019-01-03 14:06:54', '2019-01-03 14:06:54'),
(48, 'categories', 'name', 3, 'ar', 'Plastic surgery', '2019-01-03 14:06:54', '2019-01-03 14:06:54'),
(49, 'categories', 'name', 3, 'pt,', '', '2019-01-03 14:06:54', '2019-01-03 14:06:54'),
(50, 'categories', 'slug', 4, 'ar', 'عملية تجميل الأنف', '2019-01-03 14:07:20', '2019-01-27 17:59:32'),
(51, 'categories', 'slug', 4, 'pt,', '', '2019-01-03 14:07:20', '2019-01-03 14:07:20'),
(52, 'categories', 'name', 4, 'ar', '', '2019-01-03 14:07:20', '2019-01-03 14:07:20'),
(53, 'categories', 'name', 4, 'pt,', '', '2019-01-03 14:07:20', '2019-01-03 14:07:20'),
(54, 'categories', 'slug', 5, 'ar', 'صحة الأسنان', '2019-01-03 14:07:51', '2019-01-27 17:56:21'),
(55, 'categories', 'slug', 5, 'pt,', '', '2019-01-03 14:07:51', '2019-01-03 14:07:51'),
(56, 'categories', 'name', 5, 'ar', '', '2019-01-03 14:07:51', '2019-01-03 14:07:51'),
(57, 'categories', 'name', 5, 'pt,', '', '2019-01-03 14:07:51', '2019-01-03 14:07:51'),
(58, 'categories', 'slug', 6, 'ar', 'رعاية العين', '2019-01-03 14:08:16', '2019-01-27 18:16:24'),
(59, 'categories', 'slug', 6, 'pt,', '', '2019-01-03 14:08:16', '2019-01-03 14:08:16'),
(60, 'categories', 'name', 6, 'ar', '', '2019-01-03 14:08:16', '2019-01-03 14:08:16'),
(61, 'categories', 'name', 6, 'pt,', '', '2019-01-03 14:08:16', '2019-01-03 14:08:16'),
(62, 'menu_items', 'title', 21, 'ar', 'عروضنا', '2019-01-03 14:46:02', '2019-01-23 14:51:29'),
(63, 'menu_items', 'title', 21, 'pt,', '', '2019-01-03 14:46:02', '2019-01-03 14:46:02'),
(64, 'data_types', 'display_name_singular', 4, 'ar', 'Category', '2019-01-03 21:40:06', '2019-01-03 21:40:06'),
(65, 'data_types', 'display_name_singular', 4, 'pt,', 'Category', '2019-01-03 21:40:06', '2019-01-03 21:40:06'),
(66, 'data_types', 'display_name_plural', 4, 'ar', 'Categories', '2019-01-03 21:40:06', '2019-01-03 21:40:06'),
(67, 'data_types', 'display_name_plural', 4, 'pt,', 'Categories', '2019-01-03 21:40:06', '2019-01-03 21:40:06'),
(68, 'categories', 'title', 6, 'ar', 'رعاية العين', '2019-01-03 21:41:09', '2019-01-27 18:16:24'),
(69, 'categories', 'title', 6, 'pt,', 'Eye care', '2019-01-03 21:41:09', '2019-01-03 21:41:09'),
(70, 'data_types', 'display_name_singular', 9, 'ar', 'Social Network', '2019-01-04 08:39:28', '2019-01-04 08:39:28'),
(71, 'data_types', 'display_name_singular', 9, 'pt,', 'Social Network', '2019-01-04 08:39:28', '2019-01-04 08:39:28'),
(72, 'data_types', 'display_name_plural', 9, 'ar', 'Social Networks', '2019-01-04 08:39:28', '2019-01-04 08:39:28'),
(73, 'data_types', 'display_name_plural', 9, 'pt,', 'Social Networks', '2019-01-04 08:39:28', '2019-01-04 08:39:28'),
(74, 'socials', 'link', 2, 'ar', 'https://www.youtube.com/channel/UCPNFj1yPGM2qehDfqPVR0bg', '2019-01-04 08:43:52', '2019-05-04 06:14:03'),
(75, 'socials', 'link', 2, 'pt,', '', '2019-01-04 08:43:52', '2019-01-04 08:43:52'),
(76, 'socials', 'link', 3, 'ar', 'https://twitter.com/IranMedtour', '2019-01-04 08:44:42', '2019-05-04 06:13:57'),
(77, 'socials', 'link', 3, 'pt,', '', '2019-01-04 08:44:42', '2019-01-04 08:44:42'),
(78, 'socials', 'link', 4, 'ar', 'https://www.pinterest.com/medtouriran/', '2019-01-04 08:46:07', '2019-05-04 06:13:27'),
(79, 'socials', 'link', 4, 'pt,', '', '2019-01-04 08:46:07', '2019-01-04 08:46:07'),
(80, 'socials', 'link', 5, 'ar', 'https://www.instagram.com/medtouriran.arabic/', '2019-01-04 08:47:30', '2019-05-16 12:37:53'),
(81, 'socials', 'link', 5, 'pt,', '', '2019-01-04 08:47:30', '2019-01-04 08:47:30'),
(82, 'menu_items', 'title', 23, 'ar', '', '2019-01-04 09:45:18', '2019-01-04 09:45:18'),
(83, 'menu_items', 'title', 23, 'pt,', '', '2019-01-04 09:45:18', '2019-01-04 09:45:18'),
(84, 'benefits', 'body', 2, 'ar', 'يتم تقييم الخدمات من قبل السياح الطبيين المؤهلين', '2019-01-04 12:51:43', '2019-03-03 11:21:05'),
(85, 'benefits', 'body', 2, 'pt,', '', '2019-01-04 12:51:43', '2019-01-04 12:51:43'),
(86, 'benefits', 'title', 2, 'ar', 'خدمات عالية الجودة', '2019-01-04 12:51:43', '2019-01-27 17:50:18'),
(87, 'benefits', 'title', 2, 'pt,', '', '2019-01-04 12:51:43', '2019-01-04 12:51:43'),
(88, 'benefits', 'body', 3, 'ar', 'نحن نوفر حتى 70٪ من رسوم استخدامكم لخدماتنا', '2019-01-04 12:52:40', '2019-01-27 17:48:11'),
(89, 'benefits', 'body', 3, 'pt,', '', '2019-01-04 12:52:40', '2019-01-04 12:52:40'),
(90, 'benefits', 'title', 3, 'ar', 'توفير المال', '2019-01-04 12:52:40', '2019-01-27 17:48:11'),
(91, 'benefits', 'title', 3, 'pt,', '', '2019-01-04 12:52:40', '2019-01-04 12:52:40'),
(92, 'benefits', 'body', 4, 'ar', 'نبقي عائلتك  مضطلعة على احوالك', '2019-01-04 13:03:46', '2019-03-03 11:14:01'),
(93, 'benefits', 'body', 4, 'pt,', '', '2019-01-04 13:03:46', '2019-01-04 13:03:46'),
(94, 'benefits', 'title', 4, 'ar', 'عملية يمكن تتبعها', '2019-01-04 13:03:46', '2019-03-03 11:14:01'),
(95, 'benefits', 'title', 4, 'pt,', '', '2019-01-04 13:03:46', '2019-01-04 13:03:46'),
(96, 'benefits', 'body', 5, 'ar', 'هناك العروض الذهبية / الفضية / البرونزية  لتأمين راحتکم\n', '2019-01-04 13:06:09', '2019-03-03 11:16:22'),
(97, 'benefits', 'body', 5, 'pt,', '', '2019-01-04 13:06:09', '2019-01-04 13:06:09'),
(98, 'benefits', 'title', 5, 'ar', 'عروض مرنة', '2019-01-04 13:06:09', '2019-01-27 17:46:30'),
(99, 'benefits', 'title', 5, 'pt,', '', '2019-01-04 13:06:09', '2019-01-04 13:06:09'),
(100, 'benefits', 'body', 6, 'ar', 'مستشارينا الطبيون على تواصل معكم على مدار الساعة طوال أيام الأسبوع \n', '2019-01-04 13:08:39', '2019-03-03 11:20:21'),
(101, 'benefits', 'body', 6, 'pt,', '', '2019-01-04 13:08:39', '2019-01-04 13:08:39'),
(102, 'benefits', 'title', 6, 'ar', 'الخدمات المستمرة', '2019-01-04 13:08:39', '2019-01-27 17:43:24'),
(103, 'benefits', 'title', 6, 'pt,', '', '2019-01-04 13:08:39', '2019-01-04 13:08:39'),
(105, 'posts', 'title', 5, 'pt,', '', '2019-01-08 18:59:07', '2019-01-08 18:59:07'),
(107, 'posts', 'seo_title', 5, 'pt,', '', '2019-01-08 18:59:07', '2019-01-08 18:59:07'),
(109, 'posts', 'excerpt', 5, 'pt,', '', '2019-01-08 18:59:07', '2019-01-08 18:59:07'),
(111, 'posts', 'body', 5, 'pt,', '', '2019-01-08 18:59:07', '2019-01-08 18:59:07'),
(113, 'posts', 'slug', 5, 'pt,', '', '2019-01-08 18:59:08', '2019-01-08 18:59:08'),
(115, 'posts', 'meta_description', 5, 'pt,', '', '2019-01-08 18:59:08', '2019-01-08 18:59:08'),
(117, 'posts', 'meta_keywords', 5, 'pt,', '', '2019-01-08 18:59:08', '2019-01-08 18:59:08'),
(118, 'pages', 'title', 2, 'ar', 'من نحن', '2019-01-08 19:36:52', '2019-02-04 06:58:19'),
(119, 'pages', 'title', 2, 'pt,', '', '2019-01-08 19:36:52', '2019-01-08 19:36:52'),
(120, 'pages', 'slug', 2, 'ar', 'drbarh-ma', '2019-01-08 19:36:52', '2019-01-09 07:18:27'),
(121, 'pages', 'slug', 2, 'pt,', '', '2019-01-08 19:36:52', '2019-01-08 19:36:52'),
(122, 'pages', 'body', 2, 'ar', '<p>مدتورایران توفر الخدمات المؤهلة و بأسعار معقولة للسياحة الطبية في إيران. مهمتنا هي توفير خدمة لا تنسى للسياح العلاجيين ، وشعارنا هو: نقرة واحدة الى الصحة.</p>', '2019-01-08 19:36:52', '2019-04-19 04:57:46'),
(123, 'pages', 'body', 2, 'pt,', '', '2019-01-08 19:36:52', '2019-01-08 19:36:52'),
(124, 'menu_items', 'title', 25, 'ar', 'من نحن', '2019-01-08 20:19:45', '2019-01-26 20:45:55'),
(125, 'menu_items', 'title', 25, 'pt,', '', '2019-01-08 20:19:45', '2019-01-08 20:19:45'),
(126, 'posts', 'title', 1, 'ar', 'حقق معهد أصفهان رويان طريقة جديدة لعلاج الالتهاب', '2019-01-09 09:26:54', '2019-01-26 17:58:40'),
(127, 'posts', 'seo_title', 1, 'ar', '', '2019-01-09 09:26:54', '2019-01-09 09:26:54'),
(128, 'posts', 'excerpt', 1, 'ar', 'حقق الباحثون في مركز معهد رويان في أصفهان لأول مرة في العالم طريقة جديدة لاختيار الحيوانات المنوية الصحية لإخصاب التلقيح الاصطناعي في علاج العقم.', '2019-01-09 09:26:54', '2019-01-26 17:58:40'),
(129, 'posts', 'body', 1, 'ar', '<p style=\"direction: rtl;\">قال مدير مركز أبحاث الخلايا في معهد رويان في أصفهان:</p>\n<p style=\"direction: rtl;\">حقق الباحثون في المركز لأول مرة في العالم طريقة جديدة لاختيار السائل المنوي السليم لإخصاب التلقيح الاصطناعي في علاج العقم. الدكتور محمد حسين نصر الأصفهاني قال يوم الثلاثاء في مقابلة خاصة مع إيرنا:</p>\n<p style=\"direction: rtl;\">تمكن باحثون من معهد البحوث في أصفهان رويان من عزل الحيوانات المنوية الطبيعية وزيادة احتمال إخصاب الخصوبة باستخدام عبء سائل الحيوانات المنوية.</p>\n<p style=\"direction: rtl;\">وأكد أن احتمال علاج العقم بهذه الطريقة في إيران سيزيد من 30 إلى 40 بالمائة.</p>\n<p style=\"direction: rtl;\">الأصفهاني نصر، مشيرا إلى أن أكثر صحية للحيوانات المنوية هو، وأكثر سلبية العبء، شدد على: استخدام هذه الخاصية، وأنبوب مختبر مختبر إيجابي، الحيوانات المنوية ذات جودة عالية التمسك أنبوب وفصلها عن الملايين من الحيوانات المنوية.</p>\n<p style=\"direction: rtl;\">وقال الباحث أن نصف جينوم الجنين ورثها عن أبيه، وتابع: \"إن أكثر صحية للحيوانات المنوية، وأكثر صحية الجنين سيكون.\"</p>\n<p style=\"direction: rtl;\">وفقا له ، يمكن تجميد الأجنة التي تنتجها هذه الطريقة لاستخدامها في المراحل اللاحقة.</p>\n<p style=\"direction: rtl;\">تم اختبار الطريقة الجديدة لعلاج العقم في مجموعتين من مرضى العقم ، وفقا لرئيس مركز أبحاث علوم الخلايا في معهد رويان في أصفهان.</p>\n<p style=\"direction: rtl;\">وأضاف السيد أصفهاني أن هذه الخطة ستنفذ كطريقة وطنية للعلاج ، إذا نجحت في المجموعة الثالثة من اختبارات المرضى التي ستبدأ قريباً.</p>\n<p style=\"direction: rtl;\">وقال \"هذه الطريقة الجديدة ، بالإضافة إلى زيادة فرص الخصوبة ، تقلل من تكلفة العلاج\".</p>', '2019-01-09 09:26:54', '2019-01-26 17:58:40'),
(130, 'posts', 'slug', 1, 'ar', 'hqq-mahd-asfhan-rwyan-tryqh-jdydh-lalaj-alalthab', '2019-01-09 09:26:54', '2019-01-26 17:58:40'),
(131, 'posts', 'meta_description', 1, 'ar', 'infertility, MedtourIran, tourism', '2019-01-09 09:26:54', '2019-01-27 17:53:48'),
(132, 'posts', 'meta_keywords', 1, 'ar', 'infertility, MedtourIran, tourism', '2019-01-09 09:26:54', '2019-01-27 17:53:48'),
(147, 'data_types', 'display_name_singular', 12, 'ar', 'Banner', '2019-01-10 10:02:36', '2019-01-10 10:02:36'),
(148, 'data_types', 'display_name_plural', 12, 'ar', 'Banners', '2019-01-10 10:02:36', '2019-01-10 10:02:36'),
(149, 'menu_items', 'title', 26, 'ar', 'Banners', '2019-01-10 10:04:19', '2019-01-10 10:04:19'),
(150, 'banners', 'title', 3, 'ar', 'الخدمات المستمرة', '2019-01-10 10:31:15', '2019-01-27 17:38:39'),
(151, 'banners', 'subtitle', 3, 'ar', 'استشارة علاجیة عبر برامج التواصل الاجتماعي', '2019-01-10 10:31:15', '2019-03-03 10:45:11'),
(152, 'banners', 'link', 3, 'ar', '/', '2019-01-10 10:31:15', '2019-01-10 10:46:47'),
(153, 'banners', 'title', 2, 'ar', 'نقرة واحدة للصحة', '2019-01-10 10:47:30', '2019-03-04 04:26:38'),
(154, 'banners', 'subtitle', 2, 'ar', 'جرّب سفراَ طبياَ ممتعاَ في إيران', '2019-01-10 10:47:30', '2019-03-03 10:37:42'),
(155, 'banners', 'link', 2, 'ar', 'route(\'home\')', '2019-01-10 10:47:30', '2019-01-10 10:47:30'),
(156, 'data_types', 'display_name_singular', 13, 'ar', 'Request', '2019-01-10 13:49:29', '2019-01-10 13:49:29'),
(157, 'data_types', 'display_name_plural', 13, 'ar', 'Requests', '2019-01-10 13:49:29', '2019-01-10 13:49:29'),
(158, 'categories', 'title', 1, 'ar', 'التجمیل', '2019-01-11 12:12:26', '2019-01-26 21:02:04'),
(159, 'categories', 'title', 2, 'ar', 'طبي', '2019-01-11 12:12:39', '2019-01-27 17:55:33'),
(167, 'categories', 'excerpt', 1, 'ar', 'تجمیل في إيران', '2019-01-11 14:46:31', '2019-03-17 12:07:43'),
(168, 'categories', 'body', 1, 'ar', '<p>In this article we want to consider 7 popular cosmetic surgeries, nose surgery, eyelid surgery, laser skin, hair transplantation, neck lift, face lift, arm lift. In this review you will see photos before and after doing any cosmetic surgery. In this article, along with Lifestyle zoom, we will explore a variety of beauty surgeries.</p>\n<p>Risk for beauty?</p>\n<p>If you read the history of fashion or on the Internet, you know that the first plastic surgery was done in Victorian women. Through cosmetic surgery, women used their lower limbs to achieve a slightly narrower, fashionable age.</p>\n<p>&nbsp;</p>\n<table style=\"width: 1143px;\">\n<tbody>\n<tr>\n<td style=\"width: 425px;\"><img style=\"font-size: 11px; float: left;\" src=\"/storage/categories/January2019/images.jpg\" alt=\"\" width=\"371\" height=\"247\" /></td>\n<td style=\"width: 736px;\">\n<p style=\"font-size: 14px;\">This is a myth. The mortality rate for amputation surgery was very high in the mid-nineteenth century. Considering these complications, it was very difficult to imagine that a person volunteered for a cosmetic surgery.</p>\n<p style=\"font-size: 14px;\">Forearm Surgery: 13%</p>\n<p style=\"font-size: 14px;\">Arm: 52%</p>\n<p style=\"font-size: 14px;\">Leg: 50%</p>\n<p style=\"font-size: 14px;\">Thigh: 85%</p>\n<p style=\"font-size: 14px;\">Once cosmetic surgery was only suitable for rich people. Each year, more than a million Americans look for beautiful surgeons to have a smoother stomach, make their breasts larger or change their nose</p>\n<p style=\"padding-left: 30px;\">&nbsp;</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p style=\"text-align: right;\">&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>', '2019-01-11 14:46:31', '2019-03-17 12:07:43'),
(169, 'categories', 'excerpt', 2, 'ar', 'تقترح مدتورایران على السياح الصحيين زيارة إيران واستخدام الخدمات الطبية المناسبة بأسعار قابلة للإغلاق.', '2019-01-11 14:47:11', '2019-01-27 17:55:33'),
(170, 'categories', 'body', 2, 'ar', '', '2019-01-11 14:47:11', '2019-01-11 14:47:11'),
(171, 'categories', 'excerpt', 6, 'ar', '', '2019-01-23 00:51:02', '2019-01-23 00:51:02'),
(172, 'categories', 'body', 6, 'ar', '<h1 class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">ما هي العناية بالعين؟</span></h1>\n<p style=\"direction: rtl;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\"><span style=\"font-size: 14pt;\">العين هي عضو مهم للغاية وهش في جسمك وتحتاج إلى عناية شديدة. هناك عدد من اضطرابات الرؤية مثل قصر النظر (قصر النظر) ، طول النظر (قصر النظر) والاستجماتيزم التي يتم تضمينها في أخطاء الانكسار. لهذا السبب يحتاج الجميع إلى فحوصات منتظمة لتشخيص الأخطاء المحتملة في عيونهم من خلال فحص العين واتخاذ الإجراءات اللازمة لحلها باستخدام النظارات أو العدسات اللاصقة أو إجراء الجراحة.</span></span></p>\n<h2 style=\"direction: rtl;\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">الأنواع الشائعة لجراحة العيون</span></h2>\n<p style=\"direction: rtl;\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">اليوم ، تحسنت جراحة العين بطرق مختلفة ويمكن استخدامها لعلاج مشاكل العين. تعد جراحة العين بالليزر حلاً شائعًا يمكن أن يصحح قصر النظر والبعد الطويل والاستجماتيزم عن طريق إعادة تشكيل سطح العين.</span></p>\n<p style=\"direction: rtl;\"><span style=\"font-size: 14pt;\"><span style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\"><span lang=\"AR-SA\">الليزك (مساعدة القرنية بالليزر في الموقع) (</span></span><span dir=\"LTR\">LASIK</span><span style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">)</span><span style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\"><span lang=\"AR-SA\">&nbsp;هي طريقة لتصحيح الرؤية بالليزر يمكنها تحسين رؤيتك عن طريق تغيير شكل القرنية وتشبه </span></span><span dir=\"LTR\">LASEK</span><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">. تقل احتمالات جفاف العيون بعد الجراحة في </span><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;\">الليزك </span><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">. ولازم بالذكر ، فإن الوقت اللازم للتعافي أطول بالطرق الاخرى على عكس </span><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Arial; mso-bidi-theme-font: minor-bidi;\">الليزك </span><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">. يجب عليك استشارة طبيب عيون ذي خبرة لاختيار الخيار الأفضل وفقًا لحالة عينيك.</span></span></p>\n<p style=\"direction: rtl;\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">إعتام عدسة العين هو حالة من حالات العين التي تحدث عادة مع الشيخوخة ، وغالبا ما ينظر إليها بين كبار السن. بسبب سحابة عدسة العين ، لا يمكن تصحيح إعتام عدسة العين باستخدام النظارات أو الليزك. في هذه الحالة ، يتم استخدام جراحة الساد الحديثة وهي جراحة شائعة للعين وغالبًا ما يمكنها استعادة رؤيتك. تتوفر أنواع مختلفة من عمليات جراحية العين للمرضى وهي مسؤولية خبير جراحي العيون في تحديد أفضل الإجراءات المناسبة لك.</span></p>\n<h2 class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">لماذا ايران؟</span></h2>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">على الرغم من أن بعض المشكلات تتعلق بكيفية شفاء المريض بعد العملية ، إلا أن اختيار جراح متمرس يعتبر دائمًا عاملاً هامًا في هذه العملية. يقال إن إيران لديها:</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; أخصائيي جراح وأخصائيي عيون متعلمين وذوي خبرة عالية يمكنهم مساعدة المرضى على الحصول على الرؤية المطلوبة بعد جراحة العيون.</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; عيادات ومستشفيات مجهزة تجهيزًا جيدًا تستخدم تقنيات متقدمة لعلاجات العين.</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; أسعار معقولة</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; جودة عالية ونسبة نجاح عالية لعلاجات العين</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span style=\"font-size: 14pt;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">إذا كنت تبحث عن علاجات للعناية بالعيون في الخارج واخترت إيران لإجراء العملية الجراحية الخاصة بك ، فيمكن أن توفر لك <a title=\"مدتورايران&nbsp;\" href=\"https://medtouriran.com/ar\" target=\"_blank\" rel=\"noopener noreferrer\">مدتورايران&nbsp;</a></span><span style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\"><span lang=\"AR-SA\">علاجات العيون باستخدام أحدث التقنيات وبأسعار معقولة. علاوة على ذلك ، يمكنك الذهاب لمشاهدة معالم المدينة وزيارة المعالم التاريخية والطبيعية في العاصمة طهران ، أثناء وجودك في المدينة.</span></span></span></p>\n<h2 class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">الاحتياطات</span></h2>\n<p class=\"MsoNormal\" dir=\"RTL\"><span style=\"font-size: 14pt;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">هناك عدد من الأشياء التي تحتاج إلى القيام بها قبل وبعد جراحة العين والتي هي نفسها إلى حد ما في أنواع مختلفة من جراحة العين. إذا كنت تخطط للحصول على </span><span dir=\"LTR\">LASIK</span><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\"> (على وجه الخصوص) ، تذكر:</span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; قم بإزالة جميع الماكياج في الليلة السابقة للجراحة</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; توقف عن ارتداء جهات الاتصال اللينة قبل الجراحة. اطلب من جراحك تزويدك بمزيد من التفاصيل حول المدة التي تحتاج إلى التوقف عن ارتدائها قبل إجراء عملية الليزك.</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; اطلب من شخص ما أن يعيدك إلى المنزل بعد الجراحة</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; إذا كنت تتناول دواءًا محددًا ، فاستشر طبيبك لمعرفة ما إذا كان يُسمح لك بمواصلة تناوله قبل أو بعد جراحة العيون.</span></p>\n<h2 class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">مضاعفات</span></h2>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">هناك بعض الأساطير حول الليزك التي قد تكون سمعت عنها. على سبيل المثال ، يعتقد بعض الناس أنه يمكنك التغاضي عن جراحة الليزك. في حين أن هذا غير صحيح ولم يحدث مثل هذا الشيء لأي شخص. هناك بعض الآثار الجانبية التي عادة ما تكون مؤقتة:</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; جفاف العيون</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; وهج</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; مشاكل الرؤية الليلية</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; رؤية الهالات حول الصور</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">&bull; عدم الحصول على النتائج المتوقعة (الإفراط أو التصحيحات)</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">اتخاذ احتياطات السلامة اللازمة يمكن أن تقلل من الآثار الجانبية لجراحة العيون. علاوة على ذلك ، هناك بعض خيارات العلاج التي يمكن أن تساعدك في إدارة هذه المشاكل بنجاح.</span></p>\n<p><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">فحص العين</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif; font-size: 14pt;\">مثلما هو مهم لرعاية جسمك ، تحتاج أيضًا إلى فحص عينيك بانتظام لتشخيص أمراض العين المحتملة وبدء العلاج المناسب في أقرب وقت ممكن. لذلك ، خذ العناية بالعين بجدية ولا تؤجل موعدك مع طبيب العيون.</span></p>', '2019-01-23 00:51:02', '2019-03-23 14:56:21'),
(173, 'menu_items', 'title', 28, 'ar', 'السفر الى ايران', '2019-01-23 02:05:43', '2019-01-23 14:49:41'),
(174, 'menu_items', 'title', 29, 'ar', 'خدماتنا', '2019-01-23 02:18:17', '2019-01-23 14:52:32'),
(175, 'menu_items', 'title', 30, 'ar', 'تقدیم طلب سریع', '2019-01-23 02:38:45', '2019-03-03 10:21:07'),
(177, 'menu_items', 'title', 32, 'ar', 'أسئلة متداولة', '2019-01-23 05:59:45', '2019-03-03 10:21:56'),
(178, 'menu_items', 'title', 33, 'ar', 'تأشيرة إيران', '2019-01-23 06:11:51', '2019-03-03 10:25:28'),
(179, 'menu_items', 'title', 34, 'ar', 'دليل ثقافي', '2019-01-23 06:12:59', '2019-01-26 20:40:02'),
(180, 'menu_items', 'title', 35, 'ar', 'الأطباء', '2019-01-23 06:14:52', '2019-01-26 20:55:32'),
(181, 'menu_items', 'title', 36, 'ar', 'المراكز الطبية', '2019-01-23 06:15:21', '2019-01-26 20:55:09'),
(182, 'menu_items', 'title', 37, 'ar', 'الفنادق', '2019-01-23 06:16:05', '2019-01-26 20:55:58'),
(183, 'menu_items', 'title', 38, 'ar', 'تجميلي', '2019-01-23 06:17:17', '2019-01-26 20:48:23'),
(184, 'menu_items', 'title', 39, 'ar', 'طبي', '2019-01-23 06:18:08', '2019-01-26 20:48:56'),
(185, 'menu_items', 'title', 40, 'ar', 'جراحة تجميلية', '2019-01-23 06:18:47', '2019-01-26 20:49:22'),
(186, 'menu_items', 'title', 41, 'ar', 'تجميل الأنف', '2019-01-23 06:19:28', '2019-01-26 20:49:55'),
(187, 'menu_items', 'title', 42, 'ar', 'زراعة الشعر', '2019-01-23 06:20:06', '2019-01-26 20:50:22'),
(188, 'menu_items', 'title', 43, 'ar', 'جراحة انقاص الوزن', '2019-01-23 06:21:06', '2019-01-26 20:50:56'),
(189, 'menu_items', 'title', 44, 'ar', 'طب الأسنان التجميلي', '2019-01-23 06:21:36', '2019-01-26 20:51:22'),
(190, 'menu_items', 'title', 45, 'ar', 'التجميل بدون جراحة', '2019-01-23 06:22:36', '2019-01-26 20:52:37'),
(191, 'menu_items', 'title', 46, 'ar', 'طب الأسنان', '2019-01-23 06:23:21', '2019-01-26 20:53:48'),
(192, 'menu_items', 'title', 47, 'ar', 'طب العيون', '2019-01-23 06:23:58', '2019-01-26 20:54:05'),
(193, 'menu_items', 'title', 48, 'ar', 'علاج العقم', '2019-01-23 06:24:31', '2019-01-26 20:54:44'),
(194, 'pages', 'title', 3, 'ar', 'Travel to Iran', '2019-01-25 02:56:43', '2019-02-04 06:25:12'),
(195, 'pages', 'slug', 3, 'ar', 'Travel-to-Iran', '2019-01-25 02:56:43', '2019-02-04 06:25:12'),
(196, 'pages', 'body', 3, 'ar', '', '2019-01-25 02:56:43', '2019-01-25 02:56:43'),
(197, 'categories', 'slug', 7, 'ar', 'زرع الشعر', '2019-01-26 13:08:07', '2019-01-27 17:59:10'),
(198, 'categories', 'title', 7, 'ar', 'زرع الشعر', '2019-01-26 13:08:07', '2019-01-27 17:59:10'),
(199, 'categories', 'excerpt', 7, 'ar', '', '2019-01-26 13:08:07', '2019-01-26 13:08:07'),
(200, 'categories', 'body', 7, 'ar', '', '2019-01-26 13:08:07', '2019-01-26 13:08:07'),
(201, 'categories', 'slug', 8, 'ar', 'علاج العقم', '2019-01-26 13:58:11', '2019-01-26 14:11:03'),
(202, 'categories', 'title', 8, 'ar', 'علاج العقم', '2019-01-26 13:58:11', '2019-01-26 14:11:03'),
(203, 'categories', 'excerpt', 8, 'ar', '', '2019-01-26 13:58:11', '2019-01-26 13:58:11'),
(204, 'categories', 'body', 8, 'ar', '<h1 style=\"direction: rtl;\">ما هو العقم؟</h1>\n<p style=\"direction: rtl;\">يُشار إلى العقم على أنه جنس غير محمي لمدة ستة أشهر إلى سنة واحدة (حسب العمر) ، ولكن لا تحمل. في الواقع ، فإن العلامة الرئيسية للعقم هي نفس عدم الحمل ، وقد لا ترى أي علامات أو أعراض بالإضافة إلى العلامة. علامات العقم تعتمد على أسباب العقم. يمكن للعديد من الحالات الطبية والصحية أن تجعل الحمل صعباً. بالطبع ، في بعض الحالات ، لا يتم الكشف عن سبب محدد للعقم.</p>\n<p style=\"direction: rtl;\">&nbsp;</p>\n<h2 style=\"direction: rtl;\">&nbsp; أسباب العقم عند النساء</h2>\n<p style=\"direction: rtl;\"><img title=\" أسباب العقم عند النساء\" src=\"/storage/categories/January2019/57762e9b1800002500fa379a1.jpeg\" alt=\"\" width=\"248\" height=\"165\" /></p>\n<p style=\"direction: rtl;\">1) اضطراب التبويض</p>\n<p style=\"direction: rtl;\">اضطراب الإباضة هو سبب رئيسي في العقم عند النساء. بحيث ترتبط 39 ٪ من أسباب العقم عند النساء بهذه القضية. بدون الإباضة ، لا يتم إجراء الإخصاب ، وبالتالي فإن المرأة ليست حاملاً. قد لا تقوم بعض النساء بالتبويض أو الإباضة بشكل غير منتظم أو زيتي ، وبالتالي قد لا يكون لديهن عادة شهرية أو مزاج معتدل أو غير منتظم ، وحتى بعض النساء ، حتى لو كان لديهن عادة منتظمة منتظمة ، اضطراب في العين.</p>\n<p style=\"direction: rtl;\">2) ضعف أنابيب الرحم</p>\n<p style=\"direction: rtl;\">في بعض النساء ، يتم إغلاق أنابيب الرحم بالكامل أو غير كاملة. نتيجة لذلك ، لا تصل الحيوانات المنوية إلى البويضة. يمكن أن يكون إغلاق أنابيب الرحم بسبب العدوى أو التهاب بطانة الرحم أو الالتصاقات بعد الجراحة. قد تكون هذه الأنابيب مغلقة أيضا بعد الحمل خارج الرحم. في البلدان النامية ، يكون معدل الإصابة بالسل الرئوي أعلى في البلدان النامية بسبب انتشار الأمراض المعدية في الجهاز التناسلي. بشكل عام ، 30 ٪ من أسباب العقم عند النساء بسبب تشوهات في أنابيب الرحم.</p>\n<p style=\"direction: rtl;\">3) بطانة الرحم</p>\n<p style=\"direction: rtl;\">بطانة الرحم هي حالة ينمو فيها الرحم ويمتد إلى ما هو أبعد من الرحم ويغطي أنبوبة الرحم ، بل ويغلقها ويؤدي في الممارسة إلى الإباضة للتدخل. بطانة الرحم هي سبب 13 ٪ من حالات العقم ، ونحو 70 ٪ من النساء اللاتي يعانين من بطانة الرحم غير مصابة بالعقم.</p>\n<p style=\"direction: rtl;\">4) اضطرابات الرحم أو الرحم</p>\n<p style=\"direction: rtl;\">تشوهات عنق الرحم يمكن أن تسبب العقم ، بما في ذلك مشاكل في بناء الجسم ، والرقبة والالتهابات الرحم ، أو نوعية غير مناسبة من إفرازات الرحم. من ناحية أخرى ، فإن الأورام الخبيثة في الرحم أو بعض الجروح الموجودة على جدار الرحم مسؤولة عن العقم.</p>\n<p style=\"direction: rtl;\">5) اضطرابات الجهاز المناعي</p>\n<p style=\"direction: rtl;\">تلعب مشاكل الجهاز المناعي والعوامل المناعية دورًا مهمًا في تطور العقم. تشخيص وعلاج هؤلاء المرضى صعب. في بعض النساء ، يتم إفراز رجل ضد الحيوانات المنوية للأجسام المضادة التي تسمى الجسم المضاد الذي يزيل الحيوانات المنوية أو يعطلها ، أو حتى يسبب الإجهاض التلقائي في بعض حالات الحمل.</p>\n<h2 style=\"direction: rtl;\">&nbsp; <img title=\"العقم عند الرجال\" src=\"/storage/categories/January2019/download2.jpg\" alt=\"\" width=\"275\" height=\"183\" /></h2>\n<p style=\"direction: rtl;\">1) اضطرابات النوم</p>\n<p style=\"direction: rtl;\">&nbsp;وبطبيعة الحال ، يتم إنتاج الحيوانات المنوية في خصية الحيوانات المنوية وقذفها عند القذف. إذا كان هناك اضطراب في الحالات التالية ، يتم تقليل فرصة الإخصاب ويتم اعتبار الرجل المصاب بالعقم.</p>\n<p style=\"direction: rtl;\">&nbsp; &bull; عدد الحيوانات المنوية الصغيرة</p>\n<p style=\"direction: rtl;\">&nbsp; &nbsp;&bull; نضوج الحيوانات المنوية</p>\n<p style=\"direction: rtl;\">&nbsp; &bull; شكل الحيوانات المنوية غير طبيعي</p>\n<p style=\"direction: rtl;\">&nbsp; &bull; عدم القدرة على تحريك الحيوانات المنوية بشكل صحيح</p>\n<p style=\"direction: rtl;\">&nbsp;العوامل التي تؤثر على العدد والشكل والنضج وحركة الحيوانات المنوية هي:</p>\n<ul>\n<li style=\"direction: rtl;\">الأمراض المعدية الأمراض المعدية ذات الحالات الالتهابية ، مثل النكاف ، تسبب العدوى التناسلية أو الالتهاب والخصيتين تختفي في الذكور. حوالي 25 ٪ من الرجال الذين لديهم النكاف بعد سن البلوغ يصبحون عقيمًا.</li>\n<li style=\"direction: rtl;\">&nbsp;اضطرابات الهرمونات: تسبب الاضطرابات الهرمونية حوالي 2-5٪ من مشاكل العقم عند الرجال. يؤثر الإنتاج غير المناسب لهرمونات FSH و LH على إنتاج هرمون الذكورة أو إنتاج التستوستيرون والحيوانات المنوية.</li>\n<li style=\"direction: rtl;\">مشاكل في الجهاز المناعي: في بعض الرجال ، ينتج الجسم مادة تسمى الأجسام المضادة التي تقلل حركات الحيوانات المنوية أو ترتبط ببعضها البعض.</li>\n</ul>\n<p style=\"direction: rtl;\">&nbsp;2) التشوهات المتعلقة ببناء الجسم</p>\n<p style=\"direction: rtl;\">بعض العوامل ، مثل إغلاق أنابيب تدفق الحيوانات المنوية (deferens ، epididymums) ، يسبب العقم عند الرجال. يمكن أن يكون إغلاق أنابيب تدفق الحيوانات المنوية نتيجة للعيوب الخلقية أو الوراثية أو الالتهابات أو الالتهاب البولي التناسلي. بالطبع ، يمكن للجراحة السابقة أيضا إغلاق هذه الأنابيب. من بين العوامل الأخرى ، العقم عند الرجال هو دوالي الخصية. في هذه الحالة ، تتوسع الأوردة في الأكياس الخصية وتقلل نوعية الحيوانات المنوية.</p>', '2019-01-26 13:58:11', '2019-01-26 14:11:03'),
(205, 'pages', 'title', 4, 'ar', 'Treatment of Infertility of Women in Iran', '2019-01-26 14:29:47', '2019-02-04 06:24:42'),
(206, 'pages', 'slug', 4, 'ar', 'Treatment-of-Infertility-of-Women-in-Iran', '2019-01-26 14:29:47', '2019-02-04 06:24:42'),
(207, 'pages', 'body', 4, 'ar', '', '2019-01-26 14:29:47', '2019-01-26 14:29:47'),
(208, 'pages', 'title', 5, 'ar', 'Treatment of Infertility of men in Iran', '2019-01-26 14:32:19', '2019-02-04 06:24:01'),
(209, 'pages', 'slug', 5, 'ar', 'Treatment-of-Infertility-of-men-in-Iran', '2019-01-26 14:32:19', '2019-02-04 06:24:01'),
(210, 'pages', 'body', 5, 'ar', '', '2019-01-26 14:32:19', '2019-01-26 14:32:19'),
(211, 'categories', 'title', 4, 'ar', 'عملية تجميل الأنف', '2019-01-26 18:30:58', '2019-01-27 17:59:32'),
(212, 'categories', 'excerpt', 4, 'ar', '', '2019-01-26 18:30:58', '2019-01-26 18:30:58'),
(213, 'categories', 'body', 4, 'ar', '<p class=\"MsoNormal\">&nbsp;</p>\n<p style=\"direction: rtl;\">التكاليف المنخفضة ، على الرغم من الجودة العالية للخدمات الطبية ، هي مفاتيح مرتجلة تجعل السياح مقنعين للسفر إلى إيران. تعتبر جراحة تجميل الأنف واحدة من أشهر جراحات التجميل التي تجذب الكثير من الناس نحو إيران من مناطق مختلفة من العالم كل عام. <a href=\"https://medtouriran.com/ar\">مدتورایران</a> كشركة نشطة إيرانية في مجال السياحة الصحية ، عن طريق الأطباء يتقن جاهزة لتقديم جميع الخدمات الطبية والتجميلية للسياح الطبية الدولية من جميع أنحاء العالم.</p>\n<p class=\"MsoNormal\" style=\"tab-stops: 98.25pt;\"><span style=\"mso-bidi-language: FA;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"rhinoplasty surgery in iran\" src=\"/storage/categories/January2019/rhinoplasty-www.medtouriran-com.jpg\" alt=\"Rhinoplasty surgery is one of the most popular cosmetic surgeries that attracts many people toward IRAN from different parts of the world every year\" width=\"564\" height=\"404\" /></span></p>\n<p class=\"MsoNormal\" style=\"direction: rtl;\"><span style=\"color: #ff0000;\"><span style=\"font-size: 16px;\"><strong>القيود العمرية لجراحة الأنف</strong></span></span></p>\n<p class=\"MsoNormal\" style=\"text-align: justify;\">هناك بعض القيود في الأطفال التي تمنع جراحة الأنف قبل نضوج كامل. وينتهي معظم البنات في سن السادسة عشرة من العمر وينضج الفتيان في نهاية سن الثامنة عشرة بشكل كامل ويمكن أن يخضعوا لجراحة تجميل الأنف. تحسين عيوب الأنفي في هذا العصر يجعل الثقة بالنفس المراهقين أفضل في هذا العصر الذهبي في حياته. ويجب ألا ننسى أنه في هذا الوقت ، لا يعرف المراهق نفسه وحسب ، بل سيحدد مستقبله. من ناحية أخرى ، فإن عددًا كبيرًا من المتقدمين لأمراض الأنف أكثر من 40 عامًا.</p>\n<p class=\"MsoNormal\" style=\"direction: rtl;\"><span style=\"color: #ff0000; font-family: Verdana, sans-serif;\"><span style=\"font-size: 16px;\"><strong>بعض المضاعفات الشائعة لعملية تجميل الأنف</strong></span></span></p>\n<p class=\"MsoNormal\" style=\"direction: rtl;\"><span style=\"color: #000000;\"><span style=\"color: #000000;\"><strong>الأنف على شكل Zine</strong></span></span></p>\n<p style=\"direction: rtl;\">الأنف على شكل Zine هو أحد المضاعفات الأولى لجراحة الأنف. يحدث هذا الانزعاج بسبب فقدان العظام أو الغضروف الزائد (في النصف السفلي من الأنف).</p>\n<p style=\"direction: rtl;\"><strong style=\"color: #000000;\">اضطراب ثنائي الأبعاد</strong></p>\n<p style=\"direction: rtl;\">تباين ثمانية أضعاف في المسافة بين العظم والهرم المشيمي هو من مضاعفات أخرى لجراحة الأنف. العظم المشقوق العميقة وغضروف الأنف الناجم عن الإزالة المفرطة للأنسجة الممسكة الأنفية التي يبدو فيها الأنف على شكل وجه ذي ثمانية أبعاد.</p>\n<p style=\"direction: rtl;\"><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; color: red; mso-bidi-language: FA; mso-bidi-font-weight: bold;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\'; color: #000000;\">&nbsp;</span></span><span style=\"color: #000000;\"><strong>الأنف الزائد وتورم الأنف</strong></span></p>\n<p style=\"direction: rtl;\">إزالة كميات كبيرة من الغضاريف والأنسجة الأنفية في منطقة الأنف السفلية قد يؤدي إلى زيادة مفرطة في نمو الأنف</p>\n<p style=\"direction: rtl;\"><span style=\"font-family: Wingdings; mso-fareast-font-family: Wingdings; mso-bidi-font-family: Wingdings; color: red; mso-bidi-language: FA; mso-bidi-font-weight: bold;\"><span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;</span></span><span style=\"color: #000000;\"><strong>فقدان الأنف طرف الجلد</strong></span></p>\n<p class=\"MsoNormal\" style=\"direction: rtl;\">لسوء الحظ ، فإن فقدان جلد الأنف هو أكثر المضاعفات انتشارا لجراحة الأنف الأنفية.<span style=\"text-align: justify;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"direction: rtl;\"><a class=\"btn btn-default\" style=\"text-align: justify;\" href=\"https://medtouriran.com/en/service/3/plastic-surgery\" target=\"_blank\" rel=\"noopener noreferrer\">قراءة المزيد</a></p>', '2019-01-26 18:30:58', '2019-02-14 08:28:15'),
(214, 'benefits', 'body', 1, 'ar', 'تحتوي العروض على جميع تفاصيل الخدمات.', '2019-01-26 22:00:32', '2019-03-03 10:55:28'),
(215, 'benefits', 'title', 1, 'ar', 'الوضوح في الأسعار والخدمات', '2019-01-26 22:00:32', '2019-01-27 17:40:22'),
(216, 'categories', 'title', 5, 'ar', 'صحة الأسنان', '2019-01-27 17:56:21', '2019-01-27 17:56:21'),
(217, 'categories', 'excerpt', 5, 'ar', '', '2019-01-27 17:56:21', '2019-01-27 17:56:21'),
(218, 'categories', 'body', 5, 'ar', '', '2019-01-27 17:56:21', '2019-01-27 17:56:21'),
(219, 'categories', 'title', 3, 'ar', 'جراحة تجميلية', '2019-01-27 17:58:51', '2019-01-27 17:58:51'),
(220, 'categories', 'excerpt', 3, 'ar', '', '2019-01-27 17:58:51', '2019-01-27 17:58:51'),
(221, 'categories', 'body', 3, 'ar', '<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">ما هي الجراحة التجميلية؟</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">الجراحة التجميلية هي جراحة تجميلية شهيرة هدفها الرئيسي هو تحسين مظهرك وتمنحك الثقة وعادة ما لا يغطيها التأمين الصحي. ليس هذا هو الحال في الجراحة الترميمية حيث ينصب تركيزها الرئيسي على الأغراض الطبية ويحسن وظيفة جزء من جسمك. سوف نتعامل مع هذه المشكلة في مقال آخر. دعنا نتطرق إلى الجراحة التجميلية في الوقت الحالي.</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">لماذا ايران؟</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">تتناول الجراحة التجميلية تغيير مظهرك والهدف الرئيسي هو تحسينه. لذلك ، من المهم اختيار الجراح المناسب لإجراء العملية. حيث تعد إيران واحدة من أفضل دول السياحة الطبية في الشرق الأوسط للأسباب التالية:</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">&bull; عدد المرضى الذين يتعامل معهم الجراحون الإيرانيون كل يوم منحهم الخبرة الكافية</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">نتيجة لذلك ، فإن معدل نجاح الجراحة التجميلية مرتفع جدًا في إيران</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">&bull; تعد قطع المعدات المتقدمة للمستشفيات في إيران والتكلفة المنخفضة للعلاجات سببًا آخر لاختيار إيران لإجراء الجراحة</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">أنواع الجراحة التجميلية</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">تتوفر أنواع مختلفة من الجراحة التجميلية للمرضى مثل جراحة الثدي (التخفيض ، الرفع ، والتكبير) ، جراحة الجفن ، جراحة الأذن ، جراحة الذقن ، رفع الحاجب ، شد الوجه ، العلاج بالليزر وشفط الدهون (إزالة الدهون). و ثلاث عمليات تجميلية الأكثر شيوعًا بين الناس ؛ وبالتالي سوف نلقي نظرة سريعة على كل واحد منهم:</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">&bull; العمليات التجميلية</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">العمليات التجميلية تشمل الجراحة التجميلية والطبية. الفرق بين جراح التجميل وعملية التجميل يرتبط بطول التدريب.</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">&bull; عملية تجميل الأنف</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">أصبحت وظيفة الأنف أو تجميل الأنف مؤخرًا ذات شعبية كبيرة بين الناس في جميع أنحاء العالم ويمكن القيام بها لإعطاء المرضى نظرة أفضل أو لتسهيل عملية التنفس.</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">&bull; زراعة الشعر</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',sans-serif; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin;\">تجذب زراعة الشعر الأشخاص الذين يعانون من تساقط الشعر وتساعدهم على نمو الشعر على مناطق الصلع في الجسم. هذا الإجراء ليس مخصصًا للذكور فقط انما يمكنه تقديم المساعدة للنساء اللواتي يعانون من انعدام الكثافة في الشعر أيضًا.</span></p>', '2019-01-27 17:58:51', '2019-03-23 08:04:35'),
(222, 'posts', 'title', 6, 'ar', '', '2019-01-28 12:02:42', '2019-01-28 12:02:42'),
(223, 'posts', 'seo_title', 6, 'ar', '', '2019-01-28 12:02:42', '2019-01-28 12:02:42'),
(224, 'posts', 'excerpt', 6, 'ar', '', '2019-01-28 12:02:42', '2019-01-28 12:02:42'),
(225, 'posts', 'body', 6, 'ar', '', '2019-01-28 12:02:42', '2019-01-28 12:02:42'),
(226, 'posts', 'slug', 6, 'ar', '', '2019-01-28 12:02:42', '2019-01-28 12:02:42'),
(227, 'posts', 'meta_description', 6, 'ar', '', '2019-01-28 12:02:42', '2019-01-28 12:02:42'),
(228, 'posts', 'meta_keywords', 6, 'ar', '', '2019-01-28 12:02:42', '2019-01-28 12:02:42'),
(229, 'data_types', 'display_name_singular', 15, 'ar', 'Partner', '2019-02-02 23:44:23', '2019-02-02 23:44:23'),
(230, 'data_types', 'display_name_plural', 15, 'ar', 'Partners', '2019-02-02 23:44:23', '2019-02-02 23:44:23'),
(231, 'menu_items', 'title', 49, 'ar', 'Partners', '2019-02-03 00:40:26', '2019-02-03 00:40:26'),
(232, 'data_types', 'display_name_singular', 16, 'ar', 'Link', '2019-02-03 01:33:28', '2019-02-03 01:33:28'),
(233, 'data_types', 'display_name_plural', 16, 'ar', 'Links', '2019-02-03 01:33:28', '2019-02-03 01:33:28'),
(234, 'menu_items', 'title', 50, 'ar', 'Links', '2019-02-03 01:35:39', '2019-02-03 01:35:39'),
(235, 'links', 'link', 1, 'ar', '/ar/page/about-us', '2019-02-03 01:40:49', '2019-02-03 01:40:49'),
(236, 'links', 'title', 1, 'ar', 'من نحن', '2019-02-03 01:40:49', '2019-03-17 12:05:14'),
(237, 'socials', 'link', 1, 'ar', 'https://www.facebook.com/MedtourIran', '2019-02-03 13:35:21', '2019-03-28 06:05:27'),
(238, 'pages', 'title', 6, 'ar', 'المراكز الطبية', '2019-02-04 04:52:46', '2019-02-04 07:01:49'),
(239, 'pages', 'slug', 6, 'ar', 'Our-medical-centers', '2019-02-04 04:52:46', '2019-02-04 06:23:25');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(240, 'pages', 'body', 6, 'ar', '<div class=\"my-tabs\">&nbsp;</div>\n<section class=\"c67263\">\n<div class=\"col-xl-6 col-lg-6 col-md-6 col-sm-6 c35426\">\n<div class=\"col-md-12\">\n<div class=\"container\">\n<h4 id=\"i04tfp2\" data-type=\"header\">&nbsp;</h4>\n<div class=\"row\">\n<div class=\"col-4\">\n<h4 id=\"iw4mbaw\" data-type=\"header\">العلاج</h4>\n<select id=\"single_select\" class=\"custom-select\">\n<option value=\"1\">Rhinoplasty</option>\n<option value=\"2\">Dental health</option>\n<option value=\"3\">Hair transplant</option>\n</select></div>\n<div class=\"col-4\">\n<h4 id=\"i8qtgdd\" data-type=\"header\">موقع</h4>\n<select class=\"custom-select\">\n<option value=\"1\">Tehran</option>\n<option value=\"2\">Shiraz</option>\n<option value=\"3\">Mashhad</option>\n</select></div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section class=\"c68264\">\n<div class=\"card-group\">&nbsp;</div>\n</section>\n<div class=\"row c74646\">&nbsp;</div>\n<section class=\"c108987\">\n<div class=\"card-group\">\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/Gandhi.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\">&nbsp; مستشفي غاندي (طهران)</h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق المركز الطبي:&nbsp;</strong>يوفر كل العلاج للمرضى.</p>\n<button class=\"btn btn-primary\" type=\"button\">المزید</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/atieh.jpeg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\">&nbsp;مستشفي أتيه (طهران)</h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق المركز الطبي:&nbsp;</strong>يوفر كل العلاج للمرضى.</p>\n<div>&nbsp;</div>\n<button class=\"btn btn-primary\" type=\"button\">المزید</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/erfan.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\">&nbsp;مستشفي عرفان (طهران)</h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق المركز الطبي:&nbsp;</strong>يوفر كل العلاج للمرضى.&nbsp;</p>\n<button class=\"btn btn-primary\" type=\"button\">المزید</button></div>\n</div>\n</div>\n<div class=\"card-group\">\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/WhatsApp Image 2019-02-14 at 10.22.104.jpeg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\">مركز العين البصير (شيراز)</h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق المركز الطبي:&nbsp;</strong>يوفر علاج العين للمرضى.</p>\n<button class=\"btn btn-primary\" type=\"button\">المزید</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/khodadoost.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\">مركز العين الدوكتور خدادوست (شيراز)</h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق المركز الطبي:&nbsp;</strong>يوفر علاج العين للمرضى.&nbsp;&nbsp;</p>\n<button class=\"btn btn-primary\" type=\"button\">المزید</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" src=\"/storage/pages/March2019/central.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\">المستشفي المركزي (شيراز)</h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق المركز الطبي:&nbsp;</strong>يوفر كل العلاج للمرضى.</p>\n<button class=\"btn btn-primary\" type=\"button\">المزید</button></div>\n</div>\n</div>\n</section>\n<div class=\"row c115482\">&nbsp;</div>', '2019-02-04 04:52:46', '2019-04-01 11:12:25'),
(241, 'pages', 'title', 7, 'ar', 'الأطباء', '2019-02-04 04:53:48', '2019-02-04 07:01:21'),
(242, 'pages', 'slug', 7, 'ar', 'our-doctors', '2019-02-04 04:53:48', '2019-02-04 06:22:55'),
(243, 'pages', 'body', 7, 'ar', '', '2019-02-04 04:53:48', '2019-02-04 04:53:48'),
(244, 'pages', 'title', 8, 'ar', 'الفنادق', '2019-02-04 04:54:30', '2019-02-04 07:00:48'),
(245, 'pages', 'slug', 8, 'ar', 'our-hotels', '2019-02-04 04:54:30', '2019-02-04 06:22:25'),
(246, 'pages', 'body', 8, 'ar', '<div class=\"movie-card\">\n<div class=\"container\">\n<div class=\"my-tabs\">\n<div id=\"nav-tabContent\" class=\"tab-content\">\n<div id=\"nav-home\" class=\"tab-pane fade show active\" role=\"tabpanel\" aria-labelledby=\"nav-home-tab\">&nbsp;</div>\n</div>\n</div>\n<section class=\"c67263\">\n<div class=\"col-xl-6 col-lg-6 col-md-6 col-sm-6 c35426\">\n<div class=\"col-md-12\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-4\">\n<h4 id=\"iw4mbaw\" data-type=\"header\">اختر نوع السکن</h4>\n<select id=\"single_select\" class=\"custom-select\">\n<option value=\"1\">فندق</option>\n<option value=\"2\">شقه</option>\n</select></div>\n<div class=\"col-4\">\n<h4 id=\"i8qtgdd\" data-type=\"header\">اختر موقع السکن&nbsp;</h4>\n<select class=\"custom-select\">\n<option value=\"1\">طهران</option>\n<option value=\"2\">شیراز</option>\n</select></div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<div class=\"row\">&nbsp;</div>\n</div>\n</div>\n<section class=\"c68264\">\n<div class=\"card-group\">&nbsp;</div>\n</section>\n<div class=\"row c74646\">&nbsp;</div>\n<section class=\"c108987\">\n<div class=\"card-group\">\n<div class=\"card\"><img class=\"card-img-top\" title=\"فندق آرامیس\" src=\"/storage/pages/March2019/aramis1.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\">فندق آرامیس (طهران)</h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق الفندق:</strong>&nbsp;مصعد ، قاعة مؤتمرات ، غرفة اجتماعات ، إنذار الحريق ، صالة رياضية ، غسيل الملابس ، غرفة الصلاة ، تصفيف الشعر ، أجهزة الصراف الآلي ، مقهى ، موقف سيارات</p>\n<button class=\"btn btn-primary\" type=\"button\">المزيد</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" title=\"فندق بارسيان اوين (طهران)\" src=\"/storage/pages/March2019/Parsian evin.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\">فندق بارسيان اوين (طهران)</h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق الفندق:</strong> مصعد ، قاعة مؤتمرات ، غرفة اجتماعات ، إنذار الحريق ، صالة رياضية ، غسيل الملابس ، غرفة الصلاة ، تصفيف الشعر ، أجهزة الصراف الآلي ، مقهى ، موقف سيارات.</p>\n<div>&nbsp;</div>\n<button class=\"btn btn-primary\" type=\"button\">المزيد</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" title=\"فندق استقلال (طهران)\" src=\"/storage/pages/March2019/esteghlal1.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\"><span style=\"font-size: 14px;\">فندق استقلال (طهران)</span></h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق الفندق:</strong> مصعد ، قاعة مؤتمرات ، غرفة اجتماعات ، إنذار الحريق ، صالة رياضية ، غسيل الملابس ، غرفة الصلاة ، تصفيف الشعر ، أجهزة الصراف الآلي ، مقهى ، موقف سيارات</p>\n<button class=\"btn btn-primary\" type=\"button\">المزيد</button></div>\n</div>\n</div>\n<div class=\"card-group\">\n<div class=\"card\"><img class=\"card-img-top\" title=\"فندق زنىيه (شيراز)\" src=\"/storage/pages/March2019/12.jpeg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\"><span style=\"font-size: 14px;\">فندق زنىيه (شيراز)</span></h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق الفندق:</strong>&nbsp;مصعد ، قاعة مؤتمرات ، غرفة اجتماعات ، إنذار الحريق ، صالة رياضية ، غسيل الملابس ، غرفة الصلاة ، تصفيف الشعر ، أجهزة الصراف الآلي ، مقهى ، موقف سيارات.</p>\n<button class=\"btn btn-primary\" type=\"button\">المزيد</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" title=\"فندق هما (شيراز)\" src=\"/storage/pages/March2019/Homa (shiraz)1.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\"><span style=\"font-size: 14px;\">فندق هما (شيراز)</span></h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق الفندق:</strong>&nbsp;مصعد ، قاعة مؤتمرات ، غرفة اجتماعات ، إنذار الحريق ، صالة رياضية ، غسيل الملابس ، غرفة الصلاة ، تصفيف الشعر ، أجهزة الصراف الآلي ، مقهى ، موقف سيارات.</p>\n<div>&nbsp;</div>\n<button class=\"btn btn-primary\" type=\"button\">المزيد</button></div>\n</div>\n<div class=\"card\"><img class=\"card-img-top\" title=\"فندق ارك (شيراز)\" src=\"/storage/pages/March2019/arg hotel (shiraz)1.jpg\" alt=\"Card image cap\" width=\"400\" height=\"300\" data-type=\"image\" />\n<div class=\"card-body\">\n<h5 class=\"card-title\" style=\"direction: rtl;\" data-type=\"header\"><span style=\"font-size: 14px;\">فندق ارك (شيراز)</span></h5>\n<p class=\"card-text\" style=\"direction: rtl;\" data-type=\"paragraph\"><strong>مرافق الفندق:</strong>&nbsp;مصعد ، قاعة مؤتمرات ، غرفة اجتماعات ، إنذار الحريق ، صالة رياضية ، غسيل الملابس ، غرفة الصلاة ، تصفيف الشعر ، أجهزة الصراف الآلي ، مقهى ، موقف سيارات&nbsp;</p>\n<button class=\"btn btn-primary\" type=\"button\">المزيد</button></div>\n</div>\n</div>\n</section>\n<div class=\"row c115482\">&nbsp;</div>\n<div class=\"description\">\n<div class=\"column2\"><!-- end avatars --></div>\n<!-- end column2 --></div>\n<!-- end description -->\n<p>&nbsp;</p>\n<!-- end container -->\n<p>&nbsp;</p>\n<!-- end movie-card -->', '2019-02-04 04:54:30', '2019-04-01 10:52:11'),
(247, 'pages', 'title', 9, 'ar', 'اشارة سريعة', '2019-02-04 05:05:35', '2019-02-04 07:00:19'),
(248, 'pages', 'slug', 9, 'ar', 'quick-quotes', '2019-02-04 05:05:35', '2019-03-02 09:23:41'),
(249, 'pages', 'body', 9, 'ar', '', '2019-02-04 05:05:35', '2019-02-04 05:05:35'),
(250, 'pages', 'title', 10, 'ar', 'أسئلة مكررة', '2019-02-04 05:06:32', '2019-02-04 06:59:41'),
(251, 'pages', 'slug', 10, 'ar', 'FAQ', '2019-02-04 05:06:32', '2019-02-04 05:58:57'),
(252, 'pages', 'body', 10, 'ar', '<section class=\"faq\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"col-md-6\">\n<h1>Test</h1>\n<div id=\"accordion1\" class=\"panel-group\" role=\"tablist\" aria-multiselectable=\"true\">\n<div class=\"panel panel-default\">\n<div id=\"heading1\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse1\" data-toggle=\"collapse\" data-parent=\"#accordion1\" aria-expanded=\"false\" aria-controls=\"collapse1\">كيف يمكنني حجز علاج طبي؟</a></h4>\n</div>\n<div id=\"collapse1\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading1\">\n<div class=\"panel panel-default\">\n<div id=\"collapse1\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading1\">\n<div class=\"panel panel-default\">\n<div id=\"collapse2\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading2\">\n<div class=\"panel-body\">Sint diceret in usu. Cu duo exerci regione neglegentur, scripta alterum facilis has cu. Admodum probatus periculis nam eu, primis patrioque vim et. Utinam scaevola eum in. Etiam causae intellegebat id has, ei usu doming reprehendunt.&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading2\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse2\" data-toggle=\"collapse\" data-parent=\"#accordion1\" aria-expanded=\"false\" aria-controls=\"collapse2\"> Sint diceret in usu. Cu duo exerci regione neglegentur. </a></h4>\n</div>\n<div id=\"collapse2\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading2\">\n<div class=\"panel-body\">Sint diceret in usu. Cu duo exerci regione neglegentur, scripta alterum facilis has cu. Admodum probatus periculis nam eu, primis patrioque vim et. Utinam scaevola eum in. Etiam causae intellegebat id has, ei usu doming reprehendunt.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading3\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse3\" data-toggle=\"collapse\" data-parent=\"#accordion1\" aria-expanded=\"false\" aria-controls=\"collapse3\"> Vim at nobis veritus cotidieque, mei ex modo dicta. </a></h4>\n</div>\n<div id=\"collapse3\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading3\">\n<div class=\"panel-body\">Vim at nobis veritus cotidieque, mei ex modo dicta. Tollit labores ad pri, his et ubique admodum, at consul officiis cotidieque has. An altera fierent consequat qui, cu elitr legere ridens ius. Vocibus hendrerit usu cu, ad eam case tation ancillae. Ut cum invenire suavitate, error tempor at sit.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading4\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse4\" data-toggle=\"collapse\" data-parent=\"#accordion1\" aria-expanded=\"false\" aria-controls=\"collapse4\"> Pri wisi civibus at, propriae epicurei id his. </a></h4>\n</div>\n<div id=\"collapse4\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading4\">\n<div class=\"panel-body\">Pri wisi civibus at, propriae epicurei id his. Et dico quidam has, et mea illud euripidis temporibus. Esse minimum ius ea. Duo recusabo deseruisse ex, te quaestio hendrerit pri. Unum etiam graeco has at. Wisi vidit eligendi sed at, ad qui vide nulla virtute. Duo ei justo dicam.</div>\n</div>\n</div>\n</div>\n<h1>Membership</h1>\n<div id=\"accordion2\" class=\"panel-group\" role=\"tablist\" aria-multiselectable=\"true\">\n<div class=\"panel panel-default\">\n<div id=\"heading5\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse5\" data-toggle=\"collapse\" data-parent=\"#accordion2\" aria-expanded=\"false\" aria-controls=\"collapse5\"> Lorem ipsum dolor sit amet, summo pericula eam ea. </a></h4>\n</div>\n<div id=\"collapse5\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading5\">\n<div class=\"panel-body\">Lorem ipsum dolor sit amet, summo pericula eam ea. Eu vel erant libris. Ad utroque mediocrem consequuntur eam. Agam nobis assueverit et est. Ex pri animal repudiandae necessitatibus, at cum facete iisque.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading6\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse6\" data-toggle=\"collapse\" data-parent=\"#accordion2\" aria-expanded=\"false\" aria-controls=\"collapse6\"> Sint diceret in usu. Cu duo exerci regione neglegentur. </a></h4>\n</div>\n<div id=\"collapse6\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading6\">\n<div class=\"panel-body\">Sint diceret in usu. Cu duo exerci regione neglegentur, scripta alterum facilis has cu. Admodum probatus periculis nam eu, primis patrioque vim et. Utinam scaevola eum in. Etiam causae intellegebat id has, ei usu doming reprehendunt.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading7\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse7\" data-toggle=\"collapse\" data-parent=\"#accordion2\" aria-expanded=\"false\" aria-controls=\"collapse7\"> Vim at nobis veritus cotidieque, mei ex modo dicta. </a></h4>\n</div>\n<div id=\"collapse7\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading7\">\n<div class=\"panel-body\">Vim at nobis veritus cotidieque, mei ex modo dicta. Tollit labores ad pri, his et ubique admodum, at consul officiis cotidieque has. An altera fierent consequat qui, cu elitr legere ridens ius. Vocibus hendrerit usu cu, ad eam case tation ancillae. Ut cum invenire suavitate, error tempor at sit.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading8\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse8\" data-toggle=\"collapse\" data-parent=\"#accordion2\" aria-expanded=\"false\" aria-controls=\"collapse8\"> Pri wisi civibus at, propriae epicurei id his. </a></h4>\n</div>\n<div id=\"collapse8\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading8\">\n<div class=\"panel-body\">Pri wisi civibus at, propriae epicurei id his. Et dico quidam has, et mea illud euripidis temporibus. Esse minimum ius ea. Duo recusabo deseruisse ex, te quaestio hendrerit pri. Unum etiam graeco has at. Wisi vidit eligendi sed at, ad qui vide nulla virtute. Duo ei justo dicam.</div>\n</div>\n</div>\n</div>\n</div>\n<div class=\"col-md-6\">\n<h1>Lab Tests</h1>\n<div id=\"accordion3\" class=\"panel-group\" role=\"tablist\" aria-multiselectable=\"true\">\n<div class=\"panel panel-default\">\n<div id=\"heading9\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse9\" data-toggle=\"collapse\" data-parent=\"#accordion3\" aria-expanded=\"false\" aria-controls=\"collapse9\"> Lorem ipsum dolor sit amet, summo pericula eam ea. </a></h4>\n</div>\n<div id=\"collapse9\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading9\">\n<div class=\"panel-body\">Lorem ipsum dolor sit amet, summo pericula eam ea. Eu vel erant libris. Ad utroque mediocrem consequuntur eam. Agam nobis assueverit et est. Ex pri animal repudiandae necessitatibus, at cum facete iisque.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading10\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse10\" data-toggle=\"collapse\" data-parent=\"#accordion3\" aria-expanded=\"false\" aria-controls=\"collapse10\"> Sint diceret in usu. Cu duo exerci regione neglegentur. </a></h4>\n</div>\n<div id=\"collapse10\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading10\">\n<div class=\"panel-body\">Sint diceret in usu. Cu duo exerci regione neglegentur, scripta alterum facilis has cu. Admodum probatus periculis nam eu, primis patrioque vim et. Utinam scaevola eum in. Etiam causae intellegebat id has, ei usu doming reprehendunt.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading11\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse11\" data-toggle=\"collapse\" data-parent=\"#accordion3\" aria-expanded=\"false\" aria-controls=\"collapse11\"> Vim at nobis veritus cotidieque, mei ex modo dicta. </a></h4>\n</div>\n<div id=\"collapse11\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading11\">\n<div class=\"panel-body\">Vim at nobis veritus cotidieque, mei ex modo dicta. Tollit labores ad pri, his et ubique admodum, at consul officiis cotidieque has. An altera fierent consequat qui, cu elitr legere ridens ius. Vocibus hendrerit usu cu, ad eam case tation ancillae. Ut cum invenire suavitate, error tempor at sit.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading12\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse12\" data-toggle=\"collapse\" data-parent=\"#accordion3\" aria-expanded=\"false\" aria-controls=\"collapse12\"> Pri wisi civibus at, propriae epicurei id his. </a></h4>\n</div>\n<div id=\"collapse12\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading12\">\n<div class=\"panel-body\">Pri wisi civibus at, propriae epicurei id his. Et dico quidam has, et mea illud euripidis temporibus. Esse minimum ius ea. Duo recusabo deseruisse ex, te quaestio hendrerit pri. Unum etiam graeco has at. Wisi vidit eligendi sed at, ad qui vide nulla virtute. Duo ei justo dicam.</div>\n</div>\n</div>\n</div>\n<h1>Clinical Service</h1>\n<div id=\"accordion4\" class=\"panel-group\" role=\"tablist\" aria-multiselectable=\"true\">\n<div class=\"panel panel-default\">\n<div id=\"heading13\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse13\" data-toggle=\"collapse\" data-parent=\"#accordion4\" aria-expanded=\"false\" aria-controls=\"collapse13\"> Lorem ipsum dolor sit amet, summo pericula eam ea. </a></h4>\n</div>\n<div id=\"collapse13\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading13\">\n<div class=\"panel-body\">Lorem ipsum dolor sit amet, summo pericula eam ea. Eu vel erant libris. Ad utroque mediocrem consequuntur eam. Agam nobis assueverit et est. Ex pri animal repudiandae necessitatibus, at cum facete iisque.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading14\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse14\" data-toggle=\"collapse\" data-parent=\"#accordion4\" aria-expanded=\"false\" aria-controls=\"collapse14\"> Sint diceret in usu. Cu duo exerci regione neglegentur. </a></h4>\n</div>\n<div id=\"collapse14\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading14\">\n<div class=\"panel-body\">Sint diceret in usu. Cu duo exerci regione neglegentur, scripta alterum facilis has cu. Admodum probatus periculis nam eu, primis patrioque vim et. Utinam scaevola eum in. Etiam causae intellegebat id has, ei usu doming reprehendunt.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading15\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse15\" data-toggle=\"collapse\" data-parent=\"#accordion4\" aria-expanded=\"false\" aria-controls=\"collapse15\"> Vim at nobis veritus cotidieque, mei ex modo dicta. </a></h4>\n</div>\n<div id=\"collapse15\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading15\">\n<div class=\"panel-body\">Vim at nobis veritus cotidieque, mei ex modo dicta. Tollit labores ad pri, his et ubique admodum, at consul officiis cotidieque has. An altera fierent consequat qui, cu elitr legere ridens ius. Vocibus hendrerit usu cu, ad eam case tation ancillae. Ut cum invenire suavitate, error tempor at sit.</div>\n</div>\n</div>\n<div class=\"panel panel-default\">\n<div id=\"heading16\" class=\"panel-heading\" role=\"tab\">\n<h4 class=\"panel-title\"><a class=\"collapsed\" role=\"button\" href=\"faq-page.html#collapse16\" data-toggle=\"collapse\" data-parent=\"#accordion4\" aria-expanded=\"false\" aria-controls=\"collapse16\"> Pri wisi civibus at, propriae epicurei id his. </a></h4>\n</div>\n<div id=\"collapse16\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"heading16\">\n<div class=\"panel-body\">Pri wisi civibus at, propriae epicurei id his. Et dico quidam has, et mea illud euripidis temporibus. Esse minimum ius ea. Duo recusabo deseruisse ex, te quaestio hendrerit pri. Unum etiam graeco has at. Wisi vidit eligendi sed at, ad qui vide nulla virtute. Duo ei justo dicam.</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>', '2019-02-04 05:06:32', '2019-03-28 06:56:26'),
(256, 'pages', 'title', 12, 'ar', 'اتصل بنا', '2019-02-04 06:46:17', '2019-02-04 06:47:45'),
(257, 'pages', 'slug', 12, 'ar', 'اتصل-بنا', '2019-02-04 06:46:17', '2019-02-04 06:47:45'),
(258, 'pages', 'body', 12, 'ar', '', '2019-02-04 06:46:17', '2019-02-04 06:46:17'),
(259, 'pages', 'title', 13, 'ar', '', '2019-02-05 06:06:34', '2019-02-05 06:06:34'),
(260, 'pages', 'slug', 13, 'ar', '', '2019-02-05 06:06:34', '2019-02-05 06:06:34'),
(261, 'pages', 'body', 13, 'ar', '', '2019-02-05 06:06:34', '2019-02-05 06:06:34'),
(262, 'data_types', 'display_name_singular', 17, 'ar', 'Doctor', '2019-02-08 19:19:56', '2019-02-08 19:19:56'),
(263, 'data_types', 'display_name_plural', 17, 'ar', 'Doctors', '2019-02-08 19:19:56', '2019-02-08 19:19:56'),
(264, 'menu_items', 'title', 51, 'ar', 'Doctors', '2019-02-08 19:24:43', '2019-02-08 19:24:43'),
(265, 'data_types', 'display_name_singular', 18, 'ar', 'Doctor\'s Socials', '2019-02-08 19:32:17', '2019-02-08 19:32:17'),
(266, 'data_types', 'display_name_plural', 18, 'ar', 'Networks', '2019-02-08 19:32:17', '2019-02-08 19:32:17'),
(267, 'menu_items', 'title', 52, 'ar', 'Networks', '2019-02-08 19:33:56', '2019-02-08 19:33:56'),
(273, 'doctors', 'name', 2, 'ar', 'الدكتور عبدالرضا جميليان', '2019-02-11 11:07:57', '2019-05-02 18:17:21'),
(274, 'doctors', 'about', 2, 'ar', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: none; color: #656464; font-family: \'Open Sans\', sans-serif; font-size: 13px;\">&nbsp;</p>\n<p class=\"MsoNormal\" dir=\"RTL\"><strong><span lang=\"AR-SA\" style=\"font-family: Arial, sans-serif;\">التخصصات</span></strong></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">الدكتور جميليان هو أخصائي تقويم أسنان وصاحب براءة اختراع</span><span dir=\"LTR\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\"> USPTO </span><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">العالمي يضمن في: طريقة ونظام &nbsp;لعلاج النقص الفكي باستخدام </span><span dir=\"LTR\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">Miniscrews</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\">&nbsp;</p>\n<p class=\"MsoNormal\" dir=\"RTL\"><strong><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">التعليم والتدريب</span></strong></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\">&nbsp;&nbsp;<span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10pt; color: #656464;\">شهادة جراحة الأسنان&nbsp;</span></span><span style=\"color: #656464; font-family: Arial, sans-serif; font-size: 10pt;\">&nbsp;(D.D.S.)&nbsp;</span><span style=\"font-size: 13.3333px; color: #656464; font-family: Arial, sans-serif;\">من جامعة شهيد بهشتي للعلوم الطبية في عام 1991</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span style=\"font-size: 13.3333px; color: #656464; font-family: Arial, sans-serif;\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">&nbsp;شهادة تقويم الأسنان من جامعة شهيد بهشتي للعلوم الطبية عام 1998</span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span style=\"font-size: 13.3333px; color: #656464; font-family: Arial, sans-serif;\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10pt; font-family: Arial, sans-serif;\">&nbsp;رفقة (عضو) جراحة الفك ومتلازمات القحفي جامعة الشهيد بهشتي للعلوم الطبية في عام 2011</span></span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\">&nbsp;</p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\">&nbsp;<strong><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">الخبرة و شهادات المجلس</span></strong></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span style=\"color: #333333; font-family: \'Open Sans\', sans-serif; font-size: 16px;\">&nbsp; </span><span style=\"font-family: Arial, sans-serif;\">الدكتور جميليان هو عضو بارز في مجلس تقويم الأسنان الإيراني والأوروبي ، ويشتهر بإبداعاته الرائعة في تصميم الطرائق العلاجية لمرضى سوء الإطباق من الدرجة الثالثة.</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\">&nbsp;</p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><strong><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">العضويات المهنية</span></strong>&nbsp;</p>\n<ul style=\"text-align: right;\" type=\"disc\">\n<li class=\"MsoNormal\" dir=\"RTL\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span lang=\"AR-SA\" style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-SA;\">&nbsp; الاتحاد العالمي لتقويم الأسنان</span></li>\n<li class=\"MsoNormal\" dir=\"RTL\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span lang=\"AR-SA\" style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-SA;\">&nbsp; الرابطة الأمريكية لتقويم الأسنان</span></li>\n<li class=\"MsoNormal\" dir=\"RTL\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span lang=\"AR-SA\" style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-SA;\">&nbsp; الجمعية الأوروبية لتقويم الأسنان</span></li>\n<li class=\"MsoNormal\" dir=\"RTL\" style=\"color: #444444; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-list: l0 level1 lfo1; tab-stops: list .5in;\"><span lang=\"AR-SA\" style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-SA;\">&nbsp; الرابطة الإيرانية لتقويم الأسنان</span></li>\n</ul>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"margin: 7.5pt 0in 3.75pt; text-align: right;\">&nbsp;</p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"margin: 7.5pt 0in 3.75pt; text-align: right;\"><strong><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">اللغات</span></strong></p>\n<ul type=\"disc\">\n<li class=\"MsoNormal\" dir=\"RTL\" style=\"color: #444444; text-align: right;\"><span lang=\"AR-SA\" style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-SA;\">&nbsp;الانجليزية</span></li>\n<li class=\"MsoNormal\" dir=\"RTL\" style=\"color: #444444; text-align: right;\"><span lang=\"AR-SA\" style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; mso-bidi-language: AR-SA;\">&nbsp;الفارسية</span></li>\n</ul>', '2019-02-11 11:07:57', '2019-05-04 06:22:14'),
(275, 'doctors', 'testimonal', 2, 'ar', '<p><iframe title=\"Medtouriran-Jamilian5\" src=\"https://www.youtube.com/embed/qkLgamwEKKk?wmode=opaque&amp;theme=dark\" width=\"570\" height=\"321\" frameborder=\"0\" allowfullscreen=\"\"></iframe></p>', '2019-02-11 11:07:57', '2019-05-04 06:05:24'),
(276, 'doctors', 'address', 2, 'ar', '', '2019-02-11 11:07:57', '2019-02-11 11:07:57'),
(277, 'doctors', 'name', 3, 'ar', 'الدكتور محسن پورحقيقي', '2019-02-14 06:55:05', '2019-05-02 18:20:08'),
(278, 'doctors', 'about', 3, 'ar', '<p style=\"text-align: right;\"><strong>التخصصات</strong></p>\n<p style=\"text-align: right; padding-left: 30px;\">&nbsp; &nbsp; &nbsp;الدكتور محسن بورحقيقي طبيب اسنان ترميمي و طبيب تجميل الاسنان</p>\n<p style=\"text-align: right; padding-left: 30px;\"><strong>التعليم و التدريب</strong></p>\n<p style=\"text-align: right; padding-left: 30px;\">جامعة طهران للعلوم الطبية</p>\n<p style=\"text-align: right; padding-left: 30px;\">رفقة (عضو) في طب الأسنان بالليزر من جامعة جنيف</p>\n<p style=\"text-align: right; padding-left: 30px;\">&nbsp;<strong>الخبرة وشهادات المجلس</strong></p>\n<p style=\"text-align: right; padding-left: 30px;\">&nbsp; المجلس الاخصائي لطب الاسنان الترميمي و طب تجميل الاسنان</p>\n<p style=\"text-align: right; padding-left: 30px;\"><strong>العضويات المهنية</strong></p>\n<p style=\"text-align: right; padding-left: 30px;\">الجمعية الإيرانية لطب الاسنان الترميمي و طب تجميل الاسنان&nbsp;&nbsp;</p>\n<p style=\"text-align: right; padding-left: 30px;\"><strong>اللغات</strong></p>\n<p style=\"text-align: right; padding-left: 30px;\">الانجليزية</p>\n<p style=\"text-align: right; padding-left: 30px;\">الفارسية</p>', '2019-02-14 06:55:05', '2019-05-11 08:04:44'),
(279, 'doctors', 'testimonal', 3, 'ar', '', '2019-02-14 06:55:05', '2019-02-14 06:55:05'),
(280, 'doctors', 'address', 3, 'ar', '', '2019-02-14 06:55:05', '2019-02-14 06:55:05'),
(281, 'doctors', 'name', 4, 'ar', 'الدكتور بهرام بادامچي', '2019-02-14 10:00:49', '2019-05-02 18:19:54'),
(282, 'doctors', 'about', 4, 'ar', '<p style=\"text-align: right;\"><strong>التخصصات</strong></p>\n<p style=\"text-align: right;\">(الدكتور بهرام بادامشي طبيب الانف الاذن و الحنجرة (جراح الرأس و الرقبة&nbsp;</p>\n<p style=\"text-align: right;\"><strong>التعليم والتدريب</strong></p>\n<p style=\"text-align: right;\">جامعة طهران للعلوم الطبية</p>\n<p style=\"text-align: right;\"><strong>الخبرة و شهادات مجلس</strong></p>\n<p style=\"text-align: right;\">إنه واحد من الأطباء الأوائل في إيران الذين يتمتعون بتجربة واسعة وكاملة في التنظير والأورام الحميدة الأنفية</p>\n<p style=\"text-align: right;\">أجرى اكثر من 3000 عملية تجميل الانف و الجراحة</p>\n<p style=\"text-align: right;\">كما ان له نشاط في المؤتمرات الدولية في ايران و اروبا فلهذا هو على دراية بأحدث أساليب الاجراءات في هذا المجال&nbsp;&nbsp;</p>\n<p style=\"text-align: right;\"><strong>العضويات المهنية</strong></p>\n<p style=\"text-align: right;\">الجمعية الايرانية لامراض الانف&nbsp;</p>\n<p style=\"text-align: right;\">(RRS) جمعية ابحاث الأنف</p>\n<p style=\"text-align: right;\"><strong>اللغات</strong></p>\n<p style=\"text-align: right;\">الانجليزية</p>\n<p style=\"text-align: right;\">الفارسية&nbsp;</p>', '2019-02-14 10:00:49', '2019-05-11 08:06:36'),
(283, 'doctors', 'testimonal', 4, 'ar', '', '2019-02-14 10:00:49', '2019-02-14 10:00:49'),
(284, 'doctors', 'address', 4, 'ar', '', '2019-02-14 10:00:49', '2019-02-14 10:00:49'),
(289, 'posts', 'title', 7, 'ar', '', '2019-02-17 12:44:59', '2019-02-17 12:44:59'),
(290, 'posts', 'seo_title', 7, 'ar', '', '2019-02-17 12:44:59', '2019-02-17 12:44:59'),
(291, 'posts', 'excerpt', 7, 'ar', '', '2019-02-17 12:44:59', '2019-02-17 12:44:59'),
(292, 'posts', 'body', 7, 'ar', '', '2019-02-17 12:44:59', '2019-02-17 12:44:59'),
(293, 'posts', 'slug', 7, 'ar', '', '2019-02-17 12:44:59', '2019-02-17 12:44:59'),
(294, 'posts', 'meta_description', 7, 'ar', '', '2019-02-17 12:44:59', '2019-02-17 12:44:59'),
(295, 'posts', 'meta_keywords', 7, 'ar', '', '2019-02-17 12:44:59', '2019-02-17 12:44:59'),
(302, 'menu_items', 'title', 53, 'ar', 'أعضاء شركتنا', '2019-02-24 07:37:01', '2019-03-03 10:24:21'),
(303, 'data_types', 'display_name_singular', 6, 'ar', 'Page', '2019-02-24 08:37:40', '2019-02-24 08:37:40'),
(304, 'data_types', 'display_name_plural', 6, 'ar', 'Pages', '2019-02-24 08:37:40', '2019-02-24 08:37:40'),
(305, 'data_types', 'display_name_singular', 21, 'ar', 'Package', '2019-02-24 21:22:42', '2019-02-24 21:22:42'),
(306, 'data_types', 'display_name_plural', 21, 'ar', 'Packages', '2019-02-24 21:22:42', '2019-02-24 21:22:42'),
(307, 'testimonials', 'name', 2, 'ar', 'عالیه', '2019-02-24 22:09:10', '2019-02-25 13:24:02'),
(308, 'testimonials', 'position', 2, 'ar', 'عمان', '2019-02-24 22:09:10', '2019-02-25 13:28:03'),
(309, 'testimonials', 'quote', 2, 'ar', 'ساعدتني شركة مدتورایران لإصلاح أسناني وتجميل ابتسامتي. أنا حقًا أشكرهم على تصرفاتهم الترحيبية', '2019-02-24 22:09:10', '2019-02-25 13:28:03'),
(313, 'menu_items', 'title', 55, 'ar', 'Testimonials', '2019-02-24 22:10:54', '2019-02-24 22:10:54'),
(314, 'menu_items', 'title', 56, 'ar', 'Packages', '2019-02-24 22:11:44', '2019-02-24 22:11:44'),
(315, 'packages', 'title', 2, 'ar', 'عملية تجميل الأنف', '2019-02-25 12:43:17', '2019-02-27 05:53:25'),
(316, 'packages', 'subtitle', 2, 'ar', 'طهران', '2019-02-25 12:43:17', '2019-03-03 11:35:47'),
(317, 'packages', 'timeline', 2, 'ar', '', '2019-02-25 12:43:17', '2019-02-25 12:43:17'),
(318, 'packages', 'description', 2, 'ar', '', '2019-02-25 12:43:17', '2019-02-25 12:43:17'),
(319, 'packages', 'before_price', 2, 'ar', 'From', '2019-02-25 12:43:17', '2019-02-27 05:53:25'),
(320, 'packages', 'after_price', 2, 'ar', '', '2019-02-25 12:43:17', '2019-02-25 12:43:17'),
(321, 'packages', 'title', 1, 'ar', 'زراعة الشعر', '2019-02-25 12:59:49', '2019-02-27 05:54:27'),
(322, 'packages', 'subtitle', 1, 'ar', ' طهران', '2019-02-25 12:59:49', '2019-03-03 11:35:59'),
(323, 'packages', 'timeline', 1, 'ar', '<p>test</p>', '2019-02-25 12:59:49', '2019-02-25 12:59:49'),
(324, 'packages', 'description', 1, 'ar', '<p>test</p>', '2019-02-25 12:59:49', '2019-02-25 12:59:49'),
(325, 'packages', 'before_price', 1, 'ar', 'from', '2019-02-25 12:59:49', '2019-02-25 12:59:49'),
(326, 'packages', 'after_price', 1, 'ar', '', '2019-02-25 12:59:49', '2019-02-27 05:54:27'),
(327, 'packages', 'title', 3, 'ar', 'زرع الأسنان', '2019-02-25 13:03:24', '2019-02-27 05:50:59'),
(328, 'packages', 'subtitle', 3, 'ar', 'طهران', '2019-02-25 13:03:24', '2019-03-03 11:35:33'),
(329, 'packages', 'timeline', 3, 'ar', '', '2019-02-25 13:03:24', '2019-02-25 13:03:24'),
(330, 'packages', 'description', 3, 'ar', '', '2019-02-25 13:03:24', '2019-02-25 13:03:24'),
(331, 'packages', 'before_price', 3, 'ar', 'From', '2019-02-25 13:03:24', '2019-02-27 05:50:59'),
(332, 'packages', 'after_price', 3, 'ar', 'per tooth', '2019-02-25 13:03:24', '2019-02-27 05:50:59'),
(333, 'testimonials', 'name', 3, 'ar', 'محمود', '2019-02-25 13:31:48', '2019-02-25 13:35:15'),
(334, 'testimonials', 'position', 3, 'ar', 'عراق', '2019-02-25 13:31:48', '2019-02-25 13:35:15'),
(335, 'testimonials', 'quote', 3, 'ar', 'أقترح إيران لرحلة طبية بسبب الخدمات بأسعار معقولة والمدن عالية الجودة.', '2019-02-25 13:31:48', '2019-02-25 13:35:15'),
(336, 'packages', 'options', 1, 'ar', 'تأشيرة دخول;\nنقل داخل طهران;\nالإقامة;\nمترجم;\nمتابعة;\nمشاهدة معالم المدينة', '2019-02-25 18:22:33', '2019-02-27 07:51:46'),
(337, 'packages', 'options', 3, 'ar', 'تأشيرة دخول;\nنقل داخل طهران;\nالإقامة ;\nمترجم;\nمتابعة;\nمشاهدة معالم المدينة', '2019-02-26 07:47:39', '2019-02-27 07:50:45'),
(338, 'packages', 'options', 2, 'ar', 'تأشيرة دخول;\nنقل داخل طهران;\nالإقامة;\nمترجم;\nمتابعة;\nمشاهدة معالم المدينة', '2019-02-27 05:39:51', '2019-02-27 07:51:03'),
(339, 'data_types', 'display_name_singular', 20, 'ar', 'Testimonial', '2019-03-01 19:24:07', '2019-03-01 19:24:07'),
(340, 'data_types', 'display_name_plural', 20, 'ar', 'Testimonials', '2019-03-01 19:24:07', '2019-03-01 19:24:07'),
(341, 'pages', 'excerpt', 9, 'ar', 'Med Tour Iran', '2019-03-01 19:46:24', '2019-03-02 09:23:41'),
(343, 'pages', 'excerpt', 12, 'ar', 'العربیه', '2019-03-04 04:33:30', '2019-03-04 04:33:30'),
(344, 'pages', 'excerpt', 2, 'ar', '', '2019-03-04 04:34:47', '2019-03-04 04:34:47'),
(345, 'pages', 'excerpt', 6, 'ar', 'our medical centers', '2019-03-06 05:22:39', '2019-03-06 05:22:39'),
(346, 'doctors', 'name', 6, 'ar', 'الدكتور بهزاد عليزاده', '2019-03-16 02:22:26', '2019-05-02 18:18:04'),
(347, 'doctors', 'about', 6, 'ar', '', '2019-03-16 02:22:26', '2019-03-16 02:22:26'),
(348, 'doctors', 'testimonal', 6, 'ar', '', '2019-03-16 02:22:26', '2019-03-16 02:22:26'),
(349, 'doctors', 'address', 6, 'ar', '', '2019-03-16 02:22:26', '2019-03-16 02:22:26'),
(354, 'pages', 'excerpt', 8, 'ar', '', '2019-03-16 13:11:30', '2019-03-16 13:11:30'),
(355, 'pages', 'title', 15, 'ar', 'أعضاء شركتنا', '2019-03-17 17:31:17', '2019-03-18 07:13:06'),
(356, 'pages', 'slug', 15, 'ar', 'aadhaa-shrktna', '2019-03-17 17:31:17', '2019-03-18 07:13:06'),
(357, 'pages', 'body', 15, 'ar', '<p style=\"text-align: left;\">&nbsp;</p>\n<!------ Include the above in your HEAD tag ---------->\n<p style=\"text-align: left;\">&nbsp;</p>\n<div class=\"container\" style=\"text-align: left;\">\n<div class=\"row\">\n<div class=\"col-md-10 col-md-offset-1\">\n<div class=\"col-lg-12\">\n<h6 class=\"description\" style=\"text-align: left;\">&nbsp;</h6>\n<div class=\"row pt-md\">\n<div class=\"col-lg-3 col-md-3 col-sm-4 col-xs-12 profile\" style=\"text-align: left;\">\n<div class=\"img-box\"><img class=\"img-responsive\" src=\"/storage/pages/March2019/mohammad taghi7.jpg\" width=\"600\" height=\"700\" /></div>\n<h1 style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">محمد زرين كلاه</span></h1>\n<h2 style=\"text-align: center;\"><span style=\"font-size: 14pt; color: #3366ff;\"><strong>مؤسس</strong></span></h2>\n<p>&nbsp;</p>\n</div>\n<div class=\"col-lg-3 col-md-3 col-sm-4 col-xs-12 profile\" style=\"text-align: left;\">\n<div class=\"img-box\"><img class=\"img-responsive\" src=\"/storage/pages/March2019/mohammad5.jpg\" width=\"600\" height=\"700\" /></div>\n<h1 style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">محمد نيكويي</span></h1>\n<h2 style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong><span style=\"color: #3366ff;\">شريك مؤسس&nbsp;</span></strong></span></h2>\n<p>&nbsp;</p>\n</div>\n<div class=\"col-lg-3 col-md-3 col-sm-4 col-xs-12 profile\" style=\"text-align: left;\">\n<div class=\"img-box\"><img class=\"img-responsive\" src=\"/storage/pages/March2019/alireza5.jpg\" width=\"600\" height=\"700\" /></div>\n<h1 style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">عليرضا تقديسي</span></h1>\n<h2 style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong><span style=\"color: #3366ff;\">مديرانتاج المحتوي</span></strong></span></h2>\n<p>&nbsp;</p>\n</div>\n<div class=\"col-lg-3 col-md-3 col-sm-4 col-xs-12 profile\" style=\"text-align: left;\">\n<div class=\"img-box\"><img class=\"img-responsive\" src=\"/storage/pages/March2019/masoud24.jpg\" width=\"600\" height=\"700\" /></div>\n<h1 style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">&nbsp;دكتورمسعود ساجدي</span></h1>\n<h2 style=\"text-align: center;\"><span style=\"color: #3366ff; font-size: 14pt;\">مديرالفريق الطبي</span></h2>\n<p>&nbsp;</p>\n</div>\n<div class=\"col-lg-3 col-md-3 col-sm-4 col-xs-12 profile\" style=\"text-align: left;\">\n<div class=\"img-box\"><img class=\"img-responsive\" src=\"/storage/pages/March2019/tavakkol4.jpg\" width=\"600\" height=\"700\" /></div>\n<h1 style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">دكتورشيوا توكل</span></h1>\n<h2 style=\"text-align: center;\"><span style=\"color: #3366ff;\"><strong><span style=\"font-size: 14pt;\">عضوالفريق الطبي</span></strong></span></h2>\n<p>&nbsp;</p>\n</div>\n<div class=\"col-lg-3 col-md-3 col-sm-4 col-xs-12 profile\" style=\"text-align: left;\">\n<div class=\"img-box\"><img class=\"img-responsive\" src=\"/storage/pages/March2019/dehghan4.jpg\" width=\"600\" height=\"700\" /></div>\n<h1 style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #000000;\">دكتورأناهيتا دهقان</span></h1>\n<h2 style=\"text-align: center;\"><strong><span style=\"font-size: 14pt; color: #3366ff;\">عضوالفريق الطبي</span></strong></h2>\n<p>&nbsp;</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>', '2019-03-17 17:31:17', '2019-03-31 08:47:11'),
(358, 'pages', 'excerpt', 15, 'ar', '', '2019-03-17 17:31:17', '2019-03-17 17:31:17'),
(359, 'pages', 'excerpt', 10, 'ar', 'FAQ', '2019-03-28 06:47:48', '2019-03-28 06:47:48'),
(360, 'pages', 'excerpt', 3, 'ar', 'Explaining Iran capabilities', '2019-04-06 10:22:55', '2019-04-06 10:22:55'),
(361, 'pages', 'excerpt', 13, 'ar', 'Gallery', '2019-04-15 11:11:14', '2019-04-15 11:11:14'),
(362, 'doctors', 'name', 8, 'ar', 'الدكتور ميرمحمد صادقي', '2019-05-02 18:00:44', '2019-05-02 18:14:22');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(363, 'doctors', 'about', 8, 'ar', '<p style=\"text-align: right;\">&nbsp;</p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><strong><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">التخصصات</span></strong></p>\n<p class=\"MsoNormal\" dir=\"RTL\"><span lang=\"AR-SA\" style=\"font-size: 10.0pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #656464; mso-bidi-language: AR-SA;\">الدكتور ميرمحمد صادقي هو جراح و اخصائي طب العيون. تخصص الدكتور يغطي كل من: زراعة عدسة العين, جراحة عدسة </span><span dir=\"LTR\" style=\"font-size: 10.0pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #656464;\">Artesian</span><span lang=\"AR-SA\" style=\"font-size: 10.0pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #656464; mso-bidi-language: AR-SA;\">, جراحة عتامة العين (الساد اي الماء الابيض) (خاصة باستخدام جهاز الفاكو المتطور تكنولوجيا) و الليزيك و ايضا فمتو الليزيك.</span>&nbsp;</p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto;\"><strong><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">التعلم و التدريب</span></strong></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"margin-bottom: 7.5pt;\"><span lang=\"AR-SA\" style=\"font-size: 10.0pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #656464; mso-bidi-language: AR-SA;\"><span style=\"mso-spacerun: yes;\">&nbsp; </span>الجراحة التجميلية<span style=\"mso-spacerun: yes;\">&nbsp; </span>و جراحة تجميل الوجه (لعشرة اشهر), جامعة ايران للعلوم الطبية, طهران. 2005</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><strong><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">الخبرة و شهادات المجلس</span></strong></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">رفقة الجراحة التجميلية, الليزيك و فمتو</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">المؤتمر التاسع والعشرون للجمعية الأوروبية لجراحات الساد وجراحة الانكسار ، فيينا ، النمسا ، سبتمبر 2011</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\">المؤتمر السابع والعشرون للجمعية الأوروبية لجراحي الساد والإنكسار ، برشلونة ، إسبانيا ، سبتمبر 2009</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">المؤتمر الخامس والعشرون للجمعية الأوروبية لجراحي الساد والإنكسار ، ستوكهولم ، السويد ، سبتمبر 2007</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">المؤتمر الرابع والعشرون للجمعية الأوروبية لجراحي الساد والإنكسار ، لندن ، المملكة المتحدة ، سبتمبر 2006</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\">المؤتمر الثالث والعشرون للجمعية الأوروبية لجراحة الساد والإنكسار ، لشبونة ، البرتغال ، سبتمبر 2005</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span><span lang=\"AR-SA\">ندوة </span></span><span dir=\"LTR\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\">NIDEK</span><span style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\"> <span lang=\"AR-SA\">لجراحة الانكسار ، دبي ، الإمارات العربية المتحدة ، أبريل 2005</span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span><span lang=\"AR-SA\">المؤتمر الإيراني الرابع عشر لطب العيون ، الجمعية الإيرانية لطب العيون ، طهران ، إيران ، ديسمبر 2004</span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span><span lang=\"AR-SA\">المؤتمر الحادي والعشرون للجمعية الأوروبية لجراحة الساد وجراحة الانكسار ، ميونيخ ، ألمانيا ، سبتمبر 2003.</span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto;\"><span style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span><span lang=\"AR-SA\">المؤتمر التاسع عشر للجمعية الأوروبية لجراحات الساد وجراحة الانكسار ، أمستردام ، هولندا ، سبتمبر 2001.</span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><strong><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">العضويات المهنية</span></strong></p>\n<p style=\"text-align: right;\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 12.0pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">عضو في الرابطة الأوروبية لرابطة جراحي الساد والإنكسار ESCRS من عام 200 حتى الان</span></p>\n<p style=\"text-align: right;\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 12.0pt; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 12pt;\">عضو في الأكاديمية الأمريكية لطب العيون (AAO) منذ عام 2009</span></span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><strong><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">اللغات</span></strong></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">الانجليزية</span></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">الفارسية</span></p>', '2019-05-02 18:00:44', '2019-05-11 08:07:51'),
(364, 'doctors', 'testimonal', 8, 'ar', '', '2019-05-02 18:00:44', '2019-05-02 18:00:44'),
(365, 'doctors', 'address', 8, 'ar', '', '2019-05-02 18:00:44', '2019-05-02 18:00:44'),
(366, 'doctors', 'name', 9, 'ar', 'الدكتور محمد اسحاقي', '2019-05-03 02:49:52', '2019-05-03 02:49:52'),
(367, 'doctors', 'about', 9, 'ar', '<p style=\"text-align: right;\">&nbsp;</p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"line-height: 115%; mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><strong><span lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">التخصصات</span></strong></p>\n<p class=\"MsoNormal\" dir=\"RTL\" style=\"line-height: 115%; mso-outline-level: 2; margin: 7.5pt 0in 3.75pt 0in;\"><span lang=\"AR-SA\" style=\"font-size: 10.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #656464; mso-bidi-language: AR-SA;\">الدكتور محمد عشقي متخصص في الجراحة التجميلية والترميمية ، الحول وعيون الأطفال.</span></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; mso-outline-level: 2; direction: ltr; unicode-bidi: embed; margin: 7.5pt 0in 3.75pt 0in;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">التعلم و التدريب </span></strong></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; mso-outline-level: 2; direction: ltr; unicode-bidi: embed; margin: 7.5pt 0in 3.75pt 0in;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">رفقة (اخصائي) الجراحة التجميلية (التئام) و انحراف العين من جامعة الشهيد بهشتي </span></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; mso-outline-level: 2; direction: ltr; unicode-bidi: embed; margin: 7.5pt 0in 3.75pt 0in;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">الخبرة و شهادات المجلس</span></strong></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; mso-outline-level: 2; direction: ltr; unicode-bidi: embed; margin: 7.5pt 0in 3.75pt 0in;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10.5pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\">عضو هيئة تدريس بجامعة مازندران للعلوم الطبية وجامعة شهيد بهشتي للعلوم الطبية</span></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; mso-outline-level: 2; direction: ltr; unicode-bidi: embed; margin: 7.5pt 0in 3.75pt 0in;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10.5pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\">نشر 7 أوراق علمية داخلية و 5 أوراق علمية خارجية</span><span style=\"font-size: 10.5pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\">&nbsp;&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; mso-outline-level: 2; direction: ltr; unicode-bidi: embed; margin: 7.5pt 0in 3.75pt 0in;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10.5pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\">خطاب في المؤتمرات الوطنية والدولية</span></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; mso-outline-level: 2; direction: ltr; unicode-bidi: embed; margin: 7.5pt 0in 3.75pt 0in;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">العضويات المهنية</span></strong></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; mso-outline-level: 2; direction: ltr; unicode-bidi: embed; margin: 7.5pt 0in 3.75pt 0in;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #333333; mso-bidi-language: AR-SA;\">عضو في الجمعية الإيرانية لطب العيون</span></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; direction: ltr; unicode-bidi: embed;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10.5pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\">االغات</span></strong></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; direction: ltr; unicode-bidi: embed;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10.5pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\">الانجليزية </span></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; direction: ltr; unicode-bidi: embed;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10.5pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; mso-ascii-theme-font: minor-bidi; mso-hansi-theme-font: minor-bidi; mso-bidi-theme-font: minor-bidi; color: #444444; mso-bidi-language: AR-SA;\">الفارسية</span></p>', '2019-05-03 02:49:52', '2019-05-11 08:08:19'),
(368, 'doctors', 'testimonal', 9, 'ar', '', '2019-05-03 02:49:52', '2019-05-03 02:49:52'),
(369, 'doctors', 'address', 9, 'ar', '', '2019-05-03 02:49:52', '2019-05-03 02:49:52'),
(370, 'doctors', 'name', 10, 'ar', 'الدكتور مهتاب مرجاني', '2019-05-03 03:27:59', '2019-05-03 03:27:59'),
(371, 'doctors', 'about', 10, 'ar', '<p style=\"text-align: right;\">&nbsp;</p>\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: 115%; direction: ltr; unicode-bidi: embed;\"><strong><span style=\"font-size: 10.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #656464; mso-bidi-language: AR-SA;\">&nbsp;</span></strong></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; mso-outline-level: 2; direction: ltr; unicode-bidi: embed; margin: 7.5pt 0in 3.75pt 0in;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; mso-bidi-language: AR-SA;\">التخصصات</span></strong></p>\n<p class=\"MsoNormal\" style=\"text-align: right; line-height: 115%; mso-outline-level: 2; direction: ltr; unicode-bidi: embed; margin: 7.5pt 0in 3.75pt 0in;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; color: #333333; mso-bidi-language: AR-SA;\">الدكتورة مرجاني هي اخصائية طب التوليد (متخصصة في الحمل والولادة والجهاز التناسلي للمرأة)</span></p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: right; line-height: 115%; direction: ltr; unicode-bidi: embed;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family: \'Arial\',\'sans-serif\'; color: #656464; mso-bidi-language: AR-SA;\">التعلم و التدريب</span></strong></p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: right; line-height: 115%; direction: ltr; unicode-bidi: embed;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #656464; mso-bidi-language: AR-SA;\">جامعة طهران للعلوم الطبية</span></p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: right; line-height: 115%; direction: ltr; unicode-bidi: embed;\" align=\"right\"><strong><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #656464; mso-bidi-language: AR-SA;\">اللغات</span></strong></p>\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: right; line-height: 115%; direction: ltr; unicode-bidi: embed;\" align=\"right\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10.0pt; line-height: 115%; font-family: \'Arial\',\'sans-serif\'; color: #656464; mso-bidi-language: AR-SA;\">الانجليزية</span></p>\n<p style=\"text-align: right;\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-size: 10.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #656464; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">الفارسية</span></p>', '2019-05-03 03:27:59', '2019-05-11 08:15:37'),
(372, 'doctors', 'testimonal', 10, 'ar', '', '2019-05-03 03:27:59', '2019-05-03 03:27:59'),
(373, 'doctors', 'address', 10, 'ar', '', '2019-05-03 03:27:59', '2019-05-03 03:27:59'),
(374, 'doctors', 'name', 11, 'ar', 'الدوكتور الهام امام جمعه', '2019-05-03 04:40:30', '2019-05-03 04:42:21'),
(375, 'doctors', 'about', 11, 'ar', '', '2019-05-03 04:40:30', '2019-05-03 04:40:30'),
(376, 'doctors', 'testimonal', 11, 'ar', '', '2019-05-03 04:40:30', '2019-05-03 04:40:30'),
(377, 'doctors', 'address', 11, 'ar', '', '2019-05-03 04:40:30', '2019-05-03 04:40:30'),
(385, 'doctors', 'name', 12, 'ar', 'الدكتور اکبر مهرافزان', '2019-05-12 09:11:32', '2019-05-12 09:11:32'),
(386, 'doctors', 'about', 12, 'ar', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit minus, modi adipisci nesciunt, illum atque temporibus cupiditate blanditiis quo illo cumque doloribus laborum rem neque dolorum, ipsa officiis fugiat expedita.Perspiciatis facere magnam reiciendis modi ratione asperiores fugit minus dolores dignissimos cum.', '2019-05-12 09:11:32', '2019-07-03 09:08:48'),
(387, 'doctors', 'testimonal', 12, 'ar', '', '2019-05-12 09:11:32', '2019-05-12 09:11:32'),
(388, 'doctors', 'address', 12, 'ar', '', '2019-05-12 09:11:32', '2019-05-12 09:11:32'),
(389, 'categories', 'slug', 10, 'ar', '', '2019-06-28 17:50:06', '2019-06-28 17:50:06'),
(390, 'categories', 'title', 10, 'ar', '', '2019-06-28 17:50:06', '2019-06-28 17:50:06'),
(391, 'categories', 'excerpt', 10, 'ar', '', '2019-06-28 17:50:06', '2019-06-28 17:50:06'),
(392, 'categories', 'body', 10, 'ar', '', '2019-06-28 17:50:06', '2019-06-28 17:50:06'),
(393, 'packages', 'title', 4, 'ar', '', '2019-06-29 06:51:25', '2019-06-29 06:51:25'),
(394, 'packages', 'subtitle', 4, 'ar', '', '2019-06-29 06:51:25', '2019-06-29 06:51:25'),
(395, 'packages', 'timeline', 4, 'ar', '', '2019-06-29 06:51:25', '2019-06-29 06:51:25'),
(396, 'packages', 'description', 4, 'ar', '', '2019-06-29 06:51:25', '2019-06-29 06:51:25'),
(397, 'packages', 'before_price', 4, 'ar', '', '2019-06-29 06:51:25', '2019-06-29 06:51:25'),
(398, 'packages', 'after_price', 4, 'ar', '', '2019-06-29 06:51:25', '2019-06-29 06:51:25'),
(399, 'packages', 'options', 4, 'ar', '', '2019-06-29 06:51:26', '2019-06-29 06:51:26'),
(400, 'data_types', 'display_name_singular', 23, 'ar', 'Package Timeline', '2019-06-30 02:34:14', '2019-06-30 02:34:14'),
(401, 'data_types', 'display_name_plural', 23, 'ar', 'Package Timelines', '2019-06-30 02:34:14', '2019-06-30 02:34:14'),
(402, 'packages', 'testimonial', 3, 'ar', 'LRaks4ZDqvw;\r\ntgbNymZ7vqY', '2019-06-30 10:45:07', '2019-06-30 10:45:07'),
(403, 'data_types', 'display_name_singular', 26, 'ar', 'Hotel', '2019-07-01 01:03:36', '2019-07-01 01:03:36'),
(404, 'data_types', 'display_name_plural', 26, 'ar', 'Hotels', '2019-07-01 01:03:36', '2019-07-01 01:03:36'),
(405, 'hotels', 'title', 1, 'ar', 'Espinas Palace Hotel', '2019-07-01 11:26:54', '2019-07-01 11:26:54'),
(406, 'hotels', 'description', 1, 'ar', '<p class=\"paragraph-medium paragraph-black text-left\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; line-height: 1.6; font-size: 16px; font-family: Montserrat, sans-serif; color: #777777;\">Sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n<p class=\"paragraph-medium paragraph-black text-left\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; line-height: 1.6; font-size: 16px; font-family: Montserrat, sans-serif; color: #777777;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum modi libero molestias quaerat veritatis impedit consequatur est ut, officiis, sit ea qui architecto nostrum reiciendis accusantium eaque assumenda quas deserunt!</p>\r\n<div class=\"row\" style=\"box-sizing: border-box; display: flex; flex-wrap: wrap; margin-right: -15px; margin-left: -15px; color: #212529; font-family: Montserrat, sans-serif; font-size: 12px;\">\r\n<div class=\"col-md-12\" style=\"box-sizing: border-box; position: relative; width: 710px; min-height: 1px; padding-right: 15px; padding-left: 15px; flex: 0 0 100%; max-width: 100%;\">\r\n<ol class=\"theme-list\" style=\"box-sizing: border-box; margin: 0px 0px 10px; letter-spacing: 0px; font-size: 14px; line-height: 24px; padding: 0px;\">\r\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">1. Asperiores quis voluptates voluptas</li>\r\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">2. Asperiores quis voluptates voluptas</li>\r\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">3. Asperiores quis voluptates voluptas</li>\r\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">4. Asperiores quis voluptates voluptas</li>\r\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">5. Asperiores quis voluptates voluptas</li>\r\n<li style=\"box-sizing: border-box; list-style: none; line-height: 1.6; color: #555555; padding: 5px 0px; letter-spacing: 0.5px;\">6. Asperiores quis voluptates voluptas</li>\r\n</ol>\r\n</div>\r\n</div>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; padding: 0px; line-height: 1.6; color: #212529; font-family: Montserrat, sans-serif;\">&nbsp;</p>\r\n<p class=\"paragraph-medium paragraph-black text-left\" style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; line-height: 1.6; font-size: 16px; font-family: Montserrat, sans-serif; color: #777777;\">Food poisoning, also referred foodborne illness is the result of eating contaminated, spoiled, or toxic food as well as chemical or natural toxins such as poisonous mushrooms. Contamination can also occur at home if food is incorrectly handled or cooked.</p>', '2019-07-01 11:26:54', '2019-07-01 11:26:54'),
(407, 'doctors', 'education', 12, 'ar', '{\r\n    \"1\": {\r\n        \"name\": \"Universty of world for Medicine\",\r\n        \"degree\": \"Bachelor of Medicine(BM)\",\r\n        \"date\": \"Dec 1991\"\r\n    },\r\n    \"2\": {\r\n        \"name\": \"Universty of world for Medicine1\",\r\n        \"degree\": \"Bachelor of Medicine(BM)1\",\r\n        \"date\": \"Dec 1991 1\"\r\n    }\r\n}', '2019-07-03 09:56:43', '2019-07-03 09:56:43'),
(408, 'doctors', 'skills', 12, 'ar', '{\r\n    \"1\": {\r\n        \"skill\": \"Brain Surgery\",\r\n        \"percent\": \"75\"\r\n    },\r\n    \"2\": {\r\n        \"skill\": \"Heart Surgery\",\r\n        \"percent\": \"65\"\r\n    },\r\n    \"3\": {\r\n        \"skill\": \"Trauma Surgery\",\r\n        \"percent\": \"85\"\r\n    },\r\n    \"4\": {\r\n        \"skill\": \"Central Surgery\",\r\n        \"percent\": \"89\"\r\n    },\r\n    \"5\": {\r\n        \"skill\": \"Weekly Consultancy\",\r\n        \"percent\": \"55\"\r\n    }\r\n}', '2019-07-03 09:56:43', '2019-07-03 09:56:43'),
(409, 'doctors', 'education', 10, 'ar', '{}', '2019-07-03 09:57:05', '2019-07-03 09:57:05'),
(410, 'doctors', 'skills', 10, 'ar', '{}', '2019-07-03 09:57:05', '2019-07-03 09:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/January2019/Ym25mRQqrU3NDyrMk1kz.jpg', NULL, '$2y$10$ISHDCWgue3aaHD8Ii9wYEuOBUrVB8Qh2D5G42S9q0BcMflAyVS4YW', 'GxrxUlUExVQx3iJRGtUPubv6EyFXEgxtYeUvxkIfm3y1h15M8RlV8WVuerKg', '{\"locale\":\"en\"}', '2018-12-15 19:38:02', '2019-01-22 11:05:28'),
(2, 3, 'MedtourIran', 'mecheng1390@yahoo.com', 'users/default.png', NULL, '$2y$10$g8JxLiHfMhZhoCvus2MIMOgB7QJY3e4LKa2tNNCFEL4o4FZiQEo3S', 'JpaSUmaZ1ClZzJic1ozd2qhZWxUFaakk94ZZNK2Agm9KW0wEssjfMJLMEWqm', '{\"locale\":\"en\"}', '2019-01-11 21:25:52', '2019-01-28 12:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_category`
--
ALTER TABLE `doctor_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_hotel_item`
--
ALTER TABLE `hotel_hotel_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_items`
--
ALTER TABLE `hotel_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_category`
--
ALTER TABLE `package_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_city`
--
ALTER TABLE `package_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_items`
--
ALTER TABLE `package_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_package_item`
--
ALTER TABLE `package_package_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_package_price`
--
ALTER TABLE `package_package_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_prices`
--
ALTER TABLE `package_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_timeline`
--
ALTER TABLE `package_timeline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timelines`
--
ALTER TABLE `timelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctor_category`
--
ALTER TABLE `doctor_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotel_hotel_item`
--
ALTER TABLE `hotel_hotel_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotel_items`
--
ALTER TABLE `hotel_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `package_category`
--
ALTER TABLE `package_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package_city`
--
ALTER TABLE `package_city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package_items`
--
ALTER TABLE `package_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `package_package_item`
--
ALTER TABLE `package_package_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `package_package_price`
--
ALTER TABLE `package_package_price`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package_prices`
--
ALTER TABLE `package_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package_timeline`
--
ALTER TABLE `package_timeline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `timelines`
--
ALTER TABLE `timelines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
