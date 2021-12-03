# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_notodrugs
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2020-06-06 14:50:26
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_notodrugs'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_notodrugs" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_notodrugs";


#
# Table structure for table 'tbl_aagroup'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_aagroup" (
  "group_id" int(10) unsigned NOT NULL auto_increment,
  "group_name" varchar(50) NOT NULL,
  "address" varchar(50) NOT NULL,
  "username" varchar(50) NOT NULL,
  "password" varchar(50) NOT NULL,
  "contact" varchar(50) NOT NULL,
  "email" varchar(50) NOT NULL,
  "status" int(10) unsigned NOT NULL,
  "place_id" int(10) unsigned NOT NULL,
  "district_id" int(10) unsigned NOT NULL,
  "start_date" date NOT NULL,
  "photo" varchar(50) NOT NULL,
  PRIMARY KEY  ("group_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_aagroup'
#

LOCK TABLES "tbl_aagroup" WRITE;
/*!40000 ALTER TABLE "tbl_aagroup" DISABLE KEYS;*/
REPLACE INTO "tbl_aagroup" ("group_id", "group_name", "address", "username", "password", "contact", "email", "status", "place_id", "district_id", "start_date", "photo") VALUES
	('1','Jeevan','Thrissur, Thrissur','hari','hari','0488-2342345','jeevan@gmail.com','1','6','6','2020-01-16','social_network-512.webp');
REPLACE INTO "tbl_aagroup" ("group_id", "group_name", "address", "username", "password", "contact", "email", "status", "place_id", "district_id", "start_date", "photo") VALUES
	('2','Vimukthi','Muvattupuzha, Ernakulam','wertw','wert','0485-3206421','vimukthi@gmail.com','1','2','1','2020-01-16','social_network-512.webp');
REPLACE INTO "tbl_aagroup" ("group_id", "group_name", "address", "username", "password", "contact", "email", "status", "place_id", "district_id", "start_date", "photo") VALUES
	('3','Mukthi','Kothamangalam, Ernakulam','madhu','madhu','0484-3354674','mukthi@gmail.com','1','9','1','2020-02-20','social_network-512.webp');
REPLACE INTO "tbl_aagroup" ("group_id", "group_name", "address", "username", "password", "contact", "email", "status", "place_id", "district_id", "start_date", "photo") VALUES
	('4','Santhvanam','Thodupuzha, Ernakulam','balan','balan','0485-3345672','santhvanam@gmail.com','1','10','1','2020-05-19','social_network-512.webp');
/*!40000 ALTER TABLE "tbl_aagroup" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(10) unsigned NOT NULL auto_increment,
  "username" varchar(50) NOT NULL,
  "password" varchar(50) NOT NULL,
  PRIMARY KEY  ("admin_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "username", "password") VALUES
	('1','bibin','bibin');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_crimecategory'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_crimecategory" (
  "crimecategory_id" int(10) unsigned NOT NULL auto_increment,
  "crimecategory_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("crimecategory_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_crimecategory'
#

LOCK TABLES "tbl_crimecategory" WRITE;
/*!40000 ALTER TABLE "tbl_crimecategory" DISABLE KEYS;*/
REPLACE INTO "tbl_crimecategory" ("crimecategory_id", "crimecategory_name") VALUES
	('2','selling of drugs');
REPLACE INTO "tbl_crimecategory" ("crimecategory_id", "crimecategory_name") VALUES
	('4','buying of drugs');
REPLACE INTO "tbl_crimecategory" ("crimecategory_id", "crimecategory_name") VALUES
	('5','others');
/*!40000 ALTER TABLE "tbl_crimecategory" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_crimedetail'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_crimedetail" (
  "crime_id" int(10) unsigned NOT NULL auto_increment,
  "crime_name" varchar(50) NOT NULL,
  "description" varchar(50) NOT NULL,
  "proof" varchar(50) default 'crime.jpeg',
  "user_id" int(10) unsigned NOT NULL,
  "office_id" int(10) unsigned NOT NULL,
  "status" int(10) unsigned NOT NULL,
  "report_date" date NOT NULL,
  "crimecategory_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("crime_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_crimedetail'
#

LOCK TABLES "tbl_crimedetail" WRITE;
/*!40000 ALTER TABLE "tbl_crimedetail" DISABLE KEYS;*/
REPLACE INTO "tbl_crimedetail" ("crime_id", "crime_name", "description", "proof", "user_id", "office_id", "status", "report_date", "crimecategory_id") VALUES
	('1','selling','ghgjhgjhgjh','crime.jpeg','1','1','0','2020-01-24','2');
REPLACE INTO "tbl_crimedetail" ("crime_id", "crime_name", "description", "proof", "user_id", "office_id", "status", "report_date", "crimecategory_id") VALUES
	('2','selling','ghgjhgjhgjh','crime.jpeg','1','1','1','2020-01-24','2');
REPLACE INTO "tbl_crimedetail" ("crime_id", "crime_name", "description", "proof", "user_id", "office_id", "status", "report_date", "crimecategory_id") VALUES
	('3','selling','shdthd','flproof1977.jpg','1','1','0','2020-01-28','2');
/*!40000 ALTER TABLE "tbl_crimedetail" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_crimereplay'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_crimereplay" (
  "replay_id" int(10) unsigned NOT NULL auto_increment,
  "replay" varchar(50) NOT NULL,
  "crime_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("replay_id")
) AUTO_INCREMENT=22;



#
# Dumping data for table 'tbl_crimereplay'
#

LOCK TABLES "tbl_crimereplay" WRITE;
/*!40000 ALTER TABLE "tbl_crimereplay" DISABLE KEYS;*/
REPLACE INTO "tbl_crimereplay" ("replay_id", "replay", "crime_id") VALUES
	('1','','1');
REPLACE INTO "tbl_crimereplay" ("replay_id", "replay", "crime_id") VALUES
	('2','','1');
REPLACE INTO "tbl_crimereplay" ("replay_id", "replay", "crime_id") VALUES
	('21','hfhfhfhg','1');
/*!40000 ALTER TABLE "tbl_crimereplay" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_designation'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_designation" (
  "designation_id" int(10) unsigned NOT NULL auto_increment,
  "designation_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("designation_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_designation'
#

LOCK TABLES "tbl_designation" WRITE;
/*!40000 ALTER TABLE "tbl_designation" DISABLE KEYS;*/
REPLACE INTO "tbl_designation" ("designation_id", "designation_name") VALUES
	('0','member');
REPLACE INTO "tbl_designation" ("designation_id", "designation_name") VALUES
	('2','president');
REPLACE INTO "tbl_designation" ("designation_id", "designation_name") VALUES
	('3','chairman');
REPLACE INTO "tbl_designation" ("designation_id", "designation_name") VALUES
	('4','secretory');
REPLACE INTO "tbl_designation" ("designation_id", "designation_name") VALUES
	('6','chairperson');
/*!40000 ALTER TABLE "tbl_designation" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(10) unsigned NOT NULL auto_increment,
  "district_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("district_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('1','Ernakulam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('6','Idukki');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('7','Kollam');
REPLACE INTO "tbl_district" ("district_id", "district_name") VALUES
	('9','Pathanamthitta');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_event'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_event" (
  "event_id" int(10) unsigned NOT NULL auto_increment,
  "start_date" date NOT NULL,
  "end_date" date NOT NULL,
  "start_time" time NOT NULL,
  "end_time" time NOT NULL,
  "venue" varchar(50) NOT NULL,
  "eventtype_id" int(10) unsigned NOT NULL,
  "group_id" int(10) unsigned NOT NULL,
  "address" varchar(50) NOT NULL,
  PRIMARY KEY  ("event_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_event'
#

LOCK TABLES "tbl_event" WRITE;
/*!40000 ALTER TABLE "tbl_event" DISABLE KEYS;*/
REPLACE INTO "tbl_event" ("event_id", "start_date", "end_date", "start_time", "end_time", "venue", "eventtype_id", "group_id", "address") VALUES
	('1','2020-01-15','2020-01-16','09:07:00','20:45:00','dsafasd','3','1','sadgsafg');
REPLACE INTO "tbl_event" ("event_id", "start_date", "end_date", "start_time", "end_time", "venue", "eventtype_id", "group_id", "address") VALUES
	('2','2020-03-18','2020-03-28','18:55:00','17:04:00','hjfgfhgf','3','1','kuyujrfyf');
REPLACE INTO "tbl_event" ("event_id", "start_date", "end_date", "start_time", "end_time", "venue", "eventtype_id", "group_id", "address") VALUES
	('3','2020-03-18','2020-03-19','01:00:00','01:59:00','gkgjkgj','4','1','uktujyyjfyuf');
REPLACE INTO "tbl_event" ("event_id", "start_date", "end_date", "start_time", "end_time", "venue", "eventtype_id", "group_id", "address") VALUES
	('4','2020-03-25','2020-03-28','07:06:00','06:05:00','hjgjhfgjh','3','3','ufjyfyjf');
REPLACE INTO "tbl_event" ("event_id", "start_date", "end_date", "start_time", "end_time", "venue", "eventtype_id", "group_id", "address") VALUES
	('5','2020-03-26','2020-03-28','07:05:00','07:09:00','uyyruyry','3','3','kugjhgj');
/*!40000 ALTER TABLE "tbl_event" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_eventgallery'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_eventgallery" (
  "gallery_id" int(10) unsigned NOT NULL auto_increment,
  "eventtype_id" int(10) unsigned NOT NULL,
  "caption" varchar(50) NOT NULL,
  "aagroup_id" int(10) unsigned NOT NULL,
  "post_date" date NOT NULL,
  "file_type" varchar(50) NOT NULL,
  "imagevideo" varchar(50) NOT NULL,
  PRIMARY KEY  ("gallery_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_eventgallery'
#

LOCK TABLES "tbl_eventgallery" WRITE;
/*!40000 ALTER TABLE "tbl_eventgallery" DISABLE KEYS;*/
REPLACE INTO "tbl_eventgallery" ("gallery_id", "eventtype_id", "caption", "aagroup_id", "post_date", "file_type", "imagevideo") VALUES
	('1','3','kjhjgjhg','1','2020-01-22','.jpg','flimagevideo1768.jpg');
REPLACE INTO "tbl_eventgallery" ("gallery_id", "eventtype_id", "caption", "aagroup_id", "post_date", "file_type", "imagevideo") VALUES
	('2','3','kjhjgjhg','1','2020-01-22','.jpg','flimagevideo1424.jpg');
REPLACE INTO "tbl_eventgallery" ("gallery_id", "eventtype_id", "caption", "aagroup_id", "post_date", "file_type", "imagevideo") VALUES
	('3','3','jhhfhgf','1','2020-01-22','.jpg','flimagevideo1609.jpg');
REPLACE INTO "tbl_eventgallery" ("gallery_id", "eventtype_id", "caption", "aagroup_id", "post_date", "file_type", "imagevideo") VALUES
	('4','3','sdgfdh','1','2020-01-28','.jpg','flimagevideo2093.jpg');
/*!40000 ALTER TABLE "tbl_eventgallery" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_eventtype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_eventtype" (
  "eventtype_id" int(10) unsigned NOT NULL auto_increment,
  "eventtype_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("eventtype_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_eventtype'
#

LOCK TABLES "tbl_eventtype" WRITE;
/*!40000 ALTER TABLE "tbl_eventtype" DISABLE KEYS;*/
REPLACE INTO "tbl_eventtype" ("eventtype_id", "eventtype_name") VALUES
	('3','farewell');
REPLACE INTO "tbl_eventtype" ("eventtype_id", "eventtype_name") VALUES
	('4','anuversary');
/*!40000 ALTER TABLE "tbl_eventtype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_exciseoffice'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_exciseoffice" (
  "office_id" int(10) unsigned NOT NULL auto_increment,
  "office_name" varchar(50) NOT NULL,
  "contact" varchar(50) NOT NULL,
  "email" varchar(50) NOT NULL,
  "address" varchar(50) NOT NULL,
  "username" varchar(50) NOT NULL,
  "password" varchar(50) NOT NULL,
  "status" int(10) unsigned NOT NULL,
  "place_id" int(10) unsigned NOT NULL,
  "district_id" int(10) unsigned NOT NULL,
  "photo" varchar(50) NOT NULL,
  PRIMARY KEY  ("office_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_exciseoffice'
#

LOCK TABLES "tbl_exciseoffice" WRITE;
/*!40000 ALTER TABLE "tbl_exciseoffice" DISABLE KEYS;*/
REPLACE INTO "tbl_exciseoffice" ("office_id", "office_name", "contact", "email", "address", "username", "password", "status", "place_id", "district_id", "photo") VALUES
	('1','Ernakulam Excise Office','8687768','hgjh@gmail.com','jjbvgh','manu','manu','1','5','6','police_officer-512.webp');
REPLACE INTO "tbl_exciseoffice" ("office_id", "office_name", "contact", "email", "address", "username", "password", "status", "place_id", "district_id", "photo") VALUES
	('2','Abin','980000000','abin@gmail.com','fgxdbxdf','abin','abin','0','3','1','police_officer-512.webp');
REPLACE INTO "tbl_exciseoffice" ("office_id", "office_name", "contact", "email", "address", "username", "password", "status", "place_id", "district_id", "photo") VALUES
	('3','Vijay','8687768','vijay@gmail.com','sAdSAd','vijay','vijay','0','4','1','police_officer-512.webp');
REPLACE INTO "tbl_exciseoffice" ("office_id", "office_name", "contact", "email", "address", "username", "password", "status", "place_id", "district_id", "photo") VALUES
	('4','Balan','0999','balan@gmail.com','jhlsafhdfkjs','balan','balan','0','3','1','police_officer-512.webp');
/*!40000 ALTER TABLE "tbl_exciseoffice" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_member'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_member" (
  "member_id" int(10) unsigned NOT NULL auto_increment,
  "user_id" int(10) unsigned default NULL,
  "designation_id" varchar(50) NOT NULL,
  "date_of_join" date default NULL,
  "profession" varchar(50) NOT NULL,
  "member_status" int(10) unsigned NOT NULL,
  "group_id" int(10) unsigned NOT NULL,
  "member_name" varchar(50) default NULL,
  "member_contact" varchar(50) default NULL,
  "member_address" varchar(50) default NULL,
  "member_photo" varchar(50) default 'trainer-512.png',
  "member_email" varchar(50) default NULL,
  "district_id" int(10) unsigned default NULL,
  "place_id" int(10) unsigned default NULL,
  "member_gender" varchar(50) default NULL,
  PRIMARY KEY  ("member_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_member'
#

LOCK TABLES "tbl_member" WRITE;
/*!40000 ALTER TABLE "tbl_member" DISABLE KEYS;*/
REPLACE INTO "tbl_member" ("member_id", "user_id", "designation_id", "date_of_join", "profession", "member_status", "group_id", "member_name", "member_contact", "member_address", "member_photo", "member_email", "district_id", "place_id", "member_gender") VALUES
	('1','1','0','2020-01-21','farmer','1','1',NULL,NULL,NULL,'trainer-512.png',NULL,NULL,NULL,NULL);
REPLACE INTO "tbl_member" ("member_id", "user_id", "designation_id", "date_of_join", "profession", "member_status", "group_id", "member_name", "member_contact", "member_address", "member_photo", "member_email", "district_id", "place_id", "member_gender") VALUES
	('2','2','0','2020-01-21','farmer','1','1',NULL,NULL,NULL,'trainer-512.png',NULL,NULL,NULL,NULL);
REPLACE INTO "tbl_member" ("member_id", "user_id", "designation_id", "date_of_join", "profession", "member_status", "group_id", "member_name", "member_contact", "member_address", "member_photo", "member_email", "district_id", "place_id", "member_gender") VALUES
	('3',NULL,'0','2020-01-20','null','0','1','Abin','980000000','acadc','trainer-512.png','abin@gmail.com','1','3','male');
REPLACE INTO "tbl_member" ("member_id", "user_id", "designation_id", "date_of_join", "profession", "member_status", "group_id", "member_name", "member_contact", "member_address", "member_photo", "member_email", "district_id", "place_id", "member_gender") VALUES
	('4',NULL,'0','2020-01-21','null','2','1','Abin','980000000','acadc','trainer-512.png','abin@gmail.com','1','3','male');
REPLACE INTO "tbl_member" ("member_id", "user_id", "designation_id", "date_of_join", "profession", "member_status", "group_id", "member_name", "member_contact", "member_address", "member_photo", "member_email", "district_id", "place_id", "member_gender") VALUES
	('5','3','0','2020-01-23','driver','1','1',NULL,NULL,NULL,'trainer-512.png',NULL,NULL,NULL,NULL);
REPLACE INTO "tbl_member" ("member_id", "user_id", "designation_id", "date_of_join", "profession", "member_status", "group_id", "member_name", "member_contact", "member_address", "member_photo", "member_email", "district_id", "place_id", "member_gender") VALUES
	('6',NULL,'0','2020-01-22','driver','0','1','Abin','980000000','jbmbmnbm','trainer-512.png','abin@gmail.com','1','3','male');
REPLACE INTO "tbl_member" ("member_id", "user_id", "designation_id", "date_of_join", "profession", "member_status", "group_id", "member_name", "member_contact", "member_address", "member_photo", "member_email", "district_id", "place_id", "member_gender") VALUES
	('7','1','0','2020-03-05','gfhgfg','1','3',NULL,NULL,NULL,'trainer-512.png',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE "tbl_member" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "place_id" int(10) unsigned NOT NULL auto_increment,
  "place_name" varchar(50) NOT NULL,
  "district_id" int(10) unsigned NOT NULL,
  "pincode" varchar(50) NOT NULL,
  "lattitude" double unsigned NOT NULL,
  "longitude" double unsigned NOT NULL,
  PRIMARY KEY  ("place_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id", "pincode", "lattitude", "longitude") VALUES
	('2','Muvattupuzha','1','686661','34525','276286');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id", "pincode", "lattitude", "longitude") VALUES
	('3','Chottanikkara','1','678767','76786','6876787');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id", "pincode", "lattitude", "longitude") VALUES
	('4','Arattupuzha','1','787687','78676','868968');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id", "pincode", "lattitude", "longitude") VALUES
	('5','Rajakad','6','78687','786876','876876');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id", "pincode", "lattitude", "longitude") VALUES
	('6','Rajakumari','6','75757','78587','8758758');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id", "pincode", "lattitude", "longitude") VALUES
	('7','Guruvayoor','7','786876','687687','8675687');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id", "pincode", "lattitude", "longitude") VALUES
	('8','Thrissur','7','86876','876876','78658');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id", "pincode", "lattitude", "longitude") VALUES
	('9','Kothamangalam','1','345345','345346','3463636');
REPLACE INTO "tbl_place" ("place_id", "place_name", "district_id", "pincode", "lattitude", "longitude") VALUES
	('10','Thodupuzha','1','345345','365363','363663');
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_user" (
  "user_id" int(10) unsigned NOT NULL auto_increment,
  "name" varchar(50) NOT NULL,
  "contact" varchar(50) NOT NULL,
  "email" varchar(50) NOT NULL,
  "district_id" int(10) unsigned NOT NULL,
  "place_id" int(10) unsigned NOT NULL,
  "address" varchar(50) NOT NULL,
  "status" int(10) unsigned NOT NULL,
  "username" varchar(50) NOT NULL,
  "password" varchar(50) NOT NULL,
  "start_date" date NOT NULL,
  "gender" varchar(50) NOT NULL,
  "photo" varchar(50) NOT NULL,
  PRIMARY KEY  ("user_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_user'
#

LOCK TABLES "tbl_user" WRITE;
/*!40000 ALTER TABLE "tbl_user" DISABLE KEYS;*/
REPLACE INTO "tbl_user" ("user_id", "name", "contact", "email", "district_id", "place_id", "address", "status", "username", "password", "start_date", "gender", "photo") VALUES
	('1','Abin siby','980000000','abin@gmail.com','6','5','Pambakuda, Piravom','0','bibin','bibin','2020-01-17','male','flphoto1873.jpg');
REPLACE INTO "tbl_user" ("user_id", "name", "contact", "email", "district_id", "place_id", "address", "status", "username", "password", "start_date", "gender", "photo") VALUES
	('2','Abin','980000000','abin@gmail.com','1','2','hgjhgj','0','abin','abin','2020-01-17','male','jk');
REPLACE INTO "tbl_user" ("user_id", "name", "contact", "email", "district_id", "place_id", "address", "status", "username", "password", "start_date", "gender", "photo") VALUES
	('3','Manu','980000000','manu@gmail.com','1','2','kjjgjhg','0','manu','manu1','2020-01-18','male','nmmn');
REPLACE INTO "tbl_user" ("user_id", "name", "contact", "email", "district_id", "place_id", "address", "status", "username", "password", "start_date", "gender", "photo") VALUES
	('4','Manu','980000001','manu@gmail.com','1','3','jkjbjmb','0','manu','manu1','2020-01-22','male','default');
REPLACE INTO "tbl_user" ("user_id", "name", "contact", "email", "district_id", "place_id", "address", "status", "username", "password", "start_date", "gender", "photo") VALUES
	('5','Suresh','955888858','suresh@gmail.com','0','0','tgvdfvvbc','0','suresh','suresh','2020-02-20','male','default');
REPLACE INTO "tbl_user" ("user_id", "name", "contact", "email", "district_id", "place_id", "address", "status", "username", "password", "start_date", "gender", "photo") VALUES
	('6','Suresh','955888858','suresh@gmail.com','0','0','tgvdfvvbc','0','suresh','suresh','2020-02-20','male','default');
REPLACE INTO "tbl_user" ("user_id", "name", "contact", "email", "district_id", "place_id", "address", "status", "username", "password", "start_date", "gender", "photo") VALUES
	('7','Balan','0999','balan@gmail.com','1','3','khlhasJFDH','0','balan','balan','2020-05-19','male','default');
REPLACE INTO "tbl_user" ("user_id", "name", "contact", "email", "district_id", "place_id", "address", "status", "username", "password", "start_date", "gender", "photo") VALUES
	('8','Balan','0999','balan@gmail.com','1','3','sdgxfdd','0','balan1','balan1','2020-05-24','male','trainer-512.png');
/*!40000 ALTER TABLE "tbl_user" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
