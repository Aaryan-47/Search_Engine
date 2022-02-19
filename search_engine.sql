-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 06:26 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search_engine`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `passwords` varchar(30) DEFAULT NULL,
  `checkif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `passwords`, `checkif`) VALUES
('Aakash', 'Wagh', 9),
('Aayush', 'Chaudhary', 0),
('ABC', '12345', 0),
('alia', 'bhatt', 4),
('Ansh', 'qwerty', 1),
('Naman', 'lsd', 1),
('Robert', 'rob', 1);

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `website_name` varchar(100) DEFAULT NULL,
  `website_URL` varchar(300) NOT NULL,
  `website_description` varchar(500) DEFAULT NULL,
  `website_keyword` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`website_name`, `website_URL`, `website_description`, `website_keyword`) VALUES
(' India production of Jowar / Agri Exchange', 'http://agriexchange.apeda.gov.in/india%20production/AgriIndia_Productions.aspx?productcode=1004', 'Food and Agriculture Organization of India: International Trade Events of ,Major Exporting ... Indian Production of Jowar.', 'jowar, jowar in India, jowar agriculture'),
(' Jowar ? Nuziveeduseeds', 'http://www.nuziveeduseeds.com/jowar/', 'Jowar is one of the major staple food grain crops in India. Out of the total area under jowar cultivation in India, 50% is cultivated in Maharashtra. Whereas ..', 'jowar, jowar in India, jowar agriculture'),
(' Cotton - Wikipedia', 'https://en.wikipedia.org/wiki/Cotton', 'Mughal India ? The plant is a shrub native to tropical and subtropical regions around the world, including the Americas, Africa, Egypt and India. The .', 'cotton, cotton in India, cotton agriculture'),
(' Rice production in India - Wikipedia', 'https://en.wikipedia.org/wiki/Rice_production_in_India', 'India is one of the leading producers of this crop. Rice is the basic food crop and being a tropical plant, it flourishes comfortably in a hot and humid climate ..', 'rice, rice agriculture, Rice, Rice Agriculture, India rice'),
(' Sorghum - Wikipedia', 'https://en.wikipedia.org/wiki/Sorghum', 'Sorghum is a genus of about 25 species of flowering plants in the grass family (Poaceae). Some of these species are grown as cereals for human consumption ... Family: Poaceae Genus: Sorghum; Moench 1794, conserved ', 'jowar, jowar in India, jowar agriculture'),
(' Wheat - Wikipedia', 'https://en.wikipedia.org/wiki/Wheat', 'Farming techniques ? Great expansion of wheat production occurred as new arable land ... Young wheat crop in a field near Solapur, Maharashtra, India.', 'wheat, wheat in India, India Wheat, wheat agriculture'),
(' Pulses', 'https://farmer.gov.in/cropstaticspulses.aspx', 'A number of pulse crops are grown in India and world. Among the crops, major ones are Gram, Pigeonpea, Lentil, Fieldpeas etc. According to history, the origin .', 'pulses, pulses in India, pulses agriculture'),
(' Wheat Crop in India ? the Productivity Woes - Geography and ', 'https://geographyandyou.com/wheat-crop/', '18-Mar-2017 ? In India, wheat crop is grown mainly in the northern states, with Uttar Pradesh being the top-most contributor of wheat with a total production .', 'wheat, wheat in India, India Wheat, wheat agriculture'),
(' Sugarcane in India', 'https://iisr.icar.gov.in/iisr/aicrp/download/Sugarcane_in_India.pdf', 'Sugarcane is one of the multi-product main cash crop of. India, and its use for sugar and renewable energy (production of ethanol), the task has become more ..', 'sugarcane, sugar cane, sugar cane in India, sugar cane agriculture'),
('  Rice Production in India | SpringerLink', 'https://link.springer.com/chapter/10.1007/978-3-319-47516-5_3', 'by G Mahajan ? 2017 ? Cited by 30  In India, rainfed lowland rice is grown in around 14.4 million hectares, mostly in Eastern India, where availability of soil moisture remains ...', 'rice, rice agriculture, Rice, Rice Agriculture, India rice'),
(' Top 10 Jowar Producing States in India [States with Highest ..', 'https://theindianblog.in/top-10-states-india/top-10-jowar-producing-states-in-india/', '1. Maharashtra: As we mentioned earlier, Maharashtra ranks on the top in jowar production. ? 2. Karnataka: Karnataka is on the second number for ..', 'jowar, jowar in India, jowar agriculture'),
('Top 10 Largest Sugarcane Producing States', 'https://thetoprated.in/top-10-sugarcane-producing-states-in-india.html', 'Find here the top 10 sugarcane producing states in India along with a map. Also, find the data of production of sugarcane in these states in ..', 'sugarcane ,sugar cane, sugarcane in India, sugarcane agriculture'),
(' Pulses in India - Crop Production - Vikaspedia', 'https://vikaspedia.in/agriculture/crop-production/package-of-practices/pulses/pulses-in-india', 'Bengal Gram (Desi Chick Pea / Desi Chana), Pigeon Peas (Arhar / Toor / Red Gram), Green Beans (Moong Beans), Chick Peas (Kabuli Chana), Black Matpe (Urad / Mah ...', 'pulses, pulses in India, pulses agriculture'),
(' Cotton Farming Guide; Planting; Care; Yield; Harvesting | Agri .', 'https://www.agrifarming.in/cotton-farming-guide', 'Fertilizers and Fertigation of Cotton Crop ? Cotton is the most important fiber crop not only of India but of the entire world. It provides the basic raw ..', 'cotton, cotton in India, cotton agriculture'),
(' Jowar Farming (Sorghum) Information Guide | Agri Farming', 'https://www.agrifarming.in/jowar-farming', 'Introduction of Jowar or Sorghum :- Jowar is one of the important food and fodder cereal crops cultivated across India, Sorghum popularly known ..', 'jowar, jowar in India, jowar agriculture'),
(' Rice Cultivation Information Guide | Agri Farming', 'https://www.agrifarming.in/rice-cultivation-information-guide', 'Major Rice Production States In India ? There are many varieties of rice cultivated across India. With a proper filed management practices and ...', 'rice, rice agriculture, Rice, Rice Agriculture, India rice'),
('Sugarcane Farming Guide, Cultivation For Beginners', 'https://www.agrifarming.in/sugarcane-farming-for-guide-beginners', 'Sugarcane Planting Seasons across India ? In India, sugarcane is planted thrice a year in October (autumn), February-March (spring) and July (adsali) ..', 'sugarcane, sugar cane, sugar cane in India, sugar cane agriculture'),
(' Wheat Farming Information Detailed Guide | Agri Farming', 'https://www.agrifarming.in/wheat-farming-information', '07-Apr-2018 ? Introduction of Wheat:- Wheat is the main cereal crop and mainly a rabi (winter) season crop in India. Indian wheat is largely a medium ..', 'wheat, wheat in India, India Wheat, wheat agriculture'),
(' Buy Jowar Online at Best Price | bigbasket.com', 'https://www.bigbasket.com/ss/jowar/', 'You can buy Jowar online at best prices on bigbasket. Buy now to avail best offers. ... India; Switzerland ... BB Royal Organic Jowar/Sorghum Millet 500 g.', 'jowar, jowar in India, jowar agriculture'),
(' Cotton Cultivation in India: Important Things You Should Know', 'https://www.clearias.com/cotton-cultivation/', 'There are three cotton-growing areas in India ? (1) parts of Punjab, Haryana and northern Rajasthan in the north-west, (2) Gujarat and .', 'cotton, cotton in India, cotton agriculture'),
(' Why pulse production in India needs better incentives', 'https://www.downtoearth.org.in/blog/agriculture/why-pulse-production-in-india-needs-better-incentives-78914', 'India is also the largest importer of pulses. Madhya Pradesh is a major pulse-producing state in the country; it caters to 32 per cent of the ', 'pulses, pulses in India, pulses agriculture'),
(' Wheat Crop Information and Production - Farming Indiahttps://www.farmingindia.in ? wheat-cultivatio', 'https://www.farmingindia.in/wheat-cultivation-in-india-crop-information-production/', 'Climate for Wheat Farming in India ... Wheat is a widely adaptable crop that can be grown in climates ranging from temperate to tropical and cold ...', 'wheat, wheat in India, India Wheat, wheat agriculture'),
(' Can India sustain high growth of pulses production? - ICRISAT', 'https://www.icrisat.org/can-india-sustain-high-growth-of-pulses-production/', 'India has made remarkable progress in enhancing production of pulses during the past 15 years. During 2005-06, the total production of ', 'pulses, pulses in India, pulses agriculture'),
(' Jower | Crop Information | IndiaAgroNet', 'https://www.indiaagronet.com/indiaagronet/crop%20info/jower.htm#:~:text=Jowar%20is%20mainly%20concentrated%20in,small%20areas%20primarily%20for%20fodder.', 'Jowar is mainly concentrated in the peninsular and central India. Maharashtra, Karnataka, Andhra Pradesh, Madhya Pradesh, Gujarat, Rajasthan, Uttar Pradesh..', 'jowar, jowar in India, jowar agriculture'),
(' Sugarcane cultivation | Crop Information - IndiaAgroNet.Com', 'https://www.indiaagronet.com/indiaagronet/crop%20info/sugarcane.htm', 'Sugarcane is one of the important commercial crops of India, grown in an area of 3.93 m.ha with annual production of 170 M.T. Sugarcane productivity in India is ...', 'sugarcane, sugar cane, sugar cane in India, sugar cane agriculture'),
(' Wheat Crop Cultivation Guide - IndiaAgroNet.Com ', 'https://www.indiaagronet.com/indiaagronet/crop%20info/wheat.htm', 'In India, it is the second important food crop being next to rice and contributes to the total food grain production of the country to the extent of about 25%.', 'wheat, wheat in India, India Wheat, wheat agriculture'),
(' Top 10 rice producing states in India - India Today', 'https://www.indiatoday.in/education-today/gk-current-affairs/story/top-10-rice-producing-states-in-india-rice-production-and-area-under-cultivation-1343024-2018-09-18', 'West Bengal is the largest rice producing state in India. Almost half of its arable land is under rice cultivation. In the fiscal year 2016, the .', 'rice, rice agriculture, Rice, Rice Agriculture, India rice'),
(' Wheat Production in India: Trends and Prospects | IntechOpen', 'https://www.intechopen.com/chapters/67311', 'Cited by 29 The crop has been under cultivation in about 30 million hectares (14% of global area) to produce the all-time highest output of 99.70 million tonnes of', 'wheat, wheat in India, India Wheat, wheat agriculture'),
(' Map of Top 10 Sugarcane Producing States of India', 'https://www.mapsofindia.com/top-ten/india-crops/sugercane.html', ' Find here the top 10 sugarcane producing states in India along with a map. Also, find the data of production of sugarcane in these states in ', 'sugarcane, sugar cane, sugar cane in India, sugar cane agriculture'),
(' Production of pulses in India FY 2002-2021 - Statista', 'https://www.statista.com/statistics/620800/india-grain-production/', 'The production of pulses such as tur, urad and other lentils across India was estimated to be around 25 million metric tons in financial ..', 'pulses, pulses in India, pulses agriculture'),
('  Types of pulses in India and their nutritional value - Wonderchef', 'https://www.wonderchef.com/blogs/all/types-of-pulses-in-india-and-their-nutritional-value', 'Types of pulses in India and their nutritional value ? 1. Mung beans ? 2. Toor ? 3. Rajma ? 4. Channa ? 5. Urad ? 6. Masoor.', 'pulses, pulses in India, pulses agriculture'),
(' Cultivation of Rice in India: Conditions, Methods and Production', 'https://www.yourarticlelibrary.com/cultivation/cultivation-of-rice-in-india-conditions-methods-and-production/20919', 'Rice is grown under varying conditions in India from 8? to 25? N latitude and from sea level to about 2,500 meter altitude. It is a tropical plant and requires ..', 'rice, rice agriculture, Rice, Rice Agriculture, India rice'),
(' Sugarcane Cultivation in India: Conditions, Production and ..', 'https://www.yourarticlelibrary.com/cultivation/sugarcane-cultivation-in-india-conditions-production-and-distribution/20945', 'As many as 30 districts of U.P. produce sugarcane. However, Muzaffamagar, Meerut, Bijnor, Moradabad, Saharanpur, Kheri, Deoria, Bulandshahr, Ghaziabad, Bareilly ...', 'sugarcane, sugar cane, sugar cane in India, sugar cane agriculture'),
(' Agriculture : Rice Cultivation in India - YouTube', 'https://www.youtube.com/watch?v=7w0XuoqvCFg', 'Did you know that rice is actually a grass and we eat its seed?Rice is the main food crop in most parts of the ... 26-Feb-2018 ? Uploaded by WildFilmsIndia', 'rice, rice agriculture, Rice, Rice Agriculture, India rice');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`website_URL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
