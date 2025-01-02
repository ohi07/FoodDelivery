-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.11.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table data.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.auth_group: ~0 rows (approximately)

-- Dumping structure for table data.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.auth_group_permissions: ~0 rows (approximately)

-- Dumping structure for table data.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.auth_permission: ~44 rows (approximately)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add cart', 7, 'add_cart'),
	(26, 'Can change cart', 7, 'change_cart'),
	(27, 'Can delete cart', 7, 'delete_cart'),
	(28, 'Can view cart', 7, 'view_cart'),
	(29, 'Can add food item', 8, 'add_fooditem'),
	(30, 'Can change food item', 8, 'change_fooditem'),
	(31, 'Can delete food item', 8, 'delete_fooditem'),
	(32, 'Can view food item', 8, 'view_fooditem'),
	(33, 'Can add order items', 9, 'add_orderitems'),
	(34, 'Can change order items', 9, 'change_orderitems'),
	(35, 'Can delete order items', 9, 'delete_orderitems'),
	(36, 'Can view order items', 9, 'view_orderitems'),
	(37, 'Can add orders', 10, 'add_orders'),
	(38, 'Can change orders', 10, 'change_orders'),
	(39, 'Can delete orders', 10, 'delete_orders'),
	(40, 'Can view orders', 10, 'view_orders'),
	(41, 'Can add user profile', 11, 'add_userprofile'),
	(42, 'Can change user profile', 11, 'change_userprofile'),
	(43, 'Can delete user profile', 11, 'delete_userprofile'),
	(44, 'Can view user profile', 11, 'view_userprofile');

-- Dumping structure for table data.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.auth_user: ~4 rows (approximately)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(2, 'pbkdf2_sha256$870000$Ga6G702109OEzUJ6FI301Z$Q0eugEiPCCZYNTGtR9iXq7+RlUfjdbJGe83eu2lsDT4=', '2025-01-01 18:57:19.434485', 1, 'ohi', '', '', '', 1, 1, '2024-11-18 11:13:41.657860'),
	(3, 'pbkdf2_sha256$870000$TB0CbmqJMySlwlILw8oniz$02NbiP2aPiOPE5Hy/bQ6u4tPtwYMFLiZqcwN7TEOzFw=', '2024-11-21 06:20:37.107499', 0, 'rashed', '', '', '', 0, 1, '2024-11-21 06:20:24.978937'),
	(4, 'pbkdf2_sha256$870000$VaVn63rtRrjfliA6G9P3yK$UQc+xgcL0HUnHnFvAk6hlWy3W83MRGUtGynh/FfxsdE=', '2024-12-26 12:23:41.554519', 0, 'imran', '', '', '', 0, 1, '2024-12-26 12:23:05.148146'),
	(5, 'pbkdf2_sha256$870000$cplVIicIVaKmOcAR6Njhke$emST0mkfbSEV4sg0cooeX//alyiZaV7eFQzflLOcTmY=', '2025-01-01 12:43:18.155903', 0, 'shourov', '', '', '', 0, 1, '2025-01-01 12:42:48.228570');

-- Dumping structure for table data.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.auth_user_groups: ~0 rows (approximately)

-- Dumping structure for table data.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.auth_user_user_permissions: ~0 rows (approximately)

-- Dumping structure for table data.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.django_admin_log: ~3 rows (approximately)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2024-11-18 11:16:05.801411', '7', 'Orders object (7)', 2, '[{"changed": {"fields": ["Status"]}}]', 10, 2),
	(2, '2025-01-01 12:46:38.405327', '9', 'Orders object (9)', 3, '', 10, 2),
	(4, '2025-01-01 12:49:05.301779', '10', 'Orders object (10)', 2, '[]', 10, 2);

-- Dumping structure for table data.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.django_content_type: ~11 rows (approximately)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(8, 'canteen', 'fooditem'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'order', 'cart'),
	(9, 'order', 'orderitems'),
	(10, 'order', 'orders'),
	(11, 'order', 'userprofile'),
	(6, 'sessions', 'session');

