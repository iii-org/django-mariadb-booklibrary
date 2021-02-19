-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `library` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `library`;

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1,	'Can add log entry',	1,	'add_logentry'),
(2,	'Can change log entry',	1,	'change_logentry'),
(3,	'Can delete log entry',	1,	'delete_logentry'),
(4,	'Can view log entry',	1,	'view_logentry'),
(5,	'Can add permission',	2,	'add_permission'),
(6,	'Can change permission',	2,	'change_permission'),
(7,	'Can delete permission',	2,	'delete_permission'),
(8,	'Can view permission',	2,	'view_permission'),
(9,	'Can add group',	3,	'add_group'),
(10,	'Can change group',	3,	'change_group'),
(11,	'Can delete group',	3,	'delete_group'),
(12,	'Can view group',	3,	'view_group'),
(13,	'Can add user',	4,	'add_user'),
(14,	'Can change user',	4,	'change_user'),
(15,	'Can delete user',	4,	'delete_user'),
(16,	'Can view user',	4,	'view_user'),
(17,	'Can add content type',	5,	'add_contenttype'),
(18,	'Can change content type',	5,	'change_contenttype'),
(19,	'Can delete content type',	5,	'delete_contenttype'),
(20,	'Can view content type',	5,	'view_contenttype'),
(21,	'Can add session',	6,	'add_session'),
(22,	'Can change session',	6,	'change_session'),
(23,	'Can delete session',	6,	'delete_session'),
(24,	'Can view session',	6,	'view_session'),
(25,	'Can add author',	7,	'add_author'),
(26,	'Can change author',	7,	'change_author'),
(27,	'Can delete author',	7,	'delete_author'),
(28,	'Can view author',	7,	'view_author'),
(29,	'Can add book',	8,	'add_book'),
(30,	'Can change book',	8,	'change_book'),
(31,	'Can delete book',	8,	'delete_book'),
(32,	'Can view book',	8,	'view_book'),
(33,	'Can add genre',	9,	'add_genre'),
(34,	'Can change genre',	9,	'change_genre'),
(35,	'Can delete genre',	9,	'delete_genre'),
(36,	'Can view genre',	9,	'view_genre'),
(37,	'Can add book instance',	10,	'add_bookinstance'),
(38,	'Can change book instance',	10,	'change_bookinstance'),
(39,	'Can delete book instance',	10,	'delete_bookinstance'),
(40,	'Can view book instance',	10,	'view_bookinstance');

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `catalog_author`;
CREATE TABLE `catalog_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `catalog_author` (`id`, `first_name`, `last_name`, `date_of_birth`, `date_of_death`) VALUES
(1,	'ziyi',	'wang',	'2021-02-17',	NULL),
(2,	'康彬',	'李',	NULL,	NULL),
(3,	'訓練中心',	'醜小鴨咖啡師',	NULL,	NULL),
(4,	'咖啡拉花藝術認證所',	'LAGS.tw',	NULL,	NULL),
(5,	'時代社區',	'DevOps',	NULL,	NULL),
(6,	'書敏',	'胡',	NULL,	NULL);

DROP TABLE IF EXISTS `catalog_book`;
CREATE TABLE `catalog_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `summary` longtext NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_book_author_id_b0849980_fk_catalog_author_id` (`author_id`),
  CONSTRAINT `catalog_book_author_id_b0849980_fk_catalog_author_id` FOREIGN KEY (`author_id`) REFERENCES `catalog_author` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `catalog_book` (`id`, `title`, `summary`, `isbn`, `author_id`) VALUES
(1,	'小咖啡熊熊',	'泰迪熊 咖啡色 掉毛',	'1122334455667',	1),
(2,	'咖啡歐爸的彩繪拉花 (電子書)',	'IG 26萬粉絲狂推轉發，CNN等國外媒體爭相報導！\r\n韓國超人氣歐爸咖啡師的「彩繪拉花(Creamart)」，席捲來台！\r\n\r\n　　★不敢相信！突破單一色調、固定圖案，顛覆拉花的視覺饗宴大公開！\r\n　　★讓梵谷〈星夜〉、孟克〈吶喊〉等經典畫作，在咖啡上全彩呈現！\r\n\r\n　　看膩了線條簡單的拉花，這次，直接在咖啡上畫一幅畫吧！\r\n　　不論你是每日必來一杯的咖啡愛好者；或是正鑽研於拉花的咖啡從業者，\r\n　　跟著彩繪拉花大師STEP BY STEP，咖啡的「顏值」和「吸睛度」可以完全不一樣。\r\n\r\n　　▎韓國人瘋狂朝聖的最強咖啡拉花，各式主題不藏私全收錄—–\r\n\r\n　　作者經營的咖啡廳，被網友列為首爾「必訪」景點，\r\n　　因為畫風多元創意、精細度極高的「彩繪拉花」，給人滿滿視覺震撼！\r\n　　本書收錄最具代表性的7大主題，共63款手繪作品教學，\r\n　　從經典「世界名畫」到各地「旅遊景點」；從童趣「卡通動物」到溫暖「手寫字跡」，\r\n　　還有注入巧思，讓畫面「衝出杯緣」或「像是在動」的特別設計，每款都能賦予咖啡新的生命！\r\n\r\n　　▎初學者也能仿真大師級作品！在家就可以自己完成—–\r\n\r\n　　為了方便上色、延長展示時間，「彩繪拉花」是用「鮮奶油」搭配「冷飲」基底，\r\n　　以「天然食用色漿」為顏料，取「拉花筆」或「湯匙」為工具，\r\n　　不但省去傳統拉花繁複的打奶泡環節，也不用趁高溫急迫完成，\r\n　　只要耐心跟著本書圖解，一步步如畫油畫般堆疊、描繪圖案，\r\n　　第一次嘗試也能有很高的完成度，甚至原汁還原經典畫作！',	'9789861304267',	2),
(3,	'咖啡拉花技術大全 (電子書)',	'顛覆一般拉花思維，抓到訣竅就能拉出達人級拉花！\r\n　　只要擁有這一本，保證您一定能成為拉花達人！\r\n\r\n　　醜小鴨咖啡師訓練中心在出版了銷售上萬冊的《咖啡究極講座》、《手沖咖啡大全》、《手沖咖啡大全2——完美萃取》、《醜小鴨咖啡烘焙書》後，將正式出版許多讀者殷殷企盼的的咖啡拉花教學手冊，書籍內容一如既往的以專業教學書的形式呈現，讓想要成為拉花高手的朋友，可以在閱讀本書後，學習到咖啡拉花的正確知識、觀念，就算是在家自學也能輕鬆成為咖啡拉花職人。\r\n\r\n　　★咖啡拉花的基底——義式濃縮咖啡\r\n　　義式濃縮咖啡是咖啡拉花的基底，要調製一杯好喝又好看的咖啡拉花，萃取美味的濃縮咖啡是不可或缺的第一步。使用義式濃縮咖啡製作拉花，將咖啡與蒸奶充分融和為一體，讓奶泡能夠上浮在表面恣意的流動，運用拉花技巧將奶泡延展成各式圖形。\r\n\r\n　　★關於拉花所使用的器具\r\n　　一般市售的鋼杯基本上都具有不錯的品質，因此挑選的器具的重點應在於合適與否，先瞭解器具的差異，容易挑選出符合自身需求的工具，拉花鋼杯會因為品牌的不同，而在細節處有所差異並各自擁有優缺點。拉花鋼杯杯嘴的型態，在拉花時扮演著很重要的角色，依據杯嘴的型態，大致可分成長嘴、短嘴、尖口與圓口、以及平口和杯嘴外翻。\r\n\r\n　　★蒸奶泡沫的質與量\r\n　　用蒸奶泡沫製作的咖啡，最令人嚮往的就是牛奶泡沫帶出的迷人質地，牛奶泡沫的口感，除了來自於氣泡的輕盈感之外，氣泡與牛奶融合所展現的柔滑質地更是奶泡製作的重點，要是做不到這一點，不論濃縮咖啡煮得再好，也不可能成為美味的咖啡牛奶。\r\n\r\n　　★蒸奶與咖啡的融合\r\n　　融合是讓咖啡牛奶美味的秘訣，咖啡牛奶的美味不單單是咖啡加上牛奶的甜味，而是由於咖啡和蒸奶充分結合所帶出的甘甜與滑順口感，因為蒸奶的融入讓咖啡的風味得以展現出不同的特色。\r\n\r\n　　★咖啡拉花實作\r\n　　白色小圓點是所有拉花的起點，也是控制奶泡浮在表面的基本功，一個小圓點可以慢慢堆成一個大圓形、也能拉長變成線條，光是這樣的點和線搭配上不同技巧的運用，就能創造出許多有趣的圖形。',	'9789864757893',	3),
(4,	'咖啡拉花全技巧：Step by Step新手也能學會的25款創意拉花 (電子書)',	'同樣的步驟，\r\n為什麼有人拉出來的圖案比較好看？\r\n成功的咖啡拉花，\r\n應該先學會煮好Espresso！？\r\n尖嘴、圓嘴，同樣是拉花鋼杯，應該怎麼挑才對！？\r\n從拉花原理、器材挑選，到步驟示範，\r\n解析咖啡拉花關鍵祕訣，\r\n拉花技巧一次學到位！\r\n\r\n　　．拉花道具全解析\r\n　　學拉花就要先從了解使用道具開始，解析咖啡機、拉花鋼杯、咖啡杯等，條列出細微卻不可忽略的挑選重點，教你成功跨出拉花第一步。\r\n\r\n　　．拉花步驟step by step\r\n　　從最基礎的圓形開始，進階到創意圖形，詳細圖解步驟，不只看得懂，更能輕鬆簡單學會咖啡拉花。\r\n\r\n　　隨著台灣咖啡館產業的興起，大家對咖啡要求愈來愈高，不再只是單純滿足於喝咖啡，對於原本只是做為配角的咖啡拉花，也從單純的綿密奶泡，延伸成一種圖像藝術的表現，在國際上除了咖啡師等級認證，亦有咖啡拉花等級認證，由此可見咖啡拉花不僅拘限在台灣，在國際上的地位也越趨重要。\r\n\r\n　　本書便從咖啡拉花的原理開始，讓讀者先了解咖啡拉花的原理，接著再對咖啡拉花使用的機器與使用器具進行解析，在有了基礎概念，並知道怎麼挑選工具後，接著便提供25款創意拉花，並藉由每個詳細清楚的步驟圖，讓所有對咖啡拉花有興趣的人，可以step by step一起跟著學會拉花。\r\n\r\n本書特色\r\n\r\n　　○提供讀者25款從基礎到創意的咖啡拉花步圖案。\r\n　　○解析咖啡拉花原理，並詳解使用器材挑選重點。\r\n　　○步驟全圖解，讀者可以簡單看，輕鬆學得會。',	'9789864755608',	4),
(5,	'DevOps三十六計',	'新型的DevOps涵蓋了從需求提出到軟體發佈的整個軟體生命週期，是產品設計、專案管理、開發、測試和營運效率提升的必經之路，許多大型企業已經做了很多探索，並將相關技能規範化、文件化、工具化、自動化甚至智慧化。遺憾的是，這些寶貴經驗往往僅在團隊或公司內部分享，很多中小公司還在重複走著大公司走過的彎路。\r\n\r\n　　本書集結了40位業界專家的經驗分享，從精實、敏捷、開發、測試、維運、架構、安全等各個方面分享他們在實務運作上多年的心得，希望能夠幫助技術人員避免無謂的重複錯誤與摸索，將心力聚焦於工作目標與可以創造收益的產出。\r\n\r\n各界好評\r\n \r\n　　《DevOps 三十六計》凝聚了一大批業內專家多年的實戰經驗，是一本難得的實戰手冊。——何寶宏，中國信息通信研究院雲計算和大數據所所長\r\n\r\n　　非常欣喜地看到《DevOps 三十六計》的正式出版發行，從一年多前的小冊子，到彙聚了精益、敏捷、開發、測試、運維及安全領域大咖專家的著作。36篇文章，1000多條計策，其中很多計策都值得我們細細琢磨，相信對相關工作的展開不無裨益。——吳華鵬，iTech Club（互聯網精英俱樂部）理事長\r\n\r\n　　無論是網路界還是傳統行業，大家都迫切需要不斷地縮短GTM 時間。DevOps 是目前加快從需求到應用上線的最佳途徑。DevOps 時代社區和高效運維社區在這方面做了大量的工作，將業內多位專家的一線實踐經驗凝聚於《DevOps 三十六計》一書，涵蓋了產品設計、敏捷開發、微服務設計、持續集成和部署、自動化運維等整個DevOps 週期的各個關鍵環節。他山之石可以攻玉，相信大家可以從本書中學到不少DevOps 的最佳實踐。——方國偉，平安科技CTO兼總架構師\r\n\r\n　　《DevOps 三十六計》的創作者中有許多我熟悉的名字，他們都是在業界歷練多年的“老司機”，所分享的三十六計可以說是對多年來走過的路、行過的橋、踩過的坑、跨過的坎的集中總結，其中有很多是要付出巨大的代價後才能感悟到的。相信無論你是DevOps新兵還是老將，都能從《DevOps 三十六計》中獲得一些感悟。——劉棲銅，騰訊遊戲助理總經理',	'9789865020330',	5),
(6,	'股票發大財：用Python預測玩轉股市高手精解',	'預測股票之夢，雖遠但非遙不可及。\r\n想成為股市贏家不是會看盤，而是要先會Python！\r\nK線、均線自己畫，資料自己爬，賺錢一大把！\r\n\r\n　　全書分為三篇：\r\n\r\n　　基礎篇（第1~4章）：說明Python開發環境的架設、基本語法、資料結構、程式的偵錯以及物件導向的程式設計思想。\r\n\r\n　　股票指標技術分析篇（第5~10章）：分別說明使用網路爬蟲技術取得股票資料、使用Matplotlib視覺化元件、基於NumPy和Pandas函數庫進行大數據分析、以股票的不同指標分析為範例的開發方法—MACD + Python資料庫程式設計、KDJ + Python圖形化使用者介面程式設計、RSI + Python郵件程式設計。\r\n\r\n　　以股票指標為基礎的交易策略之進階應用篇（第11~13章）：以股票的BIAS指標分析為範例說明Django架構、以股票的OBV指標分析為範例說明在Django中匯入記錄檔和資料庫元件、結合股票指標分析說明以線性回歸和SVM（支援向量機）為基礎的機器學習的入門知識。\r\n\r\n　　台股上看兩萬點，台積電領軍，看盤成為全民運動！茫茫股海，每天追大盤，玩個股，但心中就是不放心，資料這麼多，到底資訊在哪裏？股市都是數字，而資料及演算法，都必須靠一個程式語言串起來。Python正是你最好的朋友，上手簡單，功能強大，最重要的是，近來最強的機器學習也是Python的核心。這些都是玩轉股市的基本工具，本書針對Python零基礎的使用者，主要說明大量的股票指標技術分析的範例，由淺入深地介紹了使用Python語言程式設計開發的應用「圖譜」。',	'9789865501730',	6);

DROP TABLE IF EXISTS `catalog_bookinstance`;
CREATE TABLE `catalog_bookinstance` (
  `id` char(32) NOT NULL,
  `imprint` varchar(200) NOT NULL,
  `due_back` date DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_bookinstance_book_id_69f93415_fk_catalog_book_id` (`book_id`),
  CONSTRAINT `catalog_bookinstance_book_id_69f93415_fk_catalog_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalog_book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `catalog_bookinstance` (`id`, `imprint`, `due_back`, `status`, `book_id`) VALUES
('119d766d3ff34f5b8711adb33847a9ff',	'adb33847a9ff',	NULL,	'm',	4),
('16f25d83a87b4fa1b93f59c9bfacb8d8',	'59c9bfacb8d8',	NULL,	'm',	3),
('2434354d12854bc085f9f3cfdd5a3d81',	'f3cfdd5a3d81',	NULL,	'm',	6),
('243c05b9ea0341b2bc88293087d17bc0',	'293087d17bc0',	NULL,	'm',	3),
('29cec6dfb652483f8ca11d5c6e8de148',	'1d5c6e8de148',	NULL,	'm',	6),
('410636cf50134fa8aa485003b2ea93d9',	'5003b2ea93d9',	NULL,	'm',	5),
('45e53989945e40fdabeeb84c415f1c68',	'b84c415f1c68',	NULL,	'm',	5),
('4ef3a3b8663c47b3851715c22a551b55',	'15c22a551b55',	NULL,	'm',	3),
('6eac949f0c904da783ba28debea938fc',	'28debea938fc',	NULL,	'm',	5),
('74708ac1a1d143148c3e27b158f22483',	'11',	NULL,	'r',	2),
('87fce574008b47d9ab2805ecfc9708e0',	'05ecfc9708e0',	NULL,	'm',	6),
('a5a33b3e874d4f75b1b33642cbd8de49',	'11',	NULL,	'a',	2),
('ab4691b574944964aaacc12ee5c44f67',	'11',	NULL,	'o',	2),
('d066c9b101424feca70d86c1da08ff8a',	'86c1da08ff8a',	NULL,	'm',	4),
('f6b70f1348e6420080a3a86d4734cef3',	'a86d4734cef3',	NULL,	'm',	4);

DROP TABLE IF EXISTS `catalog_book_genre`;
CREATE TABLE `catalog_book_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `catalog_book_genre_book_id_genre_id_d15f6922_uniq` (`book_id`,`genre_id`),
  KEY `catalog_book_genre_genre_id_77d7ffde_fk_catalog_genre_id` (`genre_id`),
  CONSTRAINT `catalog_book_genre_book_id_e5a77c43_fk_catalog_book_id` FOREIGN KEY (`book_id`) REFERENCES `catalog_book` (`id`),
  CONSTRAINT `catalog_book_genre_genre_id_77d7ffde_fk_catalog_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `catalog_genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `catalog_book_genre` (`id`, `book_id`, `genre_id`) VALUES
