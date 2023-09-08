DROP DATABASE IF EXISTS `coursework_database`;
CREATE DATABASE `coursework_database`;

USE `coursework_database`;

DROP TABLE IF EXISTS `table_userAddedSmartDevices`;
CREATE TABLE `table_userAddedSmartDevices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `smartdevice_type` enum('Light','Oven','Kitchen_hob','Microwave','Dishwasher','Refrigerator','Washing_Machine','Drying_Machine','Television','Speakers','Air_conditioning','Fan','Vacuum_cleaner_robot','Security_Camera','Thermostat','Door_lock','Lawnmower_robot','Coffee_machine','Window_shades','Smart_window') DEFAULT NULL,
  `is_on` tinyint(1) DEFAULT '0',
  `red` tinyint unsigned DEFAULT '100',
  `green` tinyint unsigned DEFAULT '100',
  `blue` tinyint unsigned DEFAULT '100',
  `temperature` smallint unsigned DEFAULT '0',
  `heat_from_above` tinyint(1) DEFAULT '1',
  `heat_from_below` tinyint(1) DEFAULT '1',
  `burner_one` tinyint unsigned DEFAULT '100',
  `burner_two` tinyint unsigned DEFAULT '100',
  `burner_three` tinyint unsigned DEFAULT '100',
  `burner_four` tinyint unsigned DEFAULT '100',
  `burner_five` tinyint unsigned DEFAULT '100',
  `burner_six` tinyint unsigned DEFAULT '100',
  `countdown_timer` smallint unsigned DEFAULT '0',
  `hot_water` tinyint(1) DEFAULT '0',
  `holiday_mode` tinyint(1) DEFAULT '0',
  `channel` smallint unsigned DEFAULT '1',
  `volume` tinyint unsigned DEFAULT '100',
  `source` varchar(30) DEFAULT NULL,
  `fan_speed` tinyint unsigned DEFAULT '100',
  `self_charge_mode` tinyint(1) DEFAULT '0',
  `automatic_photo_shooting` tinyint(1) DEFAULT '0',
  `night_mode` tinyint(1) DEFAULT '0',
  `automatic_video_recording` tinyint(1) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `shade_down_percentage` tinyint unsigned DEFAULT '100',
  `automatic_mode` tinyint(1) DEFAULT '0',
  `open` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
);
