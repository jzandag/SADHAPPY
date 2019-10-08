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
(1,'codeprojects','$2y$10$g4m/PfziRBxoM9fvwqiS9OgxAV29w0y8..XHruyEplYPxYnhZJ6bC','Silver','Screech Owl','pup-logo.jpg','2019-10-02');

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

/*Data for the table `candidates` */

insert  into `candidates`(`id`,`position_id`,`firstname`,`lastname`,`photo`,`platform`) values 
(28,11,'PASS','SILVER SCREECH OWL ','passemo.jpg','Congratulations '),
(29,11,'FAILED','SILVER SCREECH OWL ','sademo.jpg','Better Luck Next Time'),
(30,12,'Emilio ','Aguinaldo','emilio.jpg','We are no longer insurgents; we are no longer revolutionists; that is to say, armed men desirous of destroying and annihilating the enemy. We are from now on Republicans; that is to say, men of law, able to fraternize with all other nations, with mutual respect and affection. There is nothing lacking, therefore, in order for us to be recognized and admitted as a free and independent nation.'),
(31,12,'Manuel L.','Quezon','manuel.jpg','We shall build a government that will be just, honest, efficient, and strong so that the foundations of the coming Republic may be firm and enduring â€“ a government, indeed, that must satisfy not only the passing needs of the hour but also the exacting demands of the future.'),
(32,12,'Jose P.','Laurel','jose.jpg','There shall be no tarrying on the way, no desertion from the ranks, no stragglers left behind. Together we shall work, work hard, work still harder, work with all our might, and work as we have never worked before.'),
(33,12,'Sergio ','OsmeÃ±a','serg.jpg','We shall, as a free and self-respecting nation, fulfill our duties not only to ourselves but also to the entire freedom-loving world by participating in the establishment and preservation of a just peace for the benefit of mankind.'),
(34,12,'Manuel A.','Roxas','manuelr.jpg','Charity and understanding must replace bitterness and anger. We cannot afford to cherish old feuds or old divisions. For the many tasks of national reconstruction, we need the thousand talents of all our people â€“ men and women alike.'),
(35,12,'Elpidio','Quirino','elpid.jpg','We cannot leave this job alone to the President and the administration. We cannot leave this job to a few individuals, to special interests and privileged classes. Least of all can we leave this to God alone. We must, one and all, as individuals and as groups, take it upon ourselves to do our part.'),
(36,12,'Ramon ','Magsaysay','ramon.jpg','We have a glorious past. Now we must build a future worthy of that past.'),
(37,12,'Carlos P.','Garcia','carlos.jpg','Together we will meet our common problems and difficulties. With the singleness of purpose together we will overcome them.\r\n'),
(38,12,'Diosdado','Macapagal','diosd.jpg','We must help bridge the wide gap between the poor man and the man of wealth, not by pulling down the rich to his level as communism desires, but by raising the poor up towards the more abundant life. This is democracyâ€™s supreme endeavor.'),
(39,12,'Ferdinand','Marcos','ferna.jpg','This nation can be great again. This I have said over and over. It is my article of faith, and Divine Providence has willed that you and I can now translate this faith into deeds.\r\n\r\nI have repeatedly told you: each generation writes its own history. Our forbears have written theirs. With fortitude and excellence we must write ours.'),
(40,12,'Corazon','Aquino','cora.jpg','We became exiles, we Filipinos who are at home only in freedom, when Marcos destroyed the Republic fourteen years ago. Now, by Godâ€™s grace and the power of the people, we are free again.'),
(41,12,'Fidel V.','Ramos','fidel.jpg','I have asked Mang Pandoy and his family to be my guests in this inaugural ceremony as proof of my resolve to obtain for families like theirs all over the country the humanities of life. Poverty we must learn to regard as another form of tyranny, and we must wage against it the moral equivalent of war.'),
(42,12,'Fidel V.','Ramos','fidel.jpg','I have asked Mang Pandoy and his family to be my guests in this inaugural ceremony as proof of my resolve to obtain for families like theirs all over the country the humanities of life. Poverty we must learn to regard as another form of tyranny, and we must wage against it the moral equivalent of war.'),
(43,12,'Joseph',' Estrada','ee.jpg','Ngayon pa lamang, ang mga kamag-anak ko ay nilalapitan na ng kung sinu-sino. Kung anu-anong deal at kickback ang ipinapangako.\r\n\r\nBinabalaan ko sila. Walang kaibigan, walang kumpare, walang kamag-anak o anak na maaaring magsamantala sa ngayon. At ngayon pa lamang sinasabi ko sa inyo, nag-aaksaya lamang kayo ng panahon. Huwag ninyo akong subukan.'),
(44,12,'Gloria Macapagal','Arroyo','gma.jpg','I shall make good and I shall do good for the good of all and not just for the cameras. The canvassing for public attention is over. I expect you to get up every day to hold me accountable, in the full glare of transparent leadership. I shall wield the power of the Presidency to uphold truth and justice.\r\n\r\nI devote my life and treasure to serving your mandate. Do your responsibility and I shall do mine. United, how can we lose? Together, we will prevail'),
(45,12,'Benigno ','Aquino III','be3.jpg','Walang lamangan, walang padrino, at walang pagnanakaw. Walang wang-wang, walang counterflow, walang tong. Panahon na upang tayo ay muling magkawang-gawa. Nandito tayo ngayon dahil sama-sama tayong nanindigan at nagtiwala na may pag-asa.\r\n\r\n(No more taking advantage, no more patronage politics, no more stealing. No sirens, no counterflow, no bribes. It is time for us to do charity again. We are here today because together we took a stand and trusted there is hope.)'),
(46,13,'Mickey','Mouse','ee.JPG','jkl'),
(47,13,'minnie','mouse','48359947_595014730919149_9130185256714895360_n.jpg','fghj');

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `log_pk` int(7) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`log_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `log` */

insert  into `log`(`log_pk`,`description`,`date`) values 
(1,'hello','2019-10-02 00:00:00');

/*Table structure for table `positions` */

DROP TABLE IF EXISTS `positions`;

CREATE TABLE `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `positions` */

