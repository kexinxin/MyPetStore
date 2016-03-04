/*
Navicat MySQL Data Transfer

Source Server         : myaql
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : mypetstore

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2015-06-10 23:27:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `userid` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `addr1` varchar(80) NOT NULL,
  `addr2` varchar(40) DEFAULT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(80) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(80) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '1', '1', '1', null, '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `account` VALUES ('1212', '1212', '1', '2', null, '1212', '1212', '1212', '1212', '1212', '1212', '1212');
INSERT INTO `account` VALUES ('12121', '1212', '1212', '1212', null, '1212', '1212', '1212', '1212', '1212', '1212', '1212');
INSERT INTO `account` VALUES ('13', '13', '13', '13', null, '13', '13', '13', '13', '13', '13', '13');
INSERT INTO `account` VALUES ('15', '15', '15', '15', '15', '15', '15', '15', '15', '15', '15', '15');
INSERT INTO `account` VALUES ('2', '2', '2', '2', null, '2', '2', '2', '2', '2', '2', '2');
INSERT INTO `account` VALUES ('3', '3', '3', '3', null, '3', '3', '3', '3', '3', '3', '3');
INSERT INTO `account` VALUES ('4', '4', '4', '4', null, '4', '4', '4', '4', '4', '4', '4');
INSERT INTO `account` VALUES ('45', '45', '45', '45', null, '45', '45', '45', '45', '45', '45', '45');
INSERT INTO `account` VALUES ('6', '6', '6', '6', null, '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `account` VALUES ('a', 'a', 'a', 'a', null, 'a', 'a', 'aa', 'a', 'a', 'a', 'a');
INSERT INTO `account` VALUES ('ACID', 'acid@yourdomain.com', 'ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('j2ee', 'yourname@yourdomain.com', 'ABCD', 'XYX---', null, '901', 'MS', 'Palo', 'CA', '94303', 'USA', '555-555-5555');

-- ----------------------------
-- Table structure for bannerdata
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata` (
  `favcategory` varchar(80) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
INSERT INTO `bannerdata` VALUES ('BIRDS', '<image src=\"../images/banner_birds.gif\">');
INSERT INTO `bannerdata` VALUES ('CATS', '<image src=\"../images/banner_cats.gif\">');
INSERT INTO `bannerdata` VALUES ('DOGS', '<image src=\"../images/banner_dogs.gif\">');
INSERT INTO `bannerdata` VALUES ('FISH', '<image src=\"../images/banner_fish.gif\">');
INSERT INTO `bannerdata` VALUES ('REPTILES', '<image src=\"../images/banner_reptiles.gif\">');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `itemid` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('EST-1', '10000');
INSERT INTO `inventory` VALUES ('EST-10', '9988');
INSERT INTO `inventory` VALUES ('EST-11', '9975');
INSERT INTO `inventory` VALUES ('EST-12', '9985');
INSERT INTO `inventory` VALUES ('EST-13', '9968');
INSERT INTO `inventory` VALUES ('EST-14', '10000');
INSERT INTO `inventory` VALUES ('EST-15', '9999');
INSERT INTO `inventory` VALUES ('EST-16', '9976');
INSERT INTO `inventory` VALUES ('EST-17', '10000');
INSERT INTO `inventory` VALUES ('EST-18', '9998');
INSERT INTO `inventory` VALUES ('EST-19', '9999');
INSERT INTO `inventory` VALUES ('EST-2', '9990');
INSERT INTO `inventory` VALUES ('EST-20', '9994');
INSERT INTO `inventory` VALUES ('EST-21', '10000');
INSERT INTO `inventory` VALUES ('EST-22', '10000');
INSERT INTO `inventory` VALUES ('EST-23', '10000');
INSERT INTO `inventory` VALUES ('EST-24', '10000');
INSERT INTO `inventory` VALUES ('EST-25', '10000');
INSERT INTO `inventory` VALUES ('EST-26', '9998');
INSERT INTO `inventory` VALUES ('EST-27', '9997');
INSERT INTO `inventory` VALUES ('EST-28', '9998');
INSERT INTO `inventory` VALUES ('EST-3', '9999');
INSERT INTO `inventory` VALUES ('EST-4', '9998');
INSERT INTO `inventory` VALUES ('EST-5', '10000');
INSERT INTO `inventory` VALUES ('EST-6', '9910');
INSERT INTO `inventory` VALUES ('EST-7', '9998');
INSERT INTO `inventory` VALUES ('EST-8', '9987');
INSERT INTO `inventory` VALUES ('EST-9', '10000');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_item_2` (`supplier`),
  KEY `itemProd` (`productid`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', '16.50', '10.00', '1', 'P', 'Large', null, null, null, null);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', '18.50', '12.00', '1', 'P', 'Spotted Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', '18.50', '12.00', '1', 'P', 'Venomless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', '18.50', '12.00', '1', 'P', 'Rattleless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', '18.50', '12.00', '1', 'P', 'Green Adult', null, null, null, null);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', '58.50', '12.00', '1', 'P', 'Tailless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', '23.50', '12.00', '1', 'P', 'With tail', null, null, null, null);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', '93.50', '12.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', '93.50', '12.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', '193.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', '15.50', '2.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', '16.50', '10.00', '1', 'P', 'Small', null, null, null, null);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', '5.50', '2.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', '5.29', '1.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', '135.50', '100.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', '145.49', '100.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', '255.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', '325.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', '125.50', '92.00', '1', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', '155.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', '155.29', '90.00', '1', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', '18.50', '12.00', '1', 'P', 'Toothless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', '18.50', '12.00', '1', 'P', 'Spotted', null, null, null, null);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', '18.50', '12.00', '1', 'P', 'Spotless', null, null, null, null);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', '18.50', '12.00', '1', 'P', 'Male Adult', null, null, null, null);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', '18.50', '12.00', '1', 'P', 'Female Puppy', null, null, null, null);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', '18.50', '12.00', '1', 'P', 'Male Puppy', null, null, null, null);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', '18.50', '12.00', '1', 'P', 'Spotless Male Puppy', null, null, null, null);

-- ----------------------------
-- Table structure for lineitem
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lineitem
-- ----------------------------
INSERT INTO `lineitem` VALUES ('1000', '1', 'EST-4', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1000', '2', 'EST-11', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1001', '1', 'EST-10', '10', '18.50');
INSERT INTO `lineitem` VALUES ('1002', '1', 'EST-12', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1003', '1', 'EST-27', '1', '155.29');
INSERT INTO `lineitem` VALUES ('1004', '1', 'EST-3', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1005', '1', 'EST-10', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1006', '1', 'EST-27', '1', '155.29');
INSERT INTO `lineitem` VALUES ('1006', '2', 'EST-8', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1007', '1', 'EST-19', '1', '15.50');
INSERT INTO `lineitem` VALUES ('1008', '1', 'EST-28', '1', '155.29');
INSERT INTO `lineitem` VALUES ('1009', '1', 'EST-11', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1010', '1', 'EST-26', '1', '125.50');
INSERT INTO `lineitem` VALUES ('1011', '1', 'EST-13', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1011', '2', 'EST-28', '1', '155.29');
INSERT INTO `lineitem` VALUES ('1012', '1', 'EST-11', '10', '18.50');
INSERT INTO `lineitem` VALUES ('1013', '1', 'EST-11', '13', '18.50');
INSERT INTO `lineitem` VALUES ('1014', '1', 'EST-13', '12', '18.50');
INSERT INTO `lineitem` VALUES ('1015', '1', 'EST-15', '1', '23.50');
INSERT INTO `lineitem` VALUES ('1016', '1', 'EST-6', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1017', '1', 'EST-13', '3', '18.50');
INSERT INTO `lineitem` VALUES ('1018', '1', 'EST-27', '1', '155.29');
INSERT INTO `lineitem` VALUES ('1019', '1', 'EST-12', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1020', '1', 'EST-13', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1021', '1', 'EST-2', '10', '16.50');
INSERT INTO `lineitem` VALUES ('1022', '1', 'EST-8', '12', '18.50');
INSERT INTO `lineitem` VALUES ('1022', '2', 'EST-6', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1023', '1', 'EST-13', '13', '18.50');
INSERT INTO `lineitem` VALUES ('1024', '1', 'EST-6', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1025', '1', 'EST-12', '12', '18.50');
INSERT INTO `lineitem` VALUES ('1025', '2', 'EST-18', '1', '193.50');
INSERT INTO `lineitem` VALUES ('1026', '1', 'EST-13', '13', '18.50');
INSERT INTO `lineitem` VALUES ('1026', '2', 'EST-10', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1027', '1', 'EST-13', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1028', '1', 'EST-26', '1', '125.50');
INSERT INTO `lineitem` VALUES ('1028', '2', 'EST-28', '1', '155.29');
INSERT INTO `lineitem` VALUES ('1029', '1', 'EST-18', '14', '193.50');
INSERT INTO `lineitem` VALUES ('1030', '1', 'EST-20', '1', '5.50');
INSERT INTO `lineitem` VALUES ('1030', '2', 'EST-10', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1031', '1', 'EST-6', '13', '18.50');
INSERT INTO `lineitem` VALUES ('1032', '1', 'EST-6', '13', '18.50');
INSERT INTO `lineitem` VALUES ('1032', '2', 'EST-6', '15', '18.50');
INSERT INTO `lineitem` VALUES ('1033', '1', 'EST-6', '13', '18.50');
INSERT INTO `lineitem` VALUES ('1033', '2', 'EST-6', '15', '18.50');
INSERT INTO `lineitem` VALUES ('1033', '3', 'EST-6', '15', '18.50');
INSERT INTO `lineitem` VALUES ('1034', '1', 'EST-12', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1034', '2', 'EST-16', '12', '93.50');
INSERT INTO `lineitem` VALUES ('1034', '3', 'EST-16', '12', '93.50');
INSERT INTO `lineitem` VALUES ('1034', '4', 'EST-18', '1', '193.50');
INSERT INTO `lineitem` VALUES ('1034', '5', 'EST-20', '1', '5.50');
INSERT INTO `lineitem` VALUES ('1034', '6', 'EST-20', '1', '5.50');
INSERT INTO `lineitem` VALUES ('1034', '7', 'EST-20', '1', '5.50');
INSERT INTO `lineitem` VALUES ('1034', '8', 'EST-7', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1034', '9', 'EST-7', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1035', '1', 'EST-6', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1035', '2', 'EST-4', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1036', '1', 'EST-13', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1036', '2', 'EST-26', '1', '125.50');
INSERT INTO `lineitem` VALUES ('1037', '1', 'EST-6', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1038', '1', 'EST-6', '1', '18.50');
INSERT INTO `lineitem` VALUES ('1039', '1', 'EST-20', '1', '5.50');
INSERT INTO `lineitem` VALUES ('1040', '1', 'EST-20', '1', '5.50');
INSERT INTO `lineitem` VALUES ('1041', '1', 'EST-13', '1', '18.50');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `logname` varchar(15) DEFAULT NULL,
  `logdate` varchar(25) DEFAULT NULL,
  `action` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('j2ee', '10 Jun 2015 14:44:38 GMT', '登陆');
INSERT INTO `log` VALUES ('j2ee', '10 Jun 2015 14:45:31 GMT', '登陆');
INSERT INTO `log` VALUES ('j2ee', '10 Jun 2015 14:47:15 GMT', '登陆');
INSERT INTO `log` VALUES ('j2ee', '10 Jun 2015 14:47:19 GMT', '登出');
INSERT INTO `log` VALUES ('j2ee', '10 Jun 2015 14:52:35 GMT', '登陆');
INSERT INTO `log` VALUES ('2', '10 Jun 2015 15:00:06 GMT', '登陆');
INSERT INTO `log` VALUES ('2', '10 Jun 2015 15:01:46 GMT', '登出');
INSERT INTO `log` VALUES ('j2ee', '10 Jun 2015 15:03:03 GMT', '登出');
INSERT INTO `log` VALUES ('j2ee', '10 Jun 2015 15:03:11 GMT', '登陆');
INSERT INTO `log` VALUES ('j2ee', '10 Jun 2015 15:03:31 GMT', '登出');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `userid` varchar(80) NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) NOT NULL,
  `shipaddr2` varchar(80) DEFAULT NULL,
  `shipcity` varchar(80) NOT NULL,
  `shipstate` varchar(80) NOT NULL,
  `shipzip` varchar(20) NOT NULL,
  `shipcountry` varchar(20) NOT NULL,
  `billaddr1` varchar(80) NOT NULL,
  `billaddr2` varchar(80) DEFAULT NULL,
  `billcity` varchar(80) NOT NULL,
  `billstate` varchar(80) NOT NULL,
  `billzip` varchar(20) NOT NULL,
  `billcountry` varchar(20) NOT NULL,
  `courier` varchar(80) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `billtofirstname` varchar(80) NOT NULL,
  `billtolastname` varchar(80) NOT NULL,
  `shiptofirstname` varchar(80) NOT NULL,
  `shiptolastname` varchar(80) NOT NULL,
  `creditcard` varchar(80) NOT NULL,
  `exprdate` varchar(7) NOT NULL,
  `cardtype` varchar(80) NOT NULL,
  `locale` varchar(80) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1000', 'j2ee', '2015-05-16', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '37.00', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1001', 'j2ee', '2015-05-16', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '185.00', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'American Express', 'CA');
INSERT INTO `orders` VALUES ('1002', 'j2ee', '2015-05-16', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1003', 'j2ee', '2015-05-16', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '155.29', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1004', 'j2ee', '2015-05-16', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1005', 'j2ee', '2015-05-16', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1006', 'j2ee', '2015-05-16', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '173.79', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1007', 'j2ee', '2015-05-16', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', '15.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1008', 'j2ee', '2015-05-16', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '155.29', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1009', 'j2ee', '2015-05-16', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1010', 'j2ee', '2015-05-16', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '125.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1011', 'j2ee', '2015-05-16', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '173.79', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1012', 'j2ee', '2015-05-16', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '185.00', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1013', 'j2ee', '2015-05-16', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '240.50', 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1014', '13', '2015-05-16', '13', '13', '1', '13', '13', '13', '13', '13', '13', '13', '13', '13', 'UPS', '222.00', '13', '13', '13', '13', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1015', '13', '2015-05-16', '13', '13', '13', '13', '13', '13', '13', '13', '13', '13', '13', '13', 'UPS', '23.50', '13', '13', '13', '13', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1016', 'j2ee', '2015-05-24', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1017', 'j2ee', '2015-05-24', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '55.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1018', 'j2ee', '2015-05-24', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '155.29', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1019', 'j2ee', '2015-05-24', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1020', 'j2ee', '2015-05-24', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1021', 'j2ee', '2015-05-24', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '165.00', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1022', 'j2ee', '2015-05-24', '901', 'MS', 'Palo', 'CA', '943', 'USA', '901', 'MS', 'Palo', 'CA', '943', 'USA', 'UPS', '240.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1023', 'j2ee', '2015-05-24', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '240.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1024', 'j2ee', '2015-05-28', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1025', 'j2ee', '2015-05-28', '901', 'MS', 'Palo', 'CAs', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '415.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1026', 'j2ee', '2015-05-30', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '259.00', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1027', 'j2ee', '2015-05-30', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1028', '6', '2015-05-30', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', 'UPS', '280.79', '6', '6', '6', '6', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1029', 'j2ee', '2015-05-30', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '2709.00', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1030', 'j2ee', '2015-06-01', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '24.00', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1031', 'j2ee', '2015-06-01', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '240.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1032', 'j2ee', '2015-06-02', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '277.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1033', 'j2ee', '2015-06-02', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '277.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1034', 'j2ee', '2015-06-10', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1035', 'j2ee', '2015-06-10', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1036', 'j2ee', '2015-06-10', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '125.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1037', 'j2ee', '2015-06-10', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1038', 'j2ee', '2015-06-10', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1039', 'j2ee', '2015-06-10', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '5.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1040', 'j2ee', '2015-06-10', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '5.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES ('1041', 'j2ee', '2015-06-10', '901', 'MS', 'Palo', 'CA', '94303', 'USA', '901', 'MS', 'Palo', 'CA', '94303', 'USA', 'UPS', '18.50', 'ABCD', 'XYX---', 'ABCD', 'XYX---', '999 9999 9999 9999', '12/03', 'Visa', 'CA');

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
INSERT INTO `orderstatus` VALUES ('1000', '1000', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1001', '1001', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1002', '1002', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1003', '1003', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1004', '1004', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1005', '1005', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1006', '1006', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1007', '1007', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1008', '1008', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1009', '1009', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1010', '1010', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1011', '1011', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1012', '1012', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1013', '1013', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1014', '1014', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1015', '1015', '2015-05-16', 'P');
INSERT INTO `orderstatus` VALUES ('1016', '1016', '2015-05-24', 'P');
INSERT INTO `orderstatus` VALUES ('1017', '1017', '2015-05-24', 'P');
INSERT INTO `orderstatus` VALUES ('1018', '1018', '2015-05-24', 'P');
INSERT INTO `orderstatus` VALUES ('1019', '1019', '2015-05-24', 'P');
INSERT INTO `orderstatus` VALUES ('1020', '1020', '2015-05-24', 'P');
INSERT INTO `orderstatus` VALUES ('1021', '1021', '2015-05-24', 'P');
INSERT INTO `orderstatus` VALUES ('1022', '1022', '2015-05-24', 'P');
INSERT INTO `orderstatus` VALUES ('1023', '1023', '2015-05-24', 'P');
INSERT INTO `orderstatus` VALUES ('1024', '1024', '2015-05-28', 'P');
INSERT INTO `orderstatus` VALUES ('1025', '1025', '2015-05-28', 'P');
INSERT INTO `orderstatus` VALUES ('1026', '1026', '2015-05-30', 'P');
INSERT INTO `orderstatus` VALUES ('1027', '1027', '2015-05-30', 'P');
INSERT INTO `orderstatus` VALUES ('1028', '1028', '2015-05-30', 'P');
INSERT INTO `orderstatus` VALUES ('1029', '1029', '2015-05-30', 'P');
INSERT INTO `orderstatus` VALUES ('1030', '1030', '2015-06-01', 'P');
INSERT INTO `orderstatus` VALUES ('1031', '1031', '2015-06-01', 'P');
INSERT INTO `orderstatus` VALUES ('1032', '1032', '2015-06-02', 'P');
INSERT INTO `orderstatus` VALUES ('1033', '1033', '2015-06-02', 'P');
INSERT INTO `orderstatus` VALUES ('1034', '1034', '2015-06-10', 'P');
INSERT INTO `orderstatus` VALUES ('1035', '1035', '2015-06-10', 'P');
INSERT INTO `orderstatus` VALUES ('1036', '1036', '2015-06-10', 'P');
INSERT INTO `orderstatus` VALUES ('1037', '1037', '2015-06-10', 'P');
INSERT INTO `orderstatus` VALUES ('1038', '1038', '2015-06-10', 'P');
INSERT INTO `orderstatus` VALUES ('1039', '1039', '2015-06-10', 'P');
INSERT INTO `orderstatus` VALUES ('1040', '1040', '2015-06-10', 'P');
INSERT INTO `orderstatus` VALUES ('1041', '1041', '2015-06-10', 'P');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  `descn1` varchar(255) DEFAULT NULL,
  `descn2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `productCat` (`category`),
  KEY `productName` (`name`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', '<image src=\"images/bird2.gif\">Great companion for up to 75 years', 'images/bird2.gif', 'Great companion for up to 75 years');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', '<image src=\"images/bird1.gif\">Great stress reliever', 'images/bird1.gif', 'Great stress reliever');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', '<image src=\"images/fish3.gif\">Fresh Water fish from Japan', 'images/fish3.gif', 'Fresh Water fish from Japan');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', '<image src=\"images/fish2.gif\">Fresh Water fish from China', 'images/fish2.gif', 'Fresh Water fish from China');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', '<image src=\"images/fish1.gif\">Salt Water fish from Australia', 'images/fish1.gif', 'Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', '<image src=\"images/fish4.gif\">Salt Water fish from Australia', 'images/fish4.gif', 'Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', '<image src=\"images/cat1.gif\">Friendly house cat, doubles as a princess', 'images/cat1.gif', 'Friendly house cat, doubles as a princess');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', '<image src=\"images/cat2.gif\">Great for reducing mouse populations', 'images/cat2.gif', 'Great for reducing mouse populations');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', '<image src=\"images/dog2.gif\">Friendly dog from England', 'images/dog2.gif', 'Friendly dog from England');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', '<image src=\"images/dog4.gif\">Great companion dog', 'images/dog4.gif', 'Great companion dog');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', '<image src=\"images/dog3.gif\">Great dog for a Fire Station', 'images/dog3.gif', 'Great dog for a Fire Station');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', '<image src=\"images/dog6.gif\">Cute dog from France', 'images/dog6.gif', 'Cute dog from France');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', '<image src=\"images/dog1.gif\">Great family dog', 'images/dog1.gif', 'Great family dog');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', '<image src=\"images/dog5.gif\">Great hunting dog', 'images/dog5.gif', 'Great hunting dog');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', '<image src=\"images/lizard1.gif\">Friendly green friend', 'images/lizard1.gif', 'Friendly green friend');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', '<image src=\"images/snake1.gif\">Doubles as a watch dog', 'images/snake1.gi', 'Doubles as a watch dog');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `userid` varchar(80) NOT NULL,
  `langpref` varchar(80) NOT NULL,
  `favcategory` varchar(30) DEFAULT NULL,
  `mylistopt` tinyint(1) DEFAULT NULL,
  `banneropt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', 'japanese', 'FISH', null, null);
INSERT INTO `profile` VALUES ('1212', 'english', 'FISH', null, null);
INSERT INTO `profile` VALUES ('12121', 'english', 'FISH', null, null);
INSERT INTO `profile` VALUES ('13', 'english', 'FISH', null, null);
INSERT INTO `profile` VALUES ('15', '15', '14', null, null);
INSERT INTO `profile` VALUES ('2', 'japanese', 'FISH', null, null);
INSERT INTO `profile` VALUES ('3', 'japanese', 'FISH', null, null);
INSERT INTO `profile` VALUES ('4', 'japanese', 'FISH', null, null);
INSERT INTO `profile` VALUES ('45', 'japanese', 'FISH', null, null);
INSERT INTO `profile` VALUES ('6', 'japanese', 'FISH', null, null);
INSERT INTO `profile` VALUES ('a', 'japanese', 'DOGS', null, null);
INSERT INTO `profile` VALUES ('ACID', 'english', 'CATS', '1', '1');
INSERT INTO `profile` VALUES ('j2ee', 'japanese', 'FISH', '1', '1');

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `name` varchar(30) NOT NULL,
  `nextid` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('linenum', '1000');
INSERT INTO `sequence` VALUES ('ordernum', '1042');

-- ----------------------------
-- Table structure for signon
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signon
-- ----------------------------
INSERT INTO `signon` VALUES ('1', '1');
INSERT INTO `signon` VALUES ('1212', '1111');
INSERT INTO `signon` VALUES ('12121', '12121');
INSERT INTO `signon` VALUES ('13', '14');
INSERT INTO `signon` VALUES ('15', '15');
INSERT INTO `signon` VALUES ('2', '2');
INSERT INTO `signon` VALUES ('3', '3');
INSERT INTO `signon` VALUES ('4', '4');
INSERT INTO `signon` VALUES ('45', '45');
INSERT INTO `signon` VALUES ('6', '6');
INSERT INTO `signon` VALUES ('a', 'a');
INSERT INTO `signon` VALUES ('ACID', 'ACID');
INSERT INTO `signon` VALUES ('j2ee', 'j2ee');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `addr1` varchar(80) DEFAULT NULL,
  `addr2` varchar(80) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES ('2', 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');
