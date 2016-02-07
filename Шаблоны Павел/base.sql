-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.23-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица forum_base.phpbb_acl_groups
CREATE TABLE IF NOT EXISTS `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_acl_groups: ~23 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_acl_groups` DISABLE KEYS */;
INSERT INTO `phpbb_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
	(1, 0, 89, 0, 1),
	(1, 0, 98, 0, 1),
	(1, 0, 116, 0, 1),
	(5, 0, 0, 5, 0),
	(5, 0, 0, 1, 0),
	(2, 0, 0, 6, 0),
	(3, 0, 0, 6, 0),
	(4, 0, 0, 5, 0),
	(4, 0, 0, 10, 0),
	(1, 1, 0, 17, 0),
	(2, 1, 0, 17, 0),
	(3, 1, 0, 17, 0),
	(6, 1, 0, 17, 0),
	(1, 2, 0, 17, 0),
	(2, 2, 0, 15, 0),
	(3, 2, 0, 15, 0),
	(4, 2, 0, 21, 0),
	(5, 2, 0, 14, 0),
	(5, 2, 0, 10, 0),
	(6, 2, 0, 19, 0),
	(7, 0, 0, 23, 0),
	(7, 2, 0, 24, 0),
	(6, 0, 0, 25, 0);
/*!40000 ALTER TABLE `phpbb_acl_groups` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_acl_options
CREATE TABLE IF NOT EXISTS `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_acl_options: ~125 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_acl_options` DISABLE KEYS */;
INSERT INTO `phpbb_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
	(1, 'f_', 0, 1, 0),
	(2, 'f_announce', 0, 1, 0),
	(3, 'f_attach', 0, 1, 0),
	(4, 'f_bbcode', 0, 1, 0),
	(5, 'f_bump', 0, 1, 0),
	(6, 'f_delete', 0, 1, 0),
	(7, 'f_download', 0, 1, 0),
	(8, 'f_edit', 0, 1, 0),
	(9, 'f_email', 0, 1, 0),
	(10, 'f_flash', 0, 1, 0),
	(11, 'f_icons', 0, 1, 0),
	(12, 'f_ignoreflood', 0, 1, 0),
	(13, 'f_img', 0, 1, 0),
	(14, 'f_list', 0, 1, 0),
	(15, 'f_noapprove', 0, 1, 0),
	(16, 'f_poll', 0, 1, 0),
	(17, 'f_post', 0, 1, 0),
	(18, 'f_postcount', 0, 1, 0),
	(19, 'f_print', 0, 1, 0),
	(20, 'f_read', 0, 1, 0),
	(21, 'f_reply', 0, 1, 0),
	(22, 'f_report', 0, 1, 0),
	(23, 'f_search', 0, 1, 0),
	(24, 'f_sigs', 0, 1, 0),
	(25, 'f_smilies', 0, 1, 0),
	(26, 'f_sticky', 0, 1, 0),
	(27, 'f_subscribe', 0, 1, 0),
	(28, 'f_user_lock', 0, 1, 0),
	(29, 'f_vote', 0, 1, 0),
	(30, 'f_votechg', 0, 1, 0),
	(31, 'f_softdelete', 0, 1, 0),
	(32, 'm_', 1, 1, 0),
	(33, 'm_approve', 1, 1, 0),
	(34, 'm_chgposter', 1, 1, 0),
	(35, 'm_delete', 1, 1, 0),
	(36, 'm_edit', 1, 1, 0),
	(37, 'm_info', 1, 1, 0),
	(38, 'm_lock', 1, 1, 0),
	(39, 'm_merge', 1, 1, 0),
	(40, 'm_move', 1, 1, 0),
	(41, 'm_report', 1, 1, 0),
	(42, 'm_split', 1, 1, 0),
	(43, 'm_softdelete', 1, 1, 0),
	(44, 'm_ban', 1, 0, 0),
	(45, 'm_pm_report', 1, 0, 0),
	(46, 'm_warn', 1, 0, 0),
	(47, 'a_', 1, 0, 0),
	(48, 'a_aauth', 1, 0, 0),
	(49, 'a_attach', 1, 0, 0),
	(50, 'a_authgroups', 1, 0, 0),
	(51, 'a_authusers', 1, 0, 0),
	(52, 'a_backup', 1, 0, 0),
	(53, 'a_ban', 1, 0, 0),
	(54, 'a_bbcode', 1, 0, 0),
	(55, 'a_board', 1, 0, 0),
	(56, 'a_bots', 1, 0, 0),
	(57, 'a_clearlogs', 1, 0, 0),
	(58, 'a_email', 1, 0, 0),
	(59, 'a_extensions', 1, 0, 0),
	(60, 'a_fauth', 1, 0, 0),
	(61, 'a_forum', 1, 0, 0),
	(62, 'a_forumadd', 1, 0, 0),
	(63, 'a_forumdel', 1, 0, 0),
	(64, 'a_group', 1, 0, 0),
	(65, 'a_groupadd', 1, 0, 0),
	(66, 'a_groupdel', 1, 0, 0),
	(67, 'a_icons', 1, 0, 0),
	(68, 'a_jabber', 1, 0, 0),
	(69, 'a_language', 1, 0, 0),
	(70, 'a_mauth', 1, 0, 0),
	(71, 'a_modules', 1, 0, 0),
	(72, 'a_names', 1, 0, 0),
	(73, 'a_phpinfo', 1, 0, 0),
	(74, 'a_profile', 1, 0, 0),
	(75, 'a_prune', 1, 0, 0),
	(76, 'a_ranks', 1, 0, 0),
	(77, 'a_reasons', 1, 0, 0),
	(78, 'a_roles', 1, 0, 0),
	(79, 'a_search', 1, 0, 0),
	(80, 'a_server', 1, 0, 0),
	(81, 'a_styles', 1, 0, 0),
	(82, 'a_switchperm', 1, 0, 0),
	(83, 'a_uauth', 1, 0, 0),
	(84, 'a_user', 1, 0, 0),
	(85, 'a_userdel', 1, 0, 0),
	(86, 'a_viewauth', 1, 0, 0),
	(87, 'a_viewlogs', 1, 0, 0),
	(88, 'a_words', 1, 0, 0),
	(89, 'u_', 1, 0, 0),
	(90, 'u_attach', 1, 0, 0),
	(91, 'u_chgavatar', 1, 0, 0),
	(92, 'u_chgcensors', 1, 0, 0),
	(93, 'u_chgemail', 1, 0, 0),
	(94, 'u_chggrp', 1, 0, 0),
	(95, 'u_chgname', 1, 0, 0),
	(96, 'u_chgpasswd', 1, 0, 0),
	(97, 'u_chgprofileinfo', 1, 0, 0),
	(98, 'u_download', 1, 0, 0),
	(99, 'u_hideonline', 1, 0, 0),
	(100, 'u_ignoreflood', 1, 0, 0),
	(101, 'u_masspm', 1, 0, 0),
	(102, 'u_masspm_group', 1, 0, 0),
	(103, 'u_pm_attach', 1, 0, 0),
	(104, 'u_pm_bbcode', 1, 0, 0),
	(105, 'u_pm_delete', 1, 0, 0),
	(106, 'u_pm_download', 1, 0, 0),
	(107, 'u_pm_edit', 1, 0, 0),
	(108, 'u_pm_emailpm', 1, 0, 0),
	(109, 'u_pm_flash', 1, 0, 0),
	(110, 'u_pm_forward', 1, 0, 0),
	(111, 'u_pm_img', 1, 0, 0),
	(112, 'u_pm_printpm', 1, 0, 0),
	(113, 'u_pm_smilies', 1, 0, 0),
	(114, 'u_readpm', 1, 0, 0),
	(115, 'u_savedrafts', 1, 0, 0),
	(116, 'u_search', 1, 0, 0),
	(117, 'u_sendemail', 1, 0, 0),
	(118, 'u_sendim', 1, 0, 0),
	(119, 'u_sendpm', 1, 0, 0),
	(120, 'u_sig', 1, 0, 0),
	(121, 'u_viewonline', 1, 0, 0),
	(122, 'u_viewprofile', 1, 0, 0),
	(123, 'u_similar_topics', 1, 0, 0),
	(124, 'a_quickreply', 1, 0, 0),
	(125, 'f_qr_change_subject', 0, 1, 0);
/*!40000 ALTER TABLE `phpbb_acl_options` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_acl_roles
CREATE TABLE IF NOT EXISTS `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_acl_roles: ~25 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_acl_roles` DISABLE KEYS */;
INSERT INTO `phpbb_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
	(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
	(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
	(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
	(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
	(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
	(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
	(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
	(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
	(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
	(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
	(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
	(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
	(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
	(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
	(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
	(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
	(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
	(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
	(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
	(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
	(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
	(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
	(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
	(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10),
	(25, 'Боты', '', 'u_', 7);
/*!40000 ALTER TABLE `phpbb_acl_roles` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_acl_roles_data
CREATE TABLE IF NOT EXISTS `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_acl_roles_data: ~477 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_acl_roles_data` DISABLE KEYS */;
INSERT INTO `phpbb_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
	(1, 47, 1),
	(1, 49, 1),
	(1, 50, 1),
	(1, 51, 1),
	(1, 53, 1),
	(1, 54, 1),
	(1, 55, 1),
	(1, 59, 1),
	(1, 60, 1),
	(1, 61, 1),
	(1, 62, 1),
	(1, 63, 1),
	(1, 64, 1),
	(1, 65, 1),
	(1, 66, 1),
	(1, 67, 1),
	(1, 70, 1),
	(1, 72, 1),
	(1, 74, 1),
	(1, 75, 1),
	(1, 76, 1),
	(1, 77, 1),
	(1, 83, 1),
	(1, 84, 1),
	(1, 85, 1),
	(1, 86, 1),
	(1, 87, 1),
	(1, 88, 1),
	(1, 124, 1),
	(2, 47, 1),
	(2, 50, 1),
	(2, 51, 1),
	(2, 60, 1),
	(2, 61, 1),
	(2, 62, 1),
	(2, 63, 1),
	(2, 70, 1),
	(2, 75, 1),
	(2, 83, 1),
	(2, 86, 1),
	(2, 87, 1),
	(3, 47, 1),
	(3, 50, 1),
	(3, 51, 1),
	(3, 53, 1),
	(3, 64, 1),
	(3, 65, 1),
	(3, 66, 1),
	(3, 76, 1),
	(3, 83, 1),
	(3, 84, 1),
	(3, 86, 1),
	(3, 87, 1),
	(4, 47, 1),
	(4, 48, 1),
	(4, 49, 1),
	(4, 50, 1),
	(4, 51, 1),
	(4, 52, 1),
	(4, 53, 1),
	(4, 54, 1),
	(4, 55, 1),
	(4, 56, 1),
	(4, 57, 1),
	(4, 58, 1),
	(4, 59, 1),
	(4, 60, 1),
	(4, 61, 1),
	(4, 62, 1),
	(4, 63, 1),
	(4, 64, 1),
	(4, 65, 1),
	(4, 66, 1),
	(4, 67, 1),
	(4, 68, 1),
	(4, 69, 1),
	(4, 70, 1),
	(4, 71, 1),
	(4, 72, 1),
	(4, 73, 1),
	(4, 74, 1),
	(4, 75, 1),
	(4, 76, 1),
	(4, 77, 1),
	(4, 78, 1),
	(4, 79, 1),
	(4, 80, 1),
	(4, 81, 1),
	(4, 82, 1),
	(4, 83, 1),
	(4, 84, 1),
	(4, 85, 1),
	(4, 86, 1),
	(4, 87, 1),
	(4, 88, 1),
	(4, 124, 1),
	(5, 89, 1),
	(5, 90, 1),
	(5, 91, 1),
	(5, 92, 1),
	(5, 93, 1),
	(5, 94, 1),
	(5, 95, 1),
	(5, 96, 1),
	(5, 97, 1),
	(5, 98, 1),
	(5, 99, 1),
	(5, 100, 1),
	(5, 101, 1),
	(5, 102, 1),
	(5, 103, 1),
	(5, 104, 1),
	(5, 105, 1),
	(5, 106, 1),
	(5, 107, 1),
	(5, 108, 1),
	(5, 109, 1),
	(5, 110, 1),
	(5, 111, 1),
	(5, 112, 1),
	(5, 113, 1),
	(5, 114, 1),
	(5, 115, 1),
	(5, 116, 1),
	(5, 117, 1),
	(5, 118, 1),
	(5, 119, 1),
	(5, 120, 1),
	(5, 121, 1),
	(5, 122, 1),
	(5, 123, 1),
	(6, 89, 1),
	(6, 90, 1),
	(6, 91, 1),
	(6, 92, 1),
	(6, 93, 1),
	(6, 96, 1),
	(6, 97, 1),
	(6, 98, 1),
	(6, 99, 1),
	(6, 101, 1),
	(6, 103, 1),
	(6, 104, 1),
	(6, 105, 1),
	(6, 106, 1),
	(6, 107, 1),
	(6, 108, 1),
	(6, 110, 1),
	(6, 111, 1),
	(6, 112, 1),
	(6, 113, 1),
	(6, 114, 1),
	(6, 115, 1),
	(6, 116, 1),
	(6, 117, 1),
	(6, 118, 1),
	(6, 119, 1),
	(6, 120, 1),
	(6, 122, 1),
	(6, 123, 1),
	(7, 89, 1),
	(7, 91, 1),
	(7, 92, 1),
	(7, 93, 1),
	(7, 96, 1),
	(7, 97, 1),
	(7, 98, 1),
	(7, 99, 1),
	(7, 104, 1),
	(7, 105, 1),
	(7, 106, 1),
	(7, 107, 1),
	(7, 110, 1),
	(7, 111, 1),
	(7, 112, 1),
	(7, 113, 1),
	(7, 114, 1),
	(7, 119, 1),
	(7, 120, 1),
	(7, 122, 1),
	(8, 89, 1),
	(8, 91, 1),
	(8, 92, 1),
	(8, 93, 1),
	(8, 96, 1),
	(8, 98, 1),
	(8, 99, 1),
	(8, 101, 0),
	(8, 102, 0),
	(8, 114, 0),
	(8, 119, 0),
	(8, 120, 1),
	(8, 122, 1),
	(9, 89, 1),
	(9, 91, 0),
	(9, 92, 1),
	(9, 93, 1),
	(9, 96, 1),
	(9, 97, 1),
	(9, 98, 1),
	(9, 99, 1),
	(9, 104, 1),
	(9, 105, 1),
	(9, 106, 1),
	(9, 107, 1),
	(9, 110, 1),
	(9, 111, 1),
	(9, 112, 1),
	(9, 113, 1),
	(9, 114, 1),
	(9, 119, 1),
	(9, 120, 1),
	(9, 122, 1),
	(10, 32, 1),
	(10, 33, 1),
	(10, 34, 1),
	(10, 35, 1),
	(10, 36, 1),
	(10, 37, 1),
	(10, 38, 1),
	(10, 39, 1),
	(10, 40, 1),
	(10, 41, 1),
	(10, 42, 1),
	(10, 43, 1),
	(10, 44, 1),
	(10, 45, 1),
	(10, 46, 1),
	(11, 32, 1),
	(11, 33, 1),
	(11, 35, 1),
	(11, 36, 1),
	(11, 37, 1),
	(11, 38, 1),
	(11, 39, 1),
	(11, 40, 1),
	(11, 41, 1),
	(11, 42, 1),
	(11, 43, 1),
	(11, 45, 1),
	(11, 46, 1),
	(12, 32, 1),
	(12, 35, 1),
	(12, 36, 1),
	(12, 37, 1),
	(12, 41, 1),
	(12, 43, 1),
	(12, 45, 1),
	(13, 32, 1),
	(13, 33, 1),
	(13, 36, 1),
	(14, 1, 1),
	(14, 2, 1),
	(14, 3, 1),
	(14, 4, 1),
	(14, 5, 1),
	(14, 6, 1),
	(14, 7, 1),
	(14, 8, 1),
	(14, 9, 1),
	(14, 10, 1),
	(14, 11, 1),
	(14, 12, 1),
	(14, 13, 1),
	(14, 14, 1),
	(14, 15, 1),
	(14, 16, 1),
	(14, 17, 1),
	(14, 18, 1),
	(14, 19, 1),
	(14, 20, 1),
	(14, 21, 1),
	(14, 22, 1),
	(14, 23, 1),
	(14, 24, 1),
	(14, 25, 1),
	(14, 26, 1),
	(14, 27, 1),
	(14, 28, 1),
	(14, 29, 1),
	(14, 30, 1),
	(14, 31, 1),
	(14, 125, 1),
	(15, 1, 1),
	(15, 3, 1),
	(15, 4, 1),
	(15, 5, 1),
	(15, 7, 1),
	(15, 8, 1),
	(15, 9, 1),
	(15, 11, 1),
	(15, 13, 1),
	(15, 14, 1),
	(15, 15, 1),
	(15, 16, 1),
	(15, 17, 1),
	(15, 18, 1),
	(15, 19, 1),
	(15, 20, 1),
	(15, 21, 1),
	(15, 22, 1),
	(15, 23, 1),
	(15, 24, 1),
	(15, 25, 1),
	(15, 27, 1),
	(15, 29, 1),
	(15, 30, 1),
	(15, 31, 1),
	(16, 1, 0),
	(17, 1, 1),
	(17, 7, 1),
	(17, 14, 1),
	(17, 19, 1),
	(17, 20, 1),
	(17, 23, 1),
	(17, 27, 1),
	(18, 1, 1),
	(18, 4, 1),
	(18, 7, 1),
	(18, 8, 1),
	(18, 9, 1),
	(18, 13, 1),
	(18, 14, 1),
	(18, 15, 1),
	(18, 17, 1),
	(18, 18, 1),
	(18, 19, 1),
	(18, 20, 1),
	(18, 21, 1),
	(18, 22, 1),
	(18, 23, 1),
	(18, 24, 1),
	(18, 25, 1),
	(18, 27, 1),
	(18, 29, 1),
	(18, 31, 1),
	(19, 1, 1),
	(19, 7, 1),
	(19, 14, 1),
	(19, 19, 1),
	(19, 20, 1),
	(20, 1, 1),
	(20, 3, 1),
	(20, 4, 1),
	(20, 7, 1),
	(20, 8, 1),
	(20, 9, 1),
	(20, 13, 1),
	(20, 14, 1),
	(20, 15, 0),
	(20, 17, 1),
	(20, 18, 1),
	(20, 19, 1),
	(20, 20, 1),
	(20, 21, 1),
	(20, 22, 1),
	(20, 23, 1),
	(20, 24, 1),
	(20, 25, 1),
	(20, 27, 1),
	(20, 29, 1),
	(20, 31, 1),
	(21, 1, 1),
	(21, 3, 1),
	(21, 4, 1),
	(21, 5, 1),
	(21, 6, 1),
	(21, 7, 1),
	(21, 8, 1),
	(21, 9, 1),
	(21, 11, 1),
	(21, 13, 1),
	(21, 14, 1),
	(21, 15, 1),
	(21, 16, 1),
	(21, 17, 1),
	(21, 18, 1),
	(21, 19, 1),
	(21, 20, 1),
	(21, 21, 1),
	(21, 22, 1),
	(21, 23, 1),
	(21, 24, 1),
	(21, 25, 1),
	(21, 27, 1),
	(21, 29, 1),
	(21, 30, 1),
	(21, 31, 1),
	(22, 1, 1),
	(22, 4, 1),
	(22, 7, 1),
	(22, 8, 1),
	(22, 9, 1),
	(22, 13, 1),
	(22, 14, 1),
	(22, 15, 1),
	(22, 16, 1),
	(22, 17, 1),
	(22, 18, 1),
	(22, 19, 1),
	(22, 20, 1),
	(22, 21, 1),
	(22, 22, 1),
	(22, 23, 1),
	(22, 24, 1),
	(22, 25, 1),
	(22, 27, 1),
	(22, 29, 1),
	(22, 31, 1),
	(23, 89, 1),
	(23, 90, 1),
	(23, 91, 1),
	(23, 92, 0),
	(23, 93, 1),
	(23, 94, 0),
	(23, 95, 0),
	(23, 96, 1),
	(23, 97, 1),
	(23, 98, 1),
	(23, 99, 0),
	(23, 100, 0),
	(23, 101, 0),
	(23, 102, 0),
	(23, 103, 1),
	(23, 104, 0),
	(23, 105, 1),
	(23, 106, 1),
	(23, 107, 0),
	(23, 108, 0),
	(23, 109, 0),
	(23, 110, 1),
	(23, 111, 1),
	(23, 112, 1),
	(23, 113, 1),
	(23, 114, 1),
	(23, 115, 1),
	(23, 116, 1),
	(23, 117, 0),
	(23, 118, 0),
	(23, 119, 1),
	(23, 120, 0),
	(23, 121, 0),
	(23, 122, 1),
	(24, 1, 1),
	(24, 2, 0),
	(24, 3, 1),
	(24, 4, 1),
	(24, 5, 0),
	(24, 6, 0),
	(24, 7, 1),
	(24, 8, 0),
	(24, 9, 1),
	(24, 10, 0),
	(24, 11, 1),
	(24, 12, 0),
	(24, 13, 1),
	(24, 14, 1),
	(24, 15, 1),
	(24, 16, 0),
	(24, 17, 1),
	(24, 18, 0),
	(24, 19, 1),
	(24, 20, 1),
	(24, 21, 1),
	(24, 22, 1),
	(24, 23, 1),
	(24, 24, 0),
	(24, 25, 1),
	(24, 26, 0),
	(24, 27, 1),
	(24, 28, 0),
	(24, 29, 1),
	(24, 30, 0),
	(24, 31, 0),
	(25, 89, 1),
	(25, 98, 1),
	(25, 123, 1);