insert  into `positions`(`id`,`description`,`max_vote`,`priority`) values 
(11,'TRIAL',100,2),
(12,'BEST PRESIDENT OF THE PHILIPPINES',100,1),
(13,'best subject',1,3);

/*Table structure for table `voters` */

DROP TABLE IF EXISTS `voters`;

CREATE TABLE `voters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `isChangePass` int(7) NOT NULL,
  `created_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `voters` */

insert  into `voters`(`id`,`voters_id`,`password`,`firstname`,`lastname`,`photo`,`isChangePass`,`created_on`) values 
(20,'uA7PD9lYkMmcbsw','$2y$10$7efVHkzk7z9SSefQFPRue.kGlLEjOAKhST8OccmkkZbh3Woy9bQQ6','Gerard Vincent','Tormo','',0,'2019-10-02'),
(21,'KSiY87UrcfxsIeP','$2y$10$CS.xS8l.Yz4sC4ekH/mKWOBc0bfKclrsIyFuDxEXoc7i7UhboFwTa','Zymielle','Revilla ','',0,'2019-10-02'),
(22,'qwertyy','$2y$10$9T7VMCHb5gztzxoKeTFxj.4MfWuNMwMfFKxu5m8RgBAdYaBiocFzC','Zid','Andag','doctor_strange_by_scarlettcindy-daon0ly.jpg',1,'2019-10-02'),
(23,'hello','$2y$10$ss946dDABu4woOPk7bQusePoXlmO6ju.RZpy0Goza1S7dRDZ.sVLe','new','voter','',0,'2019-10-02'),
(24,'jayvenbuyco','$2y$10$OVoY6PBnPOcawtDGmQ4zAuMr58zMsmMHpEWQgJMHor53zvSfcBP86','Jayven','Buyco','58382454_1628780550599394_7672509915214118912_n.jpg',1,'2019-10-01'),
(25,'poo','$2y$10$oHEPlSMbdI1OMAXTRh3IlOzCjDjMYxHxZg40cENEam4/zjqdpSude','poo','poo','',1,'2019-10-01'),
(26,'hellooo','$2y$10$Ja9AhMVa.wzyjEZbNfekCer2ufOMnMh0PAnfvIp3hjgxFCFRWtQMy','qwe','wee','',0,'2019-10-08'),
(27,'helloooooo','$2y$10$fx9nCmeNAWc6jGvtx9mkoeQYdORMmVuLFexFKGWzzMKfMXE1SJzSC','we','we','',0,'2019-10-08');

/*Table structure for table `votes` */

DROP TABLE IF EXISTS `votes`;

CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

/*Data for the table `votes` */

insert  into `votes`(`id`,`voters_id`,`candidate_id`,`position_id`) values 
(126,22,47,13);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
