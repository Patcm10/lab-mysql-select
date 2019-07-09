# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.16)
# Database: publications
# Generation Time: 2019-07-09 17:56:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table titles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `titles`;

CREATE TABLE `titles` (
  `title_id` varchar(6) NOT NULL,
  `title` varchar(80) NOT NULL,
  `type` char(12) NOT NULL,
  `pub_id` char(4) DEFAULT NULL,
  `price` decimal(19,4) DEFAULT NULL,
  `advance` decimal(19,4) DEFAULT NULL,
  `royalty` int(11) DEFAULT NULL,
  `ytd_sales` int(11) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `pubdate` datetime NOT NULL,
  PRIMARY KEY (`title_id`),
  KEY `titles_pub_id` (`pub_id`),
  CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`pub_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;

INSERT INTO `titles` (`title_id`, `title`, `type`, `pub_id`, `price`, `advance`, `royalty`, `ytd_sales`, `notes`, `pubdate`)
VALUES
	('BU1032','The Busy Executive\'s Database Guide','business','1389',19.9900,5000.0000,10,4095,'An overview of available database systems with emphasis on common business applications. Illustrated.','1991-06-12 00:00:00'),
	('BU1111','Cooking with Computers: Surreptitious Balance Sheets','business','1389',11.9500,5000.0000,10,3876,'Helpful hints on how to use your electronic resources to the best advantage.','1991-06-09 00:00:00'),
	('BU2075','You Can Combat Computer Stress!','business','0736',2.9900,10125.0000,24,18722,'The latest medical and psychological techniques for living with the electronic office. Easy-to-understand explanations.','1991-06-30 00:00:00'),
	('BU7832','Straight Talk About Computers','business','1389',19.9900,5000.0000,10,4095,'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.','1991-06-22 00:00:00'),
	('MC2222','Silicon Valley Gastronomic Treats','mod_cook','0877',19.9900,0.0000,12,2032,'Favorite recipes for quick, easy, and elegant meals.','1991-06-09 00:00:00'),
	('MC3021','The Gourmet Microwave','mod_cook','0877',2.9900,15000.0000,24,22246,'Traditional French gourmet recipes adapted for modern microwave cooking.','1991-06-18 00:00:00'),
	('MC3026','The Psychology of Computer Cooking','UNDECIDED','0877',NULL,NULL,NULL,NULL,NULL,'2014-11-07 10:39:37'),
	('PC1035','But Is It User Friendly?','popular_comp','1389',22.9500,7000.0000,16,8780,'A survey of software for the naive user, focusing on the \'friendliness\' of each.','1991-06-30 00:00:00'),
	('PC8888','Secrets of Silicon Valley','popular_comp','1389',20.0000,8000.0000,10,4095,'Muckraking reporting on the world\'s largest computer hardware and software manufacturers.','1994-06-12 00:00:00'),
	('PC9999','Net Etiquette','popular_comp','1389',NULL,NULL,NULL,NULL,'A must-read for computer conferencing.','2014-11-07 10:39:37'),
	('PS1372','Computer Phobic AND Non-Phobic Individuals: Behavior Variations','psychology','0877',21.5900,7000.0000,10,375,'A must for the specialist, this book examines the difference between those who hate and fear computers and those who don\'t.','1991-10-21 00:00:00'),
	('PS2091','Is Anger the Enemy?','psychology','0736',10.9500,2275.0000,12,2045,'Carefully researched study of the effects of strong emotions on the body. Metabolic charts included.','1991-06-15 00:00:00'),
	('PS2106','Life Without Fear','psychology','0736',7.0000,6000.0000,10,111,'New exercise, meditation, and nutritional techniques that can reduce the shock of daily interactions. Popular audience. Sample menus included, exercise video available separately.','1991-10-05 00:00:00'),
	('PS3333','Prolonged Data Deprivation: Four Case Studies','psychology','0736',19.9900,2000.0000,10,4072,'What happens when the data runs dry?  Searching evaluations of information-shortage effects.','1991-06-12 00:00:00'),
	('PS7777','Emotional Security: A New Algorithm','psychology','0736',7.9900,4000.0000,10,3336,'Protecting yourself and your loved ones from undue emotional stress in the modern world. Use of computer and nutritional aids emphasized.','1991-06-12 00:00:00'),
	('TC3218','Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean','trad_cook','0877',20.9500,7000.0000,10,375,'Profusely illustrated in color, this makes a wonderful gift book for a cuisine-oriented friend.','1991-10-21 00:00:00'),
	('TC4203','Fifty Years in Buckingham Palace Kitchens','trad_cook','0877',11.9500,4000.0000,14,15096,'More anecdotes from the Queen\'s favorite cook describing life among English royalty. Recipes, techniques, tender vignettes.','1991-06-12 00:00:00'),
	('TC7777','Sushi, Anyone?','trad_cook','0877',14.9900,8000.0000,10,4095,'Detailed instructions on how to make authentic Japanese sushi in your spare time.','1991-06-12 00:00:00');

/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;