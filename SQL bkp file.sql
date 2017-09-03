-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema brewurbeer
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ brewurbeer;
USE brewurbeer;

--
-- Table structure for table `brewurbeer`.`contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `cid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL default '',
  `email` varchar(45) NOT NULL default '',
  `msg` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brewurbeer`.`contact`
--

/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` (`cid`,`name`,`email`,`msg`) VALUES 
 (1,'rftgyhujik','dftgyhuikol','cftvgybhnjkm,l'),
 (2,'fgtyhjkl','aparna.janwalkar@gmail.com','ertfgyhnkjm,'),
 (3,'fgtyhjkl','aparna.janwalkar@gmail.com','ertfgyhnkjm,'),
 (4,'fgtyhjkl','aparna.janwalkar@gmail.com','ertfgyhnkjm,'),
 (5,'drtfgthnj','aparna.janwalkar@gmail.com','dfhbjnkm'),
 (6,'drtfgthnj','aparna.janwalkar@gmail.com','dfhbjnkm'),
 (7,'drtfgthnj','aparna.janwalkar@gmail.com','dfhbjnkm'),
 (8,'drtfgthnj','aparna.janwalkar@gmail.com','dfhbjnkm'),
 (9,'null','null','null'),
 (10,'null','null','null'),
 (11,'null','null','null'),
 (12,'null','null','null'),
 (13,'null','null','null'),
 (14,'null','null','null'),
 (15,'null','null','null'),
 (16,'null','null','null'),
 (17,'fghj','aparna.janwalkar@gmail.com','ytghjbnm '),
 (18,'ffdfgdf','aparna.janwalkar@gmail.com','gfygyjhg'),
 (19,'rfgjkl','aparna.janwalkar@gmail.com','plokhjnbv');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;


--
-- Table structure for table `brewurbeer`.`craftbeer`
--

