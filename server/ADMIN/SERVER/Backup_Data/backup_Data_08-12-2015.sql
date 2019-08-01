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
  `ID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Date_time` varchar(50) NOT NULL,
  `Outcome` varchar(20) NOT NULL,
  `Detail` varchar(250) NOT NULL,
  `Key` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS backup_dbname;

CREATE TABLE `backup_dbname` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO backup_dbname VALUES("1","backup_Data_08-12-2015","August 12, 2015 3:54:pm  ");


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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO customers VALUES("1","Richmon","Bardon","Sabello","1995-09-15","522A Sen. Neptali Gonzales St. San Jose, Sitio IV, Mandaluyong City","Mandaluyong City","09434138521","Male","sabellorichmon@yahoo.com","11a00f3677902d1dec0aeccacc16d464","August 5, 2015 11:34:pm  ");
INSERT INTO customers VALUES("2","Benjie","Ilano","Alfanta","1995-11-30","Pureza st. sta mesa manila","Manila City","09364987102","Male","benjiealfanta@yahoo.com","a432fa61bf0d91ad0c3d2b26ae8ace94","August 5, 2015 11:35:pm  ");
INSERT INTO customers VALUES("3","Julius","Dela pena","Felicen","1995-07-31","Flood way black 1","Taytay Rizal","09109223103","Male","juliusfelicen@yahoo.com","fb154fdee061037d6f6bcec2eecfe688","August 12, 2015 4:07:pm  ");
INSERT INTO customers VALUES("4","Leo","Bonife","Aranzamendez","1995-09-29","369 Wayan,Palali","Manila City","09364987102","Male","itchigo.aranzamendez@yahoo.com","8eef495e2875ec79e82dd886e58f26bd","August 12, 2015 4:08:pm  ");


DROP TABLE IF EXISTS loginout_history;

CREATE TABLE `loginout_history` (
  `CustomerID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL,
  `Primary` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Primary`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS loginout_serverhistory;

CREATE TABLE `loginout_serverhistory` (
  `AdminID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL,
  `Primary` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Primary`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS notif;

CREATE TABLE `notif` (
  `notifID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_ordered` date NOT NULL,
  PRIMARY KEY (`notifID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO notif VALUES("1","1","Seen","2015-07-28");


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

INSERT INTO order_details VALUES("1","2","1","16000","1","1");


DROP TABLE IF EXISTS orders;

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `total` varchar(30) NOT NULL,
  `orderdate` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `deliverystatus` varchar(50) NOT NULL,
  `Transaction_code` varchar(50) NOT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO orders VALUES("1","1","16000","2015-07-28","Confirmed","Delivered","");


DROP TABLE IF EXISTS paypal_log;

CREATE TABLE `paypal_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(600) NOT NULL,
  `log` text NOT NULL,
  `posted_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



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
INSERT INTO tb_announcement VALUES("2","PRomo","2015-07-16 18:00:00","PROMO FOR The Day","JRU121231","upload/5.JPG","Seen");


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

INSERT INTO tb_products VALUES("1","Professional Standard Box Camera ","8000","products/1.JPG","Sensor Type: 1/3 Sony High Resolution CCD Chipset\n\n\n\nSystem of Signal: NTSC\n\n\n\nHorizontal Resolution: 420 TV Lines\n\n\n\nOperating Temp: -10? C-50?C\n\n\n\nIllumination: 1.0Lux @ F1.2\n\n\n\n","100","August 5, 2015 11:34:pm ");
INSERT INTO tb_products VALUES("2","CCD Sony 1/3 Dome Type Camera    ","4365","products/2.JPG","Product Description\n\n\n\nCCD Sony 1/3 Dome Type Camera\n\n\n\n3.6 mm Lens \n\n\n\nSensor Type: 1/3 Sony CC Chipset\n\n\n\nSystem of Signal: NTSC\n\n\n\nHorizontal Resolution: 420 TV Lines\n\n\n\nOperation Temp: -10? C-50?C\n\n\n\nIllumination: 1Lux / 00.3Lux\n\n\n\n","100","August 5, 2015 11:34:pm ");
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


