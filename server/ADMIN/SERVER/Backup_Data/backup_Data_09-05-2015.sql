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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

INSERT INTO audit_trail VALUES("1","2","LEO_AS","September 1, 2015 8:22:pm  ","Inserted","Name= Bullet Type Covert Camera was added to product ");
INSERT INTO audit_trail VALUES("2","2","LEO_AS","September 1, 2015 8:24:pm  ","Updated","ID= 6, name= Bullet Type Covert Camera, price= Php 1,800.00, details= Updated, quantity= 150 was Updated");
INSERT INTO audit_trail VALUES("3","2","LEO_AS","September 1, 2015 8:25:pm  ","Inserted","Name= sdas was added to product ");
INSERT INTO audit_trail VALUES("4","2","LEO_AS","September 1, 2015 8:28:pm  ","Inserted","Name= qweqw was added to product ");
INSERT INTO audit_trail VALUES("5","2","LEO_AS","September 1, 2015 8:28:pm  ","Deleted","Product ID 7 was permanently deleted!");
INSERT INTO audit_trail VALUES("6","2","LEO_AS","September 1, 2015 8:28:pm  ","Deleted","Product ID 8 was permanently deleted!");
INSERT INTO audit_trail VALUES("7","2","LEO_AS","September 1, 2015 8:29:pm  ","Inserted","Name= asda was added to product ");
INSERT INTO audit_trail VALUES("8","2","LEO_AS","September 1, 2015 8:30:pm  ","Deleted","Product ID 9 was permanently deleted!");
INSERT INTO audit_trail VALUES("9","2","LEO_AS","September 1, 2015 8:32:pm  ","Updated","ID= 6, name= Bullet Type Covert Camera, price= Php 1,800.00, details= Updated, quantity= 100 was Updated");
INSERT INTO audit_trail VALUES("10","4","DAVIS_SERVER","September 1, 2015 8:33:pm  ","Inserted","Name= sdkals; was added to product ");
INSERT INTO audit_trail VALUES("11","4","DAVIS_SERVER","September 1, 2015 8:36:pm  ","Deleted","Product ID 7 was permanently deleted!");
INSERT INTO audit_trail VALUES("12","4","DAVIS_SERVER","September 1, 2015 11:38:pm  ","Inserted","Name= asd was added to product ");
INSERT INTO audit_trail VALUES("13","4","DAVIS_SERVER","September 1, 2015 11:38:pm  ","Deleted","Product ID 8 was permanently deleted!");
INSERT INTO audit_trail VALUES("14","4","DAVIS_SERVER","September 1, 2015 11:40:pm  ","Inserted","Name= Weatherproofed Camera with Infra-Red was added to product ");
INSERT INTO audit_trail VALUES("15","4","DAVIS_SERVER","September 2, 2015 12:33:am  ","Inserted","Name= ACTI PTZD91 was added to product ");
INSERT INTO audit_trail VALUES("16","2","LEO_AS","September 2, 2015 12:40:am  ","Inserted","Name= VC IRD720P- ANALOG DOME TYPE CAMERA was added to product ");
INSERT INTO audit_trail VALUES("17","2","LEO_AS","September 2, 2015 12:42:am  ","Inserted","Name= VC IRW720P- ANALOG BULLET TYPE CAMERA was added to product ");
INSERT INTO audit_trail VALUES("18","2","LEO_AS","September 2, 2015 12:52:am  ","Inserted","Name= VC‐D42S720-ANALOG BULLET TYPE CAMERA was added to product ");
INSERT INTO audit_trail VALUES("19","4","DAVIS_SERVER","September 4, 2015 1:58:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("20","4","DAVIS_SERVER","September 4, 2015 1:58:am  ","Deleted","CustomerID 1 Name  Message was deleted!");
INSERT INTO audit_trail VALUES("21","4","DAVIS_SERVER","September 4, 2015 1:58:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("22","4","DAVIS_SERVER","September 4, 2015 1:58:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("23","4","DAVIS_SERVER","September 4, 2015 1:58:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("24","4","DAVIS_SERVER","September 4, 2015 1:59:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("25","4","DAVIS_SERVER","September 4, 2015 1:59:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("26","4","DAVIS_SERVER","September 4, 2015 1:59:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("27","4","DAVIS_SERVER","September 4, 2015 1:59:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("28","4","DAVIS_SERVER","September 4, 2015 11:46:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("29","4","DAVIS_SERVER","September 4, 2015 6:39:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("30","4","DAVIS_SERVER","September 4, 2015 6:39:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("31","4","DAVIS_SERVER","September 4, 2015 6:39:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("32","4","DAVIS_SERVER","September 4, 2015 6:39:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("33","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("34","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("35","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("36","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 3 Name Julius Felicen Message was deleted!");
INSERT INTO audit_trail VALUES("37","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 3 Name Julius Felicen Message was deleted!");
INSERT INTO audit_trail VALUES("38","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("39","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("40","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("41","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("42","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("43","4","DAVIS_SERVER","September 4, 2015 6:51:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("44","4","DAVIS_SERVER","September 4, 2015 10:00:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("45","4","DAVIS_SERVER","September 4, 2015 11:24:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("46","0","","September 4, 2015 11:47:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("47","4","DAVIS_SERVER","September 4, 2015 11:48:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("48","3","JULIUS_ADS","September 4, 2015 11:50:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("49","3","JULIUS_ADS","September 4, 2015 11:51:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("50","4","DAVIS_SERVER","September 5, 2015 12:21:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("51","4","DAVIS_SERVER","September 5, 2015 12:22:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("52","3","JULIUS_ADS","September 5, 2015 12:44:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("53","3","JULIUS_ADS","September 5, 2015 12:44:am  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("54","4","DAVIS_SERVER","September 5, 2015 11:40:am  ","Deleted","CustomerID 3 Name Admin Sent Message was deleted!");
INSERT INTO audit_trail VALUES("55","4","DAVIS_SERVER","September 5, 2015 11:48:am  ","Deleted","Sent Message to Julius Felicen was deleted by admin");
INSERT INTO audit_trail VALUES("56","4","DAVIS_SERVER","September 5, 2015 12:10:pm  ","Deleted","Sent Message to Richmon Sabello was deleted by adminRichmon Davis B. Sabello");
INSERT INTO audit_trail VALUES("57","4","DAVIS_SERVER","September 5, 2015 12:17:pm  ","Deleted","Sent Message to Julius Felicen was deleted by admin Richmon Davis B. Sabello");
INSERT INTO audit_trail VALUES("58","4","DAVIS_SERVER","September 5, 2015 12:19:pm  ","Deleted","Sent Message to Julius Felicen was deleted by admin Richmon Davis B. Sabello");
INSERT INTO audit_trail VALUES("59","4","DAVIS_SERVER","September 5, 2015 12:20:pm  ","Deleted","Sent Message to Julius Felicen was deleted by admin Richmon Davis B. Sabello");
INSERT INTO audit_trail VALUES("60","4","DAVIS_SERVER","September 5, 2015 12:21:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("61","4","DAVIS_SERVER","September 5, 2015 12:21:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("62","4","DAVIS_SERVER","September 5, 2015 12:21:pm  ","Deleted","CustomerID 3 Name Julius Felicen Message was deleted!");
INSERT INTO audit_trail VALUES("63","4","DAVIS_SERVER","September 5, 2015 12:30:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("64","4","DAVIS_SERVER","September 5, 2015 12:30:pm  ","Deleted","CustomerID 2 Name Benjie Alfanta Message was deleted!");
INSERT INTO audit_trail VALUES("65","4","DAVIS_SERVER","September 5, 2015 12:39:pm  ","Deleted","CustomerID 2 Name Benjie Alfanta Message was deleted!");
INSERT INTO audit_trail VALUES("66","4","DAVIS_SERVER","September 5, 2015 12:46:pm  ","Deleted","CustomerID 2 Name Benjie Alfanta Message was deleted!");
INSERT INTO audit_trail VALUES("67","3","JULIUS_ADS","September 5, 2015 12:57:pm  ","Deleted","Sent Message to Leo Aranzamendez was deleted by admin Julius  Felicen");
INSERT INTO audit_trail VALUES("68","3","JULIUS_ADS","September 5, 2015 12:58:pm  ","Deleted","CustomerID 4 Name Leo Aranzamendez Message was deleted!");
INSERT INTO audit_trail VALUES("69","3","JULIUS_ADS","September 5, 2015 12:58:pm  ","Deleted","CustomerID 2 Name Benjie Alfanta Message was deleted!");


DROP TABLE IF EXISTS backup_dbname;

CREATE TABLE `backup_dbname` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS comment;

CREATE TABLE `comment` (
  `Num` int(11) NOT NULL AUTO_INCREMENT,
  `announcementID` int(11) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `date_posted` varchar(250) NOT NULL,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



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
  `Subject` varchar(20) NOT NULL,
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



DROP TABLE IF EXISTS order_details;

CREATE TABLE `order_details` (
  `CustomerID` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `Total` int(10) NOT NULL,
  `Total_qty` varchar(50) NOT NULL,
  `OrderID` varchar(10) NOT NULL,
  `Orderdetailsid` int(11) NOT NULL,
  PRIMARY KEY (`Orderdetailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



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



DROP TABLE IF EXISTS sent_messages;

CREATE TABLE `sent_messages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
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


DROP TABLE IF EXISTS tb_productreport;

CREATE TABLE `tb_productreport` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `Beg_qty` varchar(50) NOT NULL,
  `updated_qty` varchar(50) NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO tb_productreport VALUES("1","100","");
INSERT INTO tb_productreport VALUES("2","100","");
INSERT INTO tb_productreport VALUES("3","100","");
INSERT INTO tb_productreport VALUES("4","100","");
INSERT INTO tb_productreport VALUES("5","100","");
INSERT INTO tb_productreport VALUES("6","100","");
INSERT INTO tb_productreport VALUES("7","100","");
INSERT INTO tb_productreport VALUES("8","100","");
INSERT INTO tb_productreport VALUES("9","50","");
INSERT INTO tb_productreport VALUES("10","30","");
INSERT INTO tb_productreport VALUES("11","20","");


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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO tb_products VALUES("1","Professional Standard Box Camera ","8000","products/1.JPG","Sensor Type: 1/3 Sony High Resolution CCD Chipset\n\n\n\nSystem of Signal: NTSC\n\n\n\nHorizontal Resolution: 420 TV Lines\n\n\n\nOperating Temp: -10? C-50?C\n\n\n\nIllumination: 1.0Lux @ F1.2\n\n\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("2","CCD Sony 1/3 Dome Type Camera    ","4365","products/2.JPG","Product Description\n\n\n\nCCD Sony 1/3 Dome Type Camera\n\n\n\n3.6 mm Lens \n\n\n\nSensor Type: 1/3 Sony CC Chipset\n\n\n\nSystem of Signal: NTSC\n\n\n\nHorizontal Resolution: 420 TV Lines\n\n\n\nOperation Temp: -10? C-50?C\n\n\n\nIllumination: 1Lux / 00.3Lux\n\n\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("3","KD-DW36RD48 IP Outdoor N.V Camera Wired/ Wireless","5200","products/3.JPG","Product Description\n\nKD-DW36RD48 IP Outdoor N.V Camera Wired/ Wireless\n\n1/3 Sony Super HAD II CCD, Color: 0.3Lux (480TVL); Color 0.1Lux\n\n(600TVL), 4/6/8mm fixed lens optional, IR\n\nDistance: 30m\n\nDimension: 173mm (L) x102mm (W) x93mm (H); N.W.:1.5kg\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("4","KD-DP73XD22 With zoom camera ZCN-21Z22, 22x10 zoom","10000","products/4.JPG","  1. 7? IP low speed dome, indoor/outdoor\n\n  2. Manual Pan/tilt:6 /S,9?/S,12?/S,15?/S,Turn\n\n   Angle: Horizontal: 360? endless, Vertical: 90?\n\n  3. 64 preset, 1 tour groups \n\n  4. DC15V, 2A\n\n   KD-DP73XD22\n\n   With zoom camera ZCN-21Z22, 22x10 zoom, color 0.5Lux 580TVL, \n\n   B/W 0.02Lux 650TVL,\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("5","220X Day/Night Color CCD ZOOM Camera with 1/4 ?i","15000","products/5.JPG","Type: Auto Focus power zoom camera\n\nImage sensor: 1/4 ?SONY COLOR CCD\n\nEffect Pixels: 768(H) x 494(V) /470TV Line\n\nMin. Illumination: 3Lux /1.6\n\nS/N Ration: 46dB (AGC OFF, fsc trap)\n\nLens: 22 X zoom, F/1.6 (W) 3.7(T) f=3.6 (w) 79.2(T)mm\n\nZoom: Optical 22X, Digital 10X\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("6","Bullet Type Covert Camera","1800","products/6.JPG","Bullet Type Covert Camera\nSensor Type: 1/3 Sony CCD Chipset\nSystem of Signal: NTSC\nHorizontal Resolution: 420 TV Lines\nOperating Temp: -10° C-50° C\nIllumination: 1Lux\n","100","September 1, 2015 8:22:pm  ");
INSERT INTO tb_products VALUES("7","Weatherproofed Camera with Infra-Red","2800","products/7.JPG","Weatherproofed Camera with Infra-Red\nSensor Type: 1/3 Sony CCD Chipset\nSystem of Signal: NTSC\nHorizontal Resolution: 520 TV Lines\nOperating Temp: -10°C-50°C\nIllumination: 0.03Lux\nPower Supply: DC12V\nIR Distance: 50m","100","September 1, 2015 11:40:pm  ");
INSERT INTO tb_products VALUES("8","ACTI PTZD91","2000","products/8.JPG","Product Type-	Mini Dome,\nMaximum Resolution: 1MP,\nApplication Environment:	Indoor,\nImage Sensor:	Progressive Scan CMOS,\nDay / Night: No","100","September 2, 2015 12:33:am  ");
INSERT INTO tb_products VALUES("9","VC IRD720P- ANALOG DOME TYPE CAMERA","6000","products/9.JPG","6MM Lens\nCMOS 800TVL chipset\n24pcs IR LED\nNTSC\nDC12V\nWithout osd Metal Case\nColor White","50","September 2, 2015 12:40:am  ");
INSERT INTO tb_products VALUES("10","VC IRW720P- ANALOG BULLET TYPE CAMERA","5000","products/10.JPG","IR Waterproof with Bracket\nCMOS 800TVL\n6MM Lens\n24pcs IR LED\nNTSC\nDC 12V\nWithout osd\nWhite","30","September 2, 2015 12:42:am  ");
INSERT INTO tb_products VALUES("11","VC‐D42S720-ANALOG BULLET TYPE CAMERA","5500","products/11.JPG","NVP2431+OV9712 with OSD Cable\nIR LED: ￠5X42PCS IR range: 40M\n8‐12mm CS Lens\nWater resistance: IP66\n3‐Axis cable built‐in bracket\nSize: 242W) x 84(H) x 86(D)mm\nWeight: 1.6KG","20","September 2, 2015 12:52:am  ");


DROP TABLE IF EXISTS tb_sentmessage;

CREATE TABLE `tb_sentmessage` (
  `Primary_key` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary_key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;



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