/*!40000 ALTER TABLE `phpbb_acl_roles_data` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_acl_users
CREATE TABLE IF NOT EXISTS `phpbb_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_acl_users: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_acl_users` DISABLE KEYS */;
INSERT INTO `phpbb_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
	(2, 0, 0, 5, 0);
/*!40000 ALTER TABLE `phpbb_acl_users` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_attachments
CREATE TABLE IF NOT EXISTS `phpbb_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_attachments: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_attachments` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_banlist
CREATE TABLE IF NOT EXISTS `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_banlist: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_banlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_banlist` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_bbcodes
CREATE TABLE IF NOT EXISTS `phpbb_bbcodes` (
  `bbcode_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_bbcodes: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_bbcodes` DISABLE KEYS */;
INSERT INTO `phpbb_bbcodes` (`bbcode_id`, `bbcode_tag`, `bbcode_helpline`, `display_on_posting`, `bbcode_match`, `bbcode_tpl`, `first_pass_match`, `first_pass_replace`, `second_pass_match`, `second_pass_replace`) VALUES
	(13, 'post', 'BBCode for QuickReply extension', 0, '[post]{NUMBER}[/post]', '<a href="./viewtopic.php?p={NUMBER}#p{NUMBER}"><span class="imageset icon_topic_latest" title="{L_QR_BBPOST}">{L_QR_BBPOST}</span></a>', '!\\[post\\]([0-9]+)\\[/post\\]!i', '[post:$uid]${1}[/post:$uid]', '!\\[post:$uid\\]([0-9]+)\\[/post:$uid\\]!s', '<a href="./viewtopic.php?p=${1}#p${1}"><span class="imageset icon_topic_latest" title="{L_QR_BBPOST}">{L_QR_BBPOST}</span></a>'),
	(14, 'ref', 'BBCode for QuickReply extension', 0, '[ref]{TEXT}[/ref]', '<span style="font-weight: bold;">{TEXT}</span>', '!\\[ref\\](.*?)\\[/ref\\]!ies', '\'[ref:$uid]\'.str_replace(array("\\r\\n", \'\\"\', \'\\\'\', \'(\', \')\'), array("\\n", \'"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${1}\')).\'[/ref:$uid]\'', '!\\[ref:$uid\\](.*?)\\[/ref:$uid\\]!s', '<span style="font-weight: bold;">${1}</span>'),
	(15, 'ref=', 'BBCode for QuickReply extension', 0, '[ref={COLOR}]{TEXT}[/ref]', '<span style="font-weight: bold; color: {COLOR};">{TEXT}</span>', '!\\[ref\\=([a-z]+|#[0-9abcdef]+)\\](.*?)\\[/ref\\]!ies', '\'[ref=${1}:$uid]\'.str_replace(array("\\r\\n", \'\\"\', \'\\\'\', \'(\', \')\'), array("\\n", \'"\', \'&#39;\', \'&#40;\', \'&#41;\'), trim(\'${2}\')).\'[/ref:$uid]\'', '!\\[ref\\=([a-zA-Z]+|#[0-9abcdefABCDEF]+):$uid\\](.*?)\\[/ref:$uid\\]!s', '<span style="font-weight: bold; color: ${1};">${2}</span>');
/*!40000 ALTER TABLE `phpbb_bbcodes` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_bookmarks
CREATE TABLE IF NOT EXISTS `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_bookmarks: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_bookmarks` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_bots
CREATE TABLE IF NOT EXISTS `phpbb_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_bots: ~47 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_bots` DISABLE KEYS */;
INSERT INTO `phpbb_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
	(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
	(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
	(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
	(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
	(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', ''),
	(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
	(7, 1, 'Exabot [Bot]', 9, 'Exabot', ''),
	(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', ''),
	(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', ''),
	(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', ''),
	(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', ''),
	(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', ''),
	(13, 1, 'Google Desktop', 15, 'Google Desktop', ''),
	(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', ''),
	(15, 1, 'Google [Bot]', 17, 'Googlebot', ''),
	(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', ''),
	(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', ''),
	(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', ''),
	(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', ''),
	(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', ''),
	(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', ''),
	(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', ''),
	(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', ''),
	(24, 1, 'MSN [Bot]', 26, 'msnbot/', ''),
	(25, 1, 'MSNbot Media', 27, 'msnbot-media/', ''),
	(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
	(27, 1, 'Online link [Validator]', 29, 'online link validator', ''),
	(28, 1, 'psbot [Picsearch]', 30, 'psbot/0', ''),
	(29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', ''),
	(30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', ''),
	(31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', ''),
	(32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', ''),
	(33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
	(34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
	(35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', ''),
	(36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', ''),
	(37, 1, 'Voyager [Bot]', 39, 'voyager/', ''),
	(38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', ''),
	(39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', ''),
	(40, 1, 'W3C [Validator]', 42, 'W3C_Validator', ''),
	(41, 1, 'YaCy [Bot]', 43, 'yacybot', ''),
	(42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', ''),
	(43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', ''),
	(44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', ''),
	(45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', ''),
	(46, 1, 'yandex-бот', 48, 'Yandex', ''),
	(47, 1, 'yandex-direct', 49, 'YandexDirect', '');
/*!40000 ALTER TABLE `phpbb_bots` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_config
CREATE TABLE IF NOT EXISTS `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_config: ~351 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_config` DISABLE KEYS */;
INSERT INTO `phpbb_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
	('active_sessions', '0', 0),
	('allow_attachments', '1', 0),
	('allow_autologin', '1', 0),
	('allow_avatar', '1', 0),
	('allow_avatar_gravatar', '0', 0),
	('allow_avatar_local', '0', 0),
	('allow_avatar_remote', '0', 0),
	('allow_avatar_remote_upload', '0', 0),
	('allow_avatar_upload', '1', 0),
	('allow_bbcode', '1', 0),
	('allow_birthdays', '1', 0),
	('allow_bookmarks', '1', 0),
	('allow_cdn', '0', 0),
	('allow_emailreuse', '0', 0),
	('allow_forum_notify', '1', 0),
	('allow_live_searches', '1', 0),
	('allow_mass_pm', '1', 0),
	('allow_name_chars', 'USERNAME_ALPHA_SPACERS', 0),
	('allow_namechange', '0', 0),
	('allow_nocensors', '0', 0),
	('allow_password_reset', '1', 0),
	('allow_pm_attach', '1', 0),
	('allow_pm_report', '1', 0),
	('allow_post_flash', '1', 0),
	('allow_post_links', '1', 0),
	('allow_privmsg', '1', 0),
	('allow_quick_reply', '1', 0),
	('allow_sig', '1', 0),
	('allow_sig_bbcode', '1', 0),
	('allow_sig_flash', '1', 0),
	('allow_sig_img', '1', 0),
	('allow_sig_links', '1', 0),
	('allow_sig_pm', '1', 0),
	('allow_sig_smilies', '1', 0),
	('allow_smilies', '1', 0),
	('allow_topic_notify', '1', 0),
	('assets_version', '13', 0),
	('attachment_quota', '1610612736', 0),
	('auth_bbcode_pm', '1', 0),
	('auth_flash_pm', '0', 0),
	('auth_img_pm', '1', 0),
	('auth_method', 'db', 0),
	('auth_oauth_bitly_key', '', 0),
	('auth_oauth_bitly_secret', '', 0),
	('auth_oauth_facebook_key', '', 0),
	('auth_oauth_facebook_secret', '', 0),
	('auth_oauth_google_key', '', 0),
	('auth_oauth_google_secret', '', 0),
	('auth_smilies_pm', '1', 0),
	('auto_db_backup_copies', '7', 0),
	('auto_db_backup_enable', '1', 0),
	('auto_db_backup_filetype', 'gzip', 0),
	('auto_db_backup_gc', '86400', 0),
	('auto_db_backup_last_gc', '1453492800', 1),
	('auto_db_backup_optimize', '1', 0),
	('avatar_filesize', '6144', 0),
	('avatar_gallery_path', 'images/avatars/gallery', 0),
	('avatar_max_height', '90', 0),
	('avatar_max_width', '90', 0),
	('avatar_min_height', '20', 0),
	('avatar_min_width', '20', 0),
	('avatar_path', 'images/avatars/upload', 0),
	('avatar_salt', '34c6f2cbeaa325d2383458c7029b7c79', 0),
	('board_announcements_dismiss', '', 0),
	('board_announcements_enable', '1', 0),
	('board_announcements_guests', '1', 0),
	('board_contact', 'admin@mail.ru', 0),
	('board_contact_name', '', 0),
	('board_disable', '0', 0),
	('board_disable_msg', '', 0),
	('board_email', 'admin@mail.ru', 0),
	('board_email_form', '0', 0),
	('board_email_sig', 'Спасибо, Администрация', 0),
	('board_hide_emails', '1', 0),
	('board_index_text', '', 0),
	('board_startdate', '1453479915', 0),
	('board_timezone', 'Europe/Simferopol', 0),
	('browser_check', '1', 0),
	('bump_interval', '10', 0),
	('bump_type', 'd', 0),
	('cache_gc', '7200', 0),
	('cache_last_gc', '1453556912', 1),
	('captcha_gd', '1', 0),
	('captcha_gd_3d_noise', '1', 0),
	('captcha_gd_fonts', '1', 0),
	('captcha_gd_foreground_noise', '0', 0),
	('captcha_gd_wave', '0', 0),
	('captcha_gd_x_grid', '25', 0),
	('captcha_gd_y_grid', '25', 0),
	('captcha_plugin', 'core.captcha.plugins.recaptcha', 0),
	('check_attachment_content', '1', 0),
	('check_dnsbl', '0', 0),
	('chg_passforce', '0', 0),
	('confirm_refresh', '1', 0),
	('contact_admin_form_enable', '', 0),
	('cookie_domain', 'rabota', 0),
	('cookie_name', 'phpbb3_oswdz', 0),
	('cookie_path', '/', 0),
	('cookie_secure', '0', 0),
	('coppa_enable', '0', 0),
	('coppa_fax', '', 0),
	('coppa_mail', '', 0),
	('cron_lock', '0', 1),
	('database_gc', '604800', 0),
	('database_last_gc', '1453482159', 1),
	('dbms_version', '5.5.23-log', 0),
	('default_dateformat', '|d M Y|, H:i', 0),
	('default_lang', 'ru', 0),
	('default_style', '3', 0),
	('delete_time', '0', 0),
	('display_last_edited', '1', 0),
	('display_last_subject', '1', 0),
	('display_order', '0', 0),
	('edit_time', '0', 0),
	('elonw_version', '1.0.1', 0),
	('email_check_mx', '1', 0),
	('email_enable', '1', 0),
	('email_function_name', 'mail', 0),
	('email_max_chunk_size', '50', 0),
	('email_package_size', '20', 0),
	('enable_confirm', '1', 0),
	('enable_mod_rewrite', '0', 0),
	('enable_pm_icons', '1', 0),
	('enable_post_confirm', '1', 0),
	('extension_force_unstable', '0', 0),
	('favicon_apple', '1', 0),
	('favicon_ext', 'ico', 0),
	('favicon_version', '0.0.3', 0),
	('feed_enable', '1', 0),
	('feed_forum', '1', 0),
	('feed_http_auth', '0', 0),
	('feed_item_statistics', '1', 0),
	('feed_limit_post', '15', 0),
	('feed_limit_topic', '10', 0),
	('feed_overall', '1', 0),
	('feed_overall_forums', '0', 0),
	('feed_topic', '1', 0),
	('feed_topics_active', '0', 0),
	('feed_topics_new', '1', 0),
	('flood_interval', '30', 0),
	('force_server_vars', '1', 0),
	('form_token_lifetime', '7200', 0),
	('form_token_mintime', '0', 0),
	('form_token_sid_guests', '1', 0),
	('forward_pm', '1', 0),
	('forwarded_for_check', '0', 0),
	('full_folder_action', '2', 0),
	('fulltext_mysql_max_word_len', '254', 0),
	('fulltext_mysql_min_word_len', '4', 0),
	('fulltext_native_common_thres', '5', 0),
	('fulltext_native_load_upd', '1', 0),
	('fulltext_native_max_chars', '14', 0),
	('fulltext_native_min_chars', '3', 0),
	('fulltext_postgres_max_word_len', '254', 0),
	('fulltext_postgres_min_word_len', '4', 0),
	('fulltext_postgres_ts_name', 'simple', 0),
	('fulltext_sphinx_id', '5abfa5ba746d28db', 0),
	('fulltext_sphinx_indexer_mem_limit', '512', 0),
	('fulltext_sphinx_stopwords', '0', 0),
	('gzip_compress', '0', 0),
	('hot_threshold', '25', 0),
	('icons_path', 'images/icons', 0),
	('img_create_thumbnail', '0', 0),
	('img_display_inlined', '1', 0),
	('img_imagick', '', 0),
	('img_link_height', '1024', 0),
	('img_link_width', '1024', 0),
	('img_max_height', '0', 0),
	('img_max_thumb_width', '200', 0),
	('img_max_width', '0', 0),
	('img_min_thumb_filesize', '8000', 0),
	('ip_check', '2', 0),
	('ip_login_limit_max', '50', 0),
	('ip_login_limit_time', '21600', 0),
	('ip_login_limit_use_forwarded', '0', 0),
	('jab_enable', '0', 0),
	('jab_host', '', 0),
	('jab_package_size', '20', 0),
	('jab_password', '', 0),
	('jab_port', '5222', 0),
	('jab_use_ssl', '0', 0),
	('jab_username', '', 0),
	('last_queue_run', '0', 1),
	('ldap_base_dn', '', 0),
	('ldap_email', '', 0),
	('ldap_password', '', 0),
	('ldap_port', '', 0),
	('ldap_server', '', 0),
	('ldap_uid', '', 0),
	('ldap_user', '', 0),
	('ldap_user_filter', '', 0),
	('legend_sort_groupname', '0', 0),
	('limit_load', '0', 0),
	('limit_search_load', '0', 0),
	('load_anon_lastread', '0', 0),
	('load_birthdays', '1', 0),
	('load_cpf_memberlist', '1', 0),
	('load_cpf_pm', '1', 0),
	('load_cpf_viewprofile', '1', 0),
	('load_cpf_viewtopic', '1', 0),
	('load_db_lastread', '1', 0),
	('load_db_track', '1', 0),
	('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js', 0),
	('load_jumpbox', '1', 0),
	('load_moderators', '1', 0),
	('load_notifications', '1', 0),
	('load_online', '1', 0),
	('load_online_guests', '1', 0),
	('load_online_time', '5', 0),
	('load_onlinetrack', '1', 0),
	('load_search', '1', 0),
	('load_tplcompile', '0', 0),
	('load_unreads_search', '1', 0),
	('load_user_activity', '1', 0),
	('max_attachments', '3', 0),
	('max_attachments_pm', '1', 0),
	('max_autologin_time', '0', 0),
	('max_filesize', '5242880', 0),
	('max_filesize_pm', '3145728', 0),
	('max_login_attempts', '3', 0),
	('max_name_chars', '20', 0),
	('max_num_search_keywords', '10', 0),
	('max_pass_chars', '30', 0),
	('max_poll_options', '10', 0),
	('max_post_chars', '60000', 0),
	('max_post_font_size', '200', 0),
	('max_post_img_height', '450', 0),
	('max_post_img_width', '450', 0),
	('max_post_smilies', '0', 0),
	('max_post_urls', '0', 0),
	('max_quote_depth', '3', 0),
	('max_reg_attempts', '5', 0),
	('max_sig_chars', '255', 0),
	('max_sig_font_size', '200', 0),
	('max_sig_img_height', '0', 0),
	('max_sig_img_width', '0', 0),
	('max_sig_smilies', '0', 0),
	('max_sig_urls', '5', 0),
	('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
	('min_name_chars', '5', 0),
	('min_pass_chars', '6', 0),
	('min_post_chars', '1', 0),
	('min_search_author_chars', '3', 0),
	('new_member_group_default', '1', 0),
	('new_member_post_limit', '5', 0),
	('newest_user_colour', 'AA0000', 1),
	('newest_user_id', '2', 1),
	('newest_username', 'Admin', 1),
	('num_files', '0', 1),
	('num_posts', '3', 1),
	('num_topics', '3', 1),
	('num_users', '1', 1),
	('override_user_style', '0', 0),
	('pass_complex', 'PASS_TYPE_ANY', 0),
	('plupload_last_gc', '0', 1),
	('plupload_salt', '8541cecb44ed22e71af9bbcae67d33d7', 0),
	('pm_edit_time', '0', 0),
	('pm_max_boxes', '4', 0),
	('pm_max_msgs', '50', 0),
	('pm_max_recipients', '0', 0),
	('posts_per_page', '10', 0),
	('print_pm', '1', 0),
	('qr_ajax_pagination', '1', 0),
	('qr_ajax_submit', '0', 0),
	('qr_allow_for_guests', '0', 0),
	('qr_attach', '1', 0),
	('qr_bbcode', '1', 0),
	('qr_capslock_transfer', '0', 0),
	('qr_color_nickname', '1', 0),
	('qr_comma', '1', 0),
	('qr_ctrlenter', '1', 0),
	('qr_enable_re', '0', 0),
	('qr_full_quote', '1', 0),
	('qr_hide_subject_box', '1', 0),
	('qr_quicknick', '1', 0),
	('qr_quicknick_pm', '1', 0),
	('qr_quicknick_ref', '1', 0),
	('qr_quickquote', '1', 0),
	('qr_quickquote_link', '0', 0),
	('qr_scroll_time', '500', 0),
	('qr_show_button_translit', '0', 0),
	('qr_show_subjects', '0', 0),
	('qr_show_subjects_in_search', '1', 0),
	('qr_smilies', '1', 0),
	('qr_source_post', '1', 0),
	('qr_version', '1.0.1', 0),
	('questionnaire_unique_id', 'cb1e02027ed9764a', 0),
	('queue_interval', '60', 0),
	('rand_seed', '5f3d14b0fca7f3d7e636eb0024cadc1e', 1),
	('rand_seed_last_update', '1453556911', 1),
	('ranks_path', 'images/ranks', 0),
	('read_notification_expire_days', '30', 0),
	('read_notification_gc', '86400', 0),
	('read_notification_last_gc', '1453482266', 1),
	('recaptcha_privkey', '6LeIIhYTAAAAAALajXt5FHwAKi8S6k0zSiL9q1xi', 0),
	('recaptcha_pubkey', '6LeIIhYTAAAAAHyiK-kgOEaWvWYdzxpi2FSNYH-o', 0),
	('record_online_date', '1453480355', 1),
	('record_online_users', '2', 1),
	('referer_validation', '1', 0),
	('require_activation', '1', 0),
	('script_path', '/forum', 0),
	('search_anonymous_interval', '0', 0),
	('search_block_size', '250', 0),
	('search_gc', '7200', 0),
	('search_indexing_state', '', 1),
	('search_interval', '0', 0),
	('search_last_gc', '1453552633', 1),
	('search_store_results', '1800', 0),
	('search_type', '\\phpbb\\search\\fulltext_native', 0),
	('secure_allow_deny', '1', 0),
	('secure_allow_empty_referer', '1', 0),
	('secure_downloads', '0', 0),
	('server_name', 'rabota', 0),
	('server_port', '80', 0),
	('server_protocol', 'http://', 0),
	('session_gc', '3600', 0),
	('session_last_gc', '1453553088', 1),
	('session_length', '3600', 0),
	('similar_topics', '1', 0),
	('similar_topics_cache', '0', 0),
	('similar_topics_fulltext', 'innodb', 0),
	('similar_topics_hide', '', 0),
	('similar_topics_ignore', '', 0),
	('similar_topics_limit', '5', 0),
	('similar_topics_time', '31536000', 0),
	('similar_topics_type', 'y', 0),
	('similar_topics_words', '', 0),
	('site_desc', 'Краткое описание вашей конференции', 0),
	('site_home_text', 'Сайт', 0),
	('site_home_url', 'http://rabota/site', 0),
	('sitename', 'ваш_домен.ru', 0),
	('smilies_path', 'images/smilies', 0),
	('smilies_per_page', '50', 0),
	('smtp_auth_method', 'PLAIN', 0),
	('smtp_delivery', '0', 0),
	('smtp_host', '', 0),
	('smtp_password', '', 0),
	('smtp_port', '25', 0),
	('smtp_username', '', 0),
	('teampage_forums', '1', 0),
	('teampage_memberships', '1', 0),
	('topics_per_page', '25', 0),
	('tpl_allow_php', '0', 0),
	('upload_dir_size', '0', 1),
	('upload_icons_path', 'images/upload_icons', 0),
	('upload_path', 'files', 0),
	('use_system_cron', '0', 0),
	('version', '3.1.7-pl1', 0),
	('warnings_expire_days', '30', 0),
	('warnings_gc', '14400', 0),
	('warnings_last_gc', '1453546016', 1);
/*!40000 ALTER TABLE `phpbb_config` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_config_text
CREATE TABLE IF NOT EXISTS `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_config_text: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_config_text` DISABLE KEYS */;
INSERT INTO `phpbb_config_text` (`config_name`, `config_value`) VALUES
	('announcement_bgcolor', 'FFFFBF'),
	('announcement_bitfield', 'Eg=='),
	('announcement_options', '7'),
	('announcement_text', '[url][color=#000000:1hbu4qwy]Объявление[/color:1hbu4qwy][/url]'),
	('announcement_timestamp', '1453549333'),
	('announcement_uid', '1hbu4qwy'),
	('contact_admin_info', ''),
	('contact_admin_info_bitfield', ''),
	('contact_admin_info_flags', '7'),
	('contact_admin_info_uid', '');
/*!40000 ALTER TABLE `phpbb_config_text` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_confirm
CREATE TABLE IF NOT EXISTS `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_confirm: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_confirm` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_disallow
CREATE TABLE IF NOT EXISTS `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_disallow: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_disallow` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_disallow` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_drafts
CREATE TABLE IF NOT EXISTS `phpbb_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_drafts: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_drafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_drafts` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_ext
CREATE TABLE IF NOT EXISTS `phpbb_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ext_state` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `ext_name` (`ext_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_ext: ~7 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_ext` DISABLE KEYS */;
INSERT INTO `phpbb_ext` (`ext_name`, `ext_active`, `ext_state`) VALUES
	('bb3mobi/highslide', 1, 'b:0;'),
	('boardtools/quickreply', 1, 'b:0;'),
	('phpbb/boardannouncements', 1, 'b:0;'),
	('pico/autodbbackup', 1, 'b:0;'),
	('rmcgirr83/elonw', 1, 'b:0;'),
	('tatiana5/favicon', 1, 'b:0;'),
	('vse/similartopics', 1, 'b:0;');
/*!40000 ALTER TABLE `phpbb_ext` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_extensions
CREATE TABLE IF NOT EXISTS `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_extensions: ~66 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_extensions` DISABLE KEYS */;
INSERT INTO `phpbb_extensions` (`extension_id`, `group_id`, `extension`) VALUES
	(1, 1, 'gif'),
	(2, 1, 'png'),
	(3, 1, 'jpeg'),
	(4, 1, 'jpg'),
	(5, 1, 'tif'),
	(6, 1, 'tiff'),
	(7, 1, 'tga'),
	(8, 2, 'gtar'),
	(9, 2, 'gz'),
	(10, 2, 'tar'),
	(11, 2, 'zip'),
	(12, 2, 'rar'),
	(13, 2, 'ace'),
	(14, 2, 'torrent'),
	(15, 2, 'tgz'),
	(16, 2, 'bz2'),
	(17, 2, '7z'),
	(18, 3, 'txt'),
	(19, 3, 'c'),
	(20, 3, 'h'),
	(21, 3, 'cpp'),
	(22, 3, 'hpp'),
	(23, 3, 'diz'),
	(24, 3, 'csv'),
	(25, 3, 'ini'),
	(26, 3, 'log'),
	(27, 3, 'js'),
	(28, 3, 'xml'),
	(29, 4, 'xls'),
	(30, 4, 'xlsx'),
	(31, 4, 'xlsm'),
	(32, 4, 'xlsb'),
	(33, 4, 'doc'),
	(34, 4, 'docx'),
	(35, 4, 'docm'),
	(36, 4, 'dot'),
	(37, 4, 'dotx'),
	(38, 4, 'dotm'),
	(39, 4, 'pdf'),
	(40, 4, 'ai'),
	(41, 4, 'ps'),
	(42, 4, 'ppt'),
	(43, 4, 'pptx'),
	(44, 4, 'pptm'),
	(45, 4, 'odg'),
	(46, 4, 'odp'),
	(47, 4, 'ods'),
	(48, 4, 'odt'),
	(49, 4, 'rtf'),
	(50, 5, 'rm'),
	(51, 5, 'ram'),
	(52, 6, 'wma'),
	(53, 6, 'wmv'),
	(54, 7, 'swf'),
	(55, 8, 'mov'),
	(56, 8, 'm4v'),
	(57, 8, 'm4a'),
	(58, 8, 'mp4'),
	(59, 8, '3gp'),
	(60, 8, '3g2'),
	(61, 8, 'qt'),
	(62, 9, 'mpeg'),
	(63, 9, 'mpg'),
	(64, 9, 'mp3'),
	(65, 9, 'ogg'),
	(66, 9, 'ogm');
/*!40000 ALTER TABLE `phpbb_extensions` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_extension_groups
CREATE TABLE IF NOT EXISTS `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_extension_groups: ~9 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_extension_groups` DISABLE KEYS */;
INSERT INTO `phpbb_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
	(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
	(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
	(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
	(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
	(5, 'REAL_MEDIA', 3, 0, 1, '', 0, '', 0),
	(6, 'WINDOWS_MEDIA', 2, 0, 1, '', 0, '', 0),
	(7, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0),
	(8, 'QUICKTIME_MEDIA', 6, 0, 1, '', 0, '', 0),
	(9, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);
/*!40000 ALTER TABLE `phpbb_extension_groups` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_forums
CREATE TABLE IF NOT EXISTS `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `enable_shadow_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_shadow_days` mediumint(8) unsigned NOT NULL DEFAULT '7',
  `prune_shadow_freq` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `prune_shadow_next` int(11) NOT NULL DEFAULT '0',
  `forum_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `similar_topic_forums` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_forums: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_forums` DISABLE KEYS */;
INSERT INTO `phpbb_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`, `display_subforum_list`, `forum_options`, `enable_shadow_prune`, `prune_shadow_days`, `prune_shadow_freq`, `prune_shadow_next`, `forum_posts_approved`, `forum_posts_unapproved`, `forum_posts_softdeleted`, `forum_topics_approved`, `forum_topics_unapproved`, `forum_topics_softdeleted`, `similar_topic_forums`) VALUES
	(1, 0, 1, 4, '', 'Ваша первая категория', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 2, '', 1453479915, 'Admin', 'AA0000', 112, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, ''),
	(2, 1, 2, 3, 'a:1:{i:1;a:2:{i:0;s:40:"Ваша первая категория";i:1;i:0;}}', 'Ваш первый форум', 'Описание вашего первого форума.', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 3, 2, 'Мой новый форум', 1453546371, 'Admin', 'AA0000', 112, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 7, 1, 0, 3, 0, 0, 3, 0, 0, '2');
/*!40000 ALTER TABLE `phpbb_forums` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_forums_access
CREATE TABLE IF NOT EXISTS `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_forums_access: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_forums_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_access` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_forums_track
CREATE TABLE IF NOT EXISTS `phpbb_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_forums_track: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_forums_track` DISABLE KEYS */;
INSERT INTO `phpbb_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
	(2, 2, 1453546372);
/*!40000 ALTER TABLE `phpbb_forums_track` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_forums_watch
CREATE TABLE IF NOT EXISTS `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_forums_watch: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_forums_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_forums_watch` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_groups
CREATE TABLE IF NOT EXISTS `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_groups: ~7 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_groups` DISABLE KEYS */;
INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_legend`, `group_max_recipients`) VALUES
	(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
	(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '0080FF', 0, 1, 0, 3, 5),
	(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
	(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0),
	(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0),
	(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5),
	(7, 3, 0, 0, 'NEWLY_REGISTERED', 'Вам, как новому пользователю, необходимо написать 5 сообщений', '', 7, '', 0, '', '', 0, 0, 0, '00FF40', 0, 1, 0, 4, 5);
/*!40000 ALTER TABLE `phpbb_groups` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_icons
CREATE TABLE IF NOT EXISTS `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_icons: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_icons` DISABLE KEYS */;
INSERT INTO `phpbb_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_order`, `display_on_posting`) VALUES
	(1, 'misc/fire.gif', 16, 16, 1, 1),
	(2, 'smile/redface.gif', 16, 16, 9, 1),
	(3, 'smile/mrgreen.gif', 16, 16, 10, 1),
	(4, 'misc/heart.gif', 16, 16, 4, 1),
	(5, 'misc/star.gif', 16, 16, 2, 1),
	(6, 'misc/radioactive.gif', 16, 16, 3, 1),
	(7, 'misc/thinking.gif', 16, 16, 5, 1),
	(8, 'smile/info.gif', 16, 16, 8, 1),
	(9, 'smile/question.gif', 16, 16, 6, 1),
	(10, 'smile/alert.gif', 16, 16, 7, 1);
/*!40000 ALTER TABLE `phpbb_icons` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_lang
CREATE TABLE IF NOT EXISTS `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_lang: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_lang` DISABLE KEYS */;
INSERT INTO `phpbb_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
	(1, 'en', 'en', 'British English', 'British English', 'phpBB Limited'),
	(2, 'ru', 'ru', 'Russian', 'Русский', 'rxu');
/*!40000 ALTER TABLE `phpbb_lang` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_log
CREATE TABLE IF NOT EXISTS `phpbb_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_log: ~78 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_log` DISABLE KEYS */;
INSERT INTO `phpbb_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
	(1, 0, 2, 0, 0, 0, '127.0.0.1', 1453480100, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:9:"3.1.7-pl1";}'),
	(2, 0, 2, 0, 0, 0, '127.0.0.1', 1453480775, 'LOG_CONFIG_ATTACH', ''),
	(3, 0, 2, 0, 0, 0, '127.0.0.1', 1453480990, 'LOG_CONFIG_SETTINGS', ''),
	(4, 0, 2, 0, 0, 0, '127.0.0.1', 1453481045, 'LOG_CONFIG_FEATURES', ''),
	(5, 0, 2, 0, 0, 0, '127.0.0.1', 1453481098, 'LOG_CONFIG_FEATURES', ''),
	(6, 0, 2, 0, 0, 0, '127.0.0.1', 1453481176, 'LOG_CONFIG_AVATAR', ''),
	(7, 0, 2, 0, 0, 0, '127.0.0.1', 1453481251, 'LOG_CONFIG_MESSAGE', ''),
	(8, 0, 2, 0, 0, 0, '127.0.0.1', 1453481395, 'LOG_CONFIG_POST', ''),
	(9, 0, 2, 0, 0, 0, '127.0.0.1', 1453481421, 'LOG_CONFIG_SIGNATURE', ''),
	(10, 0, 2, 0, 0, 0, '127.0.0.1', 1453481580, 'LOG_CONFIG_REGISTRATION', ''),
	(11, 0, 2, 0, 0, 0, '127.0.0.1', 1453481693, 'LOG_CONFIG_VISUAL', ''),
	(12, 0, 2, 0, 0, 0, '127.0.0.1', 1453481792, 'LOG_CONFIG_VISUAL', ''),
	(13, 0, 2, 0, 0, 0, '127.0.0.1', 1453481950, 'LOG_CONFIG_SERVER', ''),
	(14, 0, 2, 0, 0, 0, '127.0.0.1', 1453482084, 'LOG_CONFIG_SECURITY', ''),
	(15, 0, 2, 0, 0, 0, '127.0.0.1', 1453482928, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:40:"Ваша первая категория";}'),
	(16, 0, 2, 0, 0, 0, '127.0.0.1', 1453483040, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:40:"Ваша первая категория";}'),
	(17, 0, 2, 0, 0, 0, '127.0.0.1', 1453483352, 'LOG_CONFIG_SERVER', ''),
	(18, 0, 2, 0, 0, 0, '127.0.0.1', 1453483980, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:30:"Ваш первый форум";}'),
	(19, 0, 2, 0, 0, 0, '127.0.0.1', 1453483995, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:40:"Ваша первая категория";}'),
	(20, 0, 2, 0, 0, 0, '127.0.0.1', 1453484131, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:30:"Ваш первый форум";}'),
	(21, 0, 2, 0, 0, 0, '127.0.0.1', 1453484550, 'LOG_GROUP_UPDATED', 'a:1:{i:0;s:35:"Новые пользователи";}'),
	(22, 0, 2, 0, 0, 0, '127.0.0.1', 1453484606, 'LOG_GROUP_UPDATED', 'a:1:{i:0;s:61:"Зарегистрированные пользователи";}'),
	(23, 0, 2, 0, 0, 0, '127.0.0.1', 1453484700, 'LOG_BOT_ADDED', 'a:1:{i:0;s:13:"yandex-бот";}'),
	(24, 0, 2, 0, 0, 0, '127.0.0.1', 1453484741, 'LOG_BOT_ADDED', 'a:1:{i:0;s:13:"yandex-direct";}'),
	(25, 0, 2, 0, 0, 0, '127.0.0.1', 1453484988, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:97:"Возможности вновь зарегистрированных пользователей";}'),
	(26, 0, 2, 0, 0, 0, '127.0.0.1', 1453485142, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:97:"Возможности вновь зарегистрированных пользователей";}'),
	(27, 0, 2, 0, 0, 0, '127.0.0.1', 1453485202, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:97:"Возможности вновь зарегистрированных пользователей";}'),
	(28, 0, 2, 0, 0, 0, '127.0.0.1', 1453485283, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:45:"Стандартные возможности";}'),
	(29, 0, 2, 0, 0, 0, '127.0.0.1', 1453485488, 'LOG_F_ROLE_EDIT', 'a:1:{i:0;s:87:"Доступ вновь зарегистрированных пользователей";}'),
	(30, 0, 2, 0, 0, 0, '127.0.0.1', 1453485525, 'LOG_F_ROLE_EDIT', 'a:1:{i:0;s:87:"Доступ вновь зарегистрированных пользователей";}'),
	(31, 0, 2, 0, 0, 0, '127.0.0.1', 1453485593, 'LOG_F_ROLE_EDIT', 'a:1:{i:0;s:35:"Стандартный доступ";}'),
	(32, 0, 2, 0, 0, 0, '127.0.0.1', 1453485834, 'LOG_U_ROLE_ADD', 'a:1:{i:0;s:8:"Боты";}'),
	(33, 0, 2, 0, 0, 0, '127.0.0.1', 1453485865, 'LOG_ACL_ADD_GROUP_GLOBAL_U_', 'a:1:{i:0;s:33:"<span class="sep">Боты</span>";}'),
	(34, 0, 2, 0, 0, 0, '127.0.0.1', 1453485888, 'LOG_ACL_ADD_GROUP_GLOBAL_U_', 'a:1:{i:0;s:33:"<span class="sep">Боты</span>";}'),
	(35, 0, 2, 0, 0, 0, '127.0.0.1', 1453493230, 'LOG_ADMIN_AUTH_SUCCESS', ''),
	(36, 0, 2, 0, 0, 0, '127.0.0.1', 1453545298, 'LOG_MODULE_ADD', 'a:1:{i:0;s:27:"ACP_AUTO_DB_BACKUP_SETTINGS";}'),
	(37, 0, 2, 0, 0, 0, '127.0.0.1', 1453545298, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:17:"pico/autodbbackup";}'),
	(38, 0, 2, 0, 0, 0, '127.0.0.1', 1453545468, 'LOG_EXT_DISABLE', 'a:1:{i:0;s:17:"pico/autodbbackup";}'),
	(39, 0, 2, 0, 0, 0, '127.0.0.1', 1453545477, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:17:"pico/autodbbackup";}'),
	(40, 0, 2, 0, 0, 0, '127.0.0.1', 1453545537, 'LOG_AUTO_DB_BACKUP_SETTINGS_CHANGED', ''),
	(41, 0, 2, 0, 0, 0, '127.0.0.1', 1453545635, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:15:"rmcgirr83/elonw";}'),
	(42, 0, 2, 0, 0, 0, '127.0.0.1', 1453545831, 'LOG_MODULE_ADD', 'a:1:{i:0;s:23:"ACP_BOARD_ANNOUNCEMENTS";}'),
	(43, 0, 2, 0, 0, 0, '127.0.0.1', 1453545831, 'LOG_MODULE_ADD', 'a:1:{i:0;s:32:"ACP_BOARD_ANNOUNCEMENTS_SETTINGS";}'),
	(44, 0, 2, 0, 0, 0, '127.0.0.1', 1453545834, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:24:"phpbb/boardannouncements";}'),
	(45, 0, 2, 0, 0, 0, '127.0.0.1', 1453546006, 'BOARD_ANNOUNCEMENTS_UPDATED_LOG', ''),
	(46, 0, 2, 0, 0, 0, '127.0.0.1', 1453546169, 'LOG_MODULE_ADD', 'a:1:{i:0;s:13:"PST_TITLE_ACP";}'),
	(47, 0, 2, 0, 0, 0, '127.0.0.1', 1453546169, 'LOG_MODULE_ADD', 'a:1:{i:0;s:12:"PST_SETTINGS";}'),
	(48, 0, 2, 0, 0, 0, '127.0.0.1', 1453546173, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:12:"PST_SETTINGS";}'),
	(49, 0, 2, 0, 0, 0, '127.0.0.1', 1453546174, 'LOG_MODULE_ADD', 'a:1:{i:0;s:12:"PST_SETTINGS";}'),
	(50, 0, 2, 0, 0, 0, '127.0.0.1', 1453546175, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:17:"vse/similartopics";}'),
	(51, 0, 2, 0, 0, 0, '127.0.0.1', 1453546292, 'PST_LOG_FULLTEXT', 'a:1:{i:0;s:12:"phpbb_topics";}'),
	(52, 0, 2, 0, 0, 0, '127.0.0.1', 1453546404, 'PST_LOG_MSG', ''),
	(53, 0, 2, 0, 0, 0, '127.0.0.1', 1453546435, 'PST_LOG_MSG', ''),
	(54, 0, 2, 0, 0, 0, '127.0.0.1', 1453546442, 'PST_LOG_MSG', ''),
	(55, 0, 2, 0, 0, 0, '127.0.0.1', 1453546587, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:8:"Боты";}'),
	(56, 0, 2, 0, 0, 0, '127.0.0.1', 1453546626, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:45:"Стандартные возможности";}'),
	(57, 0, 2, 0, 0, 0, '127.0.0.1', 1453546640, 'LOG_U_ROLE_EDIT', 'a:1:{i:0;s:29:"Все возможности";}'),
	(58, 0, 2, 0, 0, 0, '127.0.0.1', 1453546974, 'LOG_PURGE_CACHE', ''),
	(59, 0, 2, 0, 0, 0, '127.0.0.1', 1453547409, 'LOG_MODULE_ADD', 'a:1:{i:0;s:14:"ACP_QUICKREPLY";}'),
	(60, 0, 2, 0, 0, 0, '127.0.0.1', 1453547410, 'LOG_MODULE_ADD', 'a:1:{i:0;s:22:"ACP_QUICKREPLY_EXPLAIN";}'),
	(61, 0, 2, 0, 0, 0, '127.0.0.1', 1453547422, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:21:"boardtools/quickreply";}'),
	(62, 0, 2, 0, 0, 0, '127.0.0.1', 1453547586, 'PST_LOG_MSG', ''),
	(63, 0, 2, 0, 0, 0, '127.0.0.1', 1453547761, 'LOG_MODULE_ADD', 'a:1:{i:0;s:11:"ACP_FAVICON";}'),
	(64, 0, 2, 0, 0, 0, '127.0.0.1', 1453547762, 'LOG_MODULE_ADD', 'a:1:{i:0;s:19:"ACP_FAVICON_EXPLAIN";}'),
	(65, 0, 2, 0, 0, 0, '127.0.0.1', 1453547763, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:16:"tatiana5/favicon";}'),
	(66, 0, 2, 0, 0, 0, '127.0.0.1', 1453548000, 'LOG_ADMIN_AUTH_SUCCESS', ''),
	(67, 0, 2, 0, 0, 0, '127.0.0.1', 1453548007, 'LOG_PURGE_CACHE', ''),
	(68, 0, 2, 0, 0, 0, '127.0.0.1', 1453548388, 'LOG_PURGE_CACHE', ''),
	(69, 0, 2, 0, 0, 0, '127.0.0.1', 1453548399, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:17:"bb3mobi/highslide";}'),
	(70, 0, 2, 0, 0, 0, '127.0.0.1', 1453548913, 'LOG_STYLE_ADD', 'a:1:{i:0;s:12:"we_universal";}'),
	(71, 0, 2, 0, 0, 0, '127.0.0.1', 1453548945, 'LOG_STYLE_EDIT_DETAILS', 'a:1:{i:0;s:12:"we_universal";}'),
	(72, 0, 2, 0, 0, 0, '127.0.0.1', 1453549333, 'BOARD_ANNOUNCEMENTS_UPDATED_LOG', ''),
	(73, 0, 2, 0, 0, 0, '127.0.0.1', 1453549882, 'LOG_STYLE_ADD', 'a:1:{i:0;s:6:"PBTech";}'),
	(74, 0, 2, 0, 0, 0, '127.0.0.1', 1453549909, 'LOG_STYLE_EDIT_DETAILS', 'a:1:{i:0;s:12:"we_universal";}'),
	(75, 0, 2, 0, 0, 0, '127.0.0.1', 1453550005, 'LOG_STYLE_EDIT_DETAILS', 'a:1:{i:0;s:12:"we_universal";}'),
	(76, 0, 2, 0, 0, 0, '127.0.0.1', 1453550075, 'LOG_STYLE_EDIT_DETAILS', 'a:1:{i:0;s:12:"we_universal";}'),
	(77, 0, 2, 0, 0, 0, '127.0.0.1', 1453550092, 'LOG_STYLE_DELETE', 'a:1:{i:0;s:12:"we_universal";}'),
	(78, 0, 2, 0, 0, 0, '127.0.0.1', 1453552509, 'LOG_PURGE_CACHE', '');
/*!40000 ALTER TABLE `phpbb_log` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_login_attempts
CREATE TABLE IF NOT EXISTS `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  KEY `att_ip` (`attempt_ip`,`attempt_time`),
  KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  KEY `att_time` (`attempt_time`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_login_attempts: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_login_attempts` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_migrations
CREATE TABLE IF NOT EXISTS `phpbb_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `migration_end_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`migration_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_migrations: ~193 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_migrations` DISABLE KEYS */;
INSERT INTO `phpbb_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
	('\\boardtools\\quickreply\\migrations\\v0xx\\v_0_0_1', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453547408, 1453547411),
	('\\boardtools\\quickreply\\migrations\\v0xx\\v_0_1_0', 'a:1:{i:0;s:46:"\\boardtools\\quickreply\\migrations\\v0xx\\v_0_0_1";}', 1, 1, '', 1453547411, 1453547412),
	('\\boardtools\\quickreply\\migrations\\v0xx\\v_0_1_1', 'a:1:{i:0;s:46:"\\boardtools\\quickreply\\migrations\\v0xx\\v_0_1_0";}', 1, 1, '', 1453547412, 1453547412),
	('\\boardtools\\quickreply\\migrations\\v0xx\\v_0_1_2', 'a:1:{i:0;s:46:"\\boardtools\\quickreply\\migrations\\v0xx\\v_0_1_1";}', 1, 1, '', 1453547412, 1453547413),
	('\\boardtools\\quickreply\\migrations\\v0xx\\v_0_1_3', 'a:1:{i:0;s:46:"\\boardtools\\quickreply\\migrations\\v0xx\\v_0_1_2";}', 1, 1, '', 1453547413, 1453547415),
	('\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0', 'a:1:{i:0;s:52:"\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0_beta5";}', 1, 1, '', 1453547420, 1453547421),
	('\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0_beta', 'a:1:{i:0;s:46:"\\boardtools\\quickreply\\migrations\\v0xx\\v_0_1_3";}', 1, 1, '', 1453547415, 1453547416),
	('\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0_beta2', 'a:1:{i:0;s:51:"\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0_beta";}', 1, 1, '', 1453547416, 1453547417),
	('\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0_beta3', 'a:1:{i:0;s:52:"\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0_beta2";}', 1, 1, '', 1453547417, 1453547418),
	('\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0_beta4', 'a:1:{i:0;s:52:"\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0_beta3";}', 1, 1, '', 1453547418, 1453547419),
	('\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0_beta5', 'a:1:{i:0;s:52:"\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0_beta4";}', 1, 1, '', 1453547419, 1453547420),
	('\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_1', 'a:1:{i:0;s:46:"\\boardtools\\quickreply\\migrations\\v1xx\\v_1_0_0";}', 1, 1, '', 1453547421, 1453547422),
	('\\phpbb\\boardannouncements\\migrations\\v10x\\m1_initial_schema', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v310\\gold";}', 1, 1, '', 1453545827, 1453545828),
	('\\phpbb\\boardannouncements\\migrations\\v10x\\m2_initial_data', 'a:1:{i:0;s:59:"\\phpbb\\boardannouncements\\migrations\\v10x\\m1_initial_schema";}', 1, 1, '', 1453545829, 1453545830),
	('\\phpbb\\boardannouncements\\migrations\\v10x\\m3_initial_module', 'a:1:{i:0;s:57:"\\phpbb\\boardannouncements\\migrations\\v10x\\m2_initial_data";}', 1, 1, '', 1453545830, 1453545831),
	('\\phpbb\\boardannouncements\\migrations\\v10x\\m4_announcements_dismiss_config', 'a:1:{i:0;s:59:"\\phpbb\\boardannouncements\\migrations\\v10x\\m3_initial_module";}', 1, 1, '', 1453545831, 1453545832),
	('\\phpbb\\boardannouncements\\migrations\\v10x\\m5_enable_announcements_for_new_users', 'a:1:{i:0;s:73:"\\phpbb\\boardannouncements\\migrations\\v10x\\m4_announcements_dismiss_config";}', 1, 1, '', 1453545832, 1453545833),
	('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1";}', 1, 1, '', 1453480100, 1453480100),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0', 'a:0:{}', 1, 1, '', 1453480100, 1453480100),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1";}', 1, 1, '', 1453480100, 1453480100),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3";}', 1, 1, '', 1453480100, 1453480100),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9";}', 1, 1, '', 1453480100, 1453480100),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1";}', 1, 1, '', 1453480100, 1453480100),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2";}', 1, 1, '', 1453480101, 1453480101),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2";}', 1, 1, '', 1453480101, 1453480101),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10";}', 1, 1, '', 1453480102, 1453480102),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1";}', 1, 1, '', 1453480102, 1453480102),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3";}', 1, 1, '', 1453480102, 1453480102),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1453480102, 1453480102),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1";}', 1, 1, '', 1453480103, 1453480103),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2";}', 1, 1, '', 1453480103, 1453480103),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1";}', 1, 1, '', 1453480103, 1453480103),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13";}', 1, 1, '', 1453480103, 1453480103),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12";}', 1, 1, '', 1453480103, 1453480103),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1";}', 1, 1, '', 1453480103, 1453480103),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13";}', 1, 1, '', 1453480103, 1453480103),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0";}', 1, 1, '', 1453480103, 1453480103),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2";}', 1, 1, '', 1453480104, 1453480104),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1";}', 1, 1, '', 1453480104, 1453480104),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1";}', 1, 1, '', 1453480104, 1453480104),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1";}', 1, 1, '', 1453480104, 1453480104),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2";}', 1, 1, '', 1453480104, 1453480104),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1";}', 1, 1, '', 1453480104, 1453480104),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3";}', 1, 1, '', 1453480104, 1453480104),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 'a:1:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2";}', 1, 1, '', 1453480104, 1453480104),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4";}', 1, 1, '', 1453480104, 1453480104),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1";}', 1, 1, '', 1453480105, 1453480105),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module', 'a:1:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta1";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\jquery_update";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v310\\alpha1', 'a:18:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode";i:1;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12";i:2;s:57:"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module";i:3;s:39:"\\phpbb\\db\\migration\\data\\v310\\allow_cdn";i:4;s:49:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth";i:5;s:37:"\\phpbb\\db\\migration\\data\\v310\\avatars";i:6;s:40:"\\phpbb\\db\\migration\\data\\v310\\boardindex";i:7;s:44:"\\phpbb\\db\\migration\\data\\v310\\config_db_text";i:8;s:45:"\\phpbb\\db\\migration\\data\\v310\\forgot_password";i:9;s:41:"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite";i:10;s:49:"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop";i:11;s:40:"\\phpbb\\db\\migration\\data\\v310\\namespaces";i:12;s:48:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron";i:13;s:60:"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert";i:14;s:38:"\\phpbb\\db\\migration\\data\\v310\\plupload";i:15;s:51:"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth";i:16;s:52:"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules";i:17;s:38:"\\phpbb\\db\\migration\\data\\v310\\teampage";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v310\\alpha2', 'a:2:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha1";i:1;s:51:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2";}', 1, 1, '', 1453480106, 1453480106),
	('\\phpbb\\db\\migration\\data\\v310\\alpha3', 'a:4:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha2";i:1;s:42:"\\phpbb\\db\\migration\\data\\v310\\avatar_types";i:2;s:39:"\\phpbb\\db\\migration\\data\\v310\\passwords";i:3;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1453480107, 1453480107),
	('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 'a:0:{}', 1, 1, '', 1453480107, 1453480107),
	('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2', 'a:1:{i:0;s:49:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth";}', 1, 1, '', 1453480107, 1453480107),
	('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:37:"\\phpbb\\db\\migration\\data\\v310\\avatars";}', 1, 1, '', 1453480107, 1453480107),
	('\\phpbb\\db\\migration\\data\\v310\\avatars', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1453480107, 1453480107),
	('\\phpbb\\db\\migration\\data\\v310\\beta1', 'a:7:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha3";i:1;s:42:"\\phpbb\\db\\migration\\data\\v310\\passwords_p2";i:2;s:52:"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop";i:3;s:63:"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings";i:4;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location";i:5;s:54:"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2";i:6;s:48:"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module";}', 1, 1, '', 1453480107, 1453480107),
	('\\phpbb\\db\\migration\\data\\v310\\beta2', 'a:3:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta1";i:1;s:52:"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module";i:2;s:59:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup";}', 1, 1, '', 1453480107, 1453480107),
	('\\phpbb\\db\\migration\\data\\v310\\beta3', 'a:6:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta2";i:1;s:50:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\board_contact_name";i:3;s:44:"\\phpbb\\db\\migration\\data\\v310\\jquery_update2";i:4;s:50:"\\phpbb\\db\\migration\\data\\v310\\live_searches_config";i:5;s:49:"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics";}', 1, 1, '', 1453480107, 1453480107),
	('\\phpbb\\db\\migration\\data\\v310\\beta4', 'a:3:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta3";i:1;s:69:"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable";i:2;s:58:"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin";}', 1, 1, '', 1453480107, 1453480107),
	('\\phpbb\\db\\migration\\data\\v310\\board_contact_name', 'a:1:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta2";}', 1, 1, '', 1453480108, 1453480108),
	('\\phpbb\\db\\migration\\data\\v310\\boardindex', 'a:0:{}', 1, 1, '', 1453480108, 1453480108),
	('\\phpbb\\db\\migration\\data\\v310\\bot_update', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc6";}', 1, 1, '', 1453480108, 1453480108),
	('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc2";}', 1, 1, '', 1453480108, 1453480108),
	('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1453480108, 1453480108),
	('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module', 'a:0:{}', 1, 1, '', 1453480108, 1453480108),
	('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v310\\config_db_text";}', 1, 1, '', 1453480108, 1453480108),
	('\\phpbb\\db\\migration\\data\\v310\\dev', 'a:5:{i:0;s:40:"\\phpbb\\db\\migration\\data\\v310\\extensions";i:1;s:45:"\\phpbb\\db\\migration\\data\\v310\\style_update_p2";i:2;s:41:"\\phpbb\\db\\migration\\data\\v310\\timezone_p2";i:3;s:52:"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display";i:4;s:46:"\\phpbb\\db\\migration\\data\\v310\\migrations_table";}', 1, 1, '', 1453480108, 1453480108),
	('\\phpbb\\db\\migration\\data\\v310\\extensions', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1453480109, 1453480109),
	('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480109, 1453480109),
	('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1453480109, 1453480109),
	('\\phpbb\\db\\migration\\data\\v310\\gold', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc6";i:1;s:40:"\\phpbb\\db\\migration\\data\\v310\\bot_update";}', 1, 1, '', 1453480109, 1453480109),
	('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480109, 1453480109),
	('\\phpbb\\db\\migration\\data\\v310\\jquery_update2', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\jquery_update";}', 1, 1, '', 1453480109, 1453480109),
	('\\phpbb\\db\\migration\\data\\v310\\live_searches_config', 'a:0:{}', 1, 1, '', 1453480109, 1453480109),
	('\\phpbb\\db\\migration\\data\\v310\\migrations_table', 'a:0:{}', 1, 1, '', 1453480109, 1453480109),
	('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480109, 1453480109),
	('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480110, 1453480110),
	('\\phpbb\\db\\migration\\data\\v310\\namespaces', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480110, 1453480110),
	('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix";}', 1, 1, '', 1453480110, 1453480110),
	('\\phpbb\\db\\migration\\data\\v310\\notifications', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480110, 1453480110),
	('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\notifications";}', 1, 1, '', 1453480110, 1453480110),
	('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron";}', 1, 1, '', 1453480110, 1453480110),
	('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\notifications";}', 1, 1, '', 1453480110, 1453480110),
	('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";}', 1, 1, '', 1453480110, 1453480110),
	('\\phpbb\\db\\migration\\data\\v310\\passwords', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1453480110, 1453480110),
	('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1', 'a:1:{i:0;s:42:"\\phpbb\\db\\migration\\data\\v310\\passwords_p2";}', 1, 1, '', 1453480110, 1453480110),
	('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1";}', 1, 1, '', 1453480111, 1453480111),
	('\\phpbb\\db\\migration\\data\\v310\\passwords_p2', 'a:1:{i:0;s:39:"\\phpbb\\db\\migration\\data\\v310\\passwords";}', 1, 1, '', 1453480111, 1453480111),
	('\\phpbb\\db\\migration\\data\\v310\\plupload', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480111, 1453480111),
	('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480111, 1453480111),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup";}', 1, 1, '', 1453480111, 1453480111),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol";}', 1, 1, '', 1453480111, 1453480111),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup";}', 1, 1, '', 1453480111, 1453480111),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup', 'a:2:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests";i:1;s:53:"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation";}', 1, 1, '', 1453480111, 1453480111),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";}', 1, 1, '', 1453480111, 1453480111),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1453480111, 1453480111),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";}', 1, 1, '', 1453480112, 1453480112),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1453480112, 1453480112),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";}', 1, 1, '', 1453480112, 1453480112),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq";}', 1, 1, '', 1453480112, 1453480112),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";}', 1, 1, '', 1453480112, 1453480112),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_location', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";i:1;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";}', 1, 1, '', 1453480112, 1453480112),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup', 'a:1:{i:0;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location";}', 1, 1, '', 1453480112, 1453480112),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation', 'a:1:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests";}', 1, 1, '', 1453480112, 1453480112),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup";}', 1, 1, '', 1453480112, 1453480112),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1453480113, 1453480113),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1453480113, 1453480113),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1453480113, 1453480113),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_types', 'a:1:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha2";}', 1, 1, '', 1453480113, 1453480113),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_website', 'a:2:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";i:1;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup";}', 1, 1, '', 1453480113, 1453480113),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_website";}', 1, 1, '', 1453480113, 1453480113),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm', 'a:1:{i:0;s:58:"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup";}', 1, 1, '', 1453480113, 1453480113),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm";}', 1, 1, '', 1453480113, 1453480113),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup";}', 1, 1, '', 1453480114, 1453480114),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo";}', 1, 1, '', 1453480114, 1453480114),
	('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1453480114, 1453480114),
	('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480114, 1453480114),
	('\\phpbb\\db\\migration\\data\\v310\\rc1', 'a:9:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta4";i:1;s:54:"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form";i:3;s:50:"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2";i:4;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook";i:5;s:53:"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus";i:6;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype";i:7;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter";i:8;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube";}', 1, 1, '', 1453480114, 1453480114),
	('\\phpbb\\db\\migration\\data\\v310\\rc2', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc1";}', 1, 1, '', 1453480114, 1453480114),
	('\\phpbb\\db\\migration\\data\\v310\\rc3', 'a:5:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc2";i:1;s:45:"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins";i:2;s:53:"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes";i:3;s:41:"\\phpbb\\db\\migration\\data\\v310\\search_type";i:4;s:49:"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username";}', 1, 1, '', 1453480114, 1453480114),
	('\\phpbb\\db\\migration\\data\\v310\\rc4', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";i:1;s:57:"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name";}', 1, 1, '', 1453480114, 1453480114),
	('\\phpbb\\db\\migration\\data\\v310\\rc5', 'a:3:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc4";i:1;s:66:"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length";i:2;s:53:"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache";}', 1, 1, '', 1453480114, 1453480114),
	('\\phpbb\\db\\migration\\data\\v310\\rc6', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc5";}', 1, 1, '', 1453480114, 1453480114),
	('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc4";}', 1, 1, '', 1453480115, 1453480115),
	('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0";}', 1, 1, '', 1453480115, 1453480115),
	('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1453480115, 1453480115),
	('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480115, 1453480115),
	('\\phpbb\\db\\migration\\data\\v310\\search_type', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480115, 1453480115),
	('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480115, 1453480115),
	('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert', 'a:1:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha3";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2', 'a:1:{i:0;s:53:"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:43:"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2";}', 1, 1, '', 1453480115, 1453480115),
	('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480115, 1453480115),
	('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:43:"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1";}', 1, 1, '', 1453480115, 1453480115),
	('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 'a:1:{i:0;s:45:"\\phpbb\\db\\migration\\data\\v310\\style_update_p1";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v310\\teampage', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v310\\timezone', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 'a:1:{i:0;s:38:"\\phpbb\\db\\migration\\data\\v310\\timezone";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v31x\\m_pm_report', 'a:1:{i:0;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v316rc1";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v311";}', 1, 1, '', 1453480116, 1453480116),
	('\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v312";}', 1, 1, '', 1453480117, 1453480117),
	('\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v311";}', 1, 1, '', 1453480117, 1453480117),
	('\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v312";}', 1, 1, '', 1453480117, 1453480117),
	('\\phpbb\\db\\migration\\data\\v31x\\style_update', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v310\\gold";}', 1, 1, '', 1453480117, 1453480117),
	('\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v312";}', 1, 1, '', 1453480117, 1453480117),
	('\\phpbb\\db\\migration\\data\\v31x\\v311', 'a:2:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v310\\gold";i:1;s:42:"\\phpbb\\db\\migration\\data\\v31x\\style_update";}', 1, 1, '', 1453480117, 1453480117),
	('\\phpbb\\db\\migration\\data\\v31x\\v312', 'a:1:{i:0;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v312rc1";}', 1, 1, '', 1453480117, 1453480117),
	('\\phpbb\\db\\migration\\data\\v31x\\v312rc1', 'a:2:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v311";i:1;s:49:"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global";}', 1, 1, '', 1453480117, 1453480117),
	('\\phpbb\\db\\migration\\data\\v31x\\v313', 'a:1:{i:0;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v313rc2";}', 1, 1, '', 1453480117, 1453480117),
	('\\phpbb\\db\\migration\\data\\v31x\\v313rc1', 'a:5:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1";i:1;s:54:"\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic";i:2;s:71:"\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha";i:3;s:59:"\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url";i:4;s:60:"\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn";}', 1, 1, '', 1453480118, 1453480118),
	('\\phpbb\\db\\migration\\data\\v31x\\v313rc2', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1";i:1;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v313rc1";}', 1, 1, '', 1453480118, 1453480118),
	('\\phpbb\\db\\migration\\data\\v31x\\v314', 'a:2:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14";i:1;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v314rc2";}', 1, 1, '', 1453480118, 1453480118),
	('\\phpbb\\db\\migration\\data\\v31x\\v314rc1', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v313";}', 1, 1, '', 1453480118, 1453480118),
	('\\phpbb\\db\\migration\\data\\v31x\\v314rc2', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1";i:1;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v314rc1";}', 1, 1, '', 1453480118, 1453480118),
	('\\phpbb\\db\\migration\\data\\v31x\\v315', 'a:1:{i:0;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v315rc1";}', 1, 1, '', 1453480118, 1453480118),
	('\\phpbb\\db\\migration\\data\\v31x\\v315rc1', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v314";}', 1, 1, '', 1453480118, 1453480118),
	('\\phpbb\\db\\migration\\data\\v31x\\v316', 'a:1:{i:0;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v316rc1";}', 1, 1, '', 1453480118, 1453480118),
	('\\phpbb\\db\\migration\\data\\v31x\\v316rc1', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v315";}', 1, 1, '', 1453480119, 1453480119),
	('\\phpbb\\db\\migration\\data\\v31x\\v317', 'a:1:{i:0;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v317rc1";}', 1, 1, '', 1453480119, 1453480119),
	('\\phpbb\\db\\migration\\data\\v31x\\v317pl1', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v317";}', 1, 1, '', 1453480119, 1453480119),
	('\\phpbb\\db\\migration\\data\\v31x\\v317rc1', 'a:2:{i:0;s:41:"\\phpbb\\db\\migration\\data\\v31x\\m_pm_report";i:1;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v316";}', 1, 1, '', 1453480119, 1453480119),
	('\\pico\\autodbbackup\\migrations\\v1xx\\m1_initial_config', 'a:0:{}', 1, 1, '', 1453545296, 1453545297),
	('\\pico\\autodbbackup\\migrations\\v1xx\\m2_initial_module', 'a:0:{}', 1, 1, '', 1453545297, 1453545298),
	('\\rmcgirr83\\elonw\\migrations\\v1x\\release_1_0_0_data', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453545631, 1453545632),
	('\\rmcgirr83\\elonw\\migrations\\v1x\\release_1_0_0_schema', 'a:0:{}', 1, 1, '', 1453545632, 1453545633),
	('\\rmcgirr83\\elonw\\migrations\\v1x\\release_1_0_1', 'a:1:{i:0;s:50:"\\rmcgirr83\\elonw\\migrations\\v1x\\release_1_0_0_data";}', 1, 1, '', 1453545634, 1453545634),
	('\\tatiana5\\favicon\\migrations\\v0xx\\v_0_0_2', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1453547760, 1453547762),
	('\\tatiana5\\favicon\\migrations\\v0xx\\v_0_0_3', 'a:1:{i:0;s:41:"\\tatiana5\\favicon\\migrations\\v0xx\\v_0_0_2";}', 1, 1, '', 1453547762, 1453547762),
	('\\vse\\similartopics\\migrations\\release_1_1_0_data', 'a:1:{i:0;s:50:"\\vse\\similartopics\\migrations\\release_1_1_0_schema";}', 1, 1, '', 1453546167, 1453546170),
	('\\vse\\similartopics\\migrations\\release_1_1_0_schema', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc2";}', 1, 1, '', 1453546166, 1453546167),
	('\\vse\\similartopics\\migrations\\release_1_1_1_data', 'a:1:{i:0;s:48:"\\vse\\similartopics\\migrations\\release_1_1_0_data";}', 1, 1, '', 1453546170, 1453546171),
	('\\vse\\similartopics\\migrations\\release_1_1_6_data', 'a:1:{i:0;s:48:"\\vse\\similartopics\\migrations\\release_1_1_1_data";}', 1, 1, '', 1453546171, 1453546172),
	('\\vse\\similartopics\\migrations\\release_1_3_0_data', 'a:1:{i:0;s:50:"\\vse\\similartopics\\migrations\\release_1_3_0_schema";}', 1, 1, '', 1453546173, 1453546174),
	('\\vse\\similartopics\\migrations\\release_1_3_0_fulltext', 'a:1:{i:0;s:48:"\\vse\\similartopics\\migrations\\release_1_3_0_data";}', 1, 1, '', 0, 0),
	('\\vse\\similartopics\\migrations\\release_1_3_0_schema', 'a:1:{i:0;s:48:"\\vse\\similartopics\\migrations\\release_1_1_6_data";}', 1, 1, '', 1453546172, 1453546173),
	('\\vse\\similartopics\\migrations\\release_1_3_1_data', 'a:1:{i:0;s:48:"\\vse\\similartopics\\migrations\\release_1_3_0_data";}', 1, 1, '', 1453546174, 1453546175);
/*!40000 ALTER TABLE `phpbb_migrations` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_moderator_cache
CREATE TABLE IF NOT EXISTS `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_moderator_cache: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_moderator_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_moderator_cache` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_modules
CREATE TABLE IF NOT EXISTS `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_modules: ~173 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_modules` DISABLE KEYS */;
INSERT INTO `phpbb_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
	(1, 1, 1, '', 'acp', 0, 1, 66, 'ACP_CAT_GENERAL', '', ''),
	(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
	(3, 1, 1, '', 'acp', 1, 18, 43, 'ACP_BOARD_CONFIGURATION', '', ''),
	(4, 1, 1, '', 'acp', 1, 44, 51, 'ACP_CLIENT_COMMUNICATION', '', ''),
	(5, 1, 1, '', 'acp', 1, 52, 65, 'ACP_SERVER_CONFIGURATION', '', ''),
	(6, 1, 1, '', 'acp', 0, 67, 86, 'ACP_CAT_FORUMS', '', ''),
	(7, 1, 1, '', 'acp', 6, 68, 73, 'ACP_MANAGE_FORUMS', '', ''),
	(8, 1, 1, '', 'acp', 6, 74, 85, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
	(9, 1, 1, '', 'acp', 0, 87, 114, 'ACP_CAT_POSTING', '', ''),
	(10, 1, 1, '', 'acp', 9, 88, 101, 'ACP_MESSAGES', '', ''),
	(11, 1, 1, '', 'acp', 9, 102, 113, 'ACP_ATTACHMENTS', '', ''),
	(12, 1, 1, '', 'acp', 0, 115, 172, 'ACP_CAT_USERGROUP', '', ''),
	(13, 1, 1, '', 'acp', 12, 116, 151, 'ACP_CAT_USERS', '', ''),
	(14, 1, 1, '', 'acp', 12, 152, 161, 'ACP_GROUPS', '', ''),
	(15, 1, 1, '', 'acp', 12, 162, 171, 'ACP_USER_SECURITY', '', ''),
	(16, 1, 1, '', 'acp', 0, 173, 222, 'ACP_CAT_PERMISSIONS', '', ''),
	(17, 1, 1, '', 'acp', 16, 176, 185, 'ACP_GLOBAL_PERMISSIONS', '', ''),
	(18, 1, 1, '', 'acp', 16, 186, 197, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
	(19, 1, 1, '', 'acp', 16, 198, 207, 'ACP_PERMISSION_ROLES', '', ''),
	(20, 1, 1, '', 'acp', 16, 208, 221, 'ACP_PERMISSION_MASKS', '', ''),
	(21, 1, 1, '', 'acp', 0, 223, 238, 'ACP_CAT_CUSTOMISE', '', ''),
	(22, 1, 1, '', 'acp', 21, 228, 233, 'ACP_STYLE_MANAGEMENT', '', ''),
	(23, 1, 1, '', 'acp', 21, 224, 227, 'ACP_EXTENSION_MANAGEMENT', '', ''),
	(24, 1, 1, '', 'acp', 21, 234, 237, 'ACP_LANGUAGE', '', ''),
	(25, 1, 1, '', 'acp', 0, 239, 260, 'ACP_CAT_MAINTENANCE', '', ''),
	(26, 1, 1, '', 'acp', 25, 240, 249, 'ACP_FORUM_LOGS', '', ''),
	(27, 1, 1, '', 'acp', 25, 250, 259, 'ACP_CAT_DATABASE', '', ''),
	(28, 1, 1, '', 'acp', 0, 261, 284, 'ACP_CAT_SYSTEM', '', ''),
	(29, 1, 1, '', 'acp', 28, 262, 265, 'ACP_AUTOMATION', '', ''),
	(30, 1, 1, '', 'acp', 28, 266, 275, 'ACP_GENERAL_TASKS', '', ''),
	(31, 1, 1, '', 'acp', 28, 276, 283, 'ACP_MODULE_MANAGEMENT', '', ''),
	(32, 1, 1, '', 'acp', 0, 285, 302, 'ACP_CAT_DOT_MODS', '', ''),
	(33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
	(34, 1, 1, 'acp_attachments', 'acp', 11, 103, 104, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
	(35, 1, 1, 'acp_attachments', 'acp', 11, 105, 106, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
	(36, 1, 1, 'acp_attachments', 'acp', 11, 107, 108, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
	(37, 1, 1, 'acp_attachments', 'acp', 11, 109, 110, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
	(38, 1, 1, 'acp_attachments', 'acp', 11, 111, 112, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach'),
	(39, 1, 1, 'acp_ban', 'acp', 15, 163, 164, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
	(40, 1, 1, 'acp_ban', 'acp', 15, 165, 166, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
	(41, 1, 1, 'acp_ban', 'acp', 15, 167, 168, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
	(42, 1, 1, 'acp_bbcodes', 'acp', 10, 89, 90, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
	(43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
	(44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
	(45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
	(46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
	(47, 1, 1, 'acp_board', 'acp', 10, 91, 92, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
	(48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
	(49, 1, 1, 'acp_board', 'acp', 10, 93, 94, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
	(50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
	(51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
	(52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
	(53, 1, 1, 'acp_board', 'acp', 4, 45, 46, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
	(54, 1, 1, 'acp_board', 'acp', 4, 47, 48, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
	(55, 1, 1, 'acp_board', 'acp', 5, 53, 54, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
	(56, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
	(57, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
	(58, 1, 1, 'acp_board', 'acp', 5, 59, 60, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
	(59, 1, 1, 'acp_bots', 'acp', 30, 267, 268, 'ACP_BOTS', 'bots', 'acl_a_bots'),
	(60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
	(61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
	(62, 1, 1, 'acp_contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board'),
	(63, 1, 1, 'acp_database', 'acp', 27, 251, 252, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
	(64, 1, 1, 'acp_database', 'acp', 27, 253, 254, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
	(65, 1, 1, 'acp_disallow', 'acp', 15, 169, 170, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
	(66, 1, 1, 'acp_email', 'acp', 30, 269, 270, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
	(67, 1, 1, 'acp_extensions', 'acp', 23, 225, 226, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions'),
	(68, 1, 1, 'acp_forums', 'acp', 7, 69, 70, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
	(69, 1, 1, 'acp_groups', 'acp', 14, 153, 154, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
	(70, 1, 1, 'acp_groups', 'acp', 14, 155, 156, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group'),
	(71, 1, 1, 'acp_icons', 'acp', 10, 95, 96, 'ACP_ICONS', 'icons', 'acl_a_icons'),
	(72, 1, 1, 'acp_icons', 'acp', 10, 97, 98, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
	(73, 1, 1, 'acp_inactive', 'acp', 13, 117, 118, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
	(74, 1, 1, 'acp_jabber', 'acp', 4, 49, 50, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
	(75, 1, 1, 'acp_language', 'acp', 24, 235, 236, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
	(76, 1, 1, 'acp_logs', 'acp', 26, 241, 242, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
	(77, 1, 1, 'acp_logs', 'acp', 26, 243, 244, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
	(78, 1, 1, 'acp_logs', 'acp', 26, 245, 246, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
	(79, 1, 1, 'acp_logs', 'acp', 26, 247, 248, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
	(80, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
	(81, 1, 1, 'acp_modules', 'acp', 31, 277, 278, 'ACP', 'acp', 'acl_a_modules'),
	(82, 1, 1, 'acp_modules', 'acp', 31, 279, 280, 'UCP', 'ucp', 'acl_a_modules'),
	(83, 1, 1, 'acp_modules', 'acp', 31, 281, 282, 'MCP', 'mcp', 'acl_a_modules'),
	(84, 1, 1, 'acp_permission_roles', 'acp', 19, 199, 200, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
	(85, 1, 1, 'acp_permission_roles', 'acp', 19, 201, 202, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
	(86, 1, 1, 'acp_permission_roles', 'acp', 19, 203, 204, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
	(87, 1, 1, 'acp_permission_roles', 'acp', 19, 205, 206, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
	(88, 1, 1, 'acp_permissions', 'acp', 16, 174, 175, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
	(89, 1, 0, 'acp_permissions', 'acp', 20, 209, 210, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
	(90, 1, 1, 'acp_permissions', 'acp', 18, 187, 188, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
	(91, 1, 1, 'acp_permissions', 'acp', 18, 189, 190, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
	(92, 1, 1, 'acp_permissions', 'acp', 18, 191, 192, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
	(93, 1, 1, 'acp_permissions', 'acp', 17, 177, 178, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
	(94, 1, 1, 'acp_permissions', 'acp', 13, 121, 122, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
	(95, 1, 1, 'acp_permissions', 'acp', 18, 193, 194, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
	(96, 1, 1, 'acp_permissions', 'acp', 13, 123, 124, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
	(97, 1, 1, 'acp_permissions', 'acp', 17, 179, 180, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
	(98, 1, 1, 'acp_permissions', 'acp', 14, 157, 158, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
	(99, 1, 1, 'acp_permissions', 'acp', 18, 195, 196, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
	(100, 1, 1, 'acp_permissions', 'acp', 14, 159, 160, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
	(101, 1, 1, 'acp_permissions', 'acp', 17, 181, 182, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
	(102, 1, 1, 'acp_permissions', 'acp', 17, 183, 184, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
	(103, 1, 1, 'acp_permissions', 'acp', 20, 211, 212, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
	(104, 1, 1, 'acp_permissions', 'acp', 20, 213, 214, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
	(105, 1, 1, 'acp_permissions', 'acp', 20, 215, 216, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
	(106, 1, 1, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
	(107, 1, 1, 'acp_permissions', 'acp', 20, 219, 220, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
	(108, 1, 1, 'acp_php_info', 'acp', 30, 271, 272, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
	(109, 1, 1, 'acp_profile', 'acp', 13, 125, 126, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
	(110, 1, 1, 'acp_prune', 'acp', 7, 71, 72, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
	(111, 1, 1, 'acp_prune', 'acp', 13, 127, 128, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
	(112, 1, 1, 'acp_ranks', 'acp', 13, 129, 130, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
	(113, 1, 1, 'acp_reasons', 'acp', 30, 273, 274, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
	(114, 1, 1, 'acp_search', 'acp', 5, 61, 62, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
	(115, 1, 1, 'acp_search', 'acp', 27, 255, 256, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
	(116, 1, 1, 'acp_send_statistics', 'acp', 5, 63, 64, 'ACP_SEND_STATISTICS', 'send_statistics', 'acl_a_server'),
	(117, 1, 1, 'acp_styles', 'acp', 22, 229, 230, 'ACP_STYLES', 'style', 'acl_a_styles'),
	(118, 1, 1, 'acp_styles', 'acp', 22, 231, 232, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles'),
	(119, 1, 1, 'acp_update', 'acp', 29, 263, 264, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
	(120, 1, 1, 'acp_users', 'acp', 13, 119, 120, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
	(121, 1, 0, 'acp_users', 'acp', 13, 131, 132, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
	(122, 1, 0, 'acp_users', 'acp', 13, 133, 134, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
	(123, 1, 0, 'acp_users', 'acp', 13, 135, 136, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
	(124, 1, 0, 'acp_users', 'acp', 13, 137, 138, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
	(125, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
	(126, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
	(127, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
	(128, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
	(129, 1, 0, 'acp_users', 'acp', 13, 147, 148, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
	(130, 1, 0, 'acp_users', 'acp', 13, 149, 150, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
	(131, 1, 1, 'acp_words', 'acp', 10, 99, 100, 'ACP_WORDS', 'words', 'acl_a_words'),
	(132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
	(133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
	(134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
	(135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
	(136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
	(137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
	(138, 1, 1, 'acp_permissions', 'acp', 8, 75, 76, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
	(139, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
	(140, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
	(141, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
	(142, 1, 1, 'acp_permissions', 'acp', 8, 83, 84, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
	(143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
	(144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', ''),
	(145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', ''),
	(146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', ''),
	(147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', ''),
	(148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', ''),
	(149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', ''),
	(150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
	(151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
	(152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
	(153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
	(154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
	(155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
	(156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
	(157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
	(158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
	(159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
	(160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', ''),
	(161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', ''),
	(162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 30, 31, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'acl_m_pm_report'),
	(163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 32, 33, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'acl_m_pm_report'),
	(164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 34, 35, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'acl_m_pm_report'),
	(165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
	(166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
	(167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve'),
	(168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve'),
	(169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
	(170, 1, 1, 'mcp_reports', 'mcp', 145, 24, 25, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
	(171, 1, 1, 'mcp_reports', 'mcp', 145, 26, 27, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
	(172, 1, 1, 'mcp_reports', 'mcp', 145, 28, 29, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
	(173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
	(174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
	(175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
	(176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
	(177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', ''),
	(178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', ''),
	(179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', ''),
	(180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', ''),
	(181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', ''),
	(182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', ''),
	(183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
	(184, 1, 1, 'ucp_auth_link', 'ucp', 178, 26, 27, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth'),
	(185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
	(186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
	(187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
	(188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
	(189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
	(190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
	(191, 1, 1, 'ucp_notifications', 'ucp', 179, 36, 37, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', ''),
	(192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', ''),
	(193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
	(194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
	(195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
	(196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
	(197, 1, 1, 'ucp_prefs', 'ucp', 179, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', ''),
	(198, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_POST', 'post', ''),
	(199, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_VIEW', 'view', ''),
	(200, 1, 1, 'ucp_profile', 'ucp', 178, 16, 17, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo'),
	(201, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig'),
	(202, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar'),
	(203, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
	(204, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', ''),
	(205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
	(206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', ''),
	(207, 1, 1, '\\pico\\autodbbackup\\acp\\auto_db_backup_module', 'acp', 27, 257, 258, 'ACP_AUTO_DB_BACKUP_SETTINGS', 'settings', 'ext_pico/autodbbackup && acl_a_board'),
	(208, 1, 1, '', 'acp', 32, 286, 289, 'ACP_BOARD_ANNOUNCEMENTS', '', ''),
	(209, 1, 1, '\\phpbb\\boardannouncements\\acp\\board_announcements_module', 'acp', 208, 287, 288, 'ACP_BOARD_ANNOUNCEMENTS_SETTINGS', 'settings', 'ext_phpbb/boardannouncements && acl_a_board'),
	(210, 1, 1, '', 'acp', 32, 290, 293, 'PST_TITLE_ACP', '', ''),
	(212, 1, 1, '\\vse\\similartopics\\acp\\similar_topics_module', 'acp', 210, 291, 292, 'PST_SETTINGS', 'settings', 'ext_vse/similartopics && acl_a_board'),
	(213, 1, 1, '', 'acp', 32, 294, 297, 'ACP_QUICKREPLY', '', ''),
	(214, 1, 1, '\\boardtools\\quickreply\\acp\\quickreply_module', 'acp', 213, 295, 296, 'ACP_QUICKREPLY_EXPLAIN', 'config_quickreply', 'ext_boardtools/quickreply && acl_a_quickreply'),
	(215, 1, 1, '', 'acp', 32, 298, 301, 'ACP_FAVICON', '', ''),
	(216, 1, 1, '\\tatiana5\\favicon\\acp\\favicon_module', 'acp', 215, 299, 300, 'ACP_FAVICON_EXPLAIN', 'config_favicon', 'acl_a_');
/*!40000 ALTER TABLE `phpbb_modules` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_notifications
CREATE TABLE IF NOT EXISTS `phpbb_notifications` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item_parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notification_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notification_time` int(11) unsigned NOT NULL DEFAULT '1',
  `notification_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `item_ident` (`notification_type_id`,`item_id`),
  KEY `user` (`user_id`,`notification_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_notifications: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_notifications` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_notification_types
CREATE TABLE IF NOT EXISTS `phpbb_notification_types` (
  `notification_type_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`notification_type_id`),
  UNIQUE KEY `type` (`notification_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_notification_types: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_notification_types` DISABLE KEYS */;
INSERT INTO `phpbb_notification_types` (`notification_type_id`, `notification_type_name`, `notification_type_enabled`) VALUES
	(1, 'notification.type.topic', 1),
	(2, 'notification.type.approve_topic', 1),
	(3, 'notification.type.quote', 1),
	(4, 'notification.type.bookmark', 1),
	(5, 'notification.type.post', 1),
	(6, 'notification.type.approve_post', 1);
/*!40000 ALTER TABLE `phpbb_notification_types` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_oauth_accounts
CREATE TABLE IF NOT EXISTS `phpbb_oauth_accounts` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_oauth_accounts: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_oauth_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_oauth_accounts` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_oauth_tokens
CREATE TABLE IF NOT EXISTS `phpbb_oauth_tokens` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_oauth_tokens: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_oauth_tokens` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_poll_options
CREATE TABLE IF NOT EXISTS `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_poll_options: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_poll_options` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_poll_votes
CREATE TABLE IF NOT EXISTS `phpbb_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_poll_votes: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_poll_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_poll_votes` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_posts
CREATE TABLE IF NOT EXISTS `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `post_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `post_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `tid_post_time` (`topic_id`,`post_time`),
  KEY `post_username` (`post_username`),
  KEY `post_visibility` (`post_visibility`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_posts: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_posts` DISABLE KEYS */;
INSERT INTO `phpbb_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`, `post_visibility`, `post_delete_time`, `post_delete_reason`, `post_delete_user`) VALUES
	(1, 1, 2, 2, 0, '127.0.0.1', 1453479915, 0, 1, 1, 1, 1, '', 'Добро пожаловать в phpBB3', 'Это пример сообщения на вашей конференции phpBB3. Всё работает правильно. Вы можете удалить это сообщение и продолжить настройку вашей конференции. В процессе установки вашей первой категории и первому форуму были заданы подходящие права доступа для предустановленных групп администраторов, супермодераторов, гостей, зарегистрированных пользователей и зарегистрированных в соответствии с COPPA пользователей. Если вы решите удалить вашу первую категорию и первый форум, не забудьте установить права доступа для всех новых категорий и форумов, которые вы создаёте. Рекомендуем переименовать вашу первую категорию и первый форум и копировать права доступа с них вновь создаваемым категориям и форумам. Удачи!', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
	(2, 2, 2, 2, 0, '127.0.0.1', 1453483894, 0, 1, 1, 1, 1, '', 'Новый форум', 'Это новый форум <!-- s:) --><img src="{SMILIES_PATH}/icon_e_smile.gif" alt=":)" title="Улыбается" /><!-- s:) -->', '8a410e584e2c530f47e45e39826e9bbd', 0, '', '3w98k11y', 1, 0, '', 0, 0, 0, 1, 0, '', 0),
	(3, 3, 2, 2, 0, '127.0.0.1', 1453546371, 0, 1, 1, 1, 1, '', 'Мой новый форум', 'Это мой новый форум', 'f5f4cae91396d934735b2e42064ee745', 0, '', '2c6o1hiu', 1, 0, '', 0, 0, 0, 1, 0, '', 0);
/*!40000 ALTER TABLE `phpbb_posts` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_privmsgs
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_privmsgs: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_privmsgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_privmsgs_folder
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_privmsgs_folder: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_privmsgs_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_folder` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_privmsgs_rules
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_privmsgs_rules: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_privmsgs_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_rules` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_privmsgs_to
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_privmsgs_to: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_privmsgs_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_privmsgs_to` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_profile_fields
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_ml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_is_contact` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_profile_fields: ~13 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_profile_fields` DISABLE KEYS */;
INSERT INTO `phpbb_profile_fields` (`field_id`, `field_name`, `field_type`, `field_ident`, `field_length`, `field_minlen`, `field_maxlen`, `field_novalue`, `field_default_value`, `field_validation`, `field_required`, `field_show_on_reg`, `field_hide`, `field_no_view`, `field_active`, `field_order`, `field_show_profile`, `field_show_on_vt`, `field_show_novalue`, `field_show_on_pm`, `field_show_on_ml`, `field_is_contact`, `field_contact_desc`, `field_contact_url`) VALUES
	(1, 'phpbb_location', 'profilefields.type.string', 'phpbb_location', '20', '2', '100', '', '', '.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, '', ''),
	(2, 'phpbb_website', 'profilefields.type.url', 'phpbb_website', '40', '12', '255', '', '', '', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 1, 'VISIT_WEBSITE', '%s'),
	(3, 'phpbb_interests', 'profilefields.type.text', 'phpbb_interests', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, '', ''),
	(4, 'phpbb_occupation', 'profilefields.type.text', 'phpbb_occupation', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, '', ''),
	(5, 'phpbb_aol', 'profilefields.type.string', 'phpbb_aol', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 1, '', ''),
	(6, 'phpbb_icq', 'profilefields.type.string', 'phpbb_icq', '20', '3', '15', '', '', '[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 1, 'SEND_ICQ_MESSAGE', 'https://www.icq.com/people/%s/'),
	(7, 'phpbb_wlm', 'profilefields.type.string', 'phpbb_wlm', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 7, 1, 1, 0, 1, 1, 1, '', ''),
	(8, 'phpbb_yahoo', 'profilefields.type.string', 'phpbb_yahoo', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 1, 'SEND_YIM_MESSAGE', 'ymsgr:sendim?%s'),
	(9, 'phpbb_facebook', 'profilefields.type.string', 'phpbb_facebook', '20', '5', '50', '', '', '[\\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 1, 'VIEW_FACEBOOK_PROFILE', 'http://facebook.com/%s/'),
	(10, 'phpbb_twitter', 'profilefields.type.string', 'phpbb_twitter', '20', '1', '15', '', '', '[\\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 1, 'VIEW_TWITTER_PROFILE', 'http://twitter.com/%s'),
	(11, 'phpbb_skype', 'profilefields.type.string', 'phpbb_skype', '20', '6', '32', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 1, 'VIEW_SKYPE_PROFILE', 'skype:%s?userinfo'),
	(12, 'phpbb_youtube', 'profilefields.type.string', 'phpbb_youtube', '20', '3', '60', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 1, 'VIEW_YOUTUBE_CHANNEL', 'http://youtube.com/user/%s'),
	(13, 'phpbb_googleplus', 'profilefields.type.googleplus', 'phpbb_googleplus', '20', '3', '255', '', '', '[\\w]+', 0, 0, 0, 0, 1, 13, 1, 1, 0, 1, 1, 1, 'VIEW_GOOGLEPLUS_PROFILE', 'http://plus.google.com/%s');
/*!40000 ALTER TABLE `phpbb_profile_fields` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_profile_fields_data
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_wlm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_profile_fields_data: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_profile_fields_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_fields_data` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_profile_fields_lang
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_profile_fields_lang: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_profile_fields_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_profile_fields_lang` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_profile_lang
CREATE TABLE IF NOT EXISTS `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_profile_lang: ~26 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_profile_lang` DISABLE KEYS */;
INSERT INTO `phpbb_profile_lang` (`field_id`, `lang_id`, `lang_name`, `lang_explain`, `lang_default_value`) VALUES
	(1, 1, 'LOCATION', '', ''),
	(1, 2, 'LOCATION', '', ''),
	(2, 1, 'WEBSITE', '', ''),
	(2, 2, 'WEBSITE', '', ''),
	(3, 1, 'INTERESTS', '', ''),
	(3, 2, 'INTERESTS', '', ''),
	(4, 1, 'OCCUPATION', '', ''),
	(4, 2, 'OCCUPATION', '', ''),
	(5, 1, 'AOL', '', ''),
	(5, 2, 'AOL', '', ''),
	(6, 1, 'ICQ', '', ''),
	(6, 2, 'ICQ', '', ''),
	(7, 1, 'WLM', '', ''),
	(7, 2, 'WLM', '', ''),
	(8, 1, 'YAHOO', '', ''),
	(8, 2, 'YAHOO', '', ''),
	(9, 1, 'FACEBOOK', '', ''),
	(9, 2, 'FACEBOOK', '', ''),
	(10, 1, 'TWITTER', '', ''),
	(10, 2, 'TWITTER', '', ''),
	(11, 1, 'SKYPE', '', ''),
	(11, 2, 'SKYPE', '', ''),
	(12, 1, 'YOUTUBE', '', ''),
	(12, 2, 'YOUTUBE', '', ''),
	(13, 1, 'GOOGLEPLUS', '', ''),
	(13, 2, 'GOOGLEPLUS', '', '');
/*!40000 ALTER TABLE `phpbb_profile_lang` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_ranks
CREATE TABLE IF NOT EXISTS `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_ranks: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_ranks` DISABLE KEYS */;
INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
	(1, 'Администратор', 0, 1, '');
/*!40000 ALTER TABLE `phpbb_ranks` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_reports
CREATE TABLE IF NOT EXISTS `phpbb_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reported_post_enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_reports: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_reports` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_reports_reasons
CREATE TABLE IF NOT EXISTS `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_reports_reasons: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_reports_reasons` DISABLE KEYS */;
INSERT INTO `phpbb_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
	(1, 'warez', 'Сообщение содержит ссылки на незаконные или пиратские программы.', 1),
	(2, 'spam', 'Сообщение имеет единственной целью рекламу сайтов, программ или других продуктов, товаров, услуг и пр.', 2),
	(3, 'off_topic', 'Сообщение не относится к обсуждаемой теме.', 3),
	(4, 'other', 'Причина обжалования не относится ни к одной из перечисленных, используйте поле дополнительной информации.', 4);
/*!40000 ALTER TABLE `phpbb_reports_reasons` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_search_results
CREATE TABLE IF NOT EXISTS `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_search_results: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_search_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_search_results` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_search_wordlist
CREATE TABLE IF NOT EXISTS `phpbb_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_search_wordlist: ~63 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_search_wordlist` DISABLE KEYS */;
INSERT INTO `phpbb_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
	(1, 'это', 0, 3),
	(2, 'пример', 0, 1),
	(3, 'сообщения', 0, 1),
	(4, 'вашей', 0, 1),
	(5, 'конференции', 0, 1),
	(6, 'phpbb3', 0, 2),
	(7, 'всё', 0, 1),
	(8, 'работает', 0, 1),
	(9, 'правильно', 0, 1),
	(10, 'можете', 0, 1),
	(11, 'удалить', 0, 1),
	(12, 'сообщение', 0, 1),
	(13, 'продолжить', 0, 1),
	(14, 'настройку', 0, 1),
	(15, 'процессе', 0, 1),
	(16, 'установки', 0, 1),
	(17, 'первой', 0, 1),
	(18, 'категории', 0, 1),
	(19, 'первому', 0, 1),
	(20, 'форуму', 0, 1),
	(21, 'были', 0, 1),
	(22, 'заданы', 0, 1),
	(23, 'подходящие', 0, 1),
	(24, 'права', 0, 1),
	(25, 'доступа', 0, 1),
	(26, 'для', 0, 1),
	(27, 'предустановленных', 0, 1),
	(28, 'групп', 0, 1),
	(29, 'администраторов', 0, 1),
	(30, 'супермодераторов', 0, 1),
	(31, 'гостей', 0, 1),
	(32, 'зарегистрированных', 0, 1),
	(33, 'пользователей', 0, 1),
	(34, 'соответствии', 0, 1),
	(35, 'coppa', 0, 1),
	(36, 'если', 0, 1),
	(37, 'решите', 0, 1),
	(38, 'вашу', 0, 1),
	(39, 'первую', 0, 1),
	(40, 'категорию', 0, 1),
	(41, 'первый', 0, 1),
	(42, 'форум', 0, 5),
	(43, 'забудьте', 0, 1),
	(44, 'установить', 0, 1),
	(45, 'всех', 0, 1),
	(46, 'новых', 0, 1),
	(47, 'категорий', 0, 1),
	(48, 'форумов', 0, 1),
	(49, 'которые', 0, 1),
	(50, 'создаёте', 0, 1),
	(51, 'рекомендуем', 0, 1),
	(52, 'переименовать', 0, 1),
	(53, 'копировать', 0, 1),
	(54, 'них', 0, 1),
	(55, 'вновь', 0, 1),
	(56, 'создаваемым', 0, 1),
	(57, 'категориям', 0, 1),
	(58, 'форумам', 0, 1),
	(59, 'удачи', 0, 1),
	(60, 'добро', 0, 1),
	(61, 'пожаловать', 0, 1),
	(62, 'новый', 0, 4),
	(63, 'мой', 0, 2);
/*!40000 ALTER TABLE `phpbb_search_wordlist` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_search_wordmatch
CREATE TABLE IF NOT EXISTS `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_search_wordmatch: ~74 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_search_wordmatch` DISABLE KEYS */;
INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
	(1, 1, 0),
	(2, 1, 0),
	(3, 1, 0),
	(1, 2, 0),
	(1, 3, 0),
	(1, 4, 0),
	(1, 5, 0),
	(1, 6, 0),
	(1, 6, 1),
	(1, 7, 0),
	(1, 8, 0),
	(1, 9, 0),
	(1, 10, 0),
	(1, 11, 0),
	(1, 12, 0),
	(1, 13, 0),
	(1, 14, 0),
	(1, 15, 0),
	(1, 16, 0),
	(1, 17, 0),
	(1, 18, 0),
	(1, 19, 0),
	(1, 20, 0),
	(1, 21, 0),
	(1, 22, 0),
	(1, 23, 0),
	(1, 24, 0),
	(1, 25, 0),
	(1, 26, 0),
	(1, 27, 0),
	(1, 28, 0),
	(1, 29, 0),
	(1, 30, 0),
	(1, 31, 0),
	(1, 32, 0),
	(1, 33, 0),
	(1, 34, 0),
	(1, 35, 0),
	(1, 36, 0),
	(1, 37, 0),
	(1, 38, 0),
	(1, 39, 0),
	(1, 40, 0),
	(1, 41, 0),
	(1, 42, 0),
	(2, 42, 0),
	(2, 42, 1),
	(3, 42, 0),
	(3, 42, 1),
	(1, 43, 0),
	(1, 44, 0),
	(1, 45, 0),
	(1, 46, 0),
	(1, 47, 0),
	(1, 48, 0),
	(1, 49, 0),
	(1, 50, 0),
	(1, 51, 0),
	(1, 52, 0),
	(1, 53, 0),
	(1, 54, 0),
	(1, 55, 0),
	(1, 56, 0),
	(1, 57, 0),
	(1, 58, 0),
	(1, 59, 0),
	(1, 60, 1),
	(1, 61, 1),
	(2, 62, 0),
	(2, 62, 1),
	(3, 62, 0),
	(3, 62, 1),
	(3, 63, 0),
	(3, 63, 1);
/*!40000 ALTER TABLE `phpbb_search_wordmatch` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_sessions
CREATE TABLE IF NOT EXISTS `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_sessions: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_sessions` DISABLE KEYS */;
INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`, `session_forum_id`) VALUES
	('df8c5d2c98da9b9f20b4f57c8de628e1', 2, 1453547804, 1453547999, 1453556918, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', '', 'adm/index.php', 1, 0, 1, 0);
/*!40000 ALTER TABLE `phpbb_sessions` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_sessions_keys
CREATE TABLE IF NOT EXISTS `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_sessions_keys: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_sessions_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_sessions_keys` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_sitelist
CREATE TABLE IF NOT EXISTS `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_sitelist: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_sitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_sitelist` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_smilies
CREATE TABLE IF NOT EXISTS `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_smilies: ~42 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_smilies` DISABLE KEYS */;
INSERT INTO `phpbb_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
	(1, ':D', 'Очень доволен', 'icon_e_biggrin.gif', 15, 17, 1, 1),
	(2, ':-D', 'Очень доволен', 'icon_e_biggrin.gif', 15, 17, 2, 1),
	(3, ':grin:', 'Очень доволен', 'icon_e_biggrin.gif', 15, 17, 3, 1),
	(4, ':)', 'Улыбается', 'icon_e_smile.gif', 15, 17, 4, 1),
	(5, ':-)', 'Улыбается', 'icon_e_smile.gif', 15, 17, 5, 1),
	(6, ':smile:', 'Улыбается', 'icon_e_smile.gif', 15, 17, 6, 1),
	(7, ';)', 'Подмигивает', 'icon_e_wink.gif', 15, 17, 7, 1),
	(8, ';-)', 'Подмигивает', 'icon_e_wink.gif', 15, 17, 8, 1),
	(9, ':wink:', 'Подмигивает', 'icon_e_wink.gif', 15, 17, 9, 1),
	(10, ':(', 'Грустный', 'icon_e_sad.gif', 15, 17, 10, 1),
	(11, ':-(', 'Грустный', 'icon_e_sad.gif', 15, 17, 11, 1),
	(12, ':sad:', 'Грустный', 'icon_e_sad.gif', 15, 17, 12, 1),
	(13, ':o', 'Удивлён', 'icon_e_surprised.gif', 15, 17, 13, 1),
	(14, ':-o', 'Удивлён', 'icon_e_surprised.gif', 15, 17, 14, 1),
	(15, ':eek:', 'Удивлён', 'icon_e_surprised.gif', 15, 17, 15, 1),
	(16, ':shock:', 'В шоке', 'icon_eek.gif', 15, 17, 16, 1),
	(17, ':?', 'Озадачен', 'icon_e_confused.gif', 15, 17, 17, 1),
	(18, ':-?', 'Озадачен', 'icon_e_confused.gif', 15, 17, 18, 1),
	(19, ':???:', 'Озадачен', 'icon_e_confused.gif', 15, 17, 19, 1),
	(20, '8-)', 'Всё путём', 'icon_cool.gif', 15, 17, 20, 1),
	(21, ':cool:', 'Всё путём', 'icon_cool.gif', 15, 17, 21, 1),
	(22, ':lol:', 'Смеётся', 'icon_lol.gif', 15, 17, 22, 1),
	(23, ':x', 'Раздражён', 'icon_mad.gif', 15, 17, 23, 1),
	(24, ':-x', 'Раздражён', 'icon_mad.gif', 15, 17, 24, 1),
	(25, ':mad:', 'Раздражён', 'icon_mad.gif', 15, 17, 25, 1),
	(26, ':P', 'Дразнится', 'icon_razz.gif', 15, 17, 26, 1),
	(27, ':-P', 'Дразнится', 'icon_razz.gif', 15, 17, 27, 1),
	(28, ':razz:', 'Дразнится', 'icon_razz.gif', 15, 17, 28, 1),
	(29, ':oops:', 'Смущён', 'icon_redface.gif', 15, 17, 29, 1),
	(30, ':cry:', 'Плачет или сильно расстроен', 'icon_cry.gif', 15, 17, 30, 1),
	(31, ':evil:', 'Злой или очень раздражён', 'icon_evil.gif', 15, 17, 31, 1),
	(32, ':twisted:', 'Очень зол', 'icon_twisted.gif', 15, 17, 32, 1),
	(33, ':roll:', 'Закатывает глаза', 'icon_rolleyes.gif', 15, 17, 33, 1),
	(34, ':!:', 'Восклицание', 'icon_exclaim.gif', 15, 17, 34, 1),
	(35, ':?:', 'Вопрос', 'icon_question.gif', 15, 17, 35, 1),
	(36, ':idea:', 'Идея', 'icon_idea.gif', 15, 17, 36, 1),
	(37, ':arrow:', 'Стрелка', 'icon_arrow.gif', 15, 17, 37, 1),
	(38, ':|', 'Нейтральный', 'icon_neutral.gif', 15, 17, 38, 1),
	(39, ':-|', 'Нейтральный', 'icon_neutral.gif', 15, 17, 39, 1),
	(40, ':mrgreen:', 'Зелёный', 'icon_mrgreen.gif', 15, 17, 40, 1),
	(41, ':geek:', 'Ботан', 'icon_e_geek.gif', 17, 17, 41, 1),
	(42, ':ugeek:', 'Мегаботан', 'icon_e_ugeek.gif', 17, 18, 42, 1);
/*!40000 ALTER TABLE `phpbb_smilies` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_styles
CREATE TABLE IF NOT EXISTS `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) unsigned NOT NULL DEFAULT '0',
  `style_parent_tree` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_styles: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_styles` DISABLE KEYS */;
INSERT INTO `phpbb_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `style_path`, `bbcode_bitfield`, `style_parent_id`, `style_parent_tree`) VALUES
	(1, 'prosilver', '&copy; phpBB Limited', 0, 'prosilver', 'kNg=', 0, ''),
	(3, 'PBTech', '© PayBas, 2014', 1, 'pbtech', '+Ng=', 1, 'prosilver');
/*!40000 ALTER TABLE `phpbb_styles` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_teampage
CREATE TABLE IF NOT EXISTS `phpbb_teampage` (
  `teampage_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`teampage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_teampage: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_teampage` DISABLE KEYS */;
INSERT INTO `phpbb_teampage` (`teampage_id`, `group_id`, `teampage_name`, `teampage_position`, `teampage_parent`) VALUES
	(1, 5, '', 1, 0),
	(2, 4, '', 2, 0);
/*!40000 ALTER TABLE `phpbb_teampage` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_topics
CREATE TABLE IF NOT EXISTS `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `topic_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  KEY `topic_visibility` (`topic_visibility`),
  KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`),
  FULLTEXT KEY `topic_title` (`topic_title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_topics: 3 rows
/*!40000 ALTER TABLE `phpbb_topics` DISABLE KEYS */;
INSERT INTO `phpbb_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`, `topic_visibility`, `topic_delete_time`, `topic_delete_reason`, `topic_delete_user`, `topic_posts_approved`, `topic_posts_unapproved`, `topic_posts_softdeleted`) VALUES
	(1, 2, 0, 0, 0, 'Добро пожаловать в phpBB3', 2, 1453479915, 0, 5, 0, 0, 1, 'Admin', 'AA0000', 1, 2, 'Admin', 'AA0000', 'Добро пожаловать в phpBB3', 1453479915, 1453548503, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0),
	(2, 2, 0, 0, 0, 'Новый форум', 2, 1453483894, 0, 1, 0, 0, 2, 'Admin', 'AA0000', 2, 2, 'Admin', 'AA0000', 'Новый форум', 1453483894, 1453483895, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0),
	(3, 2, 0, 0, 0, 'Мой новый форум', 2, 1453546371, 0, 16, 0, 0, 3, 'Admin', 'AA0000', 3, 2, 'Admin', 'AA0000', 'Мой новый форум', 1453546371, 1453550161, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0);
/*!40000 ALTER TABLE `phpbb_topics` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_topics_posted
CREATE TABLE IF NOT EXISTS `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_topics_posted: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_topics_posted` DISABLE KEYS */;
INSERT INTO `phpbb_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
	(2, 1, 1),
	(2, 2, 1),
	(2, 3, 1);
/*!40000 ALTER TABLE `phpbb_topics_posted` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_topics_track
CREATE TABLE IF NOT EXISTS `phpbb_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_topics_track: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_topics_track` DISABLE KEYS */;
INSERT INTO `phpbb_topics_track` (`user_id`, `topic_id`, `forum_id`, `mark_time`) VALUES
	(2, 3, 2, 1453546372);
/*!40000 ALTER TABLE `phpbb_topics_track` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_topics_watch
CREATE TABLE IF NOT EXISTS `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_topics_watch: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_topics_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_topics_watch` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_users
CREATE TABLE IF NOT EXISTS `phpbb_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_elonw` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `board_announcements_status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_similar_topics` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ajax_pagination` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `qr_soft_scroll` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `qr_enable_scroll` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_users: ~49 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_users` DISABLE KEYS */;
INSERT INTO `phpbb_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_jabber`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`, `user_elonw`, `board_announcements_status`, `user_similar_topics`, `ajax_pagination`, `qr_soft_scroll`, `qr_enable_scroll`) VALUES
	(1, 2, 1, '', 0, '', 1453479915, 'Anonymous', 'anonymous', '', 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 0, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f5c1a41b4016e085', 1, 0, 0, 1, 1, 1, 1, 1, 1),
	(2, 3, 5, 'zik0zjzik0zjzik0zj\ni1cjyo000000\nzik0zjzieeps', 0, '127.0.0.1', 1453479915, 'Admin', 'admin', '$2y$10$qzsA2hXF/yNUikjaDvpQa.TBE1Y.JWQVhDFS.ClYq3RpMBnnLf.6u', 0, 'admin@mail.ru', 106359372813, '', 1453547804, 1453483745, 1453546371, 'memberlist.php', '', 0, 0, 0, 0, 0, 0, 3, 'ru', '', '|d M Y|, H:i', 3, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'a4a93ff99e51b877', 1, 0, 0, 1, 1, 1, 1, 1, 1),
	(3, 2, 6, '', 0, '', 1453480066, 'AdsBot [Google]', 'adsbot [google]', '', 1453480066, '', 0, '', 0, 1453480066, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e99b980952469b43', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(4, 2, 6, '', 0, '', 1453480067, 'Alexa [Bot]', 'alexa [bot]', '', 1453480067, '', 0, '', 0, 1453480067, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd50af2721834f12a', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(5, 2, 6, '', 0, '', 1453480068, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1453480068, '', 0, '', 0, 1453480068, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b4487e9d3dd42fc5', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(6, 2, 6, '', 0, '', 1453480069, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1453480069, '', 0, '', 0, 1453480069, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '43547ce9071a8718', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(7, 2, 6, '', 0, '', 1453480070, 'Baidu [Spider]', 'baidu [spider]', '', 1453480070, '', 0, '', 0, 1453480070, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'a967f2dce1fda987', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(8, 2, 6, '', 0, '', 1453480070, 'Bing [Bot]', 'bing [bot]', '', 1453480070, '', 0, '', 0, 1453480070, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '509868db5f44d702', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(9, 2, 6, '', 0, '', 1453480071, 'Exabot [Bot]', 'exabot [bot]', '', 1453480071, '', 0, '', 0, 1453480071, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '56133c28f1b2380b', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(10, 2, 6, '', 0, '', 1453480072, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1453480072, '', 0, '', 0, 1453480072, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e4e0f6eaa4c98479', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(11, 2, 6, '', 0, '', 1453480072, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1453480072, '', 0, '', 0, 1453480072, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'cbc6ef0b6014cc95', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(12, 2, 6, '', 0, '', 1453480073, 'Francis [Bot]', 'francis [bot]', '', 1453480073, '', 0, '', 0, 1453480073, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '83c75e2f86906e7d', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(13, 2, 6, '', 0, '', 1453480074, 'Gigabot [Bot]', 'gigabot [bot]', '', 1453480074, '', 0, '', 0, 1453480074, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c5ecde7a70d87537', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(14, 2, 6, '', 0, '', 1453480074, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1453480074, '', 0, '', 0, 1453480074, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9e59f7c708400054', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(15, 2, 6, '', 0, '', 1453480075, 'Google Desktop', 'google desktop', '', 1453480075, '', 0, '', 0, 1453480075, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '7dccf8d75cfae518', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(16, 2, 6, '', 0, '', 1453480075, 'Google Feedfetcher', 'google feedfetcher', '', 1453480075, '', 0, '', 0, 1453480075, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9de314e620d38f2b', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(17, 2, 6, '', 0, '', 1453480076, 'Google [Bot]', 'google [bot]', '', 1453480076, '', 0, '', 0, 1453480076, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8d8ad66c67a9448f', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(18, 2, 6, '', 0, '', 1453480077, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1453480077, '', 0, '', 0, 1453480077, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2d7280ca329d340e', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(19, 2, 6, '', 0, '', 1453480077, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1453480077, '', 0, '', 0, 1453480077, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3e08490e0d750239', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(20, 2, 6, '', 0, '', 1453480078, 'IBM Research [Bot]', 'ibm research [bot]', '', 1453480078, '', 0, '', 0, 1453480078, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f30a29801858a08c', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(21, 2, 6, '', 0, '', 1453480079, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1453480079, '', 0, '', 0, 1453480079, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '7a94a2b8e33792c2', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(22, 2, 6, '', 0, '', 1453480080, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1453480080, '', 0, '', 0, 1453480080, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '6222733ae9fc1673', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(23, 2, 6, '', 0, '', 1453480081, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1453480081, '', 0, '', 0, 1453480081, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ab0df752821a59f0', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(24, 2, 6, '', 0, '', 1453480081, 'Metager [Bot]', 'metager [bot]', '', 1453480081, '', 0, '', 0, 1453480081, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3b2b74e00b0e84ed', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(25, 2, 6, '', 0, '', 1453480082, 'MSN NewsBlogs', 'msn newsblogs', '', 1453480082, '', 0, '', 0, 1453480082, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '444381528d3287d1', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(26, 2, 6, '', 0, '', 1453480083, 'MSN [Bot]', 'msn [bot]', '', 1453480083, '', 0, '', 0, 1453480083, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'de86596e0466062c', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(27, 2, 6, '', 0, '', 1453480083, 'MSNbot Media', 'msnbot media', '', 1453480083, '', 0, '', 0, 1453480083, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'a60336d60739071a', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(28, 2, 6, '', 0, '', 1453480084, 'Nutch [Bot]', 'nutch [bot]', '', 1453480084, '', 0, '', 0, 1453480084, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4af8db2645dc0c59', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(29, 2, 6, '', 0, '', 1453480085, 'Online link [Validator]', 'online link [validator]', '', 1453480085, '', 0, '', 0, 1453480085, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c514984d80492c9f', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(30, 2, 6, '', 0, '', 1453480085, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1453480085, '', 0, '', 0, 1453480085, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e939d451247d74d8', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(31, 2, 6, '', 0, '', 1453480086, 'Sensis [Crawler]', 'sensis [crawler]', '', 1453480086, '', 0, '', 0, 1453480086, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd5d539d3513b86e8', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(32, 2, 6, '', 0, '', 1453480087, 'SEO Crawler', 'seo crawler', '', 1453480087, '', 0, '', 0, 1453480087, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '6be2b0f946413e2c', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(33, 2, 6, '', 0, '', 1453480087, 'Seoma [Crawler]', 'seoma [crawler]', '', 1453480087, '', 0, '', 0, 1453480087, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '6aeaec8f0f91e9fe', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(34, 2, 6, '', 0, '', 1453480088, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1453480088, '', 0, '', 0, 1453480088, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '7c9834840abfd250', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(35, 2, 6, '', 0, '', 1453480089, 'Snappy [Bot]', 'snappy [bot]', '', 1453480089, '', 0, '', 0, 1453480089, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '6bd41ef4ef805762', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(36, 2, 6, '', 0, '', 1453480090, 'Steeler [Crawler]', 'steeler [crawler]', '', 1453480090, '', 0, '', 0, 1453480090, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'a0e2dc3b21e29563', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(37, 2, 6, '', 0, '', 1453480091, 'Telekom [Bot]', 'telekom [bot]', '', 1453480091, '', 0, '', 0, 1453480091, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e66f75dc3e3083e1', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(38, 2, 6, '', 0, '', 1453480092, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1453480092, '', 0, '', 0, 1453480092, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8fd531f9c0ca6da1', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(39, 2, 6, '', 0, '', 1453480092, 'Voyager [Bot]', 'voyager [bot]', '', 1453480092, '', 0, '', 0, 1453480092, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '25b0a0d8a2e17f93', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(40, 2, 6, '', 0, '', 1453480093, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1453480093, '', 0, '', 0, 1453480093, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '7cd67cc0eb95c9b5', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(41, 2, 6, '', 0, '', 1453480093, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1453480093, '', 0, '', 0, 1453480093, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'fa8a53a7c0e47dad', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(42, 2, 6, '', 0, '', 1453480094, 'W3C [Validator]', 'w3c [validator]', '', 1453480094, '', 0, '', 0, 1453480094, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '7ca229d3cebc0bfb', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(43, 2, 6, '', 0, '', 1453480095, 'YaCy [Bot]', 'yacy [bot]', '', 1453480095, '', 0, '', 0, 1453480095, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '1445d9e4a207eb25', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(44, 2, 6, '', 0, '', 1453480095, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1453480095, '', 0, '', 0, 1453480095, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '884351e68f576ffc', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(45, 2, 6, '', 0, '', 1453480096, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1453480096, '', 0, '', 0, 1453480096, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e48a03cdcb5a565c', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(46, 2, 6, '', 0, '', 1453480097, 'Yahoo [Bot]', 'yahoo [bot]', '', 1453480097, '', 0, '', 0, 1453480097, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '39446df51a245850', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(47, 2, 6, '', 0, '', 1453480097, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1453480097, '', 0, '', 0, 1453480097, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'UTC', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '11611ba8db060bda', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(48, 2, 6, '', 0, '', 1453484699, 'yandex-бот', 'yandex-6oт', '', 1453484699, '', 0, '', 0, 1453484699, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Europe/Simferopol', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '132830059719a5f5', 0, 0, 0, 1, 0, 1, 1, 1, 1),
	(49, 2, 6, '', 0, '', 1453484740, 'yandex-direct', 'yandex-direct', '', 1453484740, '', 0, '', 0, 1453484740, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Europe/Simferopol', '|d M Y|, H:i', 0, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b41f23e4945d0845', 0, 0, 0, 1, 0, 1, 1, 1, 1);
/*!40000 ALTER TABLE `phpbb_users` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_user_group
CREATE TABLE IF NOT EXISTS `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_user_group: ~51 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_user_group` DISABLE KEYS */;
INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
	(1, 1, 0, 0),
	(2, 2, 0, 0),
	(4, 2, 0, 0),
	(5, 2, 1, 0),
	(6, 3, 0, 0),
	(6, 4, 0, 0),
	(6, 5, 0, 0),
	(6, 6, 0, 0),
	(6, 7, 0, 0),
	(6, 8, 0, 0),
	(6, 9, 0, 0),
	(6, 10, 0, 0),
	(6, 11, 0, 0),
	(6, 12, 0, 0),
	(6, 13, 0, 0),
	(6, 14, 0, 0),
	(6, 15, 0, 0),
	(6, 16, 0, 0),
	(6, 17, 0, 0),
	(6, 18, 0, 0),
	(6, 19, 0, 0),
	(6, 20, 0, 0),
	(6, 21, 0, 0),
	(6, 22, 0, 0),
	(6, 23, 0, 0),
	(6, 24, 0, 0),
	(6, 25, 0, 0),
	(6, 26, 0, 0),
	(6, 27, 0, 0),
	(6, 28, 0, 0),
	(6, 29, 0, 0),
	(6, 30, 0, 0),
	(6, 31, 0, 0),
	(6, 32, 0, 0),
	(6, 33, 0, 0),
	(6, 34, 0, 0),
	(6, 35, 0, 0),
	(6, 36, 0, 0),
	(6, 37, 0, 0),
	(6, 38, 0, 0),
	(6, 39, 0, 0),
	(6, 40, 0, 0),
	(6, 41, 0, 0),
	(6, 42, 0, 0),
	(6, 43, 0, 0),
	(6, 44, 0, 0),
	(6, 45, 0, 0),
	(6, 46, 0, 0),
	(6, 47, 0, 0),
	(6, 48, 0, 0),
	(6, 49, 0, 0);
/*!40000 ALTER TABLE `phpbb_user_group` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_user_notifications
CREATE TABLE IF NOT EXISTS `phpbb_user_notifications` (
  `item_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `method` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_user_notifications: ~192 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_user_notifications` DISABLE KEYS */;
INSERT INTO `phpbb_user_notifications` (`item_type`, `item_id`, `user_id`, `method`, `notify`) VALUES
	('notification.type.post', 0, 2, '', 1),
	('notification.type.post', 0, 2, 'notification.method.email', 1),
	('notification.type.topic', 0, 2, '', 1),
	('notification.type.topic', 0, 2, 'notification.method.email', 1),
	('notification.type.post', 0, 3, '', 1),
	('notification.type.post', 0, 3, 'notification.method.email', 1),
	('notification.type.topic', 0, 3, '', 1),
	('notification.type.topic', 0, 3, 'notification.method.email', 1),
	('notification.type.post', 0, 4, '', 1),
	('notification.type.post', 0, 4, 'notification.method.email', 1),
	('notification.type.topic', 0, 4, '', 1),
	('notification.type.topic', 0, 4, 'notification.method.email', 1),
	('notification.type.post', 0, 5, '', 1),
	('notification.type.post', 0, 5, 'notification.method.email', 1),
	('notification.type.topic', 0, 5, '', 1),
	('notification.type.topic', 0, 5, 'notification.method.email', 1),
	('notification.type.post', 0, 6, '', 1),
	('notification.type.post', 0, 6, 'notification.method.email', 1),
	('notification.type.topic', 0, 6, '', 1),
	('notification.type.topic', 0, 6, 'notification.method.email', 1),
	('notification.type.post', 0, 7, '', 1),
	('notification.type.post', 0, 7, 'notification.method.email', 1),
	('notification.type.topic', 0, 7, '', 1),
	('notification.type.topic', 0, 7, 'notification.method.email', 1),
	('notification.type.post', 0, 8, '', 1),
	('notification.type.post', 0, 8, 'notification.method.email', 1),
	('notification.type.topic', 0, 8, '', 1),
	('notification.type.topic', 0, 8, 'notification.method.email', 1),
	('notification.type.post', 0, 9, '', 1),
	('notification.type.post', 0, 9, 'notification.method.email', 1),
	('notification.type.topic', 0, 9, '', 1),
	('notification.type.topic', 0, 9, 'notification.method.email', 1),
	('notification.type.post', 0, 10, '', 1),
	('notification.type.post', 0, 10, 'notification.method.email', 1),
	('notification.type.topic', 0, 10, '', 1),
	('notification.type.topic', 0, 10, 'notification.method.email', 1),
	('notification.type.post', 0, 11, '', 1),
	('notification.type.post', 0, 11, 'notification.method.email', 1),
	('notification.type.topic', 0, 11, '', 1),
	('notification.type.topic', 0, 11, 'notification.method.email', 1),
	('notification.type.post', 0, 12, '', 1),
	('notification.type.post', 0, 12, 'notification.method.email', 1),
	('notification.type.topic', 0, 12, '', 1),
	('notification.type.topic', 0, 12, 'notification.method.email', 1),
	('notification.type.post', 0, 13, '', 1),
	('notification.type.post', 0, 13, 'notification.method.email', 1),
	('notification.type.topic', 0, 13, '', 1),
	('notification.type.topic', 0, 13, 'notification.method.email', 1),
	('notification.type.post', 0, 14, '', 1),
	('notification.type.post', 0, 14, 'notification.method.email', 1),
	('notification.type.topic', 0, 14, '', 1),
	('notification.type.topic', 0, 14, 'notification.method.email', 1),
	('notification.type.post', 0, 15, '', 1),
	('notification.type.post', 0, 15, 'notification.method.email', 1),
	('notification.type.topic', 0, 15, '', 1),
	('notification.type.topic', 0, 15, 'notification.method.email', 1),
	('notification.type.post', 0, 16, '', 1),
	('notification.type.post', 0, 16, 'notification.method.email', 1),
	('notification.type.topic', 0, 16, '', 1),
	('notification.type.topic', 0, 16, 'notification.method.email', 1),
	('notification.type.post', 0, 17, '', 1),
	('notification.type.post', 0, 17, 'notification.method.email', 1),
	('notification.type.topic', 0, 17, '', 1),
	('notification.type.topic', 0, 17, 'notification.method.email', 1),
	('notification.type.post', 0, 18, '', 1),
	('notification.type.post', 0, 18, 'notification.method.email', 1),
	('notification.type.topic', 0, 18, '', 1),
	('notification.type.topic', 0, 18, 'notification.method.email', 1),
	('notification.type.post', 0, 19, '', 1),
	('notification.type.post', 0, 19, 'notification.method.email', 1),
	('notification.type.topic', 0, 19, '', 1),
	('notification.type.topic', 0, 19, 'notification.method.email', 1),
	('notification.type.post', 0, 20, '', 1),
	('notification.type.post', 0, 20, 'notification.method.email', 1),
	('notification.type.topic', 0, 20, '', 1),
	('notification.type.topic', 0, 20, 'notification.method.email', 1),
	('notification.type.post', 0, 21, '', 1),
	('notification.type.post', 0, 21, 'notification.method.email', 1),
	('notification.type.topic', 0, 21, '', 1),
	('notification.type.topic', 0, 21, 'notification.method.email', 1),
	('notification.type.post', 0, 22, '', 1),
	('notification.type.post', 0, 22, 'notification.method.email', 1),
	('notification.type.topic', 0, 22, '', 1),
	('notification.type.topic', 0, 22, 'notification.method.email', 1),
	('notification.type.post', 0, 23, '', 1),
	('notification.type.post', 0, 23, 'notification.method.email', 1),
	('notification.type.topic', 0, 23, '', 1),
	('notification.type.topic', 0, 23, 'notification.method.email', 1),
	('notification.type.post', 0, 24, '', 1),
	('notification.type.post', 0, 24, 'notification.method.email', 1),
	('notification.type.topic', 0, 24, '', 1),
	('notification.type.topic', 0, 24, 'notification.method.email', 1),
	('notification.type.post', 0, 25, '', 1),
	('notification.type.post', 0, 25, 'notification.method.email', 1),
	('notification.type.topic', 0, 25, '', 1),
	('notification.type.topic', 0, 25, 'notification.method.email', 1),
	('notification.type.post', 0, 26, '', 1),
	('notification.type.post', 0, 26, 'notification.method.email', 1),
	('notification.type.topic', 0, 26, '', 1),
	('notification.type.topic', 0, 26, 'notification.method.email', 1),
	('notification.type.post', 0, 27, '', 1),
	('notification.type.post', 0, 27, 'notification.method.email', 1),
	('notification.type.topic', 0, 27, '', 1),
	('notification.type.topic', 0, 27, 'notification.method.email', 1),
	('notification.type.post', 0, 28, '', 1),
	('notification.type.post', 0, 28, 'notification.method.email', 1),
	('notification.type.topic', 0, 28, '', 1),
	('notification.type.topic', 0, 28, 'notification.method.email', 1),
	('notification.type.post', 0, 29, '', 1),
	('notification.type.post', 0, 29, 'notification.method.email', 1),
	('notification.type.topic', 0, 29, '', 1),
	('notification.type.topic', 0, 29, 'notification.method.email', 1),
	('notification.type.post', 0, 30, '', 1),
	('notification.type.post', 0, 30, 'notification.method.email', 1),
	('notification.type.topic', 0, 30, '', 1),
	('notification.type.topic', 0, 30, 'notification.method.email', 1),
	('notification.type.post', 0, 31, '', 1),
	('notification.type.post', 0, 31, 'notification.method.email', 1),
	('notification.type.topic', 0, 31, '', 1),
	('notification.type.topic', 0, 31, 'notification.method.email', 1),
	('notification.type.post', 0, 32, '', 1),
	('notification.type.post', 0, 32, 'notification.method.email', 1),
	('notification.type.topic', 0, 32, '', 1),
	('notification.type.topic', 0, 32, 'notification.method.email', 1),
	('notification.type.post', 0, 33, '', 1),
	('notification.type.post', 0, 33, 'notification.method.email', 1),
	('notification.type.topic', 0, 33, '', 1),
	('notification.type.topic', 0, 33, 'notification.method.email', 1),
	('notification.type.post', 0, 34, '', 1),
	('notification.type.post', 0, 34, 'notification.method.email', 1),
	('notification.type.topic', 0, 34, '', 1),
	('notification.type.topic', 0, 34, 'notification.method.email', 1),
	('notification.type.post', 0, 35, '', 1),
	('notification.type.post', 0, 35, 'notification.method.email', 1),
	('notification.type.topic', 0, 35, '', 1),
	('notification.type.topic', 0, 35, 'notification.method.email', 1),
	('notification.type.post', 0, 36, '', 1),
	('notification.type.post', 0, 36, 'notification.method.email', 1),
	('notification.type.topic', 0, 36, '', 1),
	('notification.type.topic', 0, 36, 'notification.method.email', 1),
	('notification.type.post', 0, 37, '', 1),
	('notification.type.post', 0, 37, 'notification.method.email', 1),
	('notification.type.topic', 0, 37, '', 1),
	('notification.type.topic', 0, 37, 'notification.method.email', 1),
	('notification.type.post', 0, 38, '', 1),
	('notification.type.post', 0, 38, 'notification.method.email', 1),
	('notification.type.topic', 0, 38, '', 1),
	('notification.type.topic', 0, 38, 'notification.method.email', 1),
	('notification.type.post', 0, 39, '', 1),
	('notification.type.post', 0, 39, 'notification.method.email', 1),
	('notification.type.topic', 0, 39, '', 1),
	('notification.type.topic', 0, 39, 'notification.method.email', 1),
	('notification.type.post', 0, 40, '', 1),
	('notification.type.post', 0, 40, 'notification.method.email', 1),
	('notification.type.topic', 0, 40, '', 1),
	('notification.type.topic', 0, 40, 'notification.method.email', 1),
	('notification.type.post', 0, 41, '', 1),
	('notification.type.post', 0, 41, 'notification.method.email', 1),
	('notification.type.topic', 0, 41, '', 1),
	('notification.type.topic', 0, 41, 'notification.method.email', 1),
	('notification.type.post', 0, 42, '', 1),
	('notification.type.post', 0, 42, 'notification.method.email', 1),
	('notification.type.topic', 0, 42, '', 1),
	('notification.type.topic', 0, 42, 'notification.method.email', 1),
	('notification.type.post', 0, 43, '', 1),
	('notification.type.post', 0, 43, 'notification.method.email', 1),
	('notification.type.topic', 0, 43, '', 1),
	('notification.type.topic', 0, 43, 'notification.method.email', 1),
	('notification.type.post', 0, 44, '', 1),
	('notification.type.post', 0, 44, 'notification.method.email', 1),
	('notification.type.topic', 0, 44, '', 1),
	('notification.type.topic', 0, 44, 'notification.method.email', 1),
	('notification.type.post', 0, 45, '', 1),
	('notification.type.post', 0, 45, 'notification.method.email', 1),
	('notification.type.topic', 0, 45, '', 1),
	('notification.type.topic', 0, 45, 'notification.method.email', 1),
	('notification.type.post', 0, 46, '', 1),
	('notification.type.post', 0, 46, 'notification.method.email', 1),
	('notification.type.topic', 0, 46, '', 1),
	('notification.type.topic', 0, 46, 'notification.method.email', 1),
	('notification.type.post', 0, 47, '', 1),
	('notification.type.post', 0, 47, 'notification.method.email', 1),
	('notification.type.topic', 0, 47, '', 1),
	('notification.type.topic', 0, 47, 'notification.method.email', 1),
	('notification.type.post', 0, 48, '', 1),
	('notification.type.post', 0, 48, 'notification.method.email', 1),
	('notification.type.topic', 0, 48, '', 1),
	('notification.type.topic', 0, 48, 'notification.method.email', 1),
	('notification.type.post', 0, 49, '', 1),
	('notification.type.post', 0, 49, 'notification.method.email', 1),
	('notification.type.topic', 0, 49, '', 1),
	('notification.type.topic', 0, 49, 'notification.method.email', 1);
/*!40000 ALTER TABLE `phpbb_user_notifications` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_warnings
CREATE TABLE IF NOT EXISTS `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_warnings: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_warnings` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_words
CREATE TABLE IF NOT EXISTS `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_words: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_words` ENABLE KEYS */;


-- Дамп структуры для таблица forum_base.phpbb_zebra
CREATE TABLE IF NOT EXISTS `phpbb_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Дамп данных таблицы forum_base.phpbb_zebra: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `phpbb_zebra` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpbb_zebra` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
