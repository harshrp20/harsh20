-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2020 at 05:49 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(129, 1, 'shiv@gmail.com', '04/13/2020', NULL, 'Family', '2020-04-13 12:46:34', 0, NULL, NULL),
(130, 5, 'raj@gmail.com', '04/30/2020', NULL, 'Family', '2020-04-13 12:47:38', 0, NULL, NULL),
(131, 3, 'milan@gmail.com', '05/14/2020', NULL, 'Family', '2020-04-13 12:49:12', 0, NULL, NULL),
(132, 2, 'nikunj@gmail.com', '06/01/2020', NULL, 'Family', '2020-04-13 12:58:45', 2, 'u', '2020-04-13 12:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'sheshadri', 'sheshadri@gmail.com', '7890123456', 'Information about chennai tour packages', 'I want to know that this is the fixed price for chennai tour', '2019-11-07 17:18:28', 1),
(6, 'shreyas', 'shreyas@gmail.com', '4747474747', 'Information about manali tour packages', 'Does this package include transportation charge', '2019-11-07 17:20:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'privacy', '<p style=\"font-size: 15px; text-align: justify;\">The Privacy Policy is applicable to the website indiantourism.com registered as Indian Tourism Pvt. Ltd.. This privacy statement also does not apply to the websites of our business partners, corporate affiliates or to any other third parties, even if their websites are linked to indiantourism Website.</p><p style=\"font-size: 15px; text-align: justify;\">We recommend you review the privacy statements of the other parties with whom you interact. For the purposes of this privacy policy, \"corporate affiliates\" means any entity or joint venture that is wholly or partially owned or controlled by indiantourism.com. \"Business partners\" means any subcontractor, vendor or other entity with whom we have an ongoing business relationship to provide products, services, or information.</p><p style=\"font-size: 15px; text-align: justify;\">The following terms governs the collection, use and protection of your Personal Information by the Website. This Privacy Policy shall be applicable to users or customers who purchases any product or services from the Website or visits the Website. By visiting and/ or using the Website you have agreed to the following</p><h3 style=\"font-family: Roboto, sans-serif; color: rgb(255, 117, 0); margin-top: 8px; margin-bottom: 10px; font-size: 20px; padding: 0px; border-bottom: 1px dashed rgb(204, 204, 204);\">Introduction part</h3><p style=\"font-size: 15px; text-align: justify;\">As a registered member of the Website and/or as a visitor (if applicable and as the case may be), you will be entitled to savings and benefits on holiday packages and among other travel services. In addition, look forward to receiving monthly newsletters and exclusive promotions offering special deals. That\'s why we have provided this Privacy Policy, which sets forth our policies regarding the collection, use and protection of the Personal Information of those using or visiting the Website.</p><h3 style=\"font-family: Roboto, sans-serif; color: rgb(255, 117, 0); margin-top: 8px; margin-bottom: 10px; font-size: 20px; padding: 0px; border-bottom: 1px dashed rgb(204, 204, 204);\">Personal Information</h3><p style=\"font-size: 15px; text-align: justify;\">Personal Information means and includes all information that can be linked to a specific individual or to identify any individual, such as name, address, mailing address, telephone number, e-mail address, credit card number, cardholder name, expiration date, information about the travel, bookings, co-passengers, and any and all details that may be requested while any customers visits or uses the website When you browse the Website may collect information regarding the domain and host from which you access the Internet, the Internet Protocol address of the computer or Internet Service Provider you are using, and anonymous site statistical data. The Website uses cookie and tracking technology depending on the features offered. Personal Information will not be collected via cookies and other tracking technology; however, if you previously provided personally identifiable information, cookies may be tied to such information. Aggregate cookie and tracking information may be shared with third parties. We encourage you to review our Privacy Policy, and become familiar with it, but you should know that we do not sell or rent our customers Personal Information to third parties.</p>'),
(3, 'aboutus', '										<p style=\"margin-bottom: 15px; padding: 0px; zoom: 1; text-align: justify; font-size: 1.0833em; line-height: 1.6666; color: rgb(80, 79, 79); font-family: Lato, Arial, Helvetica, sans-serif; background-color: rgba(255, 255, 255, 0.38);\">Dear Guest,</p><p style=\"margin-bottom: 15px; padding: 0px; zoom: 1; text-align: justify; line-height: 1.6666; color: rgb(80, 79, 79); font-family: Lato, Arial, Helvetica, sans-serif; background-color: rgba(255, 255, 255, 0.38);\"><span style=\"font-size: large;\">Thank you for choosing us to be a source of pure joy, happiness, pleasure and fond remembrances for you and your family time and again.Travel – for us is all about ‘experience’. Experiences to be felt, enjoyed and lived. It’s not about the number of travel destinations that one has visited or the number of days that one has spent at each of those destinations, but it is all to do with what one has experienced each day when visiting a travel destination. When you travel with Indian Tourism we make each day of your travel count, make your trip eventful and ensure that you have experiences which are worth remembering for a life time.Holidays are like oasis in a world full of stress and pressures. Whether one works, runs his own venture or studies – everyone needs to take a break, a holiday. And we promise our guests holidays which are so revitalizing and energizing that on returning they feel completely refreshed to resume their respective work. For this same reason, the mission statement of our company is ‘to develop a taste for holidaying in the hearts of our guests’. Where through our innovative holiday ideas and impeccable service we develop a taste for fine travelling and rejuvenating holidays in the hearts and minds of our guests. So, that they long for yet another holiday experience with us.</span></p>\r\n										'),
(11, 'contact', '																																								<span style=\"font-weight: bold;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: large;\">Address</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: large;\">-</span></span><span style=\"font-size: medium;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;</span><span style=\"background-color: rgba(255, 255, 255, 0.38); color: rgb(45, 62, 82); font-family: Lato, Arial, Helvetica, sans-serif;\">1/152, Ashok Shopping Center, Near C.T Hospital, Mumbai 400091.</span></span><h5 style=\"margin: 0px 0px 15px; padding: 0px; zoom: 1; font-family: Lato, Arial, Helvetica, sans-serif; line-height: 1.1428em; color: rgb(45, 62, 82); background-color: rgba(255, 255, 255, 0.38);\"><span style=\"font-size: medium;\">Tel.: 91 – 22 – 4214 8191</span></h5><div><span style=\"font-size: large; font-weight: bold;\">E-mail-</span><span style=\"font-size: small;\">&nbsp;</span><span style=\"background-color: rgba(255, 255, 255, 0.38); color: rgb(45, 62, 82); font-family: Lato, Arial, Helvetica, sans-serif; font-size: medium;\">enquiry@indiantourism.in</span></div><div><br></div>\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, '6D/5N IN Manali ', 'General', ' India', 50000, 'pick-up drop facility,meals,sight seeing,accomodation,', 'Himachal Pradesh covers the north front of the country, offering the tourists with some of the most wonderful hill stations in the world and Manali is undoubtedly one of the most visited one. The main credit goes to its snow covered peaks, alluring ambience, gorgeous valleys and lush greenery. It is a charming slope station located at the reservoir of the River Beas. The tourist from all parts of the world, look for best tour packages for Manali, every year, as it is the most appreciated getaway in India.\r\n\r\nWhile this place is a blessing for adventure seekers because of the tall mountains and hills that coax activities like skiing, paragliding, climbing, biking and trekking, at the same time, the town also attracts the sloppy travelers to book Manali tour packages and enjoy the calmness and positive vibes of the place. Located on the way to popular destinations such as Ladakh and Spiti, it is a famous stopover which is included in most of the North India tour packages.\r\n\r\nManali has always been a very popular destination for the old, young travelers as well as newly married couples who look for cheapest Manali tour packages & Honeymoon Packages to experience the perfect solitude and calmness at its best. This beautiful region is a perfect blend of historical structures, natural sceneries and gorgeous man-made wonders of the contemporary times. Thus, there are so many things to see & do in Manali. You can book the guided Manali tour packages to enjoy perfect vacations or you can read this short Manali Tourism guide to plan your vacation.', 'manali.jpg', '2017-05-13 14:23:44', '2020-04-14 15:39:46'),
(2, '10D/9N IN Goa', 'General', ' India', 60000, 'pick-up drop facility,food,sight seeing,beaches', 'Sure Goa packages are not hard to find and probably are your best bet if you want to live the tried and tested. The popular imagination sums up Goa as a zone for dissipation limited to its beaches, hippie spots, party zones with a bustling nightlife. That’s the Goa for the inhibited and the initiates. But the state is a lot more than its commercial positioning in the travel market. The languid charm of the south Goa beaches, the calm of the churches and chapels of old Goa and impact of the Portuguese and the subsequent settlers on its cultural map. Typically, Goa tour packages offer the more touristy encounters but you can always customise your trip to include the lesser known gems of the land.', 'goa.jpg', '2017-05-13 15:24:26', '2020-04-14 15:40:23'),
(3, '8D/7N IN Rajasthan', 'Family', 'India', 45000, 'meals,accomodation,sightseeing,folk music', 'Thinking of booking Rajasthan tour packages? Here is our extract from the best of Rajasthan packages for your convenience. The sands blowing the tales of the bloodied skirmishes and Rajputana valour, the imposing forts looming atop the steep hills standing as guards of time, the opulence of palaces, iridescent lakes, the scenic hill stations, the stunning ungulates in the deserts, the land of the Maharajas and Maharanas - Rajasthan welcomes you like a royal with a warm hospitality and gives you a similar send-off for you to come back and rediscover the charm of the undisputed India’s gem. Its regal heritage aside Rajasthan is many things to many people and is visited for many reasons. Make sure to indulge in the following while planning a Rajasthan tour.', 'rajasthan.jpg', '2017-05-13 16:00:58', '2020-04-14 15:46:08'),
(4, '10D/9N IN Kerala', 'Familty and Couple', ' India', 80000, 'meals,accomodation,sightseeing,flight', 'There are dime a dozen Kerala tour packages, but to pick the one that truly suits your interest whether it is nature, history, art, culture, cuisine or leisure, requires discretion. We help you shortlist Kerala holiday packages that are a bang for your bucks.\r\n\r\nThere is no exaggeration in Kerala’s status as ‘God’s own country’, for how else does one explain its gorgeous 600-kilometre stretch of undisturbed coastline skirting the Arabian Sea, the palm-fringed beaches, a network of languid backwaters home to a vibrant rural life, the misty tea-covered Western Ghats, wildlife reserves teeming with endemic flora and fauna and spice plantations running rampant on its valleys and hill slopes. One of the country’s cleanest states, and perhaps the friendliest too, it is an absolute delight travelling around, visiting the historical temples and museums in Trivandrum, getting a slice of the maritime history in Cochin (Kochi) or taking a boat ride to islands like Mattancherry to trace its Jewish roots. Add to it a culture that is defined by colourful folk art and dance forms, a cuisine that is subtle yet generous in its use of spices, and a passion for Ayurveda that promises to soothe frazzled nerves. Simply slacken your stride and let all its sights and smell envelop you', 'kerala.jpg', '2017-05-13 22:39:37', '2020-04-14 15:41:38'),
(5, '6D/5N IN Mount Abu', 'Family and Couple', 'India', 35000, 'pick-up drop facility,meals,sight seeing,accomodation', 'It is the one and only hill station of the Indian state of Rajasthan. The lush green atmosphere and pleasant weather makes it an interesting location for tourists to explore and get those positive traveling vibes throughout the tour. One of the most exceptional architectural works of the nation rests here and is very popular as the Dilwara Temples where tourists in huge number gather to get blessed.\r\n\r\nAnyone who enjoys unique architectural works and is fond of knowing historical details about new cities then Mount Abu is none other than a dream destination. Mount Abu tour packages are exciting as those send jitters down the veins of the people who have their name registered on the package and are going to experience one of the best tourist attractions of India.\r\n\r\nApart from the architecture love, there is much more in terms of sightseeing in Mount Abu. Honeymoon Point and Sunset Point are two of the most popular destinations for sightseeing where anyone can live some of the best moments of their lifetime.\r\n\r\nMount Abu is a beautiful tourist destination that suits all age groups and especially the honeymoon travelers who can get endless attractions for sharing love in the lap of nature.', 'mount abu.jpg', '2017-05-13 22:42:10', '2020-04-14 15:42:53'),
(6, '8D/7N IN Chennai', 'General', 'India', 70000, 'pick-up drop facility,food,sight seeing,beaches,accomodation', 'There are many types of travel journeys like some where we want to go for an adventure trip or an abroad trip or a trip where we want to party hard. All these different kinds of travels provide us energy in different manners. There are some times when we want to go on a trip where we want to enjoy the beauty of nature and peacefully explore more and more of it. These kind of trips provides a lot of calm and peace for a very long time afterward and even lets us explore our inner selves and make stronger connection with it. If you are in a search of one such destination where you can explore and admire the beauty of nature and in return get inspired from it, then grab a cup of tea or any drink you like because we are doing exactly that today i.e. discussing about Chennai tourism. With a rich history, scenic beaches, a lot of religious destinations and an adobe to rich nature too, Chennai tour packages are best options for you amongst other south Indian tour packages if your travel them is similar to what we are talking about.\r\n\r\nIf that is not the case, then even read until the end of this article to find out more about the city of Chennai where we will talk about history of the city, best places to visit Chennai etc. and will even talk about the trick to get cheapest Chennai tour packages.', 'chennai.jpg', '2017-05-14 08:01:08', '2020-04-14 15:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(15, 'shivam', '0000000000', 'shiv@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-11-07 16:23:34', NULL),
(16, 'raj', '1111111111', 'raj@gmail.com', '250cf8b51c773f3f8dc8b4be867a9a02', '2019-11-07 16:24:21', NULL),
(17, 'milan', '2222222222', 'milan@gmail.com', '68053af2923e00204c3ca7c6a3150cf7', '2019-11-07 16:25:13', NULL),
(18, 'nirav', '3333333333', 'nirav@gmail.com', 'c6f057b86584942e415435ffb1fa93d4', '2019-11-07 16:26:25', NULL),
(19, 'dhairya', '4444444444', 'dhairya@gmail.com', '698d51a19d8a121ce581499d7b701668', '2019-11-07 16:27:02', NULL),
(20, 'dharmil', '5555555555', 'dharmil@gmail.com', '15de21c670ae7c3f6f3f1f37029303c9', '2019-11-07 16:27:56', NULL),
(21, 'dhrumil', '6666666666', 'dhrumil@gmail.com', 'fae0b27c451c728867a567e8c1bb4e53', '2019-11-07 16:28:55', NULL),
(22, 'nikunj', '7777777777', 'nikunj@gmail.com', 'f1c1592588411002af340cbaedd6fc33', '2019-11-07 16:29:42', NULL),
(23, 'rushabh', '8888888888', 'rushabh@gmail.com', '0a113ef6b61820daa5611c870ed8d5ee', '2019-11-07 16:30:35', NULL),
(24, 'soham', '9999999999', 'soham@gmail.com', 'b706835de79a2b4e80506f582af3676a', '2019-11-07 16:31:31', NULL),
(25, 'gaurav', '1222222222', 'gaurav@gmail.com', 'a0a080f42e6f13b3a2df133f073095dd', '2019-11-07 16:32:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