-- Dumping structure for table data.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.django_migrations: ~24 rows (approximately)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2024-09-11 10:48:46.025669'),
	(2, 'auth', '0001_initial', '2024-09-11 10:48:46.164701'),
	(3, 'admin', '0001_initial', '2024-09-11 10:48:46.206709'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-11 10:48:46.211711'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-11 10:48:46.216712'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-11 10:48:46.240718'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-11 10:48:46.256721'),
	(8, 'auth', '0003_alter_user_email_max_length', '2024-09-11 10:48:46.266724'),
	(9, 'auth', '0004_alter_user_username_opts', '2024-09-11 10:48:46.270725'),
	(10, 'auth', '0005_alter_user_last_login_null', '2024-09-11 10:48:46.285728'),
	(11, 'auth', '0006_require_contenttypes_0002', '2024-09-11 10:48:46.286728'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-11 10:48:46.290729'),
	(13, 'auth', '0008_alter_user_username_max_length', '2024-09-11 10:48:46.299731'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-11 10:48:46.309733'),
	(15, 'auth', '0010_alter_group_name_max_length', '2024-09-11 10:48:46.318735'),
	(16, 'auth', '0011_update_proxy_permissions', '2024-09-11 10:48:46.322736'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-11 10:48:46.332739'),
	(18, 'canteen', '0001_initial', '2024-09-11 10:48:46.337740'),
	(19, 'order', '0001_initial', '2024-09-11 10:48:46.369747'),
	(20, 'order', '0002_cart_quantity', '2024-09-11 10:48:46.387751'),
	(21, 'order', '0003_orders_orderitems', '2024-09-11 10:48:46.438762'),
	(22, 'order', '0004_remove_cart_is_paid_orders_payment_gateway_and_more', '2024-09-11 10:48:46.483772'),
	(23, 'sessions', '0001_initial', '2024-09-11 10:48:46.497776'),
	(24, 'order', '0005_userprofile', '2024-09-11 11:42:50.921927');

-- Dumping structure for table data.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.django_session: ~21 rows (approximately)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('35uw0f7ryd8lv3n101uj6ix5ixivavti', '.eJxVjEEOwiAQRe_C2hAoQ0GX7j0DmRlAqgaS0q6Md7dNutDtf-_9twi4LiWsPc1hiuIiBnH63Qj5meoO4gPrvUludZknkrsiD9rlrcX0uh7u30HBXrbasGIyCOTQa4cZYmSjRpW9G3zKiHx2GjJ6sqMG8IDGZmVZbw4kR-LzBfcGN-8:1tE0ZO:i8xMDiay7lxxkzvcF3hjnhvnz6QTxnxr8JPzVZrKMfM', '2024-12-05 06:21:38.618081'),
	('44pdlvf1xb2rv0424h7i3yct9mdfpsci', '.eJxVjDsOwjAQBe_iGlnedWwvlPQ5g7X-4QBypDipEHeHSCmgfTPzXsLztla_9bz4KYmLACVOv2Pg-MhtJ-nO7TbLOLd1mYLcFXnQLsc55ef1cP8OKvf6rQ2TQQsu4mBARatD0magVBhcJoyEigMXfUY0AK5QMpFKIbRa2QBWvD_lbjc8:1soRT4:qrgMVprACDWbAv-xpBX4TP4KKf_J9AB753L4LzdVgz4', '2024-09-25 17:49:26.113162'),
	('480w32izt4cu6x2y5r8mwk5e4vmkd5x1', '.eJxVjE0OwiAYBe_C2hCggNSle89Avh-QqoGktCvj3W2TLnT7Zua9RYR1KXHtaY4Ti4sw4vS7IdAz1R3wA-q9SWp1mSeUuyIP2uWtcXpdD_fvoEAvW43WkCFvAAaywZrMySCrkAPxqIA1Za_ZKfYOlRtQeYWbos-exswwiM8XAGI4og:1pATwh:JOBuMrgqWqOuXFyCHUvVqg4-99NfKD5i2eOn3kHw-Gw', '2024-01-08 09:49:07.066000'),
	('6rmsxp98sn8gy888pv9g81pk50zlmmol', '.eJxVjDsOwjAQBe_iGlle_9ahpOcM1trr4ABypDipEHeHSCmgfTPzXiLStta49bLEicVZgDj9bonyo7Qd8J3abZZ5busyJbkr8qBdXmcuz8vh_h1U6vVbOzLAmskY5QDLgEnDWHywHj0ChUGPXsFgcrasiHVRWnmHHCwie0ji_QHAJDbd:1p8ItA:6qBMjm-SZ72XBCQqBadNWJK0aAsXcyggWjRFLdgypm0', '2024-01-08 09:49:07.066000'),
	('acri5p46p3fpjy8ywnva5jy4xs9l09na', 'e30:1sp5hs:gJsD9O_K7vcDXuyhiFszuCppIylE0sCkfCOpU_vVdgg', '2024-09-27 12:47:24.165602'),
	('blkm0io78rsnnc8uevfli1kergd6oh2a', '.eJxVjDsOwjAQBe_iGlle_9ahpOcM1trr4ABypDipEHeHSCmgfTPzXiLStta49bLEicVZgDj9bonyo7Qd8J3abZZ5busyJbkr8qBdXmcuz8vh_h1U6vVbOzLAmskY5QDLgEnDWHywHj0ChUGPXsFgcrasiHVRWnmHHCwie0ji_QHAJDbd:1p8fS5:S-ZWvKBv7rUIgvDrUwkDeeL4lal9Js8mUOFZLmqalDM', '2024-01-08 09:49:07.066000'),
	('emyva2b2ji23awn8i6e9a2v9g1n9dm79', '.eJxVjEEOwiAQAP_C2ZCVQlk8evcNZGFBqgaS0p6MfzckPeh1ZjJv4Wnfit97Wv3C4iK0OP2yQPGZ6hD8oHpvMra6rUuQI5GH7fLWOL2uR_s3KNTL2CLQbB1qMqgVgUlIARlVTOxC4GSsAtBzdmelJ4egMjMale1ECEji8wXPrTdU:1soMYo:9mqoZax7g-2uZ0rzVeokisv7u7GJi3TFemKkYZr-0Ic', '2024-01-08 09:49:07.066000'),
	('en6yicqxlnn00x2ua0dmjdlulgaublc8', '.eJxVjDsOwjAQBe_iGln2-hco6XMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIitDj9bgnzg9sO6I7tNss8t3WZktwVedAux5n4eT3cv4OKvX5r5wIFy-AogVMBU0KvQoYhmYFM9oaKVkAuGGttseDPxMAeNftsTQni_QHXiTee:1sp5ji:6QVRcyA5kr3mpbpBN9CQYlC3vY3zkw1wMG48s5l2P8E', '2024-09-27 12:49:18.718608'),
	('et1eofkv6u9y0nywywi4f8rur2w6biv6', '.eJxVjDsOwjAQBe_iGlle_9ahpOcM1trr4ABypDipEHeHSCmgfTPzXiLStta49bLEicVZgDj9bonyo7Qd8J3abZZ5busyJbkr8qBdXmcuz8vh_h1U6vVbOzLAmskY5QDLgEnDWHywHj0ChUGPXsFgcrasiHVRWnmHHCwie0ji_QHAJDbd:1p7x5K:ZR6OSGYRNgM6CpvXsOhhErlEDI3VvXgAZK8lFXfGZZU', '2024-01-08 09:49:07.066000'),
	('fiwcjv3u0x8w8tx9s8pm2sqv6qw2i61x', '.eJxVjDsOwjAQBe_iGln-fyjpOYO1a69xADlSnFSIu0OkFNC-mXkvlmBbW9oGLWkq7MykZKffESE_qO-k3KHfZp7nvi4T8l3hBx38Ohd6Xg7376DBaN8aQUuRHckSs7LZY6zaAhEIa4Wi6ED7IAyI6kyNXmF01ggMoANa5Yi9PwyXN84:1sodLS:aPicmeKcN9FFGDobQ1tKuk7JQaCcjmbRu-iCLIE_miw', '2024-09-26 06:30:22.542684'),
	('gqgy9d3fjis8dk3oksf9yfnc1wnzdbpb', '.eJxVjE0OwiAYBe_C2hCggNSle89Avh-QqoGktCvj3W2TLnT7Zua9RYR1KXHtaY4Ti4sw4vS7IdAz1R3wA-q9SWp1mSeUuyIP2uWtcXpdD_fvoEAvW43WkCFvAAaywZrMySCrkAPxqIA1Za_ZKfYOlRtQeYWbos-exswwiM8XAGI4og:1pDjYr:wPQ9ydeTO9wwJ6cgb91s3EhquFT3PoBghJeR0F-_Xt4', '2024-01-08 09:49:07.066000'),
	('h131owoot1ljghd67el49kr9a1a66157', '.eJxVjDsOwjAQBe_iGlle_9ahpOcM1trr4ABypDipEHeHSCmgfTPzXiLStta49bLEicVZgDj9bonyo7Qd8J3abZZ5busyJbkr8qBdXmcuz8vh_h1U6vVbOzLAmskY5QDLgEnDWHywHj0ChUGPXsFgcrasiHVRWnmHHCwie0ji_QHAJDbd:1pATrS:92cDKznsYWB7DE06fI5LgYrUwmY9Dst0el-l-41reWk', '2024-01-08 09:49:07.066000'),
	('jc16fy2wrw2eqhv9c0q25fjfrwbo6jz6', '.eJxVjDsOwjAQBe_iGlle_9ahpOcM1trr4ABypDipEHeHSCmgfTPzXiLStta49bLEicVZgDj9bonyo7Qd8J3abZZ5busyJbkr8qBdXmcuz8vh_h1U6vVbOzLAmskY5QDLgEnDWHywHj0ChUGPXsFgcrasiHVRWnmHHCwie0ji_QHAJDbd:1pA76c:rcfzOh4qbh_vAROQbhcqa4eDNtUEhPs5QYVnf97T6Hw', '2024-01-08 09:49:07.066000'),
	('k0k3hi6nlt1ivmo8frpuz3b5dafzjysk', 'e30:1sp5hT:v-zEn9dASEJS5Oh7tW7-9BTHGaKzUCgpMBdT94LdTd8', '2024-09-27 12:46:59.231673'),
	('lrw1djf4pl2htcqnif9al6kuc1kd7mii', 'e30:1sp5hE:EPj1XSZwRrPtdcjcEW_t_RBD3qNWEKIi-kNcaHS_-uk', '2024-09-27 12:46:44.993713'),
	('m05gsuafrzsvs2qlnej792avpq97l94n', '.eJxVjE0OwiAYBe_C2hCggNSle89Avh-QqoGktCvj3W2TLnT7Zua9RYR1KXHtaY4Ti4sw4vS7IdAz1R3wA-q9SWp1mSeUuyIP2uWtcXpdD_fvoEAvW43WkCFvAAaywZrMySCrkAPxqIA1Za_ZKfYOlRtQeYWbos-exswwiM8XAGI4og:1p9mep:zfqgvmOp5-mCU3IEzD0pNTiSEA-GdXii7bkXoQZL21o', '2024-01-08 09:49:07.066000'),
	('m8p79incdc9qxbw7v4trbpb9mi9zgrfe', '.eJxVjDsOwjAQBe_iGlle_9ahpOcM1trr4ABypDipEHeHSCmgfTPzXiLStta49bLEicVZgDj9bonyo7Qd8J3abZZ5busyJbkr8qBdXmcuz8vh_h1U6vVbOzLAmskY5QDLgEnDWHywHj0ChUGPXsFgcrasiHVRWnmHHCwie0ji_QHAJDbd:1p92LZ:q5Aksm4yui1yp-wN0vEUiPXnwKQeq5wU1kQYTNw-NUA', '2024-01-08 09:49:07.066000'),
	('svhq9icqsq4d3qkjrgb165rg69ec3afu', '.eJxVjDsOwjAQBe_iGln2-hco6XMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIitDj9bgnzg9sO6I7tNss8t3WZktwVedAux5n4eT3cv4OKvX5r5wIFy-AogVMBU0KvQoYhmYFM9oaKVkAuGGttseDPxMAeNftsTQni_QHXiTee:1sp5kz:O4nXH5uuSWVZuHOCZSMy6DY4urNUq3Ry6jiekORkom0', '2024-09-27 12:50:37.552198'),
	('ukncwdrgoiyfvggrccykm8m64nkxwvo6', '.eJxVjDsOwyAQRO9CHSFgzccp0_sMaIElOImwZOwqyt2DJRdJN5o3b97M474Vvzda_ZzYlUnFLr9lwPikepD0wHpfeFzqts6BHxN-0sanJdHrdm7_Dgq20m2rABMkg6NFkKHHiCG6YSAlwGotlRqtITAOskhZukxC9VaYbpLU7PMF_3Y3Mw:1sofK1:qrJE6sqR1_LqgczSMLSDvOG9lE9elMWt7yo4HR3uVNM', '2024-09-26 08:37:01.577622'),
	('uyaqgueuruqemqnm5kvk0nr6mrjr5ffm', '.eJxVjEEOwiAQRe_C2hAoQ0GX7j0DmRlAqgaS0q6Md7dNutDtf-_9twi4LiWsPc1hiuIiBnH63Qj5meoO4gPrvUludZknkrsiD9rlrcX0uh7u30HBXrbasGIyCOTQa4cZYmSjRpW9G3zKiHx2GjJ6sqMG8IDGZmVZbw4kR-LzBfcGN-8:1tSy5y:mDaKYyA53_C9K7ZeSFX2l0eml8OtI_IkjsHbR2dHq4g', '2025-01-15 12:45:06.541974'),
	('xab4ykfxvvpa3kvwrzum1g2q8wym35m9', '.eJxVjDsOwjAQBe_iGlle_9ahpOcM1trr4ABypDipEHeHSCmgfTPzXiLStta49bLEicVZgDj9bonyo7Qd8J3abZZ5busyJbkr8qBdXmcuz8vh_h1U6vVbOzLAmskY5QDLgEnDWHywHj0ChUGPXsFgcrasiHVRWnmHHCwie0ji_QHAJDbd:1p9Ncx:BdKCY79aItpyYANzTwfMLmXCTtcKjENbqcFBetsD5hk', '2024-01-08 09:49:07.066000'),
	('yztj88za1v0ettgo3r9guk91z3rymmmp', '.eJxVjEEOwiAQRe_C2hAoQ0GX7j0DmRlAqgaS0q6Md7dNutDtf-_9twi4LiWsPc1hiuIiBnH63Qj5meoO4gPrvUludZknkrsiD9rlrcX0uh7u30HBXrbasGIyCOTQa4cZYmSjRpW9G3zKiHx2GjJ6sqMG8IDGZmVZbw4kR-LzBfcGN-8:1tT3uB:-vQvKqvib4Xv9C-dkb_hJ5wr63k9mWDg6oMdlqG-Y3w', '2025-01-15 18:57:19.438121');

-- Dumping structure for table data.order_cart
CREATE TABLE IF NOT EXISTS `order_cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `food_id` bigint(20) NOT NULL,
  `username_id` int(11) NOT NULL,
  `quantity` int(10) unsigned NOT NULL CHECK (`quantity` >= 0),
  PRIMARY KEY (`id`),
  KEY `order_cart_food_id_a572891e_fk_canteen_fooditem_id` (`food_id`),
  KEY `order_cart_username_id_6fda38d2_fk_auth_user_id` (`username_id`),
  CONSTRAINT `order_cart_food_id_a572891e_fk_canteen_fooditem_id` FOREIGN KEY (`food_id`) REFERENCES `restaurant_fooditem` (`id`),
  CONSTRAINT `order_cart_username_id_6fda38d2_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.order_cart: ~0 rows (approximately)

-- Dumping structure for table data.order_orderitems
CREATE TABLE IF NOT EXISTS `order_orderitems` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(10) unsigned NOT NULL CHECK (`quantity` >= 0),
  `item_total` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `username_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_orderitems_order_id_c98103f8_fk_order_orders_id` (`order_id`),
  KEY `order_orderitems_username_id_53d8d984_fk_auth_user_id` (`username_id`),
  CONSTRAINT `order_orderitems_order_id_c98103f8_fk_order_orders_id` FOREIGN KEY (`order_id`) REFERENCES `order_orders` (`id`),
  CONSTRAINT `order_orderitems_username_id_53d8d984_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.order_orderitems: ~16 rows (approximately)
INSERT INTO `order_orderitems` (`id`, `name`, `price`, `quantity`, `item_total`, `order_id`, `username_id`) VALUES
	(54, 'Chicken Burger', 160, 4, 640, 3, 9),
	(57, 'Chicken Cheese Delight', 320, 1, 320, 5, 11),
	(58, 'Chicken Cheese Burger', 200, 1, 200, 5, 11),
	(59, 'Chicken Cheese Burger', 200, 1, 200, 6, 12),
	(60, 'Chicken Burger', 160, 1, 160, 7, 2),
	(61, 'Chicken Cheese Burger', 200, 2, 400, 7, 2),
	(62, 'Soft Drinks', 50, 2, 100, 7, 2),
	(63, 'Beef Cheese Delight', 350, 5, 1750, 8, 3),
	(64, 'Chicken Cheese Delight', 320, 1, 320, 8, 3),
	(65, 'French Fries - Large', 180, 3, 540, 8, 3),
	(66, 'Soft Drinks', 50, 6, 300, 8, 3),
	(68, 'Chicken Burger', 160, 1, 160, 10, 5),
	(69, 'Beef Cheese Delight', 350, 2, 700, 10, 5),
	(70, 'Chicken Cheese Delight', 320, 2, 640, 10, 5),
	(71, 'Soft Drinks', 50, 10, 500, 10, 5),
	(72, 'French Fries - Large', 180, 5, 900, 10, 5);

-- Dumping structure for table data.order_orders
CREATE TABLE IF NOT EXISTS `order_orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `total_amount` int(11) NOT NULL,
  `order_datetime` datetime(6) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `username_id` int(11) NOT NULL,
  `payment_gateway` varchar(50) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_orders_username_id_69dc7a6d_fk_auth_user_id` (`username_id`),
  CONSTRAINT `order_orders_username_id_69dc7a6d_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.order_orders: ~6 rows (approximately)
INSERT INTO `order_orders` (`id`, `total_amount`, `order_datetime`, `payment_mode`, `status`, `username_id`, `payment_gateway`, `transaction_id`) VALUES
	(3, 640, '2024-09-11 17:11:45.441057', 'Cash', 'Pending', 9, 'Cash', 'CASH378315522120225'),
	(5, 520, '2024-09-12 06:30:43.460359', 'Cash', 'Pending', 11, 'Cash', 'CASH729790413193468'),
	(6, 200, '2024-09-12 08:37:23.415672', 'Cash', 'Pending', 12, 'Cash', 'CASH207581274296283'),
	(7, 660, '2024-11-18 11:14:24.780351', 'Cash', 'Accepted', 2, 'Cash', 'CASH629610678032808'),
	(8, 2910, '2024-11-21 06:21:20.727922', 'Cash', 'Pending', 3, 'Cash', 'CASH332213148738859'),
	(10, 2900, '2025-01-01 12:44:02.836217', 'Cash', 'Pending', 5, 'Cash', 'CASH464814676328890');

-- Dumping structure for table data.order_userprofile
CREATE TABLE IF NOT EXISTS `order_userprofile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `road` varchar(100) DEFAULT NULL,
  `apartment` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `order_userprofile_user_id_18b02d2c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.order_userprofile: ~4 rows (approximately)
INSERT INTO `order_userprofile` (`id`, `phone`, `street`, `road`, `apartment`, `user_id`) VALUES
	(7, NULL, NULL, NULL, NULL, 2),
	(8, NULL, NULL, NULL, NULL, 3),
	(9, NULL, NULL, NULL, NULL, 4),
	(10, NULL, NULL, NULL, NULL, 5);

-- Dumping structure for table data.restaurant_fooditem
CREATE TABLE IF NOT EXISTS `restaurant_fooditem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table data.restaurant_fooditem: ~9 rows (approximately)
INSERT INTO `restaurant_fooditem` (`id`, `name`, `price`, `description`, `image`) VALUES
	(1, 'Chicken Burger', 160, 'Basic Chicken Burger', 'food_pic/c1.jpg'),
	(2, 'Chicken Cheese Burger', 200, 'Chicken Burger With Cheese', 'food_pic/c2.jpg'),
	(3, 'Beef Burger', 180, 'Basic Beef Burger', 'food_pic/b1.jpg'),
	(4, 'Beef Cheese Burger', 220, 'Beef Burger With Cheese', 'food_pic/b2.jpg'),
	(5, 'Chicken Cheese Delight', 320, 'Chicken Burger With Double Petty and Chesse', 'food_pic/cs1.jpg'),
	(6, 'Beef Cheese Delight', 350, 'Beef Burger With Double Petty and Chesse', 'food_pic/bs1.jpg'),
	(7, 'French Fries - Medium', 100, 'Chillox Special French Fries', 'food_pic/ff1.jpg'),
	(8, 'French Fries - Large', 180, 'Chillox Special French Fries', 'food_pic/ff1.jpg'),
	(9, 'Soft Drinks', 50, 'Mojo / 7up / Blu', 'food_pic/sd1.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