(1,	1,	1),
(2,	2,	1),
(3,	3,	1),
(4,	4,	1),
(5,	5,	1),
(6,	6,	3);

DROP TABLE IF EXISTS `catalog_genre`;
CREATE TABLE `catalog_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `catalog_genre` (`id`, `name`) VALUES
(1,	'生活'),
(2,	'開發研究'),
(3,	'股票');

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1,	'admin',	'logentry'),
(3,	'auth',	'group'),
(2,	'auth',	'permission'),
(4,	'auth',	'user'),
(7,	'catalog',	'author'),
(8,	'catalog',	'book'),
(10,	'catalog',	'bookinstance'),
(9,	'catalog',	'genre'),
(5,	'contenttypes',	'contenttype'),
(6,	'sessions',	'session');

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1,	'contenttypes',	'0001_initial',	'2021-02-17 08:40:08.930368'),
(2,	'auth',	'0001_initial',	'2021-02-17 08:40:09.479769'),
(3,	'admin',	'0001_initial',	'2021-02-17 08:40:12.634944'),
(4,	'admin',	'0002_logentry_remove_auto_add',	'2021-02-17 08:40:12.863175'),
(5,	'admin',	'0003_logentry_add_action_flag_choices',	'2021-02-17 08:40:12.970436'),
(6,	'contenttypes',	'0002_remove_content_type_name',	'2021-02-17 08:40:13.160850'),
(7,	'auth',	'0002_alter_permission_name_max_length',	'2021-02-17 08:40:13.289752'),
(8,	'auth',	'0003_alter_user_email_max_length',	'2021-02-17 08:40:13.337593'),
(9,	'auth',	'0004_alter_user_username_opts',	'2021-02-17 08:40:13.383618'),
(10,	'auth',	'0005_alter_user_last_login_null',	'2021-02-17 08:40:13.585744'),
(11,	'auth',	'0006_require_contenttypes_0002',	'2021-02-17 08:40:13.603415'),
(12,	'auth',	'0007_alter_validators_add_error_messages',	'2021-02-17 08:40:13.660878'),
(13,	'auth',	'0008_alter_user_username_max_length',	'2021-02-17 08:40:13.996827'),
(14,	'auth',	'0009_alter_user_last_name_max_length',	'2021-02-17 08:40:14.177912'),
(15,	'auth',	'0010_alter_group_name_max_length',	'2021-02-17 08:40:14.224913'),
(16,	'auth',	'0011_update_proxy_permissions',	'2021-02-17 08:40:14.274234'),
(17,	'auth',	'0012_alter_user_first_name_max_length',	'2021-02-17 08:40:14.400730'),
(18,	'catalog',	'0001_initial',	'2021-02-17 08:40:14.648497'),
(19,	'sessions',	'0001_initial',	'2021-02-17 08:40:15.079843');

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2021-02-17 08:41:36
