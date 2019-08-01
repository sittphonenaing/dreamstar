DROP TABLE IF EXISTS asset_archive;

CREATE TABLE `asset_archive` (
  `productID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS audit_trail;

CREATE TABLE `audit_trail` (
  `KeyID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Date_time` varchar(50) NOT NULL,
  `Outcome` varchar(20) NOT NULL,
  `Detail` varchar(250) NOT NULL,
  PRIMARY KEY (`KeyID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

INSERT INTO audit_trail VALUES("1","3","JULIUS_ADS","August 26, 2015 12:51:pm  ","Updated","name=PROMO FOR The Day, detail=Updated, date=August 26, 2015 12:51:pm  , place=JRU121231 where announcementID=2 Updated");
INSERT INTO audit_trail VALUES("2","3","JULIUS_ADS","August 26, 2015 12:51:pm  ","Updated","name=PROMO FOR The Day, detail=Updated, date=August 26, 2015 12:51:pm  , place=JRU121231 where announcementID=2 Updated");
INSERT INTO audit_trail VALUES("3","3","JULIUS_ADS","August 26, 2015 12:54:pm  ","Updated","name=PROMO FOR The Day, detail=Updated, date=August 26, 2015 12:54:pm  , place=JRU121231 where announcementID=2 Updated");
INSERT INTO audit_trail VALUES("4","4","DAVIS_SERVER","August 26, 2015 12:55:pm  ","Updated","name=PROMO FOR The Day, detail=Updated, date=August 26, 2015 12:55:pm  , place=JRU121231 where announcementID=2 Updated");
INSERT INTO audit_trail VALUES("5","4","DAVIS_SERVER","August 26, 2015 2:26:pm  ","Inserted","Name= ksjfsdf was added to product ");
INSERT INTO audit_trail VALUES("6","4","DAVIS_SERVER","August 26, 2015 2:27:pm  ","Updated","ID= 1, name= Professional Standard Box Camera , price= Php 8,000.00, details= Updated, quantity= 0 was Updated");
INSERT INTO audit_trail VALUES("7","4","DAVIS_SERVER","August 26, 2015 2:45:pm  ","Updated","ID= 6, name= ksjfsdf, price= Php 1,000.00, details= Updated, quantity= 100 was Updated");
INSERT INTO audit_trail VALUES("8","4","DAVIS_SERVER","August 28, 2015 12:53:am  ","Deleted","CustomerID 1Name Richmon Sabello was permanently deleted!");
INSERT INTO audit_trail VALUES("9","4","DAVIS_SERVER","August 28, 2015 12:56:am  ","Deleted","Message of CustomerID 1 Name Richmon Sabello was permanently deleted!");
INSERT INTO audit_trail VALUES("10","4","DAVIS_SERVER","August 28, 2015 12:58:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("11","4","DAVIS_SERVER","August 28, 2015 5:53:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("12","0","","August 28, 2015 6:02:pm  ","Deleted","CustomerID 3 Name Julius Felicen Message was deleted!");
INSERT INTO audit_trail VALUES("13","0","","August 28, 2015 7:39:pm  ","Deleted","CustomerID 3 Name Julius Felicen Message was deleted!");
INSERT INTO audit_trail VALUES("14","0","","August 28, 2015 7:39:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("15","0","","August 28, 2015 7:39:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("16","0","","August 28, 2015 7:40:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("17","0","","August 28, 2015 7:40:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("18","0","","August 28, 2015 7:40:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("19","0","","August 28, 2015 7:40:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("20","0","","August 28, 2015 7:40:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("21","0","","August 28, 2015 7:40:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("22","0","","August 28, 2015 7:40:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("23","0","","August 28, 2015 7:40:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("24","0","","August 28, 2015 7:40:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("25","0","","August 28, 2015 7:59:pm  ","Deleted","CustomerID 0 Name Julius Felicen Message was deleted!");
INSERT INTO audit_trail VALUES("26","4","DAVIS_SERVER","August 28, 2015 8:05:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("27","0","","August 28, 2015 8:06:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("28","3","JULIUS_ADS","August 28, 2015 8:07:pm  ","Deleted","CustomerID 3 Name Julius Felicen Message was deleted!");
INSERT INTO audit_trail VALUES("29","0","","August 28, 2015 8:08:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("30","3","JULIUS_ADS","August 28, 2015 8:10:pm  ","Deleted","CustomerID 0 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("31","3","JULIUS_ADS","August 28, 2015 8:10:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("32","4","DAVIS_SERVER","August 28, 2015 8:25:pm  ","Deleted","CustomerID 0 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("33","3","JULIUS_ADS","August 29, 2015 3:03:pm  ","Deleted","CustomerID 0 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("34","3","JULIUS_ADS","August 29, 2015 4:47:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("35","3","JULIUS_ADS","August 29, 2015 4:47:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("36","3","JULIUS_ADS","August 29, 2015 4:47:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("37","3","JULIUS_ADS","August 29, 2015 4:47:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("38","3","JULIUS_ADS","August 29, 2015 4:47:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("39","3","JULIUS_ADS","August 29, 2015 4:47:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("40","3","JULIUS_ADS","August 29, 2015 4:47:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("41","2","LEO_AS","August 29, 2015 10:36:pm  ","Updated","ID= 1, name= Professional Standard Box Camera , price= Php 8,000.00, details= Updated, quantity= 100 was Updated");
INSERT INTO audit_trail VALUES("42","2","LEO_AS","August 29, 2015 10:36:pm  ","Updated","ID= 3, name= KD-DW36RD48 IP Outdoor N.V Camera Wired/ Wireless, price= Php 5,200.00, details= Updated, quantity= 100 was Updated");
INSERT INTO audit_trail VALUES("43","2","LEO_AS","August 29, 2015 10:37:pm  ","Deleted","Product ID 6 was permanently deleted!");


DROP TABLE IF EXISTS backup_dbname;

CREATE TABLE `backup_dbname` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO backup_dbname VALUES("1","backup_Data_08-12-2015","August 12, 2015 3:54:pm  ");


DROP TABLE IF EXISTS comment;

CREATE TABLE `comment` (
  `Num` int(11) NOT NULL AUTO_INCREMENT,
  `announcementID` int(11) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `date_posted` varchar(250) NOT NULL,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO comment VALUES("1","1","hi","1","1440416098");
INSERT INTO comment VALUES("2","1","hi","1","1440416113");
INSERT INTO comment VALUES("3","1","hello","1","1440417603");
INSERT INTO comment VALUES("4","1","GWAPO SI SABELLO","3","1440417672");
INSERT INTO comment VALUES("5","2","Tsuna","1","1440429300");
INSERT INTO comment VALUES("6","1","hello\n","1","1440484223");
INSERT INTO comment VALUES("7","1","PANGIT SI felicen","4","1440485261");
INSERT INTO comment VALUES("8","3","hi","1","1440488076");


DROP TABLE IF EXISTS customer_archive;

CREATE TABLE `customer_archive` (
  `CustomerID` int(11) NOT NULL,
  `Firstname` char(50) NOT NULL,
  `Middle_name` char(50) NOT NULL,
  `Lastname` char(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_number` varchar(50) NOT NULL,
  `Gender` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS customers;

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` char(50) NOT NULL,
  `Middle_name` char(50) NOT NULL,
  `Lastname` char(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_number` varchar(50) NOT NULL,
  `Gender` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO customers VALUES("1","Richmon","Bardon","Sabello","1995-09-15","522A Sen. Neptali Gonzales St. San Jose, Sitio IV, Mandaluyong City","Mandaluyong City","09434138521","Male","sabellorichmon@yahoo.com","11a00f3677902d1dec0aeccacc16d464","August 5, 2015 11:34:pm  ");
INSERT INTO customers VALUES("2","Benjie","Ilano","Alfanta","1995-11-30","Pureza st. sta mesa manila","Manila City","09364987102","Male","benjiealfanta@yahoo.com","a432fa61bf0d91ad0c3d2b26ae8ace94","August 5, 2015 11:35:pm  ");
INSERT INTO customers VALUES("3","Julius","Dela pena","Felicen","1995-07-31","Flood way black 1","Taytay Rizal","09109223103","Male","juliusfelicen@yahoo.com","fb154fdee061037d6f6bcec2eecfe688","August 12, 2015 4:07:pm  ");
INSERT INTO customers VALUES("4","Leo","Bonife","Aranzamendez","1995-09-29","369 Wayan,Palali","Manila City","09364987102","Male","itchigo.aranzamendez@yahoo.com","8eef495e2875ec79e82dd886e58f26bd","August 12, 2015 4:08:pm  ");
INSERT INTO customers VALUES("5","Allan","Carada","Aparis","1974-12-27","17 edsa","Mandaluyong City","5715693","Male","aa2000ent@gmail.com","dfc91587736b342423abefd7a2328de4","August 26, 2015 2:14:pm  ");


DROP TABLE IF EXISTS loginout_history;

CREATE TABLE `loginout_history` (
  `Primary` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS loginout_serverhistory;

CREATE TABLE `loginout_serverhistory` (
  `Primary` int(11) NOT NULL AUTO_INCREMENT,
  `AdminID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS message;

CREATE TABLE `message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS notif;

CREATE TABLE `notif` (
  `notifID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_ordered` date NOT NULL,
  PRIMARY KEY (`notifID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO notif VALUES("1","1","Seen","2015-08-24");
INSERT INTO notif VALUES("2","2","Seen","2015-08-26");
INSERT INTO notif VALUES("3","3","Seen","2015-08-26");
INSERT INTO notif VALUES("4","4","Seen","2015-08-28");


DROP TABLE IF EXISTS order_details;

CREATE TABLE `order_details` (
  `CustomerID` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `Total` int(10) NOT NULL,
  `OrderID` varchar(10) NOT NULL,
  `Orderdetailsid` int(11) NOT NULL,
  PRIMARY KEY (`Orderdetailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO order_details VALUES("1","1","1","8000","1","1");
INSERT INTO order_details VALUES("5","1","1","8000","2","2");
INSERT INTO order_details VALUES("5","1","3","5200","3","3");
INSERT INTO order_details VALUES("1","1","3","5200","4","4");


DROP TABLE IF EXISTS orders;

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `total` varchar(30) NOT NULL,
  `orderdate` date NOT NULL,
  `Date_paid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `deliverystatus` varchar(50) NOT NULL,
  `Transaction_code` varchar(50) NOT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO orders VALUES("1","1","8000","2015-08-24","August 24, 2015 12:00:pm  ","Confirmed","Delivered","AA0011");
INSERT INTO orders VALUES("2","5","8000","2015-08-26","August 26, 2015 2:24:pm  ","Confirmed","Delivered","AA0025");
INSERT INTO orders VALUES("3","5","5200","2015-08-26","August 27, 2015 2:19:pm  ","Confirmed","Delivered","AA0035");
INSERT INTO orders VALUES("4","1","5200","2015-08-28","August 29, 2015 10:42:pm  ","Confirmed","Delivered","AA0041");


DROP TABLE IF EXISTS purchases;

CREATE TABLE `purchases` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `trasaction_id` varchar(600) NOT NULL,
  `payer_fname` varchar(300) NOT NULL,
  `payer_lname` varchar(300) NOT NULL,
  `payer_address` varchar(300) NOT NULL,
  `payer_city` varchar(300) NOT NULL,
  `payer_country` varchar(300) NOT NULL,
  `payer_email` text NOT NULL,
  `posted_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS reply_message;

CREATE TABLE `reply_message` (
  `Primary_key` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`Primary_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS tb_announcement;

CREATE TABLE `tb_announcement` (
  `announcementID` int(11) NOT NULL,
  `detail` text NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`announcementID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tb_announcement VALUES("1","Price Php 1,000 only","2015-07-16 00:30:00","PROMO FOR The Day","MANDALUYONG","upload/4.JPG","Seen");
INSERT INTO tb_announcement VALUES("2","PRomo","2015-07-16 18:00:00","PROMO FOR The Day","JRU121231","upload/story.JPG","Seen");


DROP TABLE IF EXISTS tb_products;

CREATE TABLE `tb_products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO tb_products VALUES("1","Professional Standard Box Camera ","8000","products/1.JPG","Sensor Type: 1/3 Sony High Resolution CCD Chipset\n\n\n\nSystem of Signal: NTSC\n\n\n\nHorizontal Resolution: 420 TV Lines\n\n\n\nOperating Temp: -10? C-50?C\n\n\n\nIllumination: 1.0Lux @ F1.2\n\n\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("2","CCD Sony 1/3 Dome Type Camera    ","4365","products/2.JPG","Product Description\n\n\n\nCCD Sony 1/3 Dome Type Camera\n\n\n\n3.6 mm Lens \n\n\n\nSensor Type: 1/3 Sony CC Chipset\n\n\n\nSystem of Signal: NTSC\n\n\n\nHorizontal Resolution: 420 TV Lines\n\n\n\nOperation Temp: -10? C-50?C\n\n\n\nIllumination: 1Lux / 00.3Lux\n\n\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("3","KD-DW36RD48 IP Outdoor N.V Camera Wired/ Wireless","5200","products/3.JPG","Product Description\n\nKD-DW36RD48 IP Outdoor N.V Camera Wired/ Wireless\n\n1/3 Sony Super HAD II CCD, Color: 0.3Lux (480TVL); Color 0.1Lux\n\n(600TVL), 4/6/8mm fixed lens optional, IR\n\nDistance: 30m\n\nDimension: 173mm (L) x102mm (W) x93mm (H); N.W.:1.5kg\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("4","KD-DP73XD22 With zoom camera ZCN-21Z22, 22x10 zoom","10000","products/4.JPG","  1. 7? IP low speed dome, indoor/outdoor\n\n  2. Manual Pan/tilt:6 /S,9?/S,12?/S,15?/S,Turn\n\n   Angle: Horizontal: 360? endless, Vertical: 90?\n\n  3. 64 preset, 1 tour groups \n\n  4. DC15V, 2A\n\n   KD-DP73XD22\n\n   With zoom camera ZCN-21Z22, 22x10 zoom, color 0.5Lux 580TVL, \n\n   B/W 0.02Lux 650TVL,\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("5","220X Day/Night Color CCD ZOOM Camera with 1/4 ?i","15000","products/5.JPG","Type: Auto Focus power zoom camera\n\nImage sensor: 1/4 ?SONY COLOR CCD\n\nEffect Pixels: 768(H) x 494(V) /470TV Line\n\nMin. Illumination: 3Lux /1.6\n\nS/N Ration: 46dB (AGC OFF, fsc trap)\n\nLens: 22 X zoom, F/1.6 (W) 3.7(T) f=3.6 (w) 79.2(T)mm\n\nZoom: Optical 22X, Digital 10X\n\n","100","August 5, 2015 11:34:pm ");


DROP TABLE IF EXISTS tb_user;

CREATE TABLE `tb_user` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `utype` int(11) NOT NULL,
  `Employee` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tb_user VALUES("1","BENJIE_OOS","e10adc3949ba59abbe56e057f20f883e","3","Benjie I. Alfanta");
INSERT INTO tb_user VALUES("2","LEO_AS","e10adc3949ba59abbe56e057f20f883e","2","Leo Aranzamendez");
INSERT INTO tb_user VALUES("3","JULIUS_ADS","e10adc3949ba59abbe56e057f20f883e","1","Julius  Felicen");
INSERT INTO tb_user VALUES("4","DAVIS_SERVER","11a00f3677902d1dec0aeccacc16d464","4","Richmon Davis B. Sabello");


DROP TABLE IF EXISTS user_type;

CREATE TABLE `user_type` (
  `typeID` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO user_type VALUES("1","ADVERTISING Admin");
INSERT INTO user_type VALUES("2","ASSET Admin");
INSERT INTO user_type VALUES("3","ONLINE ORDERING Admin");
INSERT INTO user_type VALUES("4","SUPER Admin");


