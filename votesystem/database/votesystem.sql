/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.5.60-log : Database - votesystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`votesystem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `votesystem`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`firstname`,`lastname`,`photo`,`created_on`) values 
(1,'codeprojects','$2y$10$g4m/PfziRBxoM9fvwqiS9OgxAV29w0y8..XHruyEplYPxYnhZJ6bC','Code','Projects','pup-logo.jpg','2018-04-02');

/*Table structure for table `candidates` */

DROP TABLE IF EXISTS `candidates`;

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `candidates` */

insert  into `candidates`(`id`,`position_id`,`firstname`,`lastname`,`photo`,`platform`) values 
(18,9,'Josh ','Brolin','thanossmile.jpg','Marvel Cinematic Universe'),
(19,9,'Tom','Hiddleston','AvengerIW4 (2).jpg','Marvel Cinematic Universe'),
(20,9,'James','Spader','ultron.jpg','Marvel Cinematic Universe'),
(21,9,'Cate','Blanchett','hela.jpg','Marvel Cinematic Universe'),
(22,9,'Michael B','Jordan','killmongr.jpg','Marvel Cinematic Universe'),
(23,9,'Hugo','Weaving','reddd.jpg','Marvel Cinematic Universe'),
(24,9,'Tom','Vaughan','ebony.jpg','Marvel Cinematic Universe'),
(25,8,'Mark','Doe','mask.jpg','Sample ...............'),
(26,8,'Bruno','Jr','Opi51c74ead38850.png','Sample ..'),
(27,10,'Mickey','Mouse','','hi ho');

/*Table structure for table `positions` */

DROP TABLE IF EXISTS `positions`;

CREATE TABLE `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `positions` */

insert  into `positions`(`id`,`description`,`max_vote`,`priority`) values 
(8,'Sample',5,2),
(9,'Best Villian - MCU Actors',5,1),
(10,'Class President',1000,3);

/*Table structure for table `voters` */

DROP TABLE IF EXISTS `voters`;

CREATE TABLE `voters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `voters` */

insert  into `voters`(`id`,`voters_id`,`password`,`firstname`,`lastname`,`photo`) values 
(5,'pSMQYCjWk5dnmaD','$2y$10$BhnhcZfQ40Bufse7yKqjoOu0/G4BuqZu2z8It5XpSUcKuTPhMcPxa','Harry','Den','dealer-logo.jpg'),
(6,'Is92CPnGcvOy4ue','$2y$10$2eF0UGUbOcH8L1ny0qXE0uw8pMJMNUUozoYSJw0ZXKGlZx8rYDuea','Tony','Jr','favicon.png'),
(7,'gwvIniKqT5xsWJc','$2y$10$wY1VSzxdR1X9RpSo3oKodumhkFihorsT2K1zausafYiNnnqYqscje','Danny','Hill','TROLLFACE-DEAL-WITH-IT.png'),
(8,'IpqGblR7m6tQFhz','$2y$10$3ov.kMMWqHBO8KBtjix6p.hw642C7Y5w/.r.OGU4VQRiG3qtvRji2','Tom','Lee','e360bc98dbb4441f73d253f90723d9a4.jpg'),
(9,'fxdNBZ5hoi87rqI','$2y$10$zrjd/OWccwoGfGA1Uh2moOSEfraxe7ozQt30thOGoYWupwmliVyDC','Logan','Paul','male2.png'),
(10,'fpivPIEFjTL3qZ5','$2y$10$SOTAHllEO.CrqSewCSHK4.g9w1xbmbOkiCsbulmrzXn/XlPSMjtlG','Angelina','Stone','female3.jpg'),
(11,'KkMWRcTZPf7xNgU','$2y$10$ZYpT8rgNn/ohBX1xx2DU6.QMCSjasqJNTRHpkJ/mFUPCGTk6wLOzW','James','Cooper','male.png'),
(12,'syG6zQqTNDChdZ1','$2y$10$iqhdKLw3VAopiEprzWM4letKheG23V.MYrAa330SmfdYE7bbuNFuO','Christine','Taylor','female4.jpg'),
(13,'KPCDpH5TltFIkAB','$2y$10$eMVtYY6tGlrhZuSQl7CYXebiS66gT8nuo6pLCk1DMKWI9M0iwABJm','Sophia','Turner','female.jpg'),
(14,'pCPEeQjhu4KD6MO','$2y$10$7kUrF.nydR2FZqxaTi1Qze.H.Ef7mSaWbJrH3VZ1FJoCqhKPEv7ZS','Martin','Gray','mask.jpg'),
(15,'lAk28ZYIDhc1Knx','$2y$10$jBJ7LbyEXa7E/bwW0lBmHu38Pa8o.bX2WyFxk3Zn3Gk5LbvSe1XMO','Thom','Yorke','profile.jpg'),
(16,'lqyvXeC1ZIkbJHN','$2y$10$fO.V4DyY7biwZYWUmHnN0.k1uZa40qdiosGeeOOjXAjdXkwzGNxFC','William','Carter','profile.jpg'),
(17,'8MGHvWJAI2CfeuU','$2y$10$y1OqYFUHAbkCgWl/vTHoh.dcLyPInG0rXBiN3XXpT5fEBx215sf8.','Wilson','Cooper','profile.jpg'),
(19,'aS1sT9JdHGFrnti','$2y$10$nsK5s38jvT8Zh1yimLXLuOcBoVqbd6T5AyErPH8bQ3GxaZw5SF8/m','Zid','And','');

/*Table structure for table `votes` */

DROP TABLE IF EXISTS `votes`;

CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

/*Data for the table `votes` */

insert  into `votes`(`id`,`voters_id`,`candidate_id`,`position_id`) values 
(81,5,26,8),
(82,5,18,9),
(83,5,19,9),
(84,5,21,9),
(85,5,24,9),
(86,6,26,8),
(87,6,18,9),
(88,6,19,9),
(89,7,26,8),
(90,7,18,9),
(91,7,19,9),
(92,7,22,9),
(93,8,25,8),
(94,8,18,9),
(95,8,19,9),
(96,9,26,8),
(97,9,18,9),
(98,9,19,9),
(99,9,23,9),
(100,10,26,8),
(101,10,18,9),
(102,10,22,9),
(103,11,26,8),
(104,11,18,9),
(105,11,22,9),
(106,12,25,8),
(107,12,26,8),
(108,12,18,9),
(109,12,21,9),
(110,12,23,9),
(111,13,25,8),
(112,13,26,8),
(113,13,18,9),
(114,13,20,9),
(115,13,22,9),
(116,14,26,8),
(117,14,18,9),
(118,14,19,9),
(119,14,24,9),
(120,15,25,8),
(121,15,18,9),
(122,16,25,8),
(123,16,18,9),
(124,17,25,8),
(125,17,18,9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
