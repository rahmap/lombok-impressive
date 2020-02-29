-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Feb 2020 pada 22.06
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lombok`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `destinations`
--

CREATE TABLE `destinations` (
  `id_dest` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `name_dest` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tumb_pic` varchar(255) NOT NULL,
  `popular` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `destinations`
--

INSERT INTO `destinations` (`id_dest`, `slug`, `name_dest`, `deskripsi`, `tumb_pic`, `popular`) VALUES
(2, 'aston', 'Aston', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(65, 65, 65); font-family: Raleway-swap, sans-serif; font-size: 13px; letter-spacing: 0.3px;\">Conveniently located&nbsp;in the heart of Mataram, the capital city of Lombok, Aston Inn Mataram is just 45-minutes away from Lombok International Airport. The hotel is situated on the main road of Mataram city, close to the center of government offices and corporations.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(65, 65, 65); font-family: Raleway-swap, sans-serif; font-size: 13px; letter-spacing: 0.3px;\"><span style=\"font-weight: 700;\">A starting point to explore Mataram.</span>&nbsp;Aston Inn Mataram is the right place to explore Mataram. The hotel has easy access to many local attractions, including the famous Senggigi Beach and Kuta Beach in Central Lombok. Suit yourself to explore other local attractions that located close to the hotel such as Mayura Park, Narmada Park, Meru Temple, the Old Town of Ampenan and the city’s famous shopping district.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(65, 65, 65); font-family: Raleway-swap, sans-serif; font-size: 13px; letter-spacing: 0.3px;\"><span style=\"font-weight: 700;\">A perfect venue for a business trip.</span>&nbsp;Aston Inn Mataram offers a true experience of modernity and style. The hotel is characterized by attentive yet unobtrusive service and a vast range of facilities, including 4 impressive function venues with modern facilities that cater various types of meetings and events with a capacity of up to 750 people.&nbsp;</p>   ', 'destinasi_photo-1580747382293.jpg', 10),
(4, 'benang-kelambu', 'Benang Kelambu', '<div><span style=\"color: rgb(0, 0, 0);\">Central Lombok Regency not only presents a row of exotic beaches. In the north there is also a waterfall that is often visited by travelers.</span></div><div><span style=\"color: rgb(0, 0, 0);\"><br></span></div><div><span style=\"color: rgb(0, 0, 0);\">The waterfall in the Central Lombok region which is quite famous, one of which is called the Thread Kelambu waterfall.</span></div><div><span style=\"color: rgb(0, 0, 0);\"><br></span></div><div><span style=\"color: rgb(0, 0, 0);\">This waterfall is sourced from the forest grooves at the foot of Mount Rinjani which flows to the south and spills right in the northern part of the Central Lombok Regency.</span></div><div><span style=\"color: rgb(0, 0, 0);\"><br></span></div><div><span style=\"color: rgb(0, 0, 0);\">If a traveler wants to go to Lombok, try to enjoy the exotic nature of the mountains in the area of Benang Kelambu waterfall. Not only that, there are two choices of places to visit there; Benang Kelambu waterfall and also Tali Stokel waterfall.</span></div><div><span style=\"color: rgb(0, 0, 0);\"><br></span></div><div><span style=\"color: rgb(0, 0, 0);\">Towards the location of the waterfall, a traveler will pass through a forest area which is partly used as plantation land by local residents.</span></div>                                                                                \r\n                                                                                                                                        \r\n                                                                                \r\n\r\n                                                                                ', 'destinasi_photo-1580752445377.jpg', 2),
(5, 'gili-trawangan', 'Gili Trawangan', '<p style=\"margin: 0.85em 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline;\"><span style=\"color: rgb(0, 0, 0);\">The largest of the three islands,&nbsp;<strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Gili Trawangan</strong>&nbsp;attracts the majority of visitors, it is around thirty minutes boat ride from the northwest mainland of Lombok and regular daily&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-width: 100%;\">fast boats</em>&nbsp;depart<strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">&nbsp;Bali</strong>&nbsp;directly to&nbsp;<strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Trawangan island</strong>&nbsp;and all boats stop off at Teluk Nare on mainland&nbsp;<strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Lombok</strong>&nbsp;as part of the return journey.</span></p><p style=\"margin: 0.85em 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline;\"><span style=\"color: rgb(0, 0, 0);\">The&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">beaches</em>&nbsp;of the<strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">&nbsp;Gilis</strong>&nbsp;are still powdery white, the water a beautiful clear blue and they are positioned perfectly for sunsets over&nbsp;<strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Bali’s Mt Agung</strong>&nbsp;and sunrise over&nbsp;<strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Lombok’s Mt Rinjani.</strong>&nbsp;Thirty years ago the&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Gili</em>&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">islands</em>&nbsp;were uninhabited and only discovered by the seafaring Bugis people from Sulawesi. It was only a matter of time before the more adventurous backpacker types discovered the islands and developed&nbsp;<strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Trawangan</strong>&nbsp;into a hippy&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">party paradise destination</em>.</span></p><p style=\"margin: 0.85em 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: &quot;Open Sans&quot;, sans-serif; vertical-align: baseline;\"><span style=\"color: rgb(0, 0, 0);\"><strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Gili Trawangan</strong>&nbsp;now identifies itself as a great holiday destination suitable for&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">families</em>&nbsp;of all ages. Various new<span style=\"border-style: initial; border-color: rgb(235, 235, 235); border-image: initial; font: inherit; max-width: 100%;\">&nbsp;</span><strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; max-width: 100%;\">hotels</strong><span style=\"border-style: initial; border-color: rgb(235, 235, 235); border-image: initial; font: inherit; text-decoration-line: underline; max-width: 100%;\">,</span><em style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">&nbsp;luxury villas</em>, and&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">boutique bungalows</em>&nbsp;now cater to children and offer good value. Some have baby-sitting services, and with lots of activities on the islands families are sure to enjoy their<strong style=\"margin: 0px; padding: 0px; border: 0px rgb(235, 235, 235); font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">&nbsp;beach holidays</strong>&nbsp;to the full.</span></p>                                                                                \r\n                                                                                                                                        \r\n                                                                                \r\n\r\n                                                                                ', 'destinasi_photo-1580834171630.JPG', 11),
(6, 'holiday-resort', 'Holiday Resort', '<p><span style=\"color: rgb(0, 0, 0);\">A tranquil resort nestled on a pristine beach in <span style=\"font-weight: bold;\">Mangsit village</span> on the island\'s west coast, amidst abundant greenery between lush tropical mountains.</span></p><p><span style=\"color: rgb(0, 0, 0);\">The tropical gardens are spread over 15 hectares and contain palm trees and colorful flowers attracting butterflies. Located within 5 minutes from Central of <span style=\"font-weight: bold;\">Senggigi </span>as well as nearby to shopping, dining and night life areas.</span></p>', 'destinasi_photo-1580834837358.jpg', 10),
(7, 'kuta', 'Kuta', '<p style=\"margin: 0.5em 0px; font-family: sans-serif; font-size: 14px;\"><span style=\"color: rgb(0, 0, 0);\"><b style=\"\">Kuta</b>&nbsp;is a town on the south coast of the island of&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: bold;\">Lombok</span>&nbsp;in the&nbsp;<span style=\"font-weight: bold;\"><span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Indonesian</span>&nbsp;</span>province&nbsp;<span style=\"background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: bold;\">West Nusa Tenggara</span>. Kuta is known for the many beautiful beaches and surf spots within close proximity and has developed into the main tourist town in Lombok. In a few short years, Kuta has changed from a sleepy seaside village into the main focus of tourism development in Lombok.</span></p><p style=\"margin: 0.5em 0px; font-family: sans-serif; font-size: 14px;\"><span style=\"color: rgb(0, 0, 0);\">Lombok international airport is only 20 minutes drive from Kuta and this, coupled with more airlines offering direct flights to Lombok, has seen Kuta overtake Senggigi as the most popular and convenient tourist destination in Lombok.</span></p><p style=\"margin: 0.5em 0px; font-family: sans-serif; font-size: 14px;\"><span style=\"color: rgb(0, 0, 0);\">Kuta was also very fortunate to escape the damage that decimated North Lombok and severely damaged many properties and hotels in Senggigi and the northwest Gili islands during the 2018 Lombok earthquakes.</span></p>                                                                                \r\n                                                                                                                                        \r\n                                                                                \r\n\r\n                                                                                ', 'destinasi_photo-1580835138667.JPG', 12),
(8, 'rinjani', 'Rinjani', '<div><span style=\"color: rgb(0, 0, 0);\">The mighty <span style=\"font-weight: bold;\">Rinjani </span>mountain of <span style=\"font-weight: bold;\">Gunung Rinjani </span>is a massive volcano which towers over the island of <span style=\"font-weight: bold;\">Lombok</span>. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, <span style=\"font-weight: bold;\">Gunung Rinjani</span> is the second highest mountain in Indonesia. The climb to the top may not be easy but it’s worth it, and is widely regarded as one of the best views in the country.</span></div><div><span style=\"color: rgb(0, 0, 0);\"><br></span></div><div><span style=\"color: rgb(0, 0, 0);\">Within the mountain is a crescent shaped lake, the breathtaking <span style=\"font-weight: bold;\">Segara Anak</span> which is a spiritual place. The Balinese come here each year and perform a ceremony to the mountain spirit. The <span style=\"font-weight: bold;\">Wetu Telu</span> people also regard the lake as holy and come here to pray on full moon nights. This lake of sulfur is located 600 meters below the crater rim. Rising from the waters of this lake is a new volcano, <span style=\"font-weight: bold;\">Mt Baru</span>, which is a result of a series of eruptions during the 1990’s.</span></div><div><span style=\"color: rgb(0, 0, 0);\"><br></span></div><div><span style=\"color: rgb(0, 0, 0);\">Mt <span style=\"font-weight: bold;\">Rinjani </span>lies within the<span style=\"font-weight: bold;\"> Gunung Rinjani</span> National Park. The park covers 41,330 hectares and sits inside a major bio-geographical transition zone (<span style=\"font-weight: bold;\">Wallacea</span>). This is where the tropical flora and fauna of South East Asia meets that of Australasia. This National Park was established in 1997 and is one of over 40 throughout Indonesia.</span></div><div><span style=\"color: rgb(0, 0, 0);\"><br></span></div><div><span style=\"color: rgb(0, 0, 0);\">Three-day <span style=\"font-weight: bold;\">Rinjani </span>route from <span style=\"font-weight: bold;\">Senaru </span>to the crater rim, down to the Crater Lake then on to<span style=\"font-weight: bold;\"> Sembalun Lawang</span>, is considered one of the best treks in South East Asia. More adventurous trekkers may want to head all the way to the summit of the volcano. This is best reached from <span style=\"font-weight: bold;\">Sembalun Lawang</span> and takes four days, finishing up in <span style=\"font-weight: bold;\">Senaru</span>.</span></div>										', 'destinasi_photo-1580840813996.jpeg', 10),
(9, 'sade-village', 'Sade Village', '<div><span style=\"color: rgb(0, 0, 0);\">The uniqueness of Sade Lombok Village is one of the villages with the original inhabitants of Lombok Island, the Sasak Tribe.&nbsp;</span><span style=\"color: rgb(0, 0, 0); background-color: transparent; font-size: 0.85rem;\">The village, which still holds the customs and culture of the native island of Lombok, is often visited by tourists both local and international to \'unearth\' their unique traditions and customs that are still very traditional.</span></div><div><span style=\"color: rgb(0, 0, 0);\"><br></span></div><div><span style=\"color: rgb(0, 0, 0);\">Sade Lombok Village is located in Rambita Village, Pujut District, Central Lombok. It is located not far from Lombok International Airport. Only about 30 minutes you can reach this place.&nbsp;</span><span style=\"color: rgb(0, 0, 0); background-color: transparent; font-size: 0.85rem;\">This village in Lombok only has around 152 households. As a native Sasak tribe who live in Central Lombok, they hold to tradition since the reign of government</span></div><div><span style=\"color: rgb(0, 0, 0);\"><br></span></div><div><span style=\"color: rgb(0, 0, 0);\">Pejanggik Kingdom in Praya, Central Lombok Regency. This is what makes the village here famous and interesting for you to visit, besides the original tribal life of the island of Lombok you can also see its traditional traditional house.</span></div>                                                                                \r\n                                                                                                                                        \r\n                                                                                \r\n\r\n                                                                                ', 'destinasi_photo-1580845556880.jpg', 10),
(10, 'sembalun', 'Sembalun', '<div><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: bold;\">Sembalun </span>is the name of a district in <span style=\"font-weight: bold;\">East Lombok</span>, about 2.5 hours from the city of <span style=\"font-weight: bold;\">Mataram</span>. It has an area of ??217.08 Km2, consisting of 6 villages, one of which is <span style=\"font-weight: bold;\">Sembalun village</span>, which is 0.25 km from the subdistrict capital. v<span style=\"font-size: 0.85rem;\">Geographically, Sembalun District in the north is bordered by Sambelia District, in the south it is bordered by Aikmel and Pringgasela, in the west with West Lombok Regency while in the East it is bordered by Pringgabaya District.</span></span></div><div><span style=\"color: rgb(0, 0, 0);\"><br></span></div><div><span style=\"color: rgb(0, 0, 0);\">The village, located at the foot of Mount Rinjani, holds a million charms that are inevitable by visiting tourists. You will not be able to refuse the charm offered by the village of <span style=\"font-weight: bold;\">Sembalun Lombok</span>, so that a little paradise is often pinned on this village.</span></div>                                                                                \r\n                                                                                                                                        \r\n                                                                                \r\n\r\n                                                                                ', 'destinasi_photo-1580846423817.jpg', 10),
(11, 'pink-beach', 'Pink Beach', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif, google; font-size: 14px; text-align: justify;\">One thing that is the main attraction of the Beach bar or Pink Beach is a sand-colored Pink,the only two in Indonesia have Pink sandy Beaches,one of which is located on the Island of K<b>omodo NTT</b>. When viewed more closely, it is actually the original color is actually white sand Beach,because it is mixed with crushed pieces of pink coral, natural procession along the reef and flake fragments are then fused and formed pink,especially when exposed to sea water and exposed sun,so that its Pink color was obvious.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif, google; font-size: 14px; text-align: justify;\">&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif, google; font-size: 14px; text-align: justify;\">Besides sand Beaches distinctive pink color,this Beach also has a very impressive natural scenery.Surrounded by cliffs – cliffs high enough to <b>Berugak </b>sort of cabin pavilion thereon which are provided to the tourists enjoy the expanse of the open sea. The view from the top of the cliff will also make you fascinated with the beautiful panorama below the cliffs. Aroma typical sea water,caresses breeze and the sound of waves hitting the reef makes the heart anyone who visit here be quiet.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif, google; font-size: 14px; text-align: justify;\">&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif, google; font-size: 14px; text-align: justify;\">the local village say the <b>baraq</b> Coastal Beach Pink takes one and half hours from the city of <b>Mataram</b> and <b>Senggigi</b>, a considerable distance away.Exactly the same route with the route to <b>Tanjung Ringgit</b>, because the two adjacent locations the Only <b>baraq </b>Beach (<b>Tangsi Beach</b>) entrance is on the left,approximately 1 KM prior to <b>Tanjung Ringgit</b>. Well at the entrance there are instructions or small signs to the left of the road reads PINK Beach 50 meters</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif, google; font-size: 14px; text-align: justify;\">&nbsp;</p><p style=\"margin-right: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Roboto, sans-serif, google; font-size: 14px; text-align: justify;\"><b>Tangsi Beach</b> or Pink Beach has a fairly quiet flow with waves that are very small,so cool to play and do no harm,If you could go snorkeling,you will be amazed by the coral reefs are very beautiful.Although some point coral reefs are visible only in the form of the rest of remaining coral reefs have been destroyed.</p>                                                                                \r\n                                                                                                                                        \r\n                                                                                \r\n\r\n                                                                                ', 'destinasi_photo-1580847571054.jpg', 9),
(12, 'vila-ombak', 'Vila Ombak', '<span style=\"font-family: Arial, Tahoma, Verdana; font-size: 12px; color: rgb(0, 0, 0);\"><span style=\"font-weight: bold;\">Hotel Vila Ombak</span> is located on <span style=\"font-weight: bold;\">Gili Trawangan</span>, one of Lombok Island oasis, the largest of the 3 Gili Islands just off Lombok\'s Northwestern coastline. You can reach the island with a number of direct daily fast boat services (price available upon request) leaving Benoa Harbor, Bali (approximately 2.5 hours) or Padang Bai Harbor, Bali (approximately 1 hour), or phinisi boat leaving from Padang Bai Harbor, Bali (approximately 4 hours).</span> ', 'destinasi_photo-1580847918055.jpg', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `destinations_photos`
--

CREATE TABLE `destinations_photos` (
  `id_dest_photos` int(11) NOT NULL,
  `name_photos` varchar(255) NOT NULL,
  `title_photos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `destinations_photos`
--

INSERT INTO `destinations_photos` (`id_dest_photos`, `name_photos`, `title_photos`) VALUES
(1, 'aston-1580749708800.jpg', 'aston'),
(2, 'aston-1580749772721.jpg', 'aston'),
(3, 'aston-1580749778710.jpg', 'aston'),
(4, 'aston-1580749788534.jpg', 'aston'),
(5, 'benang-kelambu-1580752454825.jpg', 'benang-kelambu'),
(6, 'benang-kelambu-1580752459306.jpg', 'benang-kelambu'),
(7, 'gili-trawangan-1580834323873.JPG', 'gili-trawangan'),
(8, 'gili-trawangan-1580834338696.jpg', 'gili-trawangan'),
(9, 'gili-trawangan-1580834345108.JPG', 'gili-trawangan'),
(10, 'gili-trawangan-1580834352462.JPG', 'gili-trawangan'),
(11, 'holiday-resort-1580834845853.jpg', 'holiday-resort'),
(12, 'holiday-resort-1580834856438.jpg', 'holiday-resort'),
(13, 'holiday-resort-1580834864304.jpg', 'holiday-resort'),
(14, 'holiday-resort-1580834889443.jpg', 'holiday-resort'),
(15, 'holiday-resort-1580834913669.jpg', 'holiday-resort'),
(16, 'holiday-resort-1580834928799.jpg', 'holiday-resort'),
(17, 'kuta-1580835152630.JPG', 'kuta'),
(18, 'kuta-1580835162433.JPG', 'kuta'),
(19, 'kuta-1580835169650.JPG', 'kuta'),
(20, 'kuta-1580835176619.JPG', 'kuta'),
(21, 'kuta-1580835183463.JPG', 'kuta'),
(22, 'runjani-1580842629721.jpeg', 'runjani'),
(23, 'runjani-1580842636618.jpeg', 'runjani'),
(24, 'runjani-1580842646043.jpeg', 'runjani'),
(25, 'runjani-1580842654242.jpeg', 'runjani'),
(26, 'runjani-1580842661072.jpeg', 'runjani'),
(27, 'runjani-1580842668952.jpeg', 'runjani'),
(28, 'runjani-1580842698992.jpeg', 'runjani'),
(29, 'runjani-1580842707676.jpeg', 'runjani'),
(30, 'sade-village-1580845563751.jpg', 'sade-village'),
(31, 'sade-village-1580845568333.jpg', 'sade-village'),
(33, 'sade-village-1580845820179.png', 'sade-village'),
(34, 'sade-village-1580845968707.png', 'sade-village'),
(35, 'sade-village-1580845976017.png', 'sade-village'),
(36, 'sembalun-1580846447906.jpg', 'sembalun'),
(37, 'sembalun-1580846454200.jpg', 'sembalun'),
(38, 'pink-beach-1580847607788.jpg', 'pink-beach'),
(39, 'pink-beach-1580847614802.jpg', 'pink-beach'),
(40, 'pink-beach-1580847620767.jpg', 'pink-beach'),
(41, 'vila-ombak-1580847929954.JPG', 'vila-ombak'),
(42, 'vila-ombak-1580847935528.jpg', 'vila-ombak'),
(43, 'vila-ombak-1580847955882.jpg', 'vila-ombak'),
(44, 'vila-ombak-1580848011560.jpg', 'vila-ombak'),
(45, 'vila-ombak-1580848050654.jpg', 'vila-ombak'),
(46, 'vila-ombak-1580848066913.jpg', 'vila-ombak'),
(47, 'vila-ombak-1580848079386.jpg', 'vila-ombak'),
(48, 'vila-ombak-1580848099199.jpg', 'vila-ombak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logins`
--

CREATE TABLE `logins` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `logins`
--

INSERT INTO `logins` (`id_user`, `username`, `password`) VALUES
(1, 'admin0112', 'lombokpassword0112');

-- --------------------------------------------------------

--
-- Struktur dari tabel `many_dest_photos`
--

CREATE TABLE `many_dest_photos` (
  `id_mdp` int(11) NOT NULL,
  `id_dest_photos` int(11) NOT NULL,
  `id_dest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `many_dest_photos`
--

INSERT INTO `many_dest_photos` (`id_mdp`, `id_dest_photos`, `id_dest`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 4),
(6, 6, 4),
(7, 7, 5),
(8, 8, 5),
(9, 9, 5),
(10, 10, 5),
(11, 11, 6),
(12, 12, 6),
(13, 13, 6),
(14, 14, 6),
(15, 15, 6),
(16, 16, 6),
(17, 17, 7),
(18, 18, 7),
(19, 19, 7),
(20, 20, 7),
(21, 21, 7),
(22, 22, 8),
(23, 23, 8),
(24, 24, 8),
(25, 25, 8),
(26, 26, 8),
(27, 27, 8),
(28, 28, 8),
(29, 29, 8),
(30, 30, 9),
(31, 31, 9),
(33, 33, 9),
(34, 34, 9),
(35, 35, 9),
(36, 36, 10),
(37, 37, 10),
(38, 38, 11),
(39, 39, 11),
(40, 40, 11),
(41, 41, 12),
(42, 42, 12),
(43, 43, 12),
(44, 44, 12),
(45, 45, 12),
(46, 46, 12),
(47, 47, 12),
(48, 48, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tours`
--

CREATE TABLE `tours` (
  `id_tour` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title_tour` varchar(250) NOT NULL,
  `price_desc` int(11) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `tumb_pic` varchar(50) NOT NULL,
  `desc_full` text NOT NULL,
  `tumb_desc` varchar(255) NOT NULL,
  `create_date` int(11) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tours`
--

INSERT INTO `tours` (`id_tour`, `slug`, `title_tour`, `price_desc`, `duration`, `tumb_pic`, `desc_full`, `tumb_desc`, `create_date`, `is_active`) VALUES
(1, 'city-tour', 'City Tour', 382000, '4 Hour', 'tumb_photo-1580567887267.jpg', '																																	<p class=\"MsoNormal\"><span style=\"color: rgb(0, 0, 0);\"><span lang=\"EN-US\" style=\"font-family:\" verdana\",sans-serif;=\"\" mso-bidi-font-family:arial;color:black\"=\"\">Pick up from your hotel   meet our guide at the hotel\'s lobby, then\r\n																proceed to visit <strong>Mayura Temple and Bale Kambang</strong> in\r\n																Cakranegara.<b>Mayura</b>, the royal\r\n																floating palace (Bale Kambang) of the former Balinese kingdom which\r\n																was built in 1714. <strong>Narmada</strong>, this historical place is\r\n																used to be a palace of Anak Agung Gede Ngurah, which was built in <strong>1805</strong>. Here\r\n																you see a miniature of Mount Rinjani and Segara Anak lake with a holy temple on\r\n																the top. </span><span lang=\"EN-US\" style=\"font-family:\" verdana\",sans-serif\"=\"\">Then\r\n																process to Lingsar the extraordinary temple.Lunch at local Rest. Drive back to\r\n																hotel.</span></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\"><font color=\"#000000\" style=\"\">Tour inclusion<o:p></o:p></font></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\"><font color=\"#000000\">Private\r\n																AC car with experience driver<o:p></o:p></font></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\"><font color=\"#000000\">English\r\n																or Indonesian speaking guide<o:p></o:p></font></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\"><font color=\"#000000\">Local\r\n																guide<o:p></o:p></font></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\"><font color=\"#000000\">Entrance\r\n																fee and village donation<o:p></o:p></font></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\"><font color=\"#000000\">Lunch\r\n																at local Rest<o:p></o:p></font></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\"><font color=\"#000000\">Mineral\r\n																water<o:p></o:p></font></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\"><font color=\"#000000\">Tour exclusion<o:p></o:p></font></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\"><font color=\"#000000\">Personal\r\n																expenses</font></span></li><li><span style=\"color: rgb(0, 0, 0);\">Personal\r\n																donation</span></li></ul><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family:\" verdana\",sans-serif\"=\"\"><span style=\"color: rgb(0, 0, 0);\"><br></span><o:p></o:p></span>\r\n														</p>\r\n\r\n														', 'Pick up from your hotel   meet our guide at the hotel\'s lobby, then proceed to visit Mayura Temple and Bale Kambang.', 1580567887, 1),
(2, 'kuta-mandalika-tour', 'Kuta Mandalika Tour', 359000, '8 Hour', 'tumb_photo-1580586040625.jpg', '<p><span lang=\"EN-US\" style=\"font-size: 11pt; line-height: 115%; font-family: Verdana, sans-serif; color: rgb(3, 18, 26); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Start your day by visiting <span style=\"font-weight: bold;\">Banyumulek</span> Village.</span><span lang=\"EN-GB\" style=\"font-size:11.0pt;line-height:115%;font-family:&quot;Verdana&quot;,sans-serif;\r\nmso-fareast-font-family:Calibri;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\ncolor:black;mso-ansi-language:EN-GB;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\">The pottery village of <span style=\"font-weight: bold;\">Banyumulek</span> is your next stop where the <span style=\"font-weight: bold;\">Sasak\r\n</span>people of <span style=\"font-weight: bold;\">Lombok </span>have been <span style=\"font-weight: bold;\">skilfully </span>crafting pottery for generations. Here you\r\ncan see the unique methods used to for decoration using rattan. Another feature\r\nof the village is the local method of transport known as <span style=\"font-weight: bold;\">cidomo</span>: horse-drawn\r\ncarts which you may see carrying either materials or completed products to and\r\nfrom the village</span><span lang=\"EN-GB\" style=\"font-size:11.0pt;line-height:\r\n115%;font-family:&quot;Verdana&quot;,sans-serif;mso-fareast-font-family:Calibri;\r\nmso-fareast-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;color:black;mso-ansi-language:EN-GB;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">. Next visiting </span><span lang=\"EN-US\" style=\"font-size: 11pt; line-height: 115%; font-family: Verdana, sans-serif; color: rgb(3, 18, 26); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-weight: bold;\">Desa Sukarare</span> hand weaving village, before\r\nstopping by <span style=\"font-weight: bold;\">Desa Sade</span> and seeing the local <span style=\"font-weight: bold;\">Sasak </span>tribe\'s way of life and\r\ntraditional homes. Lunch will be provide at local Rest. Next, head to <span style=\"font-weight: bold;\">Kuta\r\nMandalika</span> and <span style=\"font-weight: bold;\">Tanjung Aan</span>, two pristine beaches with white sands and\r\ncrystal-clear turquoise waters. End your journey on a hill that overlooks the\r\nbreathtaking ocean at <span style=\"font-weight: bold;\">Bukit Merese</span>. Drive back to hotel.</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour inclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\nAC car with experience driver<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">English\r\nor Indonesian speaking guide<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Local\r\nguide<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Entrance\r\nfee and village donation<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nat local Rest<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Mineral\r\nwater<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour exclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\nexpenses<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\ndonation</span></li><li><span style=\"color: rgb(0, 0, 0);\">Tipping\r\nfor guide and driver</span></li></ul>', 'This morning after the breakfast you will be picked up from your hotel on Senggigi area around 08:00 am.', 1580586041, 1),
(3, 'land-cruise', 'Land Cruise', 475000, '9 Hour', 'tumb_photo-1580604611419.jpg', '<p class=\"MsoNormal\"><span style=\"color: rgb(0, 0, 0);\"><span class=\"hl1\" style=\"\"><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\">This\r\nmorning after the breakfast you will be picked up from your hotel on <span style=\"font-weight: bold;\">Senggigi\r\n</span>area around 08:</span></span><span class=\"hl1\" style=\"\"><span lang=\"EN-US\" style=\"font-family:\r\n&quot;Verdana&quot;,sans-serif\">0</span></span><span class=\"hl1\" style=\"\"><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif;mso-fareast-font-family:Calibri;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;\">0 a</span></span><span class=\"hl1\" style=\"\"><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif\">m.</span></span><span lang=\"EN-US\" style=\"font-size: 12.5pt; line-height: 115%; font-family: Verdana, sans-serif;\">\r\n</span><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\">drive to East\r\nLombok and stop at Sapit village to see rice terrace field and walk around the\r\nfield to see farmer cropping the field or planting rice, Soya or Tobacco and\r\nthen continue 30 minutes drive to Pusuk Sembalun through big forest of Rinjani,\r\nthis is the great place to hunting picture and enjoy the best view from the\r\nhill.<o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Leave\r\n<span style=\"font-weight: bold;\">Pusuk Sembalun</span> and continue 30 minutes drive down to Sembalun village to visit\r\nBukit Selong, is one of small hill in Sembalun village which offers a great\r\nview from the hill top, perfect spot for photograph and also the best place for\r\ncamping. After enjoy the Selong hill, lunch which served at local Restaurant.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"color: rgb(0, 0, 0);\"><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif\">Next\r\nvisiting Sendang Gile waterfall and Tiu kelep waterfall, two most big\r\nwaterfalls in Lombok which located in Senaru village, 15 minutes soft trek down\r\nto Sendang Gile waterfall ,relaxing or take bath in waterfall and then continue\r\n30 minutes walk through rain forest to Tiu kelep waterfall.</span><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\"> . Enjoy your\r\nrelaxing time by swimming or snap shot the picturesque panoramic.</span><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif\"><o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Walk\r\nback to parking area and continue drive down, visiting old mosque at <span style=\"font-weight: bold;\">Bayan</span>\r\nVillage . Than drive&nbsp; to Senggigi through\r\ncoast line, short stop at Malimbu hill to enjoy the sunset setting down in\r\nAgung Mountain Bali and after escorted to your Hotel and end program.</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour inclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\nAC car with experience driver<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">English\r\nor Indonesian speaking guide</span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Local\r\nguide for waterfall object<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Entrance\r\nfee and village donation<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">National\r\npark entrance fee<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nat local Rest<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Mineral\r\nwater<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour exclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\nexpenses<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\ndonation</span></li><li><span style=\"color: rgb(0, 0, 0);\">Tipping\r\nfor guide and driver</span></li></ul><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif\"><o:p></o:p></span></p>														\r\n																												\r\n														\r\n\r\n														', 'This morning after the breakfast you will be picked up from your hotel on Senggigi area around 08:00 am.', 1580604611, 1),
(4, 'sendang-gile-waterfall', 'Sendang Gile Waterfall', 405000, '8 Hour', 'tumb_photo-1580640208103.jpg', '<p class=\"MsoNormal\"><span style=\"color: rgb(0, 0, 0);\"><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif\">Pick\r\nyou up&nbsp; in lobby hotel </span><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\">and heading to the\r\nnorthernmost part of Lombok. <br>\r\nYou\'ll start the tour going through</span><span lang=\"EN-US\" style=\"font-family:\r\n&quot;Verdana&quot;,sans-serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:\r\nArial\"> Pusuk Pass, while take picture of the beautiful view of northern coast</span><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\"> , then on to <span style=\"font-weight: bold;\">Sendang\r\nGile&nbsp; &amp; Tiu Kelep Water Fall</span>.<o:p></o:p></span></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\"><span style=\"font-weight: bold;\">Sendang\r\nGile</span>&nbsp; located 600 meters above sea level\r\non the foot of Rinjani Mountain. On the way driving to Sendang Gila we can\r\nenjoy the beautiful landscape of Lombok Island.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Firstly\r\nvisiting Lombok traditional houses named Sasak House. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">After\r\nVisiting Senaru Village , continue&nbsp; drive\r\nto Sendang Gile Waterfall.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"color: rgb(0, 0, 0);\"><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif\">The\r\nfirst waterfall you will reach is Sendang Gile, just 15 minutes walk down from\r\nthe entrance gate. At Sendang Gile Waterfall you can get in the base of the\r\nfalls. You can also get right underneath and it’s not so powerful so you can\r\nenjoy a massage from the pouring water,&nbsp;</span><span style=\"font-family: Verdana, sans-serif; font-size: 0.85rem;\">and\r\nthen continue 30 minutes walk through rain forest to second waterfall is Tiu\r\nkelep. Tiu Kelep Watefall is truly beautiful. The whole back wall of the forest\r\nis taken over by the falls and one more powerful falls of it’s own pours\r\nstraight over the top. You can swim at the base of the falls and feel the fresh\r\nspray right up close. After enjoy the panoramic of waterfall , walk hike up to\r\nparking area . &nbsp;Lunch at local Rest. Than\r\ndrive&nbsp; to Senggigi through coast line,\r\nshort stop at Malimbu hill to enjoy the sunset setting down in Agung Mountain\r\nBali and after escorted to your Hotel and end program</span><b style=\"font-family: Verdana, sans-serif; font-size: 0.85rem;\">.</b></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour inclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\nAC car with experience driver<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">English\r\nor Indonesian speaking guide<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Local\r\nguide for waterfall object<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Entrance\r\nfee and village donation<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">National\r\npark entrance fee<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nat local Rest<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Mineral\r\nwater<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour exclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\nexpenses<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\ndonation</span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tipping\r\nfor guide and driver<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b style=\"font-family: Verdana, sans-serif; background-color: transparent; font-size: 0.85rem;\"><br></b></p><p class=\"MsoNormal\"><b style=\"font-family: Verdana, sans-serif; background-color: transparent; font-size: 0.85rem;\"><br></b></p>														\r\n																												\r\n														\r\n\r\n														', 'Sendang Gile  located 600 meters above sea level on the foot of Rinjani Mountain.', 1580640208, 1),
(5, 'gili-air-tour', 'Gili Air Tour', 487000, '8 Hour', 'tumb_photo-1580642070233.jpg', '<p style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(0, 0, 0);\"><span class=\"hl1\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\">This morning after breakfast you\r\nwill be picked up around 08.00 am. Drive to Teluk Kode Harbour,then by speed\r\nboat crossing for about 15 minutes to Gili Air.Gili air is the first island and\r\ncloses to Lombok Island.</span></span><span class=\"hl1\"><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-fareast-font-family:\r\nCalibri\"><o:p></o:p></span></span></span></p>\r\n\r\n<p style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(0, 0, 0);\"><span class=\"hl1\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\">Spend the whole day in Gili air,\r\nyou can sun bathing ,cycle or doing water activity such as swimming ,\r\nSnorkeling, diving or explore the island by horse cart. </span></span><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\">( Snorkeling &amp; diving are personal account )</span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif\"><o:p></o:p></span></span></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nwill be&nbsp;served in one of the local Restaurant.</span></p><p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\"><br></span></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">At\r\n3 pm leave the island and back to harbor, drive to your hotel through coast\r\nline, some stops on the way at Nipah and Malimbu hill a good spot for\r\nphotograph over looking Sunset.</span></p><p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\"><br></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour inclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\nAC car with experience driver<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">English\r\nor Indonesian speaking guide<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Pick\r\nup and drop by speed boat from Teluk Kode harbor – Gili Air Island – Teluk Kode\r\nharbor<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Entrance\r\nfee <o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nat local Rest<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Mineral\r\nwater<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour exclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\nexpenses<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\ndonation</span></li><li><span style=\"color: rgb(0, 0, 0);\">Tipping\r\nfor guide and driver</span></li></ul><p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size:\r\n11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:Arial;color:black\"><o:p></o:p></span></p>														\r\n																												\r\n														\r\n\r\n														', 'Spend the whole day in Gili air, you can sun bathing ,cycle or doing water activity such as swimming , Snorkeling, diving or explore the island by horse cart.', 1580642070, 1),
(6, 'gili-meno', 'Gili Meno', 507000, '8 Hour', 'tumb_photo-1580643241849.jpg', '<p style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span class=\"hl1\"><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-fareast-font-family:\r\nCalibri;color:black;mso-color-alt:windowtext\">This morning after the breakfast\r\nyou will be picked up around 08.00 am. Drive to <span style=\"font-weight: bold;\">Teluk Kode Harbour</span>, then by speed\r\nboat crossing for about 20 minutes to Gili Meno.Gili meno</span></span><span lang=\"EN-US\" style=\"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:black\">\r\nis </span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;\r\nmso-bidi-font-family:Arial;color:black\">the middle island, the smallest of the\r\nthree Gili\'s and it is the quietest with fewer tourists. A great escape for\r\nhoneymooners or someone who wants to get away from it all.<o:p></o:p></span></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt;text-align:justify\"><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:\r\nArial;color:black\">Special of the island is having spectacular dive sites such\r\nas, <span style=\"font-weight: bold;\">Meno Wall, Sea Turtle Point, and Blue Coral Point</span>. The beach on eastern\r\npart of the island is very nice and there\'s snorkeling just offshore and\r\nfurther north.<o:p></o:p></span></p>\r\n\r\n<p style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><strong><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:\r\nArial;color:black;font-weight:normal;mso-bidi-font-weight:bold\">Activities</span></strong><strong><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:\r\nArial;color:black\"> ,</span></strong><span lang=\"EN-US\" style=\"font-size:11.0pt;\r\nfont-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:Arial;color:black\"> You\r\ncan </span><span class=\"hl1\"><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:\r\n&quot;Verdana&quot;,sans-serif;mso-fareast-font-family:Calibri;color:black;mso-color-alt:\r\nwindowtext\">cycling or doing water activity ,such as swimming or </span></span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:\r\nArial;color:black\">rent snorkeling equipment, join a diving course, or just\r\nsnorkeling off-the-shore to see the magnificent coral reefs and fishes. ( all\r\nactivities personal account ) .</span><span class=\"hl1\"><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-fareast-font-family:\r\nCalibri;color:black;mso-color-alt:windowtext\"> Or explore the island by horse\r\ncart.</span></span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;\r\nmso-bidi-font-family:Arial;color:black\"><o:p></o:p></span></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size:\r\n11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:Arial;color:black\">Lunch\r\nwill be&nbsp;served in one of the local Restaurant.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size:\r\n11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:Arial;color:black\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size:\r\n11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:Arial;color:black\">At\r\n3 pm leave the island and back to harbor, drive to your hotel through coast\r\nline, some stops on the way at Nipah and Malimbu hill a good spot for photograph.</span></p><p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size:\r\n11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:Arial;color:black\"><br></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour inclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\nAC car with experience driver<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">English\r\nor Indonesian speaking guide<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Pick\r\nup and drop by speed boat from Teluk Kode harbor – Gili Meno&nbsp; Island – Teluk Kode harbor<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Entrance\r\nfee <o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nat local Rest<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Mineral\r\nwater<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour exclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\nexpenses<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\ndonation</span></li><li><span style=\"color: rgb(0, 0, 0);\">Tipping\r\nfor guide and driver</span></li></ul><p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size:\r\n11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:Arial;color:black\"><o:p><br></o:p></span></p><p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size:\r\n11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:Arial;color:black\"><o:p><br></o:p></span></p>														\r\n																												\r\n														\r\n\r\n														', 'Special of the island is having spectacular dive sites such as, Meno Wall, Sea Turtle Point, and Blue Coral Point.', 1580643241, 1),
(7, 'gili-trawangan-tour', 'Gili Trawangan Tour', 515000, '8 Hour', 'tumb_photo-1580647680751.JPG', '<p style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(0, 0, 0);\"><span class=\"hl1\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\">This morning after the breakfast\r\nyou will be picked up around 08.00 am. Drive to <b style=\"\">Teluk Kode Harbour</b>, then by speed\r\nboat crossing for about 30 minutes to <b style=\"\">Gili Trawangan</b>. </span></span><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\">Gili Trawangan is the most popular and the biggest island\r\namong the three Gili’s.. The main stripe is full of accommodations,\r\nrestaurants, and dive shops. <o:p></o:p></span></span></p>\r\n\r\n<p style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: rgb(0, 0, 0);\"><strong><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; font-weight: normal;\">Activities</span></strong><strong><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\"> ,</span></strong><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\"> You\r\ncan Sunbathing ,</span><span class=\"hl1\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\">cycling or doing water activity ,such as swimming or </span></span><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\">rent snorkeling equipment, join a diving course, or just\r\nsnorkeling off-the-shore to see the magnificent coral reefs and fishes. ( all\r\nactivities personal account ) .</span><span class=\"hl1\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\"> Or explore the island by horse\r\ncart.</span></span><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\"><o:p></o:p></span></span></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nwill be&nbsp;served in one of the local Rest.&nbsp;<o:p></o:p></span></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">At\r\n3 pm leave the island and back to harbor, drive to your hotel through coast\r\nline, some stops on the way at Nipah and Malimbu hill a good spot for\r\nphotograph.</span></p><p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\"><o:p><br></o:p></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour inclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\nAC car with experience driver<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">English\r\nor Indonesian speaking guide<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Pick\r\nup and drop by speed boat from Teluk Kode harbor – Gili Trawangan&nbsp; Island – Teluk Kode harbor<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Entrance\r\nfee <o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nat local Rest<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Mineral\r\nwater<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour exclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\nexpenses<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\ndonation</span></li><li><span style=\"color: rgb(0, 0, 0);\">Tipping\r\nfor guide and driver</span></li></ul>														\r\n																												\r\n														\r\n\r\n														', 'Activities , You can Sunbathing ,cycling or doing water activity ,such as swimming or rent snorkeling equipment, join a diving course, or just snorkeling.', 1580647681, 1),
(8, 'gilis-adventure', 'Gili’s Adventure', 570000, '8 Hour', 'tumb_photo-1580648542610.jpg', '<p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Our guide will pick you up at your\r\nhotel lobby at 8:00am then drive you to <span style=\"font-weight: bold;\">Teluk Kode</span> harbor.</span><span class=\"hl1\"><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;\r\nmso-fareast-font-family:Calibri;color:black;mso-color-alt:windowtext\"> ,then by\r\noutrigger boat crossing for about 45 minutes to Gili Trawangan.</span></span><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp; , upon arrival at Gili Trawangan wandering\r\nand enjoy Gili Trawangan atmosphere, you will have chance to discover Gili\r\nTrawangan at your own leisure time as we will be at Gili Trawangan for about 1\r\nhour or as you desire. Gili Trawangan offers you few activities to be exploring\r\nsuch as cycling or explore Gili by horse cart. </span><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:\r\nArial;color:black;mso-color-alt:windowtext\"><br>\r\n<span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">After enjoy your time at <span style=\"font-weight: bold;\">Gili Trawangan</span> island then\r\nwe will take you to <span style=\"font-weight: bold;\">Gili Meno</span> Island for your first snorkeling activity from\r\nthe boat at bounty reef garden. It has wide reef garden and various types of\r\nfishes.. Next visiting Gili Air Island &nbsp;for lunch and relaxing. After lunch you can\r\nexplore Gili Air for a short time or enjoy your next activity of fish feeding\r\nwhile snorkel.. </span></span><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p>\r\n\r\n<p style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-bidi-font-family:\r\nArial;color:black\">At 3 pm leave the island and back to harbor, drive to your\r\nhotel through coast line, some stops on the way at <span style=\"font-weight: bold;\">Nipah </span>and <span style=\"font-weight: bold;\">Malimbu </span>hill a\r\ngood spot for photograph.</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour inclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\nAC car with experience driver<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">English\r\nor Indonesian speaking guide<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\ncharter wooden outrigger boat <o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Entrance\r\nfee <o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nat local Rest<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Mineral\r\nwater<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour exclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\nexpenses<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\ndonation<o:p></o:p></span></li><li style=\"text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\"><span style=\"color: rgb(0, 0, 0);\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span lang=\"EN-US\" style=\"font-size: 11pt; line-height: 115%;\">Tipping for guide and\r\ndriver</span></span><br></span><span lang=\"EN-US\" style=\"font-size:11.0pt;\r\nfont-family:&quot;Verdana&quot;,sans-serif\"><o:p></o:p></span></li></ul>														\r\n																												\r\n														\r\n\r\n														', 'Gili Trawangan offers you few activities to be exploring such as cycling or explore Gili by horse cart.', 1580648542, 1),
(9, 'gili-nanggu', 'Gili Nanggu', 465000, '8 Hour', 'tumb_photo-1580649480486.jpg', '<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">After\r\nbreakfast, meet your guide at your hotel\'s lobby at 08.00 am, then you will be\r\ntransferred to&nbsp;Tawun&nbsp;fishermen village near&nbsp;Sekotong&nbsp;in\r\nSouth West of Lombok. Your guide will organize a boat charter for a day. Boat\r\ntype to use is an outrigger motorized wooden boat and takes only 30 minutes\r\ncrossing from Sekotong to&nbsp;Gili&nbsp;Nanggu.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"color: rgb(0, 0, 0);\"><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif\">Explore\r\nGili Nanggu is known as the ‘Paradise Island’ on this private full-day tour\r\nfrom Lombok. using a motorized outrigger boat. Allowing you to experience three\r\nislets in the southwest of Lombok; this day trip provides you leisure days on\r\nbeautiful sandy beaches with crystal clear waters, colorful coral reefs and\r\nsome of the best snorkeling spots in the area – perfect for those who love\r\nrelaxing on the beach, sunbathing and snorkeling.</span><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif;\"><o:p></o:p></span></span></p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">After\r\nsnorkeling in&nbsp;<strong>Gili&nbsp;Nanggu</strong>,&nbsp;next\r\nvisiting other islands&nbsp;<strong>Gili Sudak and&nbsp;Gili&nbsp;Kedis</strong>.\r\nIn Gili Sudak to hunting the starfish, while Gili Kedis is a beatiful smaller\r\nisland where perfect to swim and sun bathing. Lunch will be served at local\r\nrestaurant on the island. After enjoy the islands, you will be escorted back to\r\nmain island/Sekotong where the car awaits to drive you back to your hotel.</span></p><p style=\"margin:0cm;margin-bottom:.0001pt\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\"><o:p><br></o:p></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour inclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\nAC car with experience driver<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">English\r\nor Indonesian speaking guide<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\ncharter wooden Outrigger boat <o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Entrance\r\nfee <o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nat local Rest<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Mineral\r\nwater<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour exclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\nexpenses<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\ndonation</span></li><li><span style=\"color: rgb(0, 0, 0);\">Tipping\r\nfor guide and driver</span></li></ul>														\r\n																												\r\n														\r\n\r\n														', 'Explore Gili Nanggu is known as the ‘Paradise Island’ on this private full-day tour from Lombok.', 1580649480, 1),
(10, 'pink-beach', 'Pink Beach', 540000, '8 Hour', 'tumb_photo-1580651924995.jpg', '<p style=\"margin: 0cm 0cm 18pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\"><span style=\"color: rgb(0, 0, 0);\"><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\">Our guide will pick you up&nbsp; 08.00 at your hotel to\r\nstart the tour.</span><span lang=\"EN-US\" style=\"font-size: 13.5pt; font-family: Arial, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"> </span><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Located in <b>Sekaroh\r\n</b>Village, East <b>Lombok</b>.</span><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\">\r\nDirectly drive to <b>Tanjung Luar</b> Harbor takes 2,5 hours drive. Arrive at Tanjung\r\nLuar get on the boat (outrigger wooden boat) continue the trip to Pulau Pasir\r\njust about 25 minutes, this is a sand island that only appear during the low\r\ntight, walk around to explore the white sand and see lots of big size sea stars\r\nwith many different colors. A fiew minutes enjoying the island.<br>\r\nAfter Sand island, the trip continue to Segui Beach, you can walk around,sun\r\nbathing or swimming on the beach. From <b>Segui Beach</b> continue another 10 minutes\r\nwith boat for Snorkeling at <b>Gili Petelu</b> and <b>Gili Gambir.&nbsp;</b>Enjoy the under marine\r\nlife, huge of colorful coral reef and fishes. After snorkeling go to Pink Beach\r\nor <b>Tangsi </b>Beach for rest and lunch. We will serve you grill fish, crab curry\r\nand fried squid for </span><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">You need to know that the beach color not always really red and\r\npink, and depend on the weather. So please do not disappointed if you do not\r\nsee what you expect.</span><span lang=\"EN-US\" style=\"font-size: 11pt; font-family: Verdana, sans-serif;\"><br>\r\nAfter lunch free activity. Than crossing back to Tanjung Luar Harbor.Drive back\r\nto your hotel.&nbsp;</span></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour inclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\nAC car with experience driver<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">English\r\nor Indonesian speaking guide<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\ncharter wooden Outrigger boat <o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Entrance\r\nfee <o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nat local Rest<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Mineral\r\nwater</span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour exclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\nexpenses<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\ndonation</span></li><li><span style=\"color: rgb(0, 0, 0);\">Tipping\r\nfor guide and driver</span></li></ul>														\r\n																												\r\n														\r\n\r\n														', 'Enjoy the under marine life, huge of colorful coral reef and fishes.', 1580651925, 1);
INSERT INTO `tours` (`id_tour`, `slug`, `title_tour`, `price_desc`, `duration`, `tumb_pic`, `desc_full`, `tumb_desc`, `create_date`, `is_active`) VALUES
(11, 'the-magnificent-benang-stokel-and-kelambu-waterfall', 'The Magnificent Benang Stokel And Kelambu Waterfall', 399000, '8 Hour', 'tumb_photo-1580652844887.jpg', '<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif;\r\ncolor:#212121\">After breakfast at hotel, your guide will pick up you in lobby hotel\r\nat 08.00 am. Go toward to east around 1,5 hours driving, passing the beautiful\r\nrice field. You will visit&nbsp; two&nbsp; beautiful waterfall, they are <b>Benang Stokel and Benang Kelambu</b>. At\r\nNorth of central Lombok,foothill of Rinjani mount. After arrive at parking\r\narea, we have to walk through the tropical jungle with lots of different trees\r\nand plants . The first waterfall Benang setokel ,is a pretty&nbsp; easy hike with a few stairs. Two tall water\r\nfalls and it is great to dip in the pool.</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif;\r\ncolor:#212121\">The second waterfall is Benang\r\nKelambu,which is much more beautiful.It takes about another 30 minutes trek\r\nthere. You did have to walk up and down quite a few steps to traverse the\r\nforest. Made up of 6 falls through the trees, similar to water curtains, that\r\nis how benang kelambu waterfall got its name. All up the waterfalls were\r\nspectacular and really clean and refreshing to swim in.</span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family:&quot;Verdana&quot;,sans-serif;\r\ncolor:#212121\">The water are so cold\r\nbut immensely refreshing. And the greenery surrounding the waterfall is\r\nincredible. Lunch </span><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(33, 33, 33); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">will service at here\r\nwith lunch box. After lunch back to hotel, program end.&nbsp;</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour inclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Private\r\nAC car with experience driver<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">English\r\nor Indonesian speaking guide<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Local\r\nguide for waterfall object<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Entrance\r\nfee and village donation<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">National\r\npark entrance fee<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Lunch\r\nat local Rest<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Mineral\r\nwater<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Tour exclusion<o:p></o:p></span></b></p><ul><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\nexpenses<o:p></o:p></span></li><li><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(0, 0, 0);\">Personal\r\ndonation</span></li><li><span style=\"color: rgb(0, 0, 0);\">Tipping\r\nfor guide and driver</span></li></ul><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-family: Verdana, sans-serif; color: rgb(33, 33, 33); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p>														\r\n																												\r\n														\r\n\r\n														', 'You will visit  two  beautiful waterfall, they are Benang Stokel and Benang Kelambu.', 1580652845, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tours_pics`
--

CREATE TABLE `tours_pics` (
  `id_tours_pics` int(11) NOT NULL,
  `id_tours` int(11) NOT NULL,
  `id_pics` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tours_pics`
--

INSERT INTO `tours_pics` (`id_tours_pics`, `id_tours`, `id_pics`) VALUES
(5, 1, 5),
(11, 2, 11),
(12, 2, 12),
(13, 3, 13),
(15, 3, 15),
(18, 4, 18),
(19, 4, 19),
(20, 5, 20),
(21, 5, 21),
(22, 6, 22),
(23, 7, 23),
(24, 7, 24),
(25, 7, 25),
(26, 8, 27),
(27, 8, 28),
(28, 9, 29),
(33, 10, 34),
(34, 10, 35),
(36, 11, 37),
(37, 11, 38);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tours_pictures_all`
--

CREATE TABLE `tours_pictures_all` (
  `id_pics_all` int(11) NOT NULL,
  `name_pics` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tours_pictures_all`
--

INSERT INTO `tours_pictures_all` (`id_pics_all`, `name_pics`) VALUES
(5, 'city-tour-1580600089429.jpg'),
(11, 'land-cruise-1580603864055.jpg'),
(12, 'land-cruise-1580603871940.jpg'),
(13, 'land-cruise-1580604910104.jpg'),
(15, 'land-cruise-1580605021160.jpg'),
(18, 'sendang-gile-waterfall-1580640968956.jpg'),
(19, 'sendang-gile-waterfall-1580640975956.jpg'),
(20, 'gili-air-tour-1580642439301.jpg'),
(21, 'gili-air-tour-1580642495883.jpg'),
(22, 'gili-meno-1580643719225.jpg'),
(23, 'gili-trawangan-tour-1580647783450.JPG'),
(24, 'gili-trawangan-tour-1580647790539.JPG'),
(25, 'gili-trawangan-tour-1580647799633.JPG'),
(27, 'gilis-adventure-1580648894203.jpg'),
(28, 'gilis-adventure-1580649052266.jpg'),
(29, 'gili-nanggu-1580649526491.jpeg'),
(34, 'pink-beach-1580652397618.jpg'),
(35, 'pink-beach-1580652403532.jpg'),
(37, 'the-magnificent-benang-stokel-and-kelambu-waterfall-1580653235504.jpg'),
(38, 'the-magnificent-benang-stokel-and-kelambu-waterfall-1580653254633.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tours_prices`
--

CREATE TABLE `tours_prices` (
  `id_tours_prices` int(11) NOT NULL,
  `id_tours` int(11) NOT NULL,
  `id_prices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tours_prices`
--

INSERT INTO `tours_prices` (`id_tours_prices`, `id_tours`, `id_prices`) VALUES
(1, 1, 5),
(2, 1, 6),
(3, 1, 7),
(4, 2, 8),
(5, 2, 9),
(6, 2, 10),
(7, 3, 11),
(8, 3, 12),
(9, 3, 13),
(10, 4, 14),
(11, 4, 15),
(12, 4, 16),
(13, 5, 17),
(14, 5, 18),
(15, 5, 19),
(16, 6, 20),
(17, 6, 21),
(18, 6, 22),
(19, 7, 23),
(20, 7, 24),
(21, 7, 25),
(22, 8, 28),
(23, 8, 29),
(24, 8, 30),
(25, 9, 31),
(26, 9, 32),
(27, 9, 33),
(28, 10, 34),
(29, 10, 35),
(30, 10, 36),
(31, 11, 37),
(32, 11, 38),
(33, 11, 39);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tours_prices_all`
--

CREATE TABLE `tours_prices_all` (
  `id_tours_prices_all` int(11) NOT NULL,
  `tours_price` int(11) NOT NULL,
  `desc_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tours_prices_all`
--

INSERT INTO `tours_prices_all` (`id_tours_prices_all`, `tours_price`, `desc_price`) VALUES
(5, 552000, '2 Persons'),
(6, 419000, '3 - 5  Persons'),
(7, 382000, '6 - 9  Persons'),
(8, 592000, '2 Persons'),
(9, 440000, '3 - 5  Persons'),
(10, 359000, '6 - 9  Persons'),
(11, 771000, '2 Persons'),
(12, 634000, '3 - 5  Persons'),
(13, 475000, '6 - 9  Persons'),
(14, 711000, '2 Persons'),
(15, 560000, '3 - 5  Persons'),
(16, 405000, '6 - 9  Persons'),
(17, 936000, '2 Persons'),
(18, 681000, '3 - 5  Persons'),
(19, 487000, '6 - 9  Persons'),
(20, 975000, '2 Persons'),
(21, 710000, '3 - 5  Persons'),
(22, 507000, '6 - 9  Persons'),
(23, 982000, '2 Persons'),
(24, 720000, '3 - 5  Persons'),
(25, 515000, '6 - 9  Persons'),
(26, 1158000, '2 Persons'),
(27, 1158000, '2 Persons'),
(28, 1158000, '2 Persons'),
(29, 827000, '3 - 5  Persons'),
(30, 570000, '6 - 9  Persons'),
(31, 870000, '2 Persons'),
(32, 665000, '3 - 5  Persons'),
(33, 465000, '6 - 9  Persons'),
(34, 1010000, '2 Persons'),
(35, 745000, '3 - 5  Persons'),
(36, 540000, '6 - 9  Persons'),
(37, 685000, '2 Persons'),
(38, 535000, '3 - 5  Persons'),
(39, 399000, '6 - 9  Persons');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id_dest`);

--
-- Indeks untuk tabel `destinations_photos`
--
ALTER TABLE `destinations_photos`
  ADD PRIMARY KEY (`id_dest_photos`);

--
-- Indeks untuk tabel `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `many_dest_photos`
--
ALTER TABLE `many_dest_photos`
  ADD PRIMARY KEY (`id_mdp`),
  ADD KEY `id_dest` (`id_dest`),
  ADD KEY `id_dest_photos` (`id_dest_photos`);

--
-- Indeks untuk tabel `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id_tour`);

--
-- Indeks untuk tabel `tours_pics`
--
ALTER TABLE `tours_pics`
  ADD PRIMARY KEY (`id_tours_pics`),
  ADD KEY `tours_pics_ibfk_1` (`id_pics`),
  ADD KEY `id_tours` (`id_tours`);

--
-- Indeks untuk tabel `tours_pictures_all`
--
ALTER TABLE `tours_pictures_all`
  ADD PRIMARY KEY (`id_pics_all`);

--
-- Indeks untuk tabel `tours_prices`
--
ALTER TABLE `tours_prices`
  ADD PRIMARY KEY (`id_tours_prices`),
  ADD KEY `id_tours` (`id_tours`),
  ADD KEY `tours_prices_ibfk_2` (`id_prices`);

--
-- Indeks untuk tabel `tours_prices_all`
--
ALTER TABLE `tours_prices_all`
  ADD PRIMARY KEY (`id_tours_prices_all`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id_dest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `destinations_photos`
--
ALTER TABLE `destinations_photos`
  MODIFY `id_dest_photos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `logins`
--
ALTER TABLE `logins`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `many_dest_photos`
--
ALTER TABLE `many_dest_photos`
  MODIFY `id_mdp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `tours`
--
ALTER TABLE `tours`
  MODIFY `id_tour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tours_pics`
--
ALTER TABLE `tours_pics`
  MODIFY `id_tours_pics` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `tours_pictures_all`
--
ALTER TABLE `tours_pictures_all`
  MODIFY `id_pics_all` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tours_prices`
--
ALTER TABLE `tours_prices`
  MODIFY `id_tours_prices` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tours_prices_all`
--
ALTER TABLE `tours_prices_all`
  MODIFY `id_tours_prices_all` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `many_dest_photos`
--
ALTER TABLE `many_dest_photos`
  ADD CONSTRAINT `many_dest_photos_ibfk_1` FOREIGN KEY (`id_dest`) REFERENCES `destinations` (`id_dest`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `many_dest_photos_ibfk_2` FOREIGN KEY (`id_dest_photos`) REFERENCES `destinations_photos` (`id_dest_photos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tours_pics`
--
ALTER TABLE `tours_pics`
  ADD CONSTRAINT `tours_pics_ibfk_1` FOREIGN KEY (`id_pics`) REFERENCES `tours_pictures_all` (`id_pics_all`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tours_pics_ibfk_2` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tour`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tours_prices`
--
ALTER TABLE `tours_prices`
  ADD CONSTRAINT `tours_prices_ibfk_1` FOREIGN KEY (`id_tours`) REFERENCES `tours` (`id_tour`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tours_prices_ibfk_2` FOREIGN KEY (`id_prices`) REFERENCES `tours_prices_all` (`id_tours_prices_all`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