DROP TABLE IF EXISTS `craftbeer`;
CREATE TABLE `craftbeer` (
  `cbid` int(10) unsigned NOT NULL auto_increment,
  `un` varchar(45) NOT NULL default '',
  `mash` varchar(45) NOT NULL default '',
  `flavours` varchar(45) NOT NULL default '',
  `extra` varchar(45) NOT NULL default '',
  `blogo` varchar(45) NOT NULL default '',
  `bname` varchar(45) NOT NULL default '',
  `btype` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`cbid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brewurbeer`.`craftbeer`
--

/*!40000 ALTER TABLE `craftbeer` DISABLE KEYS */;
INSERT INTO `craftbeer` (`cbid`,`un`,`mash`,`flavours`,`extra`,`blogo`,`bname`,`btype`) VALUES 
 (3,'vinayak','Wheat','English-Style Bitter','Corn Syrup','33','My Beer teasty','Clear Glass'),
 (4,'vinayak','Wheat','English-Style Bitter','Corn Syrup','22','Aparna','Black'),
 (6,'vinayak','Wheat','English-Style Bitter','Corn Syrup','44','Janu','Clear Glass');
/*!40000 ALTER TABLE `craftbeer` ENABLE KEYS */;


--
-- Table structure for table `brewurbeer`.`myorder`
--

DROP TABLE IF EXISTS `myorder`;
CREATE TABLE `myorder` (
  `orderid` int(10) unsigned NOT NULL auto_increment,
  `un` varchar(45) NOT NULL default '',
  `opdate` varchar(45) NOT NULL default '',
  `status` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brewurbeer`.`myorder`
--

/*!40000 ALTER TABLE `myorder` DISABLE KEYS */;
INSERT INTO `myorder` (`orderid`,`un`,`opdate`,`status`) VALUES 
 (1,'vinayak','2017/05/07','Order Placed'),
 (2,'vinayak','2017/05/07','Order Placed'),
 (3,'vinayak','2017/05/07','Order Placed'),
 (4,'vinayak','2017/05/07','Order Placed'),
 (5,'vinayak','2017/05/07','Order Placed'),
 (6,'vinayak','2017/05/07','Order Placed'),
 (7,'vinayak','2017/05/07','Order Placed'),
 (8,'vinayak','2017/05/07','Order Placed'),
 (9,'vinayak','2017/05/07','Order Placed'),
 (10,'vinayak','2017/05/14','Order Placed'),
 (11,'vinayak','2017/05/14','Order Placed'),
 (12,'vinayak','2017/05/14','Order Placed'),
 (13,'vinayak','2017/05/14','Order Placed'),
 (14,'vinayak','2017/05/14','Order Placed'),
 (15,'vinayak','2017/05/14','Order Placed'),
 (16,'vinayak','2017/05/14','Order Placed'),
 (17,'vinayak','2017/05/14','Order Placed'),
 (18,'vinayak','2017/05/14','Order Placed'),
 (19,'vinayak','2017/05/14','Order Placed');
/*!40000 ALTER TABLE `myorder` ENABLE KEYS */;


--
-- Table structure for table `brewurbeer`.`paymentinfo`
--

DROP TABLE IF EXISTS `paymentinfo`;
CREATE TABLE `paymentinfo` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `un` varchar(45) NOT NULL default '',
  `orderid` varchar(45) NOT NULL default '',
  `card` varchar(45) NOT NULL default '',
  `cvv` varchar(45) NOT NULL default '',
  `expdate` varchar(45) NOT NULL default '',
  `add1` varchar(45) NOT NULL default '',
  `add2` varchar(45) NOT NULL default '',
  `noncard` varchar(45) NOT NULL default '',
  `cardno` varchar(45) NOT NULL default '',
  `country` varchar(45) NOT NULL default '',
  `city` varchar(45) NOT NULL default '',
  `pincode` varchar(45) NOT NULL default '',
  `phone` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brewurbeer`.`paymentinfo`
--

/*!40000 ALTER TABLE `paymentinfo` DISABLE KEYS */;
INSERT INTO `paymentinfo` (`pid`,`un`,`orderid`,`card`,`cvv`,`expdate`,`add1`,`add2`,`noncard`,`cardno`,`country`,`city`,`pincode`,`phone`) VALUES 
 (1,'vinayak','2','Master','123','2017-12-06','dgfhbjnm','rtfghbjnkm','Neil Gallegher','9874563210123654','Ireland','fgvhbjnkm','987456','9874563210'),
 (2,'vinayak','3','Master','123','2017-05-25','GFFYHFJ','JYFYTGFJY','Vinayak S','9874563214','IndiA','pUNE','123654','98745631'),
 (3,'vinayak','4','Visa','123','2017-05-25','PUNE','PUNE','Neil Gallegher','987456666666','Ireland','pUNE','987456','9874563210'),
 (4,'vinayak','5','Master','123','2017-05-25','yjhgujhg','yjgmjhg,kjh','Neil Gallegher','87455584545','Ireland','ygjgujgh','987456','9874563210'),
 (5,'vinayak','6','Visa','123','2017-05-10','kjmnb ',' po;lk,mjnb ','Neil Gallegher','858585855','Ireland',';lknbv','123654','9874563210'),
 (6,'vinayak','7','Master','123','2017-06-01','dcfghjkm,l','dcfgvhbnjkm,l','scfgvhnjmk,l.','23456789034567','fgvhbnjkm,l.','dfghbnjkm,l','234533','23456789'),
 (7,'vinayak','8','null','null','null','null','null','null','null','null','null','null','null');
INSERT INTO `paymentinfo` (`pid`,`un`,`orderid`,`card`,`cvv`,`expdate`,`add1`,`add2`,`noncard`,`cardno`,`country`,`city`,`pincode`,`phone`) VALUES 
 (8,'vinayak','9','Master','151','2017-05-24','dfghbnjmk','dftgvhbnjmk','Neil Gallegher','1234567890','Ireland','dcfgvbhn','345678','34567890'),
 (9,'vinayak','10','Master','123','2017-05-09','sxdcfgvhnjm','sxdcfgvbhnjkm','wertyuio','1234567890','sedfgvhnjmk','sdfghjk','123456','1234567890'),
 (10,'vinayak','11','null','null','null','null','null','null','null','null','null','null','null'),
 (11,'vinayak','12','null','null','null','null','null','null','null','null','null','null','null'),
 (12,'vinayak','13','null','null','null','null','null','null','null','null','null','null','null'),
 (13,'vinayak','14','null','null','null','null','null','null','null','null','null','null','null'),
 (14,'vinayak','15','null','null','null','null','null','null','null','null','null','null','null'),
 (15,'vinayak','16','null','null','null','null','null','null','null','null','null','null','null'),
 (16,'vinayak','17','null','null','null','null','null','null','null','null','null','null','null');
INSERT INTO `paymentinfo` (`pid`,`un`,`orderid`,`card`,`cvv`,`expdate`,`add1`,`add2`,`noncard`,`cardno`,`country`,`city`,`pincode`,`phone`) VALUES 
 (17,'vinayak','18','null','null','null','null','null','null','null','null','null','null','null'),
 (18,'vinayak','19','null','null','null','null','null','null','null','null','null','null','null');
/*!40000 ALTER TABLE `paymentinfo` ENABLE KEYS */;


--
-- Table structure for table `brewurbeer`.`purchaseproduct`
--

DROP TABLE IF EXISTS `purchaseproduct`;
CREATE TABLE `purchaseproduct` (
  `pu_p_id` int(10) unsigned NOT NULL auto_increment,
  `cbid` varchar(45) NOT NULL default '',
  `quantity` varchar(45) NOT NULL default '',
  `price` varchar(45) NOT NULL default '',
  `orderid` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`pu_p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brewurbeer`.`purchaseproduct`
--

/*!40000 ALTER TABLE `purchaseproduct` DISABLE KEYS */;
INSERT INTO `purchaseproduct` (`pu_p_id`,`cbid`,`quantity`,`price`,`orderid`) VALUES 
 (1,'2','10','100','2'),
 (2,'3','5','50','2'),
 (3,'4','10','100','3'),
 (4,'5','9','90','4'),
 (5,'4','10','100','5'),
 (6,'4','10','100','6'),
 (7,'6','5','50','7'),
 (8,'2','1','10','9'),
 (9,'3','15','150','10');
/*!40000 ALTER TABLE `purchaseproduct` ENABLE KEYS */;


--
-- Table structure for table `brewurbeer`.`signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE `signup` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL default '',
  `address` varchar(45) NOT NULL default '',
  `phone` varchar(45) NOT NULL default '',
  `email` varchar(45) NOT NULL default '',
  `dob` varchar(45) NOT NULL default '',
  `gender` varchar(45) NOT NULL default '',
  `username` varchar(45) NOT NULL default '',
  `password` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brewurbeer`.`signup`
--

/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` (`id`,`name`,`address`,`phone`,`email`,`dob`,`gender`,`username`,`password`) VALUES 
 (1,'Vinayak Shinde','pune','9874563210','vinayak@gmail.com','1980-05-02','Male','vinayak','vinayak'),
 (2,'Neil','Ireland','9874563210','N@N.com','1980-05-20','Male','neilgallagher','neilgallagher');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
