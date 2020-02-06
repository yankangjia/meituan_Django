/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : meituan

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 06/02/2020 14:12:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add mt user', 6, 'add_mtuser');
INSERT INTO `auth_permission` VALUES (22, 'Can change mt user', 6, 'change_mtuser');
INSERT INTO `auth_permission` VALUES (23, 'Can delete mt user', 6, 'delete_mtuser');
INSERT INTO `auth_permission` VALUES (24, 'Can view mt user', 6, 'view_mtuser');
INSERT INTO `auth_permission` VALUES (25, 'Can add merchant', 7, 'add_merchant');
INSERT INTO `auth_permission` VALUES (26, 'Can change merchant', 7, 'change_merchant');
INSERT INTO `auth_permission` VALUES (27, 'Can delete merchant', 7, 'delete_merchant');
INSERT INTO `auth_permission` VALUES (28, 'Can view merchant', 7, 'view_merchant');
INSERT INTO `auth_permission` VALUES (29, 'Can add goods category', 8, 'add_goodscategory');
INSERT INTO `auth_permission` VALUES (30, 'Can change goods category', 8, 'change_goodscategory');
INSERT INTO `auth_permission` VALUES (31, 'Can delete goods category', 8, 'delete_goodscategory');
INSERT INTO `auth_permission` VALUES (32, 'Can view goods category', 8, 'view_goodscategory');
INSERT INTO `auth_permission` VALUES (33, 'Can add goods', 9, 'add_goods');
INSERT INTO `auth_permission` VALUES (34, 'Can change goods', 9, 'change_goods');
INSERT INTO `auth_permission` VALUES (35, 'Can delete goods', 9, 'delete_goods');
INSERT INTO `auth_permission` VALUES (36, 'Can view goods', 9, 'view_goods');
INSERT INTO `auth_permission` VALUES (37, 'Can add user address', 10, 'add_useraddress');
INSERT INTO `auth_permission` VALUES (38, 'Can change user address', 10, 'change_useraddress');
INSERT INTO `auth_permission` VALUES (39, 'Can delete user address', 10, 'delete_useraddress');
INSERT INTO `auth_permission` VALUES (40, 'Can view user address', 10, 'view_useraddress');
INSERT INTO `auth_permission` VALUES (41, 'Can add order', 11, 'add_order');
INSERT INTO `auth_permission` VALUES (42, 'Can change order', 11, 'change_order');
INSERT INTO `auth_permission` VALUES (43, 'Can delete order', 11, 'delete_order');
INSERT INTO `auth_permission` VALUES (44, 'Can view order', 11, 'view_order');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_mtauth_mtuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_mtauth_mtuser_id` FOREIGN KEY (`user_id`) REFERENCES `mtauth_mtuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'meituan', 'goods');
INSERT INTO `django_content_type` VALUES (8, 'meituan', 'goodscategory');
INSERT INTO `django_content_type` VALUES (7, 'meituan', 'merchant');
INSERT INTO `django_content_type` VALUES (11, 'meituan', 'order');
INSERT INTO `django_content_type` VALUES (10, 'meituan', 'useraddress');
INSERT INTO `django_content_type` VALUES (6, 'mtauth', 'mtuser');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-01-27 13:40:33.754361');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-01-27 13:40:35.425895');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-01-27 13:40:36.898965');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-01-27 13:40:41.555514');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-01-27 13:40:41.633305');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-01-27 13:40:41.703170');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-01-27 13:40:41.779922');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-01-27 13:40:41.843740');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-01-27 13:40:41.917553');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-01-27 13:40:41.992346');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-01-27 13:40:42.069250');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2020-01-27 13:40:42.867009');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2020-01-27 13:40:42.928890');
INSERT INTO `django_migrations` VALUES (14, 'mtauth', '0001_initial', '2020-01-27 13:40:44.133624');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2020-01-27 13:40:48.863983');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2020-01-27 13:40:50.801800');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-27 13:40:50.882588');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2020-01-27 13:40:51.239635');
INSERT INTO `django_migrations` VALUES (30, 'mtauth', '0002_auto_20200128_2329', '2020-01-28 15:30:04.960152');
INSERT INTO `django_migrations` VALUES (35, 'meituan', '0001_initial', '2020-01-28 16:11:42.065474');
INSERT INTO `django_migrations` VALUES (36, 'mtauth', '0003_auto_20200130_1707', '2020-01-30 09:08:00.508499');
INSERT INTO `django_migrations` VALUES (37, 'meituan', '0002_merchant_create_time', '2020-01-30 13:31:34.085178');
INSERT INTO `django_migrations` VALUES (38, 'meituan', '0003_useraddress', '2020-02-05 04:07:08.056210');
INSERT INTO `django_migrations` VALUES (39, 'meituan', '0004_order', '2020-02-05 14:42:34.829878');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for meituan_goods
-- ----------------------------
DROP TABLE IF EXISTS `meituan_goods`;
CREATE TABLE `meituan_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `intro` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(6, 2) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `meituan_goods_category_id_406ea987_fk_meituan_goodscategory_id`(`category_id`) USING BTREE,
  CONSTRAINT `meituan_goods_category_id_406ea987_fk_meituan_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `meituan_goodscategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3025 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meituan_goods
-- ----------------------------
INSERT INTO `meituan_goods` VALUES (2011, '百威啤酒AA', 'http://p1.meituan.net/xianfu/8fd48d2e154953ed306126e2a1eebeb159392.jpg', '主要原料:百威啤酒500毫升\r\n未成年人请勿饮酒，孕妇和身体不适者不宜饮酒。喝酒请勿驾车，请适度享用美酒，产品及包装以实物为准。', 15.00, 207);
INSERT INTO `meituan_goods` VALUES (2012, '八块香辣鸡翅TN', 'http://p1.meituan.net/xianfu/ed8484dc56c80c007690dd77caa0618c34816.jpg', '香辣多汁，口感鲜美。,主要原料:鸡翅，小麦粉', 39.50, 208);
INSERT INTO `meituan_goods` VALUES (2013, '超级翅桶多人餐T', 'http://p1.meituan.net/xianfu/93bdf390e0a60c0e052836d0d9fa84d036864.jpg', '香辣鸡翅12块+新奥尔良烤翅8块+1.25L瓶装可乐', 109.00, 208);
INSERT INTO `meituan_goods` VALUES (2014, '十翅分享桶T', 'http://p0.meituan.net/xianfu/8cb29a77c56eec84a5336b21e9dd556e36864.jpg', '十块香辣鸡翅+九珍2杯', 75.00, 208);
INSERT INTO `meituan_goods` VALUES (2015, '葡式蛋挞6只TN', 'http://p1.meituan.net/xianfu/7f1e7ca278a757d1811f372b540db24923552.jpg', '葡式蛋挞6只,省是指比菜单单品总价省的金额', 42.00, 208);
INSERT INTO `meituan_goods` VALUES (2016, '冬菇滑鸡粥TN', 'http://p0.meituan.net/xianfu/6636b167de9c47708f4daf8d3bc9b6fd27648.jpg', ',主要原料:大米、冬菇、鸡肉、生菜', 9.50, 209);
INSERT INTO `meituan_goods` VALUES (2017, '百事可乐(中)TN', 'http://p0.meituan.net/xianfu/56007977d214d7e7526996279afe241960416.jpg', '主要原料： 水，百事可乐糖浆， 二氧化碳', 9.50, 209);
INSERT INTO `meituan_goods` VALUES (2018, '九珍果汁饮料TN', 'http://p0.meituan.net/xianfu/fb49242499f2b322cb26cb532828ca4f45056.jpg', ',主要原料:果汁浓缩液、水', 12.00, 209);
INSERT INTO `meituan_goods` VALUES (2019, '醇豆浆(热)TN', 'http://p1.meituan.net/xianfu/6d02380760a87f7304c2fd27200998e137888.jpg', ',主要原料:豆浆粉、水', 9.00, 209);
INSERT INTO `meituan_goods` VALUES (2020, '二块香辣鸡翅炸鸡TN', 'http://p0.meituan.net/xianfu/e2fcf680b601c5b562852d04a7a9d24647104.jpg', '炸鸡,主要原料:鸡翅，小麦粉', 12.00, 209);
INSERT INTO `meituan_goods` VALUES (2021, '葡式蛋挞(经典)TN', 'http://p1.meituan.net/xianfu/35758449f38766de87fb0ef832eedc5832768.jpg', ',主要原料:挞皮，蛋液，淡奶油，牛奶', 9.00, 209);
INSERT INTO `meituan_goods` VALUES (2022, '安心大油条TN', 'http://p1.meituan.net/xianfu/aa7b6219f00a012f913cc825d654063337888.jpg', ',主要原料:油条', 7.50, 209);
INSERT INTO `meituan_goods` VALUES (2023, '芙蓉荟蔬汤TN', 'http://p0.meituan.net/xianfu/b1c3cc6005ca0b9b7712405d2e3efea121504.jpg', ',主要原料:鸡蛋、蔬菜（菠菜、裙带菜、胡萝卜、香菇）、水', 9.00, 209);
INSERT INTO `meituan_goods` VALUES (2024, '新奥尔良烤翅TN', 'http://p0.meituan.net/xianfu/26a82d6946477e1950573afc92412b7d50176.jpg', ',主要原料:鸡翅', 13.00, 209);
INSERT INTO `meituan_goods` VALUES (2025, '香辣鸡腿堡STN', 'http://p0.meituan.net/xianfu/384f9a8d44fa3eda0ab801ca59ee397d53248.jpg', '整块无骨鸡腿肉, 浓郁汉堡酱，香脆鲜辣多汁。,主要原料:鸡腿肉，面包，生菜', 19.00, 209);
INSERT INTO `meituan_goods` VALUES (2026, '新奥尔良烤鸡腿堡STN', 'http://p0.meituan.net/xianfu/9f5325afe921ffc7941330ec7b63728162464.jpg', '选用超大无骨鸡腿肉烤制，鲜嫩多汁，甜中带辣。,主要原料:鸡腿肉，面包，蔬菜（生菜，青椒丝）', 19.50, 209);
INSERT INTO `meituan_goods` VALUES (2027, '皮蛋瘦肉粥TN', 'http://p0.meituan.net/xianfu/b69d6ef04b170c1cb1cb47d02c4ca87733792.jpg', '精选优质大米，配上皮蛋和五香瘦肉丝.,主要原料:大米、酱卤瘦肉丝、皮蛋', 9.50, 209);
INSERT INTO `meituan_goods` VALUES (2028, '1.25升装百事可乐TN', 'http://p1.meituan.net/xianfu/307ab6a31e3744f3be99b398b5ac969c37888.jpg', '1瓶1.25L百事可乐,省是指比菜单单品总价省的金额', 14.00, 209);
INSERT INTO `meituan_goods` VALUES (2029, '炸鸡分享桶T', 'http://p0.meituan.net/xianfu/8e12ef53ce132d332a6c7e03582cfb8557344.jpg', '2块香辣鸡翅+2块新奥尔良烤翅+黄金鸡块(5块)+劲爆鸡米花（大）1份+2九珍果汁饮料', 74.00, 210);
INSERT INTO `meituan_goods` VALUES (2030, '六味小吃桶T', 'http://p0.meituan.net/xianfu/484e68f49f6acb61636907cdc6e20fb158368.jpg', '4块烤翅+2块辣翅+1块原味鸡+5块黄金鸡块+1份劲爆鸡米花（小）+2个红豆派', 84.50, 210);
INSERT INTO `meituan_goods` VALUES (2031, '精选多人套餐ST', 'http://p0.meituan.net/xianfu/9e72464171d3f6473d0b8d53ed56879962464.jpg', '新奥尔良烤鸡腿堡1份+香辣鸡腿堡1份+老北京鸡肉卷1份+藤椒肯大大鸡排1份+香辣鸡翅4块+新奥尔良烤翅2块+醇香土豆泥2份+九珍果汁饮料3杯', 153.00, 210);
INSERT INTO `meituan_goods` VALUES (2032, '冬菇滑鸡粥T', 'http://p0.meituan.net/xianfu/7d42e79dc089317e410be89992d0a6f739936.jpg', '现熬浓稠好粥底中，加入鸡腿肉、冬菇块，与蚝汁一起蒸煮入味。鲜、嫩、香。,主要原料:大米、冬菇、鸡肉、生菜', 9.50, 211);
INSERT INTO `meituan_goods` VALUES (2033, '牛肉蛋花粥T', 'http://p0.meituan.net/xianfu/fe66437b3b7be9f49bc15165bd90bf9536864.jpg', '全新美味的牛肉蛋花粥，在熬制的粥底中打入美味蛋花，加入细切新鲜牛肉，再配以黑木耳和黄花菜等配菜，料足味美。,主要原料:大米、牛肉粒、牛肉粥菜块（鸡蛋、木耳、黄花菜、葱）', 11.50, 211);
INSERT INTO `meituan_goods` VALUES (2034, '雪菜笋丁鸡肉粥T', 'http://p0.meituan.net/xianfu/6c554f75ff5522879720ae9e869bbf5629696.jpg', '咸鲜适口,主要原料:大米、雪菜、鸡肉、笋丁、胡萝卜', 7.50, 211);
INSERT INTO `meituan_goods` VALUES (2035, '皮蛋瘦肉粥T', 'http://p0.meituan.net/xianfu/b69d6ef04b170c1cb1cb47d02c4ca87733792.jpg', '精选优质大米，配上皮蛋和五香瘦肉丝.,主要原料:大米、酱卤瘦肉丝、皮蛋', 9.50, 211);
INSERT INTO `meituan_goods` VALUES (2036, '鸡肉卷薯条套餐T', 'http://p0.meituan.net/xianfu/5aa4868a9852350983c355ff9d41389262464.jpg', '老北京鸡肉卷1份+波纹霸王薯条(中)1份+九珍果汁饮料1杯', 35.00, 212);
INSERT INTO `meituan_goods` VALUES (2037, '奥尔良烤鸡腿堡套餐T', 'http://p0.meituan.net/xianfu/52e3b1247c48eba63f4b7b1cf56bf34762464.jpg', '新奥尔良鸡腿堡1份+波纹霸王薯条(中)1份+九珍果汁饮料1杯', 36.00, 212);
INSERT INTO `meituan_goods` VALUES (2038, '香辣鸡腿堡套餐T', 'http://p0.meituan.net/xianfu/7451e0c70a745f0d7102d964a35bb50a62464.jpg', '香辣鸡腿堡1份+波纹霸王薯条(中)1份+九珍果汁饮料1杯', 36.00, 212);
INSERT INTO `meituan_goods` VALUES (2039, '辣翅九珍套餐T', 'http://p1.meituan.net/xianfu/7a41f9b88d62384f728f881ad5104f9461440.jpg', '香辣鸡翅2块+九珍果汁1杯', 23.50, 212);
INSERT INTO `meituan_goods` VALUES (2040, '奥堡九珍套餐ST', 'http://p0.meituan.net/xianfu/fccb12c8fb2417dc078aa545bfd3a78a62464.jpg', '升级版新奥尔良烤鸡腿堡1个+九珍果汁1杯', 31.50, 212);
INSERT INTO `meituan_goods` VALUES (2041, '鸡肉火腿帕尼尼ST', 'http://p0.meituan.net/xianfu/d9263205d04c0a11351815221a25adb261440.jpg', '升级版鸡肉火腿帕尼尼', 14.00, 212);
INSERT INTO `meituan_goods` VALUES (2042, '卷堡三人套餐ST', 'http://p0.meituan.net/xianfu/84eb4f8241b50609981306f7e71f1ce638912.jpg', '升级版香辣鸡腿堡1个+升级版新奥尔良烤鸡腿堡1个+老北京鸡肉卷1个+香辣鸡翅2块+新奥尔良烤翅2块+红豆派1块+葡式蛋挞2个+九珍3杯', 99.00, 212);
INSERT INTO `meituan_goods` VALUES (2043, '鸡肉卷九珍套餐T', 'http://p1.meituan.net/xianfu/b5c15b26aa76fc44499de2829c76319f62464.jpg', '老北京鸡肉卷1个+九珍果汁1杯', 29.00, 212);
INSERT INTO `meituan_goods` VALUES (2044, '香辣鸡腿堡(汉堡)ST', 'http://p0.meituan.net/xianfu/384f9a8d44fa3eda0ab801ca59ee397d53248.jpg', '整块无骨鸡腿肉, 浓郁汉堡酱，香脆鲜辣多汁。,主要原料:鸡腿肉，面包，生菜', 19.00, 212);
INSERT INTO `meituan_goods` VALUES (2045, '新奥尔良烤鸡腿堡ST', 'http://p0.meituan.net/xianfu/3843d6323032f77ace00a1e8ae05c93253248.jpg', '选用超大无骨鸡腿肉烤制，鲜嫩多汁，甜中带辣。,主要原料:鸡腿肉，面包，蔬菜（生菜，青椒丝）', 19.50, 212);
INSERT INTO `meituan_goods` VALUES (2046, '老北京鸡肉卷T', 'http://p0.meituan.net/xianfu/794d396c71b3d52064de4dee0988a8f462464.jpg', '选用无骨鸡腿柳条、搭配传统甜面酱和新鲜爽脆黄瓜，酱香浓郁的老北京味。,主要原料:面饼，鸡腿肉条，黄瓜段，京葱丝', 17.00, 212);
INSERT INTO `meituan_goods` VALUES (2047, '热辣香骨鸡T', 'http://p0.meituan.net/xianfu/92ca288519f9dbb652332a8132ea687e60416.jpg', '热辣香骨鸡', 11.50, 213);
INSERT INTO `meituan_goods` VALUES (2048, '四块香辣鸡翅T', 'http://p1.meituan.net/xianfu/f01f5420d33c7eb57dc377043d55741c61440.jpg', '四块香辣鸡翅', 23.00, 213);
INSERT INTO `meituan_goods` VALUES (2049, '20块香辣鸡翅T', 'http://p0.meituan.net/xianfu/6abd1be7bceb2e7976d2676c8e4dc4ec62464.jpg', '香辣鸡翅20块', 89.00, 213);
INSERT INTO `meituan_goods` VALUES (2050, '十块香辣鸡翅T', 'http://p0.meituan.net/xianfu/d33985c67ffb9a5d2dbdcbe2f811f96158368.jpg', '香辣多汁，口感鲜美。十块香辣鸡翅', 48.00, 213);
INSERT INTO `meituan_goods` VALUES (2051, '十块新奥尔良烤翅T', 'http://p0.meituan.net/xianfu/d1d1613f823b2d8917385ba1a1ef12fb62464.jpg', '10块新奥尔良烤翅', 49.00, 213);
INSERT INTO `meituan_goods` VALUES (2052, '二块香辣鸡翅(炸鸡)T', 'http://p0.meituan.net/xianfu/c3d7899fe85fb941a75b9f9163b9b30c61440.jpg', '香辣多汁，口感鲜美。主要原料:鸡翅，小麦粉', 11.50, 213);
INSERT INTO `meituan_goods` VALUES (2053, '二块新奥尔良烤翅T', 'http://p1.meituan.net/xianfu/918636779e082867f6bd047d9806052262464.jpg', '鲜嫩多汁，具烧烤香和甜辣味,主要原料:鸡翅', 12.50, 213);
INSERT INTO `meituan_goods` VALUES (2054, '藤椒肯大大鸡排T', 'http://p0.meituan.net/xianfu/540ab63a40fe55016735445c19765b7761440.jpg', ',主要原料:鸡排，小麦粉', 13.00, 213);
INSERT INTO `meituan_goods` VALUES (2055, '吮指原味鸡套餐AST', 'http://p0.meituan.net/xianfu/4b24f122f168cf7ede112504cd1ba00e44032.jpg', '升级版香辣鸡腿堡1个 + 吮指原味鸡1块 + 九珍果汁饮料1杯', 37.00, 214);
INSERT INTO `meituan_goods` VALUES (2056, '原味鸡九珍套餐T', 'http://p0.meituan.net/xianfu/f36fe36c80ca5acfee55792127fcea6661440.jpg', '吮指原味鸡1块+九珍果汁1杯', 24.00, 214);
INSERT INTO `meituan_goods` VALUES (2057, '(一块)吮指原味鸡T', 'http://p0.meituan.net/xianfu/8d3d63bf7c1cd21c545bd34ab0fe3016161792.jpg', '具有神秘配方浓郁的香料所散发的风味，鲜嫩多汁。,主要原料:鸡肉，小麦粉', 12.00, 214);
INSERT INTO `meituan_goods` VALUES (2058, '波纹霸王薯条T', 'http://p1.meituan.net/xianfu/9ddcb241ea664edeecf855035a26a47161440.jpg', '波纹霸王薯条T', 12.00, 215);
INSERT INTO `meituan_goods` VALUES (2059, '劲爆鸡米花T', 'http://p0.meituan.net/xianfu/897de6db43ed03567fa6c9f190d0d34362464.jpg', '劲爆鸡米花T', 11.50, 215);
INSERT INTO `meituan_goods` VALUES (2060, '黄金鸡块5块装T', 'http://p1.meituan.net/xianfu/0d177b358a7bbe4d76881cdc0305e1da61440.jpg', '精选鸡肉烹炸，搭配调味酱，口感香鲜酥脆。,主要原料:黄金鸡块', 11.50, 215);
INSERT INTO `meituan_goods` VALUES (2061, '芙蓉荟蔬汤T', 'http://p0.meituan.net/xianfu/30c21d52d663e369e88776b3424c570a62464.jpg', '选用蔬菜配以蛋花精制而成,主要原料:鸡蛋、蔬菜（菠菜、裙带菜、胡萝卜、香菇）、水', 8.50, 215);
INSERT INTO `meituan_goods` VALUES (2062, '香甜粟米棒T', 'http://p0.meituan.net/xianfu/c5126d3bc38fcec70a848357ca0c2c5e60416.jpg', '优质甜玉米，外表金黄诱人，口感香甜多汁。,主要原料:玉米', 8.50, 215);
INSERT INTO `meituan_goods` VALUES (2063, '醇香土豆泥T', 'http://p0.meituan.net/xianfu/8c712a63987dd3b4dbf1b664cf634da862464.jpg', '细腻香浓的土豆泥加上润滑可口的鸡汁,主要原料:土豆泥粉，鸡汁粉，淡奶油，黄油', 6.50, 215);
INSERT INTO `meituan_goods` VALUES (2064, '鲜蔬沙拉T', 'http://p0.meituan.net/xianfu/83e4b140504d7e88621b4e11eff743b236864.jpg', '六种鲜脆蔬菜，搭配特制猕猴桃酱，酸甜爽口，健康之选！,主要原料:蔬菜(球生菜,紫甘蓝)，猕猴桃酱', 13.50, 215);
INSERT INTO `meituan_goods` VALUES (2065, '葡式蛋挞经典1只装T', 'http://p1.meituan.net/xianfu/fbcdf3a30990f742903881a50471231139936.jpg', '口感嫩滑，浓郁香甜,主要原料:挞皮，蛋液，淡奶油，牛奶', 8.00, 215);
INSERT INTO `meituan_goods` VALUES (2066, '安心大油条T', 'http://p0.meituan.net/xianfu/aef57b33e9e12ebde2dde9fa98af671a37888.jpg', '以面粉为主要原料，炸至香酥可口。,主要原料:油条', 6.50, 215);
INSERT INTO `meituan_goods` VALUES (2067, '太阳蛋T', 'http://p0.meituan.net/xianfu/e5a8b93a9fb810bd2757e40d4fa198cb19456.jpg', '造型美观。,主要原料:鸡蛋', 5.50, 215);
INSERT INTO `meituan_goods` VALUES (2068, '葡式蛋挞(经典)1只T', 'http://p0.meituan.net/xianfu/06a673601ea2f04d5c0d986e640fd77b61440.jpg', '口感嫩滑，浓郁香甜,主要原料:挞皮，蛋液，淡奶油，牛奶', 8.00, 216);
INSERT INTO `meituan_goods` VALUES (2069, '红豆派T', 'http://p0.meituan.net/xianfu/8e084c4ef8a4e80ddad4ff7db6e5984136864.jpg', '精选富含高营养价值的红豆，精心熬煮制成浓稠绵蜜的红豆酱，再将其包裹于外表金黄的小酥皮中，特制成酥情蜜意红豆派。口感饱满且富有层次。,主要原料:红豆派', 6.50, 216);
INSERT INTO `meituan_goods` VALUES (2070, '原味圣代（冲绳黑糖珍珠酱）T', 'http://p0.meituan.net/xianfu/300b353e44c5d90ae92ca447b1621d5b60416.jpg', '主要原料：香浓牛奶味冰淇淋，醇香黑糖风味粉圆，冲绳黑糖调味酱', 11.00, 216);
INSERT INTO `meituan_goods` VALUES (2071, '原味圣代（北美蓝莓酱）T', 'http://p1.meituan.net/xianfu/95c99174ad76f9681cff1d324f203ea660416.jpg', '主要原料：香浓牛奶味冰淇淋，蓝莓果酱', 11.00, 216);
INSERT INTO `meituan_goods` VALUES (2072, '葡式蛋挞经典2只装T', 'http://p0.meituan.net/xianfu/edc2c2299a1c9ca316f9f7cbeead2a0d62464.jpg', '葡式蛋挞经典2只装', 16.00, 216);
INSERT INTO `meituan_goods` VALUES (2073, '葡式蛋挞(经典)6只T', 'http://p0.meituan.net/xianfu/6fb8a05b555db6fcf6133d64e38b738862464.jpg', '葡式蛋挞（经典）6只,主要原料:挞皮，蛋液，淡奶油，牛奶', 38.00, 216);
INSERT INTO `meituan_goods` VALUES (2074, '恋桃乌龙茶T', 'http://p1.meituan.net/xianfu/47ea0e7173f5482e695c6ba181bf7b3759392.jpg', '主要原料：桃之恋乌龙茶：铁观音茶，桃复合果汁饮料浓浆，糖水混合桃丁罐头', 13.50, 217);
INSERT INTO `meituan_goods` VALUES (2075, '百事可乐(中)T', 'http://p0.meituan.net/xianfu/56007977d214d7e7526996279afe241960416.jpg', '主要原料： 水，百事可乐糖浆， 二氧化碳', 9.50, 217);
INSERT INTO `meituan_goods` VALUES (2076, '九珍果汁饮料T', 'http://p0.meituan.net/xianfu/7a8360ae5dc1cda8e3f71d8bf4bdcd6e61440.jpg', '九种水果风味混合而成，酸甜可口,主要原料:果汁浓缩液、水', 12.00, 217);
INSERT INTO `meituan_goods` VALUES (2077, '热柠檬红茶T', 'http://p0.meituan.net/xianfu/fe44f2d7c9ce4bb8f29136483428c5d661440.jpg', '经典红茶加入三片新鲜柠檬， 醇厚、清新交织在一起，让人回味无穷。水果茶内含水果籽，请小心吸食，儿童请在家长监护下食用。,主要原料:红茶，柠檬片', 11.50, 217);
INSERT INTO `meituan_goods` VALUES (2078, '1.25升装百事可乐T', 'http://p0.meituan.net/xianfu/5621e0caa65ed56ef4d2af4f632d2f7861440.jpg', '1瓶1.25L百事可乐', 16.00, 217);
INSERT INTO `meituan_goods` VALUES (2079, '猪柳蛋帕尼拿铁餐ST', 'http://p0.meituan.net/xianfu/dc4442c9aa56df39899e7a9f0eedf60e131072.jpg', '升级芝士猪柳蛋帕尼尼1份 + 拿铁（大）1杯', 30.50, 218);
INSERT INTO `meituan_goods` VALUES (2080, '瘦肉粥浆太阳蛋餐T', 'http://p1.meituan.net/xianfu/651f9a7e9e6f09f33dfbe082cb4ff97239936.jpg', '皮蛋瘦肉粥1份+醇豆浆甜（热）1杯+太阳蛋1个', 20.50, 218);
INSERT INTO `meituan_goods` VALUES (2081, '鸡肉粥浆太阳蛋餐T', 'http://p1.meituan.net/xianfu/5546636922eb0166e0b9864886733b4339936.jpg', '雪菜笋丁鸡肉粥1份+醇豆浆甜（热）1杯+太阳蛋1个', 18.50, 218);
INSERT INTO `meituan_goods` VALUES (2082, '冬菇滑鸡粥T', 'http://p0.meituan.net/xianfu/7d42e79dc089317e410be89992d0a6f739936.jpg', '现熬浓稠好粥底中，加入鸡腿肉、冬菇块，与蚝汁一起蒸煮入味。鲜、嫩、香。,主要原料:大米、冬菇、鸡肉、生菜', 9.50, 218);
INSERT INTO `meituan_goods` VALUES (2083, '牛肉蛋花粥T', 'http://p0.meituan.net/xianfu/fe66437b3b7be9f49bc15165bd90bf9536864.jpg', '全新美味的牛肉蛋花粥，在熬制的粥底中打入美味蛋花，加入细切新鲜牛肉，再配以黑木耳和黄花菜等配菜，料足味美。,主要原料:大米、牛肉粒、牛肉粥菜块（鸡蛋、木耳、黄花菜、葱）', 11.50, 218);
INSERT INTO `meituan_goods` VALUES (2084, '雪菜笋丁鸡肉粥T', 'http://p0.meituan.net/xianfu/6c554f75ff5522879720ae9e869bbf5629696.jpg', '咸鲜适口,主要原料:大米、雪菜、鸡肉、笋丁、胡萝卜', 7.50, 218);
INSERT INTO `meituan_goods` VALUES (2085, '葡式蛋挞经典1只装T', 'http://p1.meituan.net/xianfu/fbcdf3a30990f742903881a50471231139936.jpg', '口感嫩滑，浓郁香甜,主要原料:挞皮，蛋液，淡奶油，牛奶', 8.00, 218);
INSERT INTO `meituan_goods` VALUES (2086, '安心大油条T', 'http://p0.meituan.net/xianfu/aef57b33e9e12ebde2dde9fa98af671a37888.jpg', '以面粉为主要原料，炸至香酥可口。,主要原料:油条', 6.50, 218);
INSERT INTO `meituan_goods` VALUES (2087, '太阳蛋T', 'http://p0.meituan.net/xianfu/e5a8b93a9fb810bd2757e40d4fa198cb19456.jpg', '造型美观。,主要原料:鸡蛋', 5.50, 218);
INSERT INTO `meituan_goods` VALUES (2088, '小清新聚神双人餐T', 'http://p0.meituan.net/xianfu/89d7b0f5b18ba3c0089c8caeb12be03a60416.jpg', '拿铁(中)+榛果风味拿铁(中)+葡式蛋挞（经典）2个+热辣香骨鸡3块', 60.50, 219);
INSERT INTO `meituan_goods` VALUES (2089, '炙热的心T', 'http://p1.meituan.net/xianfu/ae24d0fbdd3f0e1772b22d54044e8d8159392.jpg', '香草风味冰拿铁(中)+比利时风味华夫巧克力味', 28.00, 219);
INSERT INTO `meituan_goods` VALUES (2090, '你是我的甜心T', 'http://p0.meituan.net/xianfu/9c1e08104a038f4716216d7e229d5c9a60416.jpg', '拿铁（大）+葡式蛋挞（经典）1只', 27.00, 219);
INSERT INTO `meituan_goods` VALUES (2091, '冰拿铁(大)T', 'http://p0.meituan.net/xianfu/db5dffb4a516de080447de97f176261460416.jpg', '精选阿拉比卡咖啡豆，新鲜现磨；规格：同堂食大杯,主要原料:焙炒咖啡豆，牛奶，水', 19.00, 219);
INSERT INTO `meituan_goods` VALUES (2092, '拿铁(大)T', 'http://p0.meituan.net/xianfu/a8aa783b749fb4a50e187e906fd0755150176.jpg', '精选阿拉比卡咖啡豆，新鲜现磨；规格：同堂食大杯,主要原料:焙炒咖啡豆，牛奶，水', 19.00, 219);
INSERT INTO `meituan_goods` VALUES (2093, '冰拿铁(中)T', 'http://p0.meituan.net/xianfu/09767cbd2ce12b0e33b38666737460f758368.jpg', '精选阿拉比卡咖啡豆，新鲜现磨；规格：同堂食中杯,主要原料:焙炒咖啡豆，牛奶，水', 16.00, 219);
INSERT INTO `meituan_goods` VALUES (2094, '拿铁(中)T', 'http://p0.meituan.net/xianfu/b11924fb258e085f14d6d0893221aa8f60416.jpg', '精选阿拉比卡咖啡豆，新鲜现磨；规格：同堂食中杯,主要原料:焙炒咖啡豆，牛奶，水', 16.00, 219);
INSERT INTO `meituan_goods` VALUES (2095, '榛果风味冰拿铁T', 'http://p0.meituan.net/xianfu/7fc4a1db0b9c66afa99665b80878726a60416.jpg', ',主要原料:焙炒咖啡豆，牛奶，榛果风味糖浆，水', 17.00, 219);
INSERT INTO `meituan_goods` VALUES (2096, '冰美式T', 'http://p0.meituan.net/xianfu/fef4a6d473208170196a7ca88de5be1560416.jpg', '主要原料:焙炒咖啡豆，水', 14.00, 219);
INSERT INTO `meituan_goods` VALUES (2097, '香草风味冰拿铁T', 'http://p1.meituan.net/xianfu/97f41225c0461dcda13ce74be9fd762260416.jpg', ',主要原料:焙炒咖啡豆，牛奶，香草风味糖浆，水', 17.00, 219);
INSERT INTO `meituan_goods` VALUES (2098, '香草风味拿铁T', 'http://p0.meituan.net/xianfu/cdbeb7329c03317a5047e15a8bb38a5b60416.jpg', ',主要原料:焙炒咖啡豆，牛奶，香草风味糖浆，水', 17.00, 219);
INSERT INTO `meituan_goods` VALUES (2099, '榛果风味拿铁T', 'http://p0.meituan.net/xianfu/f6ffb34a24531b7caf456e814d2feb0160416.jpg', ',主要原料:焙炒咖啡豆，牛奶，榛果风味糖浆，水', 17.00, 219);
INSERT INTO `meituan_goods` VALUES (2100, '美式T', 'http://p0.meituan.net/xianfu/e33130db37cddd50a7d0946e97ca65d960416.jpg', '主要原料:焙炒咖啡豆，水', 14.00, 219);
INSERT INTO `meituan_goods` VALUES (2101, '热美式大套餐T', 'http://p0.meituan.net/xianfu/affa5c4ea3ac4b1d26f84e07da8d44bb50176.jpg', '美式(大)1杯+新奥尔良烤翅2块', 24.00, 219);
INSERT INTO `meituan_goods` VALUES (2102, '摩卡T', 'http://p0.meituan.net/xianfu/994e1d82e46c166c2acdab91cdc6e21560416.jpg', ',主要原料:焙炒咖啡豆，牛奶，巧克力味可可固体饮料，水', 18.00, 219);
INSERT INTO `meituan_goods` VALUES (2103, '大拿铁单人餐T', 'http://p0.meituan.net/xianfu/4710c72fc39ec28b393d5af5fcbaf0dd60416.jpg', '拿铁(大)1杯+香辣鸡翅2块', 25.00, 219);
INSERT INTO `meituan_goods` VALUES (2104, '春风暖心单人套餐T', 'http://p0.meituan.net/xianfu/3c771ff1251d24f39cb96d0edad405c460416.jpg', '拿铁(中)1杯+香辣鸡翅2块', 27.50, 219);
INSERT INTO `meituan_goods` VALUES (2105, '大拿铁辣翅双人餐T', 'http://p0.meituan.net/xianfu/f12ca6b210729aba6046923afaa0688859392.jpg', '拿铁(大)2杯+香辣鸡翅4块', 48.00, 219);
INSERT INTO `meituan_goods` VALUES (2106, '双层安格斯厚牛培根堡大套餐', 'http://p0.meituan.net/xianfu/e733c58af4ea2f96d943603df8485bd863405.jpg', '双层安格斯厚牛培根堡1份+薯格/大薯条/大玉+饮料可选 主要原料：面包、牛肉、风味酱、生菜、培根、芝士片、薯条、饮料', 58.50, 220);
INSERT INTO `meituan_goods` VALUES (2107, '双层安格斯厚牛芝士堡大套餐', 'http://p0.meituan.net/xianfu/6be447d0289fb6cf7c4af5c32721371a59969.jpg', '双层安格斯厚牛芝士堡1份+薯格/大薯条/大玉+饮料可选 主要原料：面包、牛肉、风味酱、番茄片、芝士片、薯条、饮料', 55.50, 220);
INSERT INTO `meituan_goods` VALUES (2108, '安格斯厚牛培根堡大套餐', 'http://p0.meituan.net/xianfu/c97caf11b9a8960211a622bfc28aa3b760710.jpg', '安格斯厚牛培根堡1份+薯格/大薯条/大玉+饮料可选 主要原料：安格斯牛肉饼、黑白芝麻布里欧面包、烤牛肉风味酱、罗马生菜、培根、切达芝士片、薯条、饮料', 48.50, 220);
INSERT INTO `meituan_goods` VALUES (2109, '安格斯厚牛芝士堡大套餐', 'http://p1.meituan.net/xianfu/9332a6dd593a68c3ad8f37dec58bffb459143.jpg', '安格斯厚牛芝士堡1份+薯格/大薯条/大玉+饮料可选 主要原料：安格斯牛肉饼、黑白芝麻布里欧面包、芝士风味酱、番茄、高达芝士片、薯条、饮料', 45.50, 220);
INSERT INTO `meituan_goods` VALUES (2110, '双层安格斯厚牛培根堡', 'http://p1.meituan.net/xianfu/d693236a0670e0d64952768e3585923850489.jpg', '双层安格斯厚牛培根堡1份\r\n 主要原料：面包、牛肉、风味酱、生菜、培根、芝士片', 42.00, 220);
INSERT INTO `meituan_goods` VALUES (2111, '双层安格斯厚牛芝士堡', 'http://p1.meituan.net/xianfu/21779bccf1b71d5ca9c500083af1cc2746905.jpg', '双层安格斯厚牛芝士堡1份 主要原料：面包、牛肉、风味酱、番茄片、芝士片', 39.00, 220);
INSERT INTO `meituan_goods` VALUES (2112, '安格斯厚牛培根堡', 'http://p1.meituan.net/xianfu/da085efa7f17ccf4f84d74a9eeb730f334712.jpg', '安格斯厚牛培根堡1份 主要原料：安格斯牛肉饼、黑白芝麻布里欧面包、烤牛肉风味酱、罗马生菜、培根、切达芝士片', 32.00, 220);
INSERT INTO `meituan_goods` VALUES (2113, '安格斯厚牛芝士堡', 'http://p1.meituan.net/xianfu/40fc5593de7e6f40fd185021c671334634033.jpg', '安格斯厚牛芝士堡1份 主要原料：安格斯牛肉饼、黑白芝麻布里欧面包、芝士风味酱、番茄、高达芝士片', 29.00, 220);
INSERT INTO `meituan_goods` VALUES (2114, '安格斯黑金双人餐', 'http://p0.meituan.net/xianfu/fc41e79b8f75c64ba4ad0101322c613a56170.jpg', '安格斯厚牛培根堡1份+安格斯厚牛芝士堡1份+麦乐鸡5块+麦辣鸡翅4块+中杯可口可乐2杯*494ml 主要原料：安格斯牛肉饼、黑白芝麻布里欧面包、风味酱、番茄、芝士片、罗马生菜、培根、麦乐鸡、鸡翅、可口可乐', 89.00, 220);
INSERT INTO `meituan_goods` VALUES (2115, '安格斯黑金三人餐', 'http://p0.meituan.net/xianfu/d30306ac8de1bbc0196c8fe5a89b46e858002.jpg', '安格斯厚牛培根堡1份+安格斯厚牛芝士堡1份+麦辣鸡腿堡1份+麦乐鸡10块+麦辣鸡翅4块+中杯可口可乐1杯494ml+中杯雪碧1杯494ml+中杯柠檬红茶1杯494ml 主要原料：安格斯牛肉饼、面包、番茄、芝士片、生菜、培根、麦辣鸡排、麦乐鸡、鸡翅、可口可乐', 119.00, 220);
INSERT INTO `meituan_goods` VALUES (2116, '双层安格斯厚牛培根堡中套餐', 'http://p0.meituan.net/xianfu/e733c58af4ea2f96d943603df8485bd863405.jpg', '双层安格斯厚牛培根堡1份+中薯条/小玉+饮料可选 主要原料：面包、牛肉、风味酱、生菜、培根、芝士片、薯条、饮料', 54.50, 220);
INSERT INTO `meituan_goods` VALUES (2117, '双层安格斯厚牛芝士堡中套餐', 'http://p0.meituan.net/xianfu/6be447d0289fb6cf7c4af5c32721371a59969.jpg', '双层安格斯厚牛芝士堡1份+中薯条/小玉+饮料可选 主要原料：面包、牛肉、风味酱、番茄片、芝士片、薯条、饮料', 51.50, 220);
INSERT INTO `meituan_goods` VALUES (2118, '安格斯厚牛培根堡中套餐', 'http://p0.meituan.net/xianfu/c97caf11b9a8960211a622bfc28aa3b760710.jpg', '安格斯厚牛培根堡1份+中薯条/小玉+饮料可选 主要原料：安格斯牛肉饼、黑白芝麻布里欧面包、烤牛肉风味酱、罗马生菜、培根、切达芝士片、薯条、饮料', 44.50, 220);
INSERT INTO `meituan_goods` VALUES (2119, '安格斯厚牛芝士堡中套餐', 'http://p1.meituan.net/xianfu/9332a6dd593a68c3ad8f37dec58bffb459143.jpg', '安格斯厚牛芝士堡1份+中薯条/小玉+饮料可选 主要原料：安格斯牛肉饼、黑白芝麻布里欧面包、芝士风味酱、番茄、高达芝士片、薯条、饮料', 41.50, 220);
INSERT INTO `meituan_goods` VALUES (2120, '无辣不欢单人餐', 'http://p0.meituan.net/xianfu/1f8a409147df5fe0e8ea2d310500988052109.jpg', '经典麦辣鸡腿汉堡1份+麦辣鸡翅2对+中雪碧1杯494ml 主要原料：麦香鸡面包、生菜条、麦辣鸡排、麦香鸡酱、鸡翅、雪碧', 43.00, 221);
INSERT INTO `meituan_goods` VALUES (2121, '双层深海鳕鱼堡大套餐', 'http://p0.meituan.net/xianfu/c1dfcaba6363f2409a76e521460fcb6032125.jpg', '双层深海鳕鱼堡1份+薯格/大薯条/大玉+饮料可选 主要原料：汉堡面包、麦香鱼片、芝麻酱、切片干酪、薯条、饮料', 37.50, 221);
INSERT INTO `meituan_goods` VALUES (2122, '川辣双鸡堡大套餐', 'http://p0.meituan.net/xianfu/808137d734a767d9db9d940594fa7bb540151.jpg', '川辣双鸡堡1份+薯格/大薯条/大玉+饮料可选 主要原料：德式十字面包、生菜条、麦香鸡排、宫保风味沙拉酱、薯条、饮料', 37.50, 221);
INSERT INTO `meituan_goods` VALUES (2123, '不素之霸双层牛堡大套餐', 'http://p0.meituan.net/xianfu/c027ad992c01051f1e2f83832bb596c438651.jpg', '不素之霸双层牛堡1份+薯格/大薯条/大玉+饮料可选 主要原料：德式十字面包、牛肉饼、图林根香肠、芥末酱、薯条、饮料', 37.50, 221);
INSERT INTO `meituan_goods` VALUES (2124, '经典麦辣鸡腿汉堡大套餐', 'http://p0.meituan.net/xianfu/c6c8c7dfaf2c2b5ca954e93f7b12bbb339818.jpg', '经典麦辣鸡腿汉堡1份+薯格/大薯条/大玉+饮料可选 主要原料：麦香鸡面包、生菜条、麦辣鸡排、麦香鸡酱、薯条、饮料', 36.00, 221);
INSERT INTO `meituan_goods` VALUES (2125, '原味板烧鸡腿堡大套餐', 'http://p0.meituan.net/xianfu/7c09bd48d698901b41c533937f65834939796.jpg', '原味板烧鸡腿堡1份+薯格/大薯条/大玉+饮料可选 主要原料：长玉米面包、生菜条、板烧鸡排、烤味酱、薯条、饮料', 36.00, 221);
INSERT INTO `meituan_goods` VALUES (2126, '巨无霸大套餐', 'http://p0.meituan.net/xianfu/d18e1cbc5a6d77cfe03dc16c713ab85f41218.jpg', '巨无霸1份+薯格/大薯条/大玉+饮料可选 主要原料：巨无霸面包、牛肉饼、巨无霸酱、脱水洋葱、酸黄瓜片、生菜条、切片干酪、薯条、饮料', 39.50, 221);
INSERT INTO `meituan_goods` VALUES (2127, '和风牛丼饭大套餐', 'http://p1.meituan.net/xianfu/08bad39a4e842d0d62c50ac487c0243d46190.jpg', '和风牛丼饭1份+大薯条/金黄脆薯格/大玉+饮料可选 主要原料：大米、玉米油、洋葱牛肉片、小松菜、玉米、大薯条、薯格、饮料', 41.00, 221);
INSERT INTO `meituan_goods` VALUES (2128, '双层吉士汉堡大套餐', 'http://p1.meituan.net/xianfu/4b9db41809e10dafd63235da5eb8432835644.jpg', '双层吉士汉堡1份+薯格/大薯条/大玉+饮料可选 主要原料：汉堡面包、牛肉饼、番茄酱、芥末酱、脱水洋葱、酸黄瓜片、切片干酪、薯条、饮料', 37.00, 221);
INSERT INTO `meituan_goods` VALUES (2129, '麦香鱼大套餐', 'http://p0.meituan.net/xianfu/9a7f38b601a8f237db3ecaaceec3fc4b30929.jpg', '麦香鱼1份+薯格/大薯条/大玉+饮料可选 主要原料：汉堡面包、麦香鱼片、麦香鱼酱、切片干酪、薯条、饮料', 36.00, 221);
INSERT INTO `meituan_goods` VALUES (2130, '麦香鸡大套餐', 'http://p1.meituan.net/xianfu/8da5e91f3114fe4cdb316e7d8d14aaa038016.jpg', '麦香鸡1份+薯格/大薯条/大玉+饮料可选 主要原料：麦香鸡面包、生菜条、麦香鸡排、麦香鸡酱、薯条、饮料', 31.50, 221);
INSERT INTO `meituan_goods` VALUES (2131, '培根蔬萃双层牛堡大套餐', 'http://p1.meituan.net/xianfu/e11fc75c696f119776d15fc3d34d758c41712.jpg', '培根蔬萃双层牛堡1份+薯格/大薯条/大玉+饮料可选 主要原料：麦香鸡面包、牛肉饼、麦香鸡酱、短片培根、番茄酱、721生菜条、番茄、薯条', 39.50, 221);
INSERT INTO `meituan_goods` VALUES (2132, '麦辣鸡翅4块大套餐', 'http://p0.meituan.net/xianfu/cca3510f69496274f0ff0ca89fdf15d239939.jpg', '麦辣鸡翅4块+薯格/大薯条/大玉+饮料可选 主要原料：鸡翅、薯条、饮料', 41.00, 221);
INSERT INTO `meituan_goods` VALUES (2133, '麦乐鸡5块大套餐', 'http://p1.meituan.net/xianfu/29f4fa7cb8a089cb651044dd23d6ed6236172.jpg', '麦乐鸡5块+薯格/大薯条/大玉+饮料可选 主要原料：麦乐鸡块、薯格、薯条、玉米、饮料', 30.00, 221);
INSERT INTO `meituan_goods` VALUES (2134, '川辣双鸡堡中套餐', 'http://p0.meituan.net/xianfu/808137d734a767d9db9d940594fa7bb540151.jpg', '川辣双鸡堡1份+中薯条/小玉+饮料可选 主要原料：德式十字面包、生菜条、麦香鸡排、宫保风味沙拉酱、薯条、饮料', 33.50, 221);
INSERT INTO `meituan_goods` VALUES (2135, '不素之霸双层牛堡中套餐', 'http://p0.meituan.net/xianfu/c027ad992c01051f1e2f83832bb596c438651.jpg', '不素之霸双层牛堡1份+中薯条/小玉+饮料可选 主要原料：德式十字面包、牛肉饼、图林根香肠、芥末酱、薯条、饮料', 33.50, 221);
INSERT INTO `meituan_goods` VALUES (2136, '双层深海鳕鱼堡中套餐', 'http://p0.meituan.net/xianfu/c1dfcaba6363f2409a76e521460fcb6032125.jpg', '双层深海鳕鱼堡1份+中薯条/小玉+饮料可选 主要原料：汉堡面包、麦香鱼片、芝麻酱、切片干酪、薯条、饮料', 33.00, 221);
INSERT INTO `meituan_goods` VALUES (2137, '经典麦辣鸡腿汉堡中套餐', 'http://p0.meituan.net/xianfu/c6c8c7dfaf2c2b5ca954e93f7b12bbb339818.jpg', '经典麦辣鸡腿汉堡1份+中薯条/小玉+饮料可选 主要原料：麦香鸡面包、生菜条、麦辣鸡排、麦香鸡酱、薯条、饮料', 32.00, 221);
INSERT INTO `meituan_goods` VALUES (2138, '原味板烧鸡腿堡中套餐', 'http://p0.meituan.net/xianfu/7c09bd48d698901b41c533937f65834939796.jpg', '原味板烧鸡腿堡1份+中薯条/小玉+饮料可选 主要原料：长玉米面包、生菜条、板烧鸡排、烤味酱、薯条、饮料', 32.00, 221);
INSERT INTO `meituan_goods` VALUES (2139, '巨无霸中套餐', 'http://p0.meituan.net/xianfu/d18e1cbc5a6d77cfe03dc16c713ab85f41218.jpg', '巨无霸1份+中薯条/小玉+饮料可选 主要原料：巨无霸面包、牛肉饼、巨无霸酱、脱水洋葱、酸黄瓜片、生菜条、切片干酪、薯条、饮料', 35.50, 221);
INSERT INTO `meituan_goods` VALUES (2140, '和风牛丼饭中套餐', 'http://p1.meituan.net/xianfu/08bad39a4e842d0d62c50ac487c0243d46190.jpg', '和风牛丼饭1份+中薯条/小玉+饮料可选 主要原料：大米、玉米油、洋葱牛肉片、小松菜、玉米、中薯条、饮料', 39.50, 221);
INSERT INTO `meituan_goods` VALUES (2141, '双层吉士汉堡中套餐', 'http://p1.meituan.net/xianfu/4b9db41809e10dafd63235da5eb8432835644.jpg', '双层吉士汉堡1份+中薯条/小玉+饮料可选 主要原料：汉堡面包、牛肉饼、番茄酱、芥末酱、脱水洋葱、酸黄瓜片、切片干酪、薯条、饮料', 33.00, 221);
INSERT INTO `meituan_goods` VALUES (2142, '麦香鱼中套餐', 'http://p0.meituan.net/xianfu/9a7f38b601a8f237db3ecaaceec3fc4b30929.jpg', '麦香鱼1份+中薯条/小玉+饮料可选 主要原料：汉堡面包、麦香鱼片、麦香鱼酱、切片干酪、薯条、饮料', 32.00, 221);
INSERT INTO `meituan_goods` VALUES (2143, '麦香鸡中套餐', 'http://p1.meituan.net/xianfu/8da5e91f3114fe4cdb316e7d8d14aaa038016.jpg', '麦香鸡1份+中薯条/小玉+饮料可选 主要原料：麦香鸡面包、生菜条、麦辣鸡排、麦香鸡酱、薯条、饮料', 27.50, 221);
INSERT INTO `meituan_goods` VALUES (2144, '培根蔬萃双层牛堡中套餐', 'http://p1.meituan.net/xianfu/e11fc75c696f119776d15fc3d34d758c41712.jpg', '培根蔬萃双层牛堡1份+中薯条/小玉+饮料可选 主要原料：麦香鸡面包、牛肉饼、麦香鸡酱、短片培根、番茄酱、生菜条、番茄、薯条、饮料', 35.50, 221);
INSERT INTO `meituan_goods` VALUES (2145, '麦辣鸡翅4块中套餐', 'http://p0.meituan.net/xianfu/cca3510f69496274f0ff0ca89fdf15d239939.jpg', '麦辣鸡翅4块+中薯条/小玉+饮料可选 主要原料：鸡翅、薯条、饮料', 37.00, 221);
INSERT INTO `meituan_goods` VALUES (2146, '麦乐鸡5块中套餐', 'http://p1.meituan.net/xianfu/29f4fa7cb8a089cb651044dd23d6ed6236172.jpg', '麦乐鸡5块+中薯条/小玉+饮料可选 主要原料：麦乐鸡块、薯条、饮料', 26.00, 221);
INSERT INTO `meituan_goods` VALUES (2147, '就爱吃鸡双人餐A', 'http://p0.meituan.net/xianfu/26ff9c6cd23b4ac0429d7865e057521e33719.jpg', '经典麦辣鸡腿堡2个+麦乐鸡5块+中可乐2杯494ml 主要原料：麦香鸡面包、生菜条、麦辣鸡排、麦香鸡酱、麦乐鸡块、可口可乐', 39.00, 222);
INSERT INTO `meituan_goods` VALUES (2148, '可盐可甜下午茶双人餐', 'http://p0.meituan.net/xianfu/1544ecd0337e4e827434f258dacdc5a432061.jpg', '麦辣鸡翅2对+麦乐鸡10块+奥利奥麦旋风2杯 主要原料：鸡翅、麦乐鸡块、新地奶浆、奥利奥饼干碎', 59.00, 222);
INSERT INTO `meituan_goods` VALUES (2149, '海陆空经典三人餐', 'http://p1.meituan.net/xianfu/615d90997acdc04e3a06053a0d9febe730772.jpg', '巨无霸1份+双层深海鳕鱼堡1份+经典麦辣鸡腿汉堡1份+麦辣鸡翅1对+麦乐鸡5块+那么大鸡排1份+中可乐3杯*494ml 主要原料：面包、牛肉饼、脱水洋葱、酸黄瓜片、生菜、切片干酪、麦香鱼片、麦辣鸡排、可口可乐', 79.00, 222);
INSERT INTO `meituan_goods` VALUES (2150, '海陆空双层满足餐', 'http://p0.meituan.net/xianfu/cfd45bdd0859f0c3868a30e7f01421e329986.jpg', '不素之霸双层牛堡1份+双层深海鳕鱼堡1份+川辣双鸡堡1份+那么大鸡排1份+麦乐鸡5块+那么大鲜柠特饮可乐3杯*660ml 主要原料：面包、牛肉饼、图林根香肠、芥末酱、麦香鱼片、切片干酪、生菜、鸡排、可口可乐、柠檬红茶', 89.00, 222);
INSERT INTO `meituan_goods` VALUES (2151, '乐享三人餐', 'http://p0.meituan.net/xianfu/77af7a7a123e7dc598d0d5be3d4d469075727.jpg', '原味板烧鸡腿堡1份+经典麦辣鸡腿汉堡1份+川辣双鸡堡1份＋麦辣鸡翅1对+金黄脆薯格1份＋麦乐鸡5块+香芋派1份+大可乐2杯*660ml+大柠檬红茶1杯 660ml 主要原料：面包、生菜、板烧鸡排、薯格、鸡排、鸡翅、麦乐鸡块、香芋派、可口可乐、柠檬红茶', 79.00, 222);
INSERT INTO `meituan_goods` VALUES (2152, '麦乐家庭餐', 'http://p0.meituan.net/xianfu/343cfb1c37256f56d279a7018965719f34508.jpg', '原味板烧鸡腿堡1份+经典麦辣鸡腿汉堡1份+麦辣鸡翅4块+麦乐鸡块4块+金黄脆薯格1份+小玉米杯2份+牛奶1盒200ml+美汁源阳光橙1杯475ml+中可乐1杯494ml+免费玩具 主要原料：面包、生菜、鸡排、鸡翅、麦乐鸡块、薯格、玉米、牛奶、可口可乐、美汁源阳光橙', 82.50, 222);
INSERT INTO `meituan_goods` VALUES (2153, '5人欢享盛宴餐', 'http://p0.meituan.net/xianfu/0e5360aa8097fd7ef3c9666868eebbe168280.jpg', '经典麦辣鸡腿汉堡2份+原味板烧鸡腿堡2份+巨无霸1份+麦乐鸡20块+麦辣鸡翅9块+那么大鸡排1份+小玉米2份+菠萝派2份+香芋派2份+中可乐3杯*494ml+美汁源阳光橙2杯*475ml 主要原料：面包、生菜、鸡排、牛肉饼、风味酱、脱水洋葱、酸黄瓜片、派、美汁源阳光橙、可口可乐', 199.00, 222);
INSERT INTO `meituan_goods` VALUES (2154, '金拱门桶A（可乐鸡翅版）', 'http://p1.meituan.net/xianfu/0cfbe6bdc0839cc0587ac4bd3a53ea3036505.jpg', '可乐鸡翅4块+麦辣鸡翅3块+金黄脆薯格 主要原料：可乐鸡翅、麦辣鸡翅、脆薯格', 55.00, 223);
INSERT INTO `meituan_goods` VALUES (2155, '金拱门桶B组合', 'http://p1.meituan.net/xianfu/3b54e5ee4f499ce8e4aea5e4d40d906234456.jpg', '椒盐金脆鸡翅4块+麦辣鸡翅3块+金黄脆薯格 主要原料：鸡翅、薯格', 55.00, 223);
INSERT INTO `meituan_goods` VALUES (2156, '家有金桶(汉堡版)', 'http://p0.meituan.net/xianfu/97198b2b822dd834948e2fdf6fd951ee63284.jpg', '麦辣鸡腿堡1个+板烧鸡腿堡1个+麦辣鸡翅2块+香骨鸡腿1个+椒盐金脆鸡翅2块+那么大鸡排1个+香芋派1个+中可乐3杯*494ml 主要原料：面包、生菜条、麦辣鸡排、板烧鸡排、风味酱、鸡翅、鸡腿、鸡排、香芋派、可口可乐', 97.00, 223);
INSERT INTO `meituan_goods` VALUES (2157, '家有金桶(脆鸡版)', 'http://p0.meituan.net/xianfu/cceba6fbc006b9cf6d9d50b2cfe1b07a60329.jpg', '麦辣鸡翅6块+香骨鸡腿3个+那么大鸡排1个+中可乐3杯*494ml 主要原料：鸡翅、鸡腿、鸡排、可口可乐', 97.00, 223);
INSERT INTO `meituan_goods` VALUES (2158, '小食纷享盒（那么大鸡排）', 'http://p0.meituan.net/xianfu/5a0cd2fd088ec99ff9d988172be7e65326350.jpg', '那么大鸡排1份+麦辣鸡翅1对+麦乐鸡4块 主要原料：鸡翅、鸡排、麦乐鸡块', 31.00, 223);
INSERT INTO `meituan_goods` VALUES (2159, '无肉不欢', 'http://p0.meituan.net/xianfu/ac3c013c45f753468f0289f3a9b2c7e228674.jpg', '吉士汉堡1份+麦辣鸡翅2块+中杯零度可口可乐1杯494ml *该套餐参考总热量低于500大卡（不含调料包） 主要原料：汉堡面包、牛肉饼、番茄酱、芥末酱、脱水洋葱、酸黄瓜片、切片干酪、鸡翅、零度可口可乐', 25.00, 224);
INSERT INTO `meituan_goods` VALUES (2160, '“苹板”支撑', 'http://p1.meituan.net/xianfu/13a8398f5e4b59fc336c2a08e032657d30231.jpg', '原味板烧鸡腿堡1份+苹果片1份+中杯零度可口可乐1份494ml *该套餐参考总热量低于500大卡（不含调料包） 主要原料：长玉米面包、721生菜条、板烧鸡排、烤味酱、苹果片、零度可口可乐', 35.00, 224);
INSERT INTO `meituan_goods` VALUES (2161, '霸气五色', 'http://p0.meituan.net/xianfu/cb7a09fe95dea4094ce15e81ca0759ca29931.jpg', '培根蔬萃双层牛堡1份+大玉米杯1份+中杯零度可口可乐1份494ml *该套餐参考总热量低于500大卡（不含调料包） 主要原料：麦香鸡面包、牛肉饼、麦香鸡酱、短片培根、番茄酱、生菜条、番茄、玉米、零度可口可乐', 37.50, 224);
INSERT INTO `meituan_goods` VALUES (2162, '想吃鲜的', 'http://p0.meituan.net/xianfu/7b5f861e3239732b383b09f2fc7e9fe828475.jpg', '麦香鱼1份+大杯玉米杯1份+美味鲜蔬杯1份+小杯鲜煮咖啡1杯280ml *该套餐参考总热量低于500大卡（不含调料包） 主要原料：汉堡面包、麦香鱼片、麦香鱼酱、切片干酪、玉米杯、721生菜条、番茄、烘烤芝麻酱、咖啡粉、水', 36.50, 224);
INSERT INTO `meituan_goods` VALUES (2163, '就怕不辣', 'http://p0.meituan.net/xianfu/5fef9cbb94fa8880c64c3bb6f04d8c6730705.jpg', '麦辣鸡翅2块+香骨鸡腿1份+中杯零度可口可乐1杯494ml *该套餐参考总热量低于500大卡（不含调料包） 主要原料：鸡翅、鸡腿、零度可口可乐', 33.50, 224);
INSERT INTO `meituan_goods` VALUES (2164, '“鸡”不可失', 'http://p0.meituan.net/xianfu/c8fe1c02f6fef137ee09ec244de9965229102.jpg', '麦辣鸡翅2块+麦乐鸡5块+中杯零度可口可乐1份494ml *该套餐参考总热量低于500大卡（不含调料包） 主要原料：麦乐鸡、鸡翅、零度可口可乐', 28.00, 224);
INSERT INTO `meituan_goods` VALUES (2165, '来点小食', 'http://p0.meituan.net/xianfu/8433ee87d9456ac961f04ea37b92457127687.jpg', '麦乐鸡5块+小薯条1份+美味鲜蔬杯1份+锡兰红茶1杯348ml *该套餐参考总热量低于500大卡（不含调料包） 主要原料：麦乐鸡块、薯条、721生菜条、番茄、烘烤芝麻酱', 37.50, 224);
INSERT INTO `meituan_goods` VALUES (2166, '只爱甜的', 'http://p0.meituan.net/xianfu/fb8c7b77dc0b2ab8e55689de7d3df59c24326.jpg', '香芋派1份+苹果片1份+美汁源阳光橙1杯475ml *该套餐参考总热量低于500大卡（不含调料包） 主要原料：香芋派、苹果片、美汁源阳光橙', 25.50, 224);
INSERT INTO `meituan_goods` VALUES (2167, '难得吃素', 'http://p0.meituan.net/xianfu/10cb47922b5ec2c7ce7833e6c14b20db23663.jpg', '菠萝派1份+小薯条1份+锡兰红茶1杯348ml *该套餐参考总热量低于500大卡（不含调料包） 主要原料：菠萝派、薯条、锡兰红茶', 27.50, 224);
INSERT INTO `meituan_goods` VALUES (2168, '安格斯厚牛培根堡', 'http://p1.meituan.net/xianfu/da085efa7f17ccf4f84d74a9eeb730f334712.jpg', '安格斯厚牛培根堡1份 主要原料：安格斯牛肉饼、黑白芝麻布里欧面包、烤牛肉风味酱、罗马生菜、培根、切达芝士片', 32.00, 225);
INSERT INTO `meituan_goods` VALUES (2169, '安格斯厚牛芝士堡', 'http://p1.meituan.net/xianfu/40fc5593de7e6f40fd185021c671334634033.jpg', '安格斯厚牛芝士堡1份 主要原料：安格斯牛肉饼、黑白芝麻布里欧面包、芝士风味酱、番茄、高达芝士片', 29.00, 225);
INSERT INTO `meituan_goods` VALUES (2170, '经典麦辣鸡腿汉堡', 'http://p1.meituan.net/xianfu/6587000c58167cd9f803e2f974e16fe836808.jpg', '经典麦辣鸡腿汉堡1份 主要原料：麦香鸡面包、生菜条、麦辣鸡排、麦香鸡酱', 20.00, 225);
INSERT INTO `meituan_goods` VALUES (2171, '原味板烧鸡腿堡', 'http://p1.meituan.net/xianfu/5a76b763940558cbfd2adc14f82f5da624705.jpg', '原味板烧鸡腿堡1份 主要原料：长玉米面包、721生菜条、板烧鸡排、烤味酱', 10.00, 225);
INSERT INTO `meituan_goods` VALUES (2172, '巨无霸', 'http://p0.meituan.net/xianfu/035a42b25f7c4a500e83f0b427499bc329375.jpg', '巨无霸1份 主要原料：巨无霸面包、牛肉饼、巨无霸酱、脱水洋葱、酸黄瓜片、生菜条、切片干酪', 23.00, 225);
INSERT INTO `meituan_goods` VALUES (2173, '和风牛丼饭', 'http://p1.meituan.net/xianfu/83416710cc042947c244ee53ffdde4b928384.jpg', '和风牛丼饭1份 主要原料：大米、玉米油、洋葱牛肉片、小松菜、玉米', 26.00, 225);
INSERT INTO `meituan_goods` VALUES (2174, '川辣双鸡堡', 'http://p0.meituan.net/xianfu/fdc758b632cd4184e2fa7cea3bf6f24632091.jpg', '川辣双鸡堡1份 主要原料：德式十字面包、生菜条、麦香鸡排、宫保风味沙拉酱', 21.00, 225);
INSERT INTO `meituan_goods` VALUES (2175, '不素之霸双层牛肉堡', 'http://p0.meituan.net/xianfu/eb4542454d3da37a3e77036cd9d7d79024677.jpg', '不素之霸双层牛肉堡1份 主要原料：德式十字面包、牛肉饼、图林根香肠、芥末酱', 21.00, 225);
INSERT INTO `meituan_goods` VALUES (2176, '双层深海鳕鱼堡', 'http://p0.meituan.net/xianfu/ae70872843bfe7c106e6727cbc38a75517367.jpg', '双层深海鳕鱼堡1份 主要原料：汉堡面包、麦香鱼片、芝麻酱、切片干酪', 21.00, 225);
INSERT INTO `meituan_goods` VALUES (2177, '麦香鱼', 'http://p1.meituan.net/xianfu/0f83d9204227dcc70ce2088a00f2deb919971.jpg', '麦香鱼1份 主要原料：汉堡面包、麦香鱼片、麦香鱼酱、切片干酪', 19.00, 225);
INSERT INTO `meituan_goods` VALUES (2178, '培根蔬萃双层牛堡', 'http://p0.meituan.net/xianfu/6ae5e57a4c4ccbcbd1797e4fe6e9eec733353.jpg', '培根蔬萃双层牛堡1份 主要原料：麦香鸡面包、牛肉饼、麦香鸡酱、短片培根、番茄酱、721生菜条、番茄', 23.00, 225);
INSERT INTO `meituan_goods` VALUES (2179, '麦香鸡', 'http://p0.meituan.net/xianfu/6d2c8cd5fec8a26b5b486bb2d8d5852d24802.jpg', '麦香鸡1份 主要原料：麦香鸡面包、生菜条、麦香鸡排、麦香鸡酱', 13.00, 225);
INSERT INTO `meituan_goods` VALUES (2180, '双层吉士汉堡', 'http://p0.meituan.net/xianfu/954d6507f4309b193f8e1fec4cc7996025197.jpg', '双层吉士汉堡1份 主要原料：汉堡面包、牛肉饼、番茄酱、芥末酱、脱水洋葱、酸黄瓜片、切片干酪', 19.00, 225);
INSERT INTO `meituan_goods` VALUES (2181, '吉士汉堡包', 'http://p0.meituan.net/xianfu/ae963b4ce243d523509b6cf615df983d20571.jpg', '吉士汉堡包1份 主要原料：汉堡面包、牛肉饼、番茄酱、芥末酱、脱水洋葱、酸黄瓜片、切片干酪', 10.00, 225);
INSERT INTO `meituan_goods` VALUES (2182, '汉堡包', 'http://p0.meituan.net/xianfu/defca4cc3ca04e04f352ce8bdba4537619182.jpg', '汉堡包1份 主要原料：汉堡面包、牛肉饼、番茄酱、芥末酱、脱水洋葱、酸黄瓜片', 9.00, 225);
INSERT INTO `meituan_goods` VALUES (2183, '家有金桶(汉堡版)', 'http://p0.meituan.net/xianfu/97198b2b822dd834948e2fdf6fd951ee63284.jpg', '麦辣鸡腿堡1个+板烧鸡腿堡1个+麦辣鸡翅2块+香骨鸡腿1个+椒盐金脆鸡翅2块+那么大鸡排1个+香芋派1个+中可乐3杯*494ml 主要原料：面包、生菜条、麦辣鸡排、板烧鸡排、风味酱、鸡翅、鸡腿、鸡排、香芋派、可口可乐', 97.00, 226);
INSERT INTO `meituan_goods` VALUES (2184, '家有金桶(脆鸡版)', 'http://p0.meituan.net/xianfu/cceba6fbc006b9cf6d9d50b2cfe1b07a60329.jpg', '麦辣鸡翅6块+香骨鸡腿3个+那么大鸡排1个+中可乐3杯*494ml 主要原料：鸡翅、鸡腿、鸡排、可口可乐', 97.00, 226);
INSERT INTO `meituan_goods` VALUES (2185, 'ZICO椰子水派下午茶', 'http://p0.meituan.net/xianfu/d9460956cf13cbbd0c26b09e81275be327393.jpg', '香芋派2个+ZICO椰子水饮494ml 主要原料：香芋派、椰子水饮', 19.90, 226);
INSERT INTO `meituan_goods` VALUES (2186, 'ZICO椰子水饮鸡翅下午茶', 'http://p1.meituan.net/xianfu/717d4a12380b64ca7d844f27e483111b31711.jpg', '麦辣鸡翅1对+ZICO椰子水饮494ml 主要原料：鸡翅、椰子水饮', 19.90, 226);
INSERT INTO `meituan_goods` VALUES (2187, '金黄脆薯格', 'http://p1.meituan.net/xianfu/efe82183fa5a5df7087b80caa40401a422814.jpg', '金黄脆薯格一盒 主要原料：薯格', 13.50, 226);
INSERT INTO `meituan_goods` VALUES (2188, '可乐鸡翅一对', 'http://p0.meituan.net/xianfu/d7e71391d577f8f4e13e3b7940141ea049141.jpg', '可乐鸡翅一对 主要原料：鸡翅', 12.50, 226);
INSERT INTO `meituan_goods` VALUES (2189, '麦辣鸡翅2块', 'http://p0.meituan.net/xianfu/e16a10cdd924c6ca4ec3c70ff14e390a21530.jpg', '2块麦辣鸡翅 主要原料：鸡翅', 11.50, 226);
INSERT INTO `meituan_goods` VALUES (2190, '麦辣鸡翅4块', 'http://p0.meituan.net/xianfu/d3a501366f3c57a3ad3a92a5e3d37c9723478.jpg', '4块麦辣鸡翅 主要原料：鸡翅', 23.00, 226);
INSERT INTO `meituan_goods` VALUES (2191, '麦辣鸡翅9块', 'http://p1.meituan.net/xianfu/b7cddf94a0fdb1d97e1156c69536297838124.jpg', '9块麦辣鸡翅 主要原料：鸡翅', 46.00, 226);
INSERT INTO `meituan_goods` VALUES (2192, '金脆椒盐鸡翅一对', 'http://p0.meituan.net/xianfu/fec9ddd6056c1461a85401d2b2ee054421952.jpg', '椒盐金脆鸡翅2块 主要原料：鸡翅', 12.50, 226);
INSERT INTO `meituan_goods` VALUES (2193, '香骨鸡腿', 'http://p1.meituan.net/xianfu/731cda7b9a3a49d67c923a71001f753220705.jpg', '香骨鸡腿1份 主要原料：鸡腿', 13.00, 226);
INSERT INTO `meituan_goods` VALUES (2194, '那么大鸡排', 'http://p0.meituan.net/xianfu/f39e51f8c3e36640a79cc08d1582dd0023996.jpg', '那么大鸡排1块 主要原料：鸡排', 13.00, 226);
INSERT INTO `meituan_goods` VALUES (2195, '麦乐鸡', 'http://p1.meituan.net/xianfu/6598f16dc5b513df87780418f8aaca4719628.jpg', '麦乐鸡5块/麦乐鸡10块 主要原料：麦乐鸡块', 11.50, 226);
INSERT INTO `meituan_goods` VALUES (2196, '美味鲜蔬杯', 'http://p0.meituan.net/xianfu/c50b6f651793ecb0b075db9f3c3da1cc18380.jpg', '美味鲜蔬杯1份 主要原料：721生菜条、番茄、烘烤芝麻酱', 12.50, 226);
INSERT INTO `meituan_goods` VALUES (2197, '玉米杯(大)', 'http://p0.meituan.net/xianfu/3d801cf01c4dc8b7fcf8ec633ab7e91a17784.jpg', '玉米杯(大)1份 主要原料：玉米', 13.50, 226);
INSERT INTO `meituan_goods` VALUES (2198, '鸡翅香芋可乐组合', 'http://p0.meituan.net/xianfu/f68f8ea19b780d7dd923dba5254492bd22131.jpg', '椒盐金脆鸡翅1对+香芋派1份+中可乐1杯494ml 主要原料：香芋派、鸡翅、可口可乐', 30.00, 226);
INSERT INTO `meituan_goods` VALUES (2199, '鸡翅派可乐组合', 'http://p0.meituan.net/xianfu/f68f8ea19b780d7dd923dba5254492bd22131.jpg', '椒盐金脆鸡翅1对+香芋派1份+中可乐1杯494ml 主要原料：香芋派、鸡翅、可口可乐', 30.00, 226);
INSERT INTO `meituan_goods` VALUES (2200, '金拱门桶A可乐鸡翅版可乐杯套餐', 'http://p0.meituan.net/xianfu/7753e1a3a601b342aacd5cdcffd97ece47828.jpg', '金拱门桶(含4块可乐鸡翅+3块麦辣鸡翅+薯格)+ 那么大鲜柠可乐2杯+弧形可乐杯2个 主要原料：鸡翅、薯格、饮料', 79.00, 226);
INSERT INTO `meituan_goods` VALUES (2201, '金拱门桶B那么大组合送可乐杯', 'http://p0.meituan.net/xianfu/cb6c836463cfdb641f0ea4239d68009541306.jpg', '金拱门桶(含4块椒盐金脆鸡翅+3块麦辣鸡翅+薯格)+那么大鲜柠可乐2杯+弧形可乐杯2个 主要原料：鸡翅、薯格、饮料', 79.00, 226);
INSERT INTO `meituan_goods` VALUES (2202, '大薯条买一送一', 'http://p0.meituan.net/xianfu/3316935e6167b617768f083d0de4795820781.jpg', '大薯条2份 主要原料：薯条', 27.00, 226);
INSERT INTO `meituan_goods` VALUES (2203, '薯格买一送一', 'http://p0.meituan.net/xianfu/d968d670eada3edee1d84d3c69ec5de025436.jpg', '薯格2份 主要原料：薯格', 27.00, 226);
INSERT INTO `meituan_goods` VALUES (2204, '鸡翅可乐组合', 'http://p0.meituan.net/xianfu/8f2be774a925044be0249246ca69fab721299.jpg', '麦辣鸡翅1对+可口可乐(小)1杯357ml 主要原料：鸡翅、可口可乐', 19.50, 226);
INSERT INTO `meituan_goods` VALUES (2205, 'ZICO椰子水饮', 'http://p1.meituan.net/xianfu/c3f22afd57c38602199e199eb41d250124176.jpg', '椰子水饮1杯494ml 主要原料：椰子水饮', 12.00, 227);
INSERT INTO `meituan_goods` VALUES (2206, '那么大珍珠奶茶', 'http://p0.meituan.net/xianfu/72d37591b0f2de772ed21667c6750a7d11017.jpg', '那么大珍珠奶茶(暖/冷)1杯660ml 主要原料：清香拼配茶、水、乳味粉、焦糖粉圆', 18.00, 227);
INSERT INTO `meituan_goods` VALUES (2207, '那么大鲜柠特饮', 'http://p1.meituan.net/xianfu/854b9c55f33b7e99f0021f0639399f1b25848.jpg', '那么大鲜柠特饮（低糖茉莉味绿茶/柠檬红茶/可乐/雪碧/）1杯660ml 主要原料：FUZE Tea柠檬红茶味糖浆、可口可乐糖浆、柠檬红茶糖浆、雪碧糖浆、水、二氧化碳、柠檬', 14.00, 227);
INSERT INTO `meituan_goods` VALUES (2208, '那么大鲜柠特饮（柠檬红茶）', 'http://p0.meituan.net/xianfu/329e9d0d581f0abd25b6a4523e40370c13871.jpg', '那么大鲜柠特饮(柠檬红茶味饮料)1杯660ml 主要原料：水、二氧化碳、柠檬', 14.00, 227);
INSERT INTO `meituan_goods` VALUES (2209, '那么大鲜柠特饮(低糖绿茶味)', 'http://p1.meituan.net/xianfu/854b9c55f33b7e99f0021f0639399f1b25848.jpg', '那么大鲜柠特饮(低糖绿茶味)1杯660ml 主要原料：FUZE Tea柠檬红茶味糖浆、水、二氧化碳', 14.00, 227);
INSERT INTO `meituan_goods` VALUES (2210, '柠檬红茶味饮料', 'http://p0.meituan.net/xianfu/53a7f2d9db7f0f50935caa5787ecaae915932.jpg', 'FUZE Tea柠檬红茶味饮料(中杯/大杯)1杯494ml/660ml 主要原料：FUZE Tea柠檬红茶味糖浆、水', 12.00, 227);
INSERT INTO `meituan_goods` VALUES (2211, 'Fuze Tea 低糖茉莉味绿茶饮料', 'http://p0.meituan.net/xianfu/84a0760677a8f18aeaa3c5cf8cfc264b31207.jpg', 'Fuze Tea 低糖茉莉味绿茶饮料(中杯494ml/大杯660ml)1杯 主要原料：FUZE Tea柠檬红茶味糖浆、水', 12.00, 227);
INSERT INTO `meituan_goods` VALUES (2212, '冰醇咖啡', 'http://p0.meituan.net/xianfu/49e5a30c4d8affafa7298c470f3ce76b39878.jpg', '冰醇咖啡1杯348ml 主要原料：咖啡粉、水', 12.00, 227);
INSERT INTO `meituan_goods` VALUES (2213, '鲜煮咖啡(大杯)', 'http://p0.meituan.net/xianfu/6f3b64713b3ee53ef0ba11b1969d31d614067.jpg', '鲜煮咖啡(大杯)348ml 主要原料：咖啡粉、水', 11.00, 227);
INSERT INTO `meituan_goods` VALUES (2214, '热朱古力', 'http://p1.meituan.net/xianfu/65e1dfc3f097a1f2f88b225e75f7e75813579.jpg', '热朱古力1杯348ml 主要原料：热巧克力粉、水', 11.50, 227);
INSERT INTO `meituan_goods` VALUES (2215, '锡兰红茶', 'http://p0.meituan.net/xianfu/7fed0afd74590f4ff2bcc3b5b34aa82613420.jpg', '锡兰红茶1杯348ml 主要原料：锡兰红茶包', 11.50, 227);
INSERT INTO `meituan_goods` VALUES (2216, '美汁源阳光橙', 'http://p1.meituan.net/xianfu/8bdefc99d5932f0ac4e5a28e864e09b618065.jpg', '美汁源阳光橙1杯475ml 主要原料：美汁源阳光橙', 11.00, 227);
INSERT INTO `meituan_goods` VALUES (2217, '可口可乐', 'http://p0.meituan.net/xianfu/024280111ddb82594584d5c4396ce05821622.jpg', '可口可乐(中杯/大杯)1杯494ml/660ml 主要原料：可口可乐', 10.00, 227);
INSERT INTO `meituan_goods` VALUES (2218, '零度可口可乐', 'http://p0.meituan.net/xianfu/473ff928cdef26de1accec7343f7214323537.jpg', '零度可口可乐(中杯/大杯)1杯494ml/660ml 主要原料：零度可口可乐', 10.00, 227);
INSERT INTO `meituan_goods` VALUES (2219, '雪碧', 'http://p0.meituan.net/xianfu/f2ba4e43f21b9ed7351f954b6dfbdd4a20819.jpg', '雪碧(中杯/大杯)1杯494ml/660ml 主要原料：雪碧', 10.00, 227);
INSERT INTO `meituan_goods` VALUES (2220, '纯牛奶（盒装）', 'http://p1.meituan.net/xianfu/f3e81f7b8557b1aec1b46ec701fce2a415656.jpg', '纯牛奶（盒装）1份200ml 主要原料：牛奶', 9.00, 227);
INSERT INTO `meituan_goods` VALUES (2221, '冰露矿物质水', 'http://p1.meituan.net/xianfu/f6170d5d00b1b3f7f8bc25c8487240c119261.jpg', '冰露包装饮用水1瓶550ml 主要原料：水', 7.00, 227);
INSERT INTO `meituan_goods` VALUES (2222, '大菠浪', 'http://p1.meituan.net/xianfu/1e76b1e9859a06a15e1adaa597bfb95211405.jpg', '大菠浪1杯660ml 主要原料：茉莉花茶、热带调味糖浆、椰果、菠萝片', 18.00, 227);
INSERT INTO `meituan_goods` VALUES (2223, '香芒芒', 'http://p1.meituan.net/xianfu/61342ec06110b6a26ba04b0bd0ed9b8a12192.jpg', '香芒芒1杯660ml 主要原料：茉莉花茶、百香果芒果酱、百香果、芒果片', 18.00, 227);
INSERT INTO `meituan_goods` VALUES (2224, '那么大鲜柠特饮（可乐）', 'http://p1.meituan.net/xianfu/8cefaf61b1319182d26c53875065ef7014968.jpg', '那么大鲜柠特饮(可口可乐)1杯660ml 主要原料：可口可乐糖浆水、二氧化碳', 14.00, 227);
INSERT INTO `meituan_goods` VALUES (2225, '那么大鲜柠特饮（雪碧）', 'http://p0.meituan.net/xianfu/45644578c2f86f254c262036c8d52d8711748.jpg', '那么大鲜柠特饮(雪碧)1杯660ml 主要原料：雪碧糖浆、水、二氧化碳', 14.00, 227);
INSERT INTO `meituan_goods` VALUES (2226, '草莓新地', 'http://p0.meituan.net/xianfu/0eaf24354519e55a64be2cd9eeefeb7720196.jpg', '草莓新地1个 主要原料：新地奶浆、草莓调味酱', 10.00, 228);
INSERT INTO `meituan_goods` VALUES (2227, '朱古力新地', 'http://p0.meituan.net/xianfu/d5abf710101fc6bac3a3cd4d899fcb2015003.jpg', '朱古力新地新地1个 主要原料：新地奶浆、巧克力调味酱', 10.00, 228);
INSERT INTO `meituan_goods` VALUES (2228, '草莓麦旋风', 'http://p0.meituan.net/xianfu/f922617f82008500643060941d6a7c0518567.jpg', '草莓麦旋风 主要原料：新地奶浆、草莓调味酱、奥利奥饼干碎', 13.00, 228);
INSERT INTO `meituan_goods` VALUES (2229, '奥利奥麦旋风', 'http://p0.meituan.net/xianfu/7265f6b3f77df07639009b89d083875117825.jpg', '奥利奥麦旋风 主要原料：新地奶浆、奥利奥饼干碎', 13.00, 228);
INSERT INTO `meituan_goods` VALUES (2230, '香芋派', 'http://p1.meituan.net/xianfu/b02edbed5915757d8de31c4077d2520620456.jpg', '香芋派1份 主要原料：香芋派', 7.50, 228);
INSERT INTO `meituan_goods` VALUES (2231, '香芋派2份', 'http://p0.meituan.net/xianfu/4ed53c5a7ad33e1d2c8d139da87d499d15714.jpg', '香芋派2份 主要原料：香芋派', 13.00, 228);
INSERT INTO `meituan_goods` VALUES (2232, '菠萝派', 'http://p0.meituan.net/xianfu/9f22b135ec9b9c670c69289f416e48ac16127.jpg', '菠萝派1份 主要原料：菠萝派', 7.50, 228);
INSERT INTO `meituan_goods` VALUES (2233, '菠萝派2份', 'http://p0.meituan.net/xianfu/8632616e211566c3c59dbc6f55593f0d15994.jpg', '菠萝派2份 主要原料：菠萝派', 13.00, 228);
INSERT INTO `meituan_goods` VALUES (2234, '汉堡开心乐园餐', 'http://p1.meituan.net/xianfu/b1b8def5ef8fc245318b02d94281d55422528.jpg', '汉堡包1份+苹果片1份/小玉米杯1份/小薯条1份+纯牛奶1盒200ml/冰露包装饮用水1瓶550ml+免费玩具1份 主要原料：汉堡面包、牛肉饼、番茄酱、芥末酱、脱水洋葱、酸黄瓜片、切片干酪、玉米、纯牛奶', 22.00, 229);
INSERT INTO `meituan_goods` VALUES (2235, '麦乐鸡开心乐园餐', 'http://p0.meituan.net/xianfu/a4ced4a57c08c064bac428dfb71763d823382.jpg', '麦乐鸡4块+苹果片1份/小玉米杯1份/小薯条1份+纯牛奶1盒200ml/冰露包装饮用水1瓶550ml+免费玩具1份 主要原料：麦乐鸡、玉米、纯牛奶', 22.00, 229);
INSERT INTO `meituan_goods` VALUES (2236, '吉士汉堡开心乐园餐', 'http://p0.meituan.net/xianfu/4b8162f57fe8a5f4356ee28f3b930b3222640.jpg', '吉士汉堡包1份+苹果片1份/小玉米杯1份/小薯条1份+纯牛奶1盒200ml/冰露包装饮用水1瓶550ml+免费玩具1份 主要原料：汉堡面包、牛肉饼、番茄酱、芥末酱、脱水洋葱、酸黄瓜片、切片干酪、玉米、纯牛奶', 23.00, 229);
INSERT INTO `meituan_goods` VALUES (2237, '板烧翅乐四件套（送罐形杯）', 'http://p0.meituan.net/xianfu/ea8210ac2179f24dc887546703313d3d63486.jpg', '原味板烧鸡腿堡1个+麦乐鸡5块+麦辣鸡翅1对+中可乐1杯494ml+罐形可乐杯1个 主要原料：长玉米面包、生菜条、板烧鸡排、烤味酱、麦乐鸡块、鸡翅、可口可乐', 53.00, 230);
INSERT INTO `meituan_goods` VALUES (2238, '经典麦辣鸡腿汉堡可乐杯套餐', 'http://p0.meituan.net/xianfu/b9544b4b659163c71ed173556992fa5044537.jpg', '经典麦辣鸡腿汉堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：麦香鸡面包、生菜条、麦辣鸡排、麦香鸡酱、薯条、饮料', 38.00, 230);
INSERT INTO `meituan_goods` VALUES (2239, '原味板烧鸡腿汉堡可乐杯套餐', 'http://p1.meituan.net/xianfu/349a6e5aaa5d24a2e70cd006b15babd044699.jpg', '原味板烧鸡腿堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：长玉米面包、生菜条、板烧鸡排、烤味酱、薯条、饮料', 38.00, 230);
INSERT INTO `meituan_goods` VALUES (2240, '巨无霸可乐杯套餐', 'http://p0.meituan.net/xianfu/d66f1950f8b7e097e2183ef8b13d336445390.jpg', '巨无霸1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：巨无霸面包、牛肉饼、巨无霸酱、脱水洋葱、酸黄瓜片、生菜条、切片干酪、薯条、饮料', 41.50, 230);
INSERT INTO `meituan_goods` VALUES (2241, '不素之霸双层牛堡可乐杯套餐', 'http://p0.meituan.net/xianfu/955df1bf99d6f2c076daf33bc439479c43545.jpg', '不素之霸双层牛堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：德式十字面包、牛肉饼、图林根香肠、芥末酱、薯条、饮料', 40.00, 230);
INSERT INTO `meituan_goods` VALUES (2242, '双层深海鳕鱼堡可乐杯套餐', 'http://p1.meituan.net/xianfu/142c90747347383d6c4a3027e0869e4537856.jpg', '双层深海狭鳕鱼堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：汉堡面包、麦香鱼片、芝麻酱、切片干酪、薯条、饮料', 40.00, 230);
INSERT INTO `meituan_goods` VALUES (2243, '川辣双鸡堡可乐杯套餐', 'http://p0.meituan.net/xianfu/d7e05c86ee7b36be9057d0b3073c74ae47711.jpg', '川辣双鸡堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：德式十字面包、生菜条、麦香鸡排、宫保风味沙拉酱、薯条、饮料', 40.00, 230);
INSERT INTO `meituan_goods` VALUES (2244, '双层吉士汉堡可乐杯套餐', 'http://p0.meituan.net/xianfu/6b7e09f24e7dad4c2a4cdda2645df3aa41760.jpg', '双层吉士汉堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：汉堡面包、牛肉饼、番茄酱、芥末酱、脱水洋葱、酸黄瓜片、切片干酪、薯条、饮料', 39.00, 230);
INSERT INTO `meituan_goods` VALUES (2245, '麦香鸡可乐杯套餐', 'http://p1.meituan.net/xianfu/161d41c92724ceec5fd378aa7c7e643b43624.jpg', '麦香鸡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：麦香鸡面包、生菜条、麦香鸡排、麦香鸡酱、薯条、饮料', 33.50, 230);
INSERT INTO `meituan_goods` VALUES (2246, '麦香鱼可乐杯套餐', 'http://p0.meituan.net/xianfu/747dc09ed0a7966545b69b9bccb91fe737179.jpg', '麦香鱼1份+薯格/大薯条/大玉+饮料可选 主要原料：汉堡面包、麦香鱼片、麦香鱼酱、切片干酪、薯条、饮料', 38.00, 230);
INSERT INTO `meituan_goods` VALUES (2247, '麦乐鸡可乐杯套餐', 'http://p1.meituan.net/xianfu/51998c341268571d44686e7a061bed6039412.jpg', '麦乐鸡5块+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：麦乐鸡块、大薯条、饮料', 32.00, 230);
INSERT INTO `meituan_goods` VALUES (2248, '吉士汉堡包可乐杯套餐', 'http://p0.meituan.net/xianfu/f2f3d3bc9d88add558d5b056a57b510838965.jpg', '吉士汉堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：汉堡面包、牛肉饼、番茄酱、芥末酱、脱水洋葱、酸黄瓜片、切片干酪、薯条、饮料', 29.00, 230);
INSERT INTO `meituan_goods` VALUES (2249, '麦辣鸡翅可乐杯套餐', 'http://p0.meituan.net/xianfu/3acf63cba0d41d86c79a1d4e77ac754743428.jpg', '麦辣鸡翅4块+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：鸡翅、薯条、饮料', 43.00, 230);
INSERT INTO `meituan_goods` VALUES (2250, '日式牛丼饭可乐杯套餐', 'http://p0.meituan.net/xianfu/72fc723dc42d91bc6f159a68ee26146451420.jpg', '和风牛丼饭1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：大米、玉米油、洋葱牛肉片、小松菜、玉米、薯条、饮料', 46.00, 230);
INSERT INTO `meituan_goods` VALUES (2251, '安格斯厚牛培根堡可乐杯套餐', 'http://p0.meituan.net/xianfu/e660000b53ddb9613876119a4529593248328.jpg', '安格斯厚牛培根堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：面包、牛肉、风味酱、生菜、培根、芝士片、薯条、饮料', 50.50, 230);
INSERT INTO `meituan_goods` VALUES (2252, '安格斯厚牛芝士堡可乐杯套餐', 'http://p0.meituan.net/xianfu/295332c0f957074aca81c3630140c0ca46098.jpg', '安格斯厚牛芝士堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：面包、牛肉、风味酱、番茄片、芝士片、薯条、饮料', 47.50, 230);
INSERT INTO `meituan_goods` VALUES (2253, '双层安格斯厚牛培根堡可乐杯套餐', 'http://p0.meituan.net/xianfu/ee3cb6f4c12a64160e43d225e198e20734334.jpg', '双层安格斯厚牛培根堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：面包、牛肉、风味酱、生菜、培根、芝士片、薯条、饮料', 60.50, 230);
INSERT INTO `meituan_goods` VALUES (2254, '双层安格斯厚牛芝士堡可乐杯套餐', 'http://p0.meituan.net/xianfu/33c5767995dc4b773173974215f8311533872.jpg', '双层安格斯厚牛芝士堡1份+薯格/大薯条/大玉+饮料可选+可乐杯1个 主要原料：面包、牛肉、风味酱、番茄片、芝士片、薯条、饮料', 57.50, 230);
INSERT INTO `meituan_goods` VALUES (2255, '菠萝鸡扒麦满分', 'http://p1.meituan.net/xianfu/750d84d74704635afd509dd020647e1230263.jpg', '菠萝鸡扒麦满分1份 主要原料：全麦松饼、菠萝、麦香鸡排、麦香鸡酱', 12.00, 231);
INSERT INTO `meituan_goods` VALUES (2256, '猪柳蛋麦满分', 'http://p0.meituan.net/xianfu/dad6320182e9ff2501c4e68ebedb5d0a17087.jpg', '猪柳蛋麦满分1份 主要原料：全麦松饼、猪柳饼、蒸蛋、切片干酪', 15.50, 231);
INSERT INTO `meituan_goods` VALUES (2257, '烟肉蛋麦满分', 'http://p1.meituan.net/xianfu/faed2197c4d18962f8fb5825cdc7a1a616884.jpg', '烟肉蛋麦满分1份 主要原料：全麦松饼、加拿大烟肉片、蒸蛋、切片干酪', 13.00, 231);
INSERT INTO `meituan_goods` VALUES (2258, '猪柳麦满分', 'http://p0.meituan.net/xianfu/c4b37178aec62aa9f05b4d1465a022a817640.jpg', '猪柳麦满分1份 主要原料：全麦松饼、猪柳饼、切片干酪', 11.50, 231);
INSERT INTO `meituan_goods` VALUES (2259, '原味板烧鸡腿麦满分', 'http://p0.meituan.net/xianfu/716e7193591ae04fe6b60b00ebb0a96022414.jpg', '原味板烧鸡腿麦满分1份 主要原料：全麦松饼、721生菜条、板烧鸡排、烤味酱', 11.50, 231);
INSERT INTO `meituan_goods` VALUES (2260, '双层原味板烧鸡腿麦满分', 'http://p0.meituan.net/xianfu/8ffc60852f170a1a822890d9076b9de826487.jpg', '双层原味板烧鸡腿麦满分1份 主要原料：长玉米面包、721生菜条、板烧鸡排、烤味酱', 15.50, 231);
INSERT INTO `meituan_goods` VALUES (2261, '猪柳蛋堡', 'http://p1.meituan.net/xianfu/bc28ec693a9765230d12eff2685bb24318220.jpg', '猪柳蛋堡1份 主要原料：汉堡面包、蒸蛋、猪柳饼、切片干酪、番茄酱', 15.50, 231);
INSERT INTO `meituan_goods` VALUES (2262, '吉士炒双蛋堡', 'http://p0.meituan.net/xianfu/446d9ba225a926554529323c22c01b5919427.jpg', '吉士炒双蛋堡1份 主要原料：全麦松饼、切片干酪、蒸蛋、番茄酱、麦香鸡酱', 11.00, 231);
INSERT INTO `meituan_goods` VALUES (2263, '培根炒双蛋堡', 'http://p0.meituan.net/xianfu/f28dc3e79921ea1623fd22f27661905c19936.jpg', '培根炒双蛋堡1份 主要原料：汉堡面包、炒蛋、短片培根', 14.00, 231);
INSERT INTO `meituan_goods` VALUES (2264, '猪柳炒双蛋堡', 'http://p0.meituan.net/xianfu/2815a22a438ddf316b0cb6bb4bc0a7a219124.jpg', '猪柳炒双蛋堡1份 主要原料：汉堡面包、炒蛋、猪柳饼', 16.00, 231);
INSERT INTO `meituan_goods` VALUES (2265, '吉士炒双蛋堡套餐', 'http://p1.meituan.net/xianfu/74deb144beb4a2a7894fba09092034f224579.jpg', '吉士炒双蛋堡1份+脆薯饼1份+饮料可选 主要原料：全麦松饼、切片干酪、蒸蛋、番茄酱、麦香鸡酱、薯饼、饮料', 20.00, 232);
INSERT INTO `meituan_goods` VALUES (2266, '培根炒双蛋堡套餐', 'http://p0.meituan.net/xianfu/ffa5ad8fcafbe00c08a393f57505aa6f25595.jpg', '培根炒双蛋堡1份+脆薯饼1份+饮料可选 主要原料：培根，炒蛋，汉堡面包，土豆，咖啡 主要原料：汉堡面包、炒蛋、短片培根、薯饼、饮料', 23.00, 232);
INSERT INTO `meituan_goods` VALUES (2267, '猪柳炒双蛋堡套餐', 'http://p0.meituan.net/xianfu/4b692b02c1685ee8afd409cf272853ca24498.jpg', '猪柳炒双蛋堡1份+脆薯饼1份+饮料可选 主要原料：汉堡面包、炒蛋、猪柳饼、薯饼、饮料、薯饼、饮料', 25.00, 232);
INSERT INTO `meituan_goods` VALUES (2268, '菠萝鸡扒麦满分套餐', 'http://p1.meituan.net/xianfu/42316eb778f6a948b803907927134e4937492.jpg', '菠萝鸡扒麦满分1个+脆薯饼1个/脆香油条1个/玉米杯(大)1份+鲜煮咖啡(大)1杯/优品豆浆(大)1杯 主要原料：全麦松饼、菠萝、麦香鸡排、麦香鸡酱、薯饼、饮料', 20.50, 232);
INSERT INTO `meituan_goods` VALUES (2269, '原味板烧鸡腿麦满分配脆薯饼', 'http://p0.meituan.net/xianfu/0ebe213f1a76953abf6ec3c3f3f10ba222607.jpg', '原味板烧鸡腿麦满分1份+脆薯饼1份+饮料可选 主要原料：全麦松饼、721生菜条、板烧鸡腿、烤味酱、薯饼、饮料', 21.00, 232);
INSERT INTO `meituan_goods` VALUES (2270, '双层原味板烧鸡腿麦满分配脆薯饼', 'http://p1.meituan.net/xianfu/ad4a4367dbdc72dc91cefa02a7f4474e30984.jpg', '双层原味板烧鸡腿麦满分1份+脆薯饼1份+饮料可选 主要原料：全麦松饼、721生菜条、板烧鸡排、烤味酱、薯饼、饮料', 26.00, 232);
INSERT INTO `meituan_goods` VALUES (2271, '猪柳麦满分配脆薯饼', 'http://p0.meituan.net/xianfu/ac501b44b39955733526f0385fc839a125812.jpg', '猪柳麦满分1份+脆薯饼1份+饮料可选 主要原料：全麦松饼、猪柳饼、蒸蛋、切片干酪、薯饼', 20.50, 232);
INSERT INTO `meituan_goods` VALUES (2272, '烟肉蛋麦满分配脆薯饼', 'http://p0.meituan.net/xianfu/fd949c6a3b70e90c759b33f35c61ea2e25679.jpg', '烟肉蛋麦满分1份+脆薯饼1份+饮料可选 主要原料：全麦松饼、加拿大烟肉片、蒸蛋、切片干酪、薯饼、饮料', 23.50, 232);
INSERT INTO `meituan_goods` VALUES (2273, '猪柳蛋麦满分配脆薯饼', 'http://p0.meituan.net/xianfu/ac464b39fc6d784c6a4711344e2609a125673.jpg', '猪柳蛋麦满分1份+脆薯饼1份+饮料可选 主要原料：全麦松饼、猪柳饼、蒸蛋、切片干酪、薯饼、饮料', 26.00, 232);
INSERT INTO `meituan_goods` VALUES (2274, '猪柳蛋堡配脆薯饼', 'http://p1.meituan.net/xianfu/98608a9afd41454f4b8014dee7e7279426419.jpg', '猪柳蛋堡1份+脆薯饼1份+饮料可选 主要原料：汉堡面包、蒸蛋、猪柳饼、切片干酪、番茄酱、薯饼、饮料', 26.00, 232);
INSERT INTO `meituan_goods` VALUES (2275, '悠享早晨全餐', 'http://p0.meituan.net/xianfu/b2f0dbc72a8fba3c4cb06a9d8e7df77b30404.jpg', '悠享早晨全餐1份+饮料可选 主要原料：全麦松饼、猪柳饼、炒蛋、薯饼、饮料', 26.50, 232);
INSERT INTO `meituan_goods` VALUES (2276, '鲜美烟肉早晨全餐', 'http://p1.meituan.net/xianfu/e4f3034744294f654da4940619febed226826.jpg', '鲜美烟肉早晨全餐1份+饮料可选 主要原料：烟肉，鸡蛋，薯饼，油 主要原料：全麦松饼、加拿大烟肉片、炒蛋、薯饼、饮料', 27.50, 232);
INSERT INTO `meituan_goods` VALUES (2277, '新板烧鸡腿早晨全餐套餐', 'http://p0.meituan.net/xianfu/64b7d129963f298ab0654f660af4c4ff41355.jpg', '松饼1个+炒蛋1份+脆薯饼1个+鸡腿肉1份+德式图灵根香肠(2根)+鲜煮咖啡(大)1杯/优品豆浆(大)1杯 主要原料：全麦松饼、板烧鸡排、炒蛋、图林根香肠、薯饼、饮料', 34.50, 232);
INSERT INTO `meituan_goods` VALUES (2278, '元气满分双人早餐', 'http://p0.meituan.net/xianfu/a5f705b76e5bac50b71fa509ac1ef5e835650.jpg', '猪柳蛋麦满1份+原味板烧鸡腿麦满分1份+脆香油条1根+脆薯饼1只+鲜煮咖啡小1杯280ml+原味豆浆小1杯280ml 主要原料：全麦松饼、猪柳饼、蒸蛋、切片干酪、板烧鸡排、721生菜条、油条、薯饼、咖啡、豆浆', 60.00, 232);
INSERT INTO `meituan_goods` VALUES (2279, '周末全家满分早餐', 'http://p1.meituan.net/xianfu/9478ffa88036d7de6ff71be5943bb2d161479.jpg', '猪柳麦满分餐(配薯饼)1份+双层板烧鸡腿麦满分套餐1份+吉士蛋堡1份+大玉米杯1份+小玉米杯1份+大杯鲜煮咖啡2杯*348ml+小杯原味豆浆1杯280ml+免费玩具   主要原料：全麦松饼、猪柳饼、切片干酪、生菜、鸡排、蒸蛋、番茄酱、玉米、咖啡豆、豆浆粉', 89.00, 232);
INSERT INTO `meituan_goods` VALUES (2280, '早晨开心乐园餐', 'http://p1.meituan.net/xianfu/a8873d49c9e3e940cd6f7684a34d60c827263.jpg', '吉士蛋堡1份+苹果片1包/小玉米杯1份/脆薯饼1份+免费玩具1个+小杯优品豆浆1杯280ml 主要原料：汉堡面包、蒸蛋、番茄酱、麦香鸡酱、切片干酪、豆浆粉、水、苹果', 20.00, 232);
INSERT INTO `meituan_goods` VALUES (2281, '挺你满分单人早餐', 'http://p0.meituan.net/xianfu/ffdedd46df7ace95ff5f0a313182a34233023.jpg', '吉士炒双蛋堡1个+脆香油条1根+小杯原味豆浆1杯280ml 主要原料：全麦松饼、切片干酪、蒸蛋、番茄酱、麦香鸡酱、油条、豆浆粉、水', 27.50, 232);
INSERT INTO `meituan_goods` VALUES (2282, '酸菜脆笋鸡肉粥精选套餐', 'http://p0.meituan.net/xianfu/c5a91e4c0ce7a9ba63f93d2da75aab2039632.jpg', '酸菜脆笋鸡肉粥1份+能量蛋1个+脆香油条1份 主要原料：大米、杂粮罐头、咸鲜味调味料、酸菜冬笋鸡肉调理包、鸡蛋、油条', 17.00, 233);
INSERT INTO `meituan_goods` VALUES (2283, '皮蛋鸡肉粥精选套餐', 'http://p0.meituan.net/xianfu/e858cec3f704f93273e6c188d49a826639932.jpg', '皮蛋鸡肉鸡肉粥1份+能量蛋1个+脆香油条1份 主要原料：大米、杂粮罐头、咸鲜味调味料、皮蛋鸡肉丝调理包、鸡蛋、油条', 19.00, 233);
INSERT INTO `meituan_goods` VALUES (2284, '咸蛋黄鸡丝粥精选套餐', 'http://p0.meituan.net/xianfu/343ee3b411a0d0206c0057442e43bca937740.jpg', '咸蛋黄鸡丝粥1份+能量蛋1个+脆香油条1份 主要原料：大米、杂粮罐头、咸鲜味调味料、咸蛋黄鸡丝调理包、鸡蛋、油条', 19.00, 233);
INSERT INTO `meituan_goods` VALUES (2285, '酸菜脆笋鸡肉粥套餐', 'http://p1.meituan.net/xianfu/9acd361942ed633c42df89346b8a026419868.jpg', '酸菜脆笋鸡肉粥1份+脆薯饼1个+饮料可选 主要原料：大米、杂粮罐头、咸鲜味调味料、酸菜冬笋鸡肉调理包、薯饼、饮料', 17.50, 233);
INSERT INTO `meituan_goods` VALUES (2286, '皮蛋鸡肉粥套餐', 'http://p0.meituan.net/xianfu/a100995e16d0d50f50880585bfba2e0f38493.jpg', '皮蛋鸡肉粥1份+脆薯饼1个+饮料可选 主要原料：大米、杂粮罐头、咸鲜味调味料、皮蛋鸡肉丝调理包、薯饼、饮料', 18.50, 233);
INSERT INTO `meituan_goods` VALUES (2287, '咸蛋黄鸡丝粥套餐', 'http://p0.meituan.net/xianfu/31776dd466417f76cdf6b164a327391836776.jpg', '咸蛋黄鸡丝粥1份+脆薯饼1个+饮料可选 主要原料：大米、杂粮罐头、咸鲜味调味料、咸蛋黄鸡丝调理包、油炸酥', 19.50, 233);
INSERT INTO `meituan_goods` VALUES (2288, '麦乐送酸菜粥专享套餐', 'http://p0.meituan.net/xianfu/6ea0e3dd7865c515b11867bac3a7501e54487.jpg', '原味板烧鸡腿麦满分1份+酸菜脆笋鸡肉粥1碗+脆薯饼1块 （粥主要原料：大米，鸡肉，酸菜，笋丝，油，调味料，红芸豆，燕麦，薏米） 主要原料：全麦松饼、721生菜条、板烧鸡排、烤味酱、大米、杂粮罐头、咸鲜味调味料、酸菜冬笋鸡肉调理包、薯饼', 24.00, 233);
INSERT INTO `meituan_goods` VALUES (2289, '麦乐送皮蛋粥专享套餐', 'http://p0.meituan.net/xianfu/8dcb5e5ef1fe88bfe7881347706ad41b54877.jpg', '原味板烧鸡腿麦满分1份+皮蛋鸡肉粥1碗+脆薯饼1块 （粥主要原料：大米，鸡肉，皮蛋，油，调味料，红芸豆，燕麦，薏米） 主要原料：全麦松饼、721生菜条、板烧鸡排、烤味酱、大米、杂粮罐头、咸鲜味调味料、皮蛋鸡肉丝调理包、薯饼', 25.00, 233);
INSERT INTO `meituan_goods` VALUES (2290, '麦乐送咸蛋粥专享套餐', 'http://p0.meituan.net/xianfu/ae648a5d830b1cf6d2cd99c7ecc8efb653385.jpg', '原味板烧鸡腿麦满分1份+咸蛋黄鸡丝粥1碗+脆薯饼1块 （粥主要原料：大米，鸡肉，咸蛋黄，油，调味料，红芸豆，燕麦，薏米） 主要原料：全麦松饼、721生菜条、板烧鸡腿、烤味酱、大米、杂粮罐头、咸鲜味调味料、咸蛋黄鸡丝调理包、油炸酥、薯饼', 26.00, 233);
INSERT INTO `meituan_goods` VALUES (2291, '优品豆浆（大）', 'http://p0.meituan.net/xianfu/2b6092ac8a67fcbda9a5a60c5a1482358795.jpg', '优品豆浆（大）348ml 主要原料：豆浆粉、水', 11.00, 234);
INSERT INTO `meituan_goods` VALUES (2292, '鲜煮咖啡(大)', 'http://p1.meituan.net/xianfu/f3398410212b05161e797eb4095d8b7a14322.jpg', '鲜煮咖啡(大)348ml 主要原料：咖啡粉、水', 11.00, 234);
INSERT INTO `meituan_goods` VALUES (2293, '德式图灵根香肠', 'http://p0.meituan.net/xianfu/5a49f6e93b85eeccee613f76e4ae5c1918177.jpg', '德式图灵根香肠2根 主要原料：图林根香肠', 7.50, 234);
INSERT INTO `meituan_goods` VALUES (2294, '能量蛋', 'http://p0.meituan.net/xianfu/7bd0962e2bb9e6cb7eaa488d3057115114263.jpg', '能量蛋一个 主要原料：鸡蛋', 4.50, 234);
INSERT INTO `meituan_goods` VALUES (2295, '脆薯饼', 'http://p1.meituan.net/xianfu/e2d73b0545e00fed641f7d5d777643d811903.jpg', '脆薯饼 主要原料：薯饼', 6.50, 234);
INSERT INTO `meituan_goods` VALUES (2296, '脆香油条', 'http://p1.meituan.net/xianfu/8f6e1ca85cb8299d6947b89e3686cf4826636.jpg', '脆香油条 主要原料：油条', 6.50, 234);
INSERT INTO `meituan_goods` VALUES (2297, '【吃货节】招牌鸭脖', 'http://p1.meituan.net/wmproduct/7d0db72a4b54502cf1e0ec3c1b3abbe6146298.png', '够辣够过瘾，别问为什么那么多人啃，不够味何以做行业老大！', 25.00, 235);
INSERT INTO `meituan_goods` VALUES (2298, '招牌鱼豆腐', 'http://p0.meituan.net/wmproduct/23ab22e5b582d3f298b8a71910489372306263.jpg', '你要吃我豆腐？你还要和好多人一起吃我豆腐？那就来吧，会分享才更快乐', 5.00, 235);
INSERT INTO `meituan_goods` VALUES (2299, '招牌虾', 'http://p1.meituan.net/wmproduct/414a225d1f40660eefed0ea03d5a5f9b328212.jpg', '敢加招牌二字，就绝不会套路你，这款虾的风味，保证和你走过路过看过的都不一样！', 25.00, 235);
INSERT INTO `meituan_goods` VALUES (2300, '招牌鸭掌', 'http://p0.meituan.net/wmproduct/896c50d771eaf11044f6341fa52e0255354164.jpg', '哪个女生不喜欢啃鸭爪，皮薄耐嚼，入口即化，一起逛街就买点呗，啃着它就顾不上剁手了！', 15.00, 235);
INSERT INTO `meituan_goods` VALUES (2301, '招牌凤爪', 'http://p0.meituan.net/wmproduct/81bd9341164aa9f375a63012002f15a5311867.jpg', '肉鲜美香辣，骨酥软入味。两种口感的交替让人欲罢不能。', 15.00, 235);
INSERT INTO `meituan_goods` VALUES (2302, '招牌鸭食管', 'http://p1.meituan.net/wmproduct/2c6d2d6aa02b8abf08de248b8675dce7408352.jpg', '辣椒的香配上鸭肠的脆，分分钟满足你挑剔的味蕾，出游食品哪家强，就选绝味鸭脆肠！', 15.00, 235);
INSERT INTO `meituan_goods` VALUES (2303, '招牌鸭脖', 'http://p0.meituan.net/wmproduct/9dc64d810a3135e5599306c5f3074cfb421841.jpg', '够辣够过瘾，才是鸭脖最性感的姿势。别问为什么那么多人啃，不够味何以做行业老大！', 15.00, 235);
INSERT INTO `meituan_goods` VALUES (2304, '招牌鸭锁骨', 'http://p0.meituan.net/wmproduct/26d1d95517dda0b6ee1d792fed0d1a4a316946.jpg', '进可啃鸭肉，退可嚼软骨，一种食材双重感受，一份价钱双倍营养，来吧，做个聪明的吃货！', 15.00, 235);
INSERT INTO `meituan_goods` VALUES (2305, '招牌鸭肫', 'http://p0.meituan.net/wmproduct/62b9d9963fce0f4dd5ce3ad6ac5c7e4d471522.jpg', '辣的过瘾，嚼的带劲。舌间带辣，齿间留香。肫是味道醇厚，回味悠长', 15.00, 235);
INSERT INTO `meituan_goods` VALUES (2306, '招牌鸭头', 'http://p0.meituan.net/wmproduct/3c0ad207ab2e58ca2f38756b06888b4f492050.jpg', '小小的鸭头，大大的用心，老汤是上等的，配方是秘制的，就冲着这份诚意，泥萌也该尝尝。', 6.00, 235);
INSERT INTO `meituan_goods` VALUES (2307, '招牌鸭肠', 'http://p1.meituan.net/wmproduct/4e417af1dce99a9f049b631312017b71398150.jpg', '鲜香劲脆，细腻耐嚼，堪称脆辣无穷！每一口都是对舌头和牙齿的无尽吸引。', 15.00, 235);
INSERT INTO `meituan_goods` VALUES (2308, '招牌鸡翅尖', 'http://p0.meituan.net/wmproduct/a99c71fb2362bfb894caa4bee61b74e4308586.jpg', '重要的不是啃肉，而是吮吸出那经历过百帆历练的浓浓香汁', 15.00, 235);
INSERT INTO `meituan_goods` VALUES (2309, '招牌鸭翅中', 'http://p0.meituan.net/wmproduct/6b022d63662d96240028597eca84811c369281.jpg', '舌尖顶出双骨缝的嫩肉，十足的成就感配上绝妙风味才格外香。', 15.00, 235);
INSERT INTO `meituan_goods` VALUES (2310, '招牌鸭舌', 'http://p0.meituan.net/wmproduct/04b0d8ff94ce31622a24ffb36dea48d1405853.jpg', '入口猛辣是套路，筋道细腻是气质，你真能抗拒这荡气回肠的绕舌柔情？', 25.00, 235);
INSERT INTO `meituan_goods` VALUES (2311, '招牌虾球', 'http://p0.meituan.net/wmproduct/0b8c172d00ba98282bf262c0b15ff730358381.jpg', '海鲜和辣椒的一场虐恋，雪白的肉质搭配焦红的外壳，试试吧，和你吃过的都不一样！', 25.00, 235);
INSERT INTO `meituan_goods` VALUES (2312, '香辣千叶豆腐', 'http://p0.meituan.net/wmproduct/4ebc2593319b46e83b2950df61b6fc07296034.jpg', '软嫩入口，麻辣舌根，小酒紧随杀进食道，啧啧！', 10.00, 236);
INSERT INTO `meituan_goods` VALUES (2313, '招牌海带结', 'http://p1.meituan.net/wmproduct/c2d75889a7d056a495c3535e012a0a24397237.jpg', '色如翡翠，肉厚鲜美，营养充沛，好吃不贵。', 5.00, 236);
INSERT INTO `meituan_goods` VALUES (2314, '招牌土豆', 'http://p1.meituan.net/wmproductwm/c18cf71e1b0e9856f0979c198332c39a208007.jpg', '碰上绝味的土豆，从土妞变成了小妖精，再多人被它撩到都是情理之中，因为土豆就得这么吃！', 5.00, 236);
INSERT INTO `meituan_goods` VALUES (2315, '招牌藕片', 'http://p0.meituan.net/wmproduct/8de410de435f74f9daf6c33c32aa00ea326685.jpg', '你的皮肤像刚薄皮的蒜瓣，只要吃过这刚研制的藕片，立刻面如火烧云。', 5.00, 236);
INSERT INTO `meituan_goods` VALUES (2316, '招牌毛豆', 'http://p1.meituan.net/wmproduct/78ddf96ea731c9aed0f14332c92c116d422825.jpg', '长夜漫漫，毛豆做伴，颗颗饱满，纤维夺冠', 5.00, 236);
INSERT INTO `meituan_goods` VALUES (2317, '招牌萝卜条', 'http://p0.meituan.net/wmproductwm/6ec51d0801b421c09680747ed1203fb3169873.jpg', '萝卜能有多好吃？绝味用实力告诉你，没有不够美味的食材，只有不够独特的工艺！', 5.00, 236);
INSERT INTO `meituan_goods` VALUES (2318, '招牌腐竹', 'http://p0.meituan.net/wmproduct/5cd34fbf129684736a3fc36b52dd541c330199.jpg', '浓缩豆类精华，鲜嫩多滋，汁水饱满，层层豆膜裹挟无穷味道，自然更出众。', 5.00, 236);
INSERT INTO `meituan_goods` VALUES (2319, '招牌壳花生', 'http://p0.meituan.net/wmproduct/f8b3da84d4cdd11973507a53e0cf07f6371654.jpg', '清甜的花生配了点辣，连壳都是入味十足的，风味独特营养不减，小伙伴小聚时来点呗！', 5.00, 236);
INSERT INTO `meituan_goods` VALUES (2320, '汽汽ta（乳酸味）', 'http://p1.meituan.net/wmproduct/2e793f6734e3086e0f4352e022ba6a40269752.jpg', '', 5.00, 237);
INSERT INTO `meituan_goods` VALUES (2321, '汽汽ta（水蜜桃味）', 'http://p0.meituan.net/wmproduct/fd741df7be15c21a08fc8b4fdf567b33278800.jpg', '', 5.00, 237);
INSERT INTO `meituan_goods` VALUES (2322, '汽汽Ta蓝莓复合果汁饮料', 'http://p0.meituan.net/wmproduct/b5f55d486046844ed5263b2315160b1e295510.jpg', '辣卤-搭档——汽汽Ta，10%真果汁含量调配丰盈汽泡，每一口都清新畅爽。清新别致的蓝莓+红葡萄+苹果，一秒激活辣卤的好味道！', 5.00, 237);
INSERT INTO `meituan_goods` VALUES (2323, '汽汽Ta红树莓味汽泡果汁330ml', 'http://p1.meituan.net/wmproduct/24dde08d6ba21efc31800d33792857e9371403.png', '辣卤-搭档——汽汽Ta，10%真果汁含量调配丰盈汽泡，每一口都清新畅爽。微甜爽口的红树莓味堪称解辣小能手，你值得一试！', 5.00, 237);
INSERT INTO `meituan_goods` VALUES (2324, '黑鸭鸭锁骨', 'http://p1.meituan.net/wmproduct/4edb0cf1cb46af3c74b9d98e2a13a486340949.jpg', '以辣撩人，以甜润心。一种食材，双重感受。令人怦然心动。', 15.00, 238);
INSERT INTO `meituan_goods` VALUES (2325, '黑鸭鸭掌', 'http://p0.meituan.net/wmproductwm/4d8e64e427897ba8b4bcb68f35b4d694185077.jpg', '闻味知香，入口带辣。品之回甜。此等美味，何不大吃一斤', 15.00, 238);
INSERT INTO `meituan_goods` VALUES (2326, '黑鸭二节翅', 'http://p0.meituan.net/wmproductwm/43a4a2c1dfeb293b0cef85e9fb114d26245624.jpg', '吃过很多种翅，但最能抚慰加班狗心灵的，还是绝味家的黑鸭二节翅，细腻也就罢了，但谁家的能比它更有嚼劲？', 15.00, 238);
INSERT INTO `meituan_goods` VALUES (2327, '黑鸭鸭脖', 'http://p0.meituan.net/wmproduct/9d4892ad5153e340e38913f9c6f406ea220765.jpg', '想尝试不一样的鸭脖？黑鸭风味值得你的尝试！甜与辣的究极对决，好吃到根本停不下来！', 15.00, 238);
INSERT INTO `meituan_goods` VALUES (2328, '藤椒鸡翅尖', 'http://p0.meituan.net/wmproduct/3dd1f71c559f6eedf4a532d8ed65a5a2336493.jpg', '嫩到家的翅尖加上藤椒独有的清香，一层接一层的鲜香，让你一口接一口根本停不下来，仿佛长上了翅膀……', 15.00, 239);
INSERT INTO `meituan_goods` VALUES (2329, '藤椒鸭脖', 'http://p1.meituan.net/wmproduct/545e07451e17071130bd2b613176a367497005.jpg', '辣的清新，香的脆爽，久违的触电般的感觉！', 15.00, 239);
INSERT INTO `meituan_goods` VALUES (2330, '藤椒鸭翅中', 'http://p1.meituan.net/wmproductwm/6e835e28389249e125604376e2e57b77210309.jpg', '醇厚的卤香加上藤椒独有的清香，一层接一层的鲜香，让你一口接一口根本停不下来，仿佛飘在云端……', 15.00, 239);
INSERT INTO `meituan_goods` VALUES (2331, '酱鸭 酱板鸭', 'http://p1.meituan.net/wmproduct/e49c0c60e8c10cb0acb862be5344974f349957.jpg', '就算是一个人的晚餐，也要对得起这份孤独，牙齿撕开板鸭肉的快感，是无可替代的', 48.00, 240);
INSERT INTO `meituan_goods` VALUES (2332, '酱鸭鸭脖', 'http://p0.meituan.net/wmproductwm/92920ffa69f9ca92c8f419d27293c13a226233.jpg', '酱香浓郁，鲜香可口，健康美味，追剧必备。', 15.00, 240);
INSERT INTO `meituan_goods` VALUES (2333, '绝氏三拼套餐', 'http://p0.meituan.net/wmproduct/45601ec0b2b7097217621b6c5cf8ac71344686.jpg', '招牌鸭脖258g+招牌毛豆238g+鸭头2个', 40.00, 241);
INSERT INTO `meituan_goods` VALUES (2334, '绝氏招牌套餐', 'http://p1.meituan.net/wmproduct/ee584f219544a3ccc369f10fa90c032e287405.jpg', '招牌鸭脖284g+招牌毛豆238g+汽汽ta2瓶', 40.00, 241);
INSERT INTO `meituan_goods` VALUES (2335, '经典脖锁翅套餐', 'http://p0.meituan.net/wmproductwm/00cae690181f54ad2a62d9f028edee95219832.jpg', '20元鸭脖+20元鸭锁骨+20元翅膀+9元经典小素拼。产品为冷藏保存，请您尽快食用', 69.00, 241);
INSERT INTO `meituan_goods` VALUES (2336, '经典小素拼', 'http://p0.meituan.net/wmproductwm/6cc19835a0c0097ae71c8908fc465b01169988.jpg', '多种选择，任您搭配。如某种产品缺货，将为您调换。菜品随机拼称，每种产品不能保证均分，谢谢理解。产品为冷藏保存，请您尽快食用', 9.00, 241);
INSERT INTO `meituan_goods` VALUES (2337, '绝氏双人套餐', 'http://p1.meituan.net/wmproduct/94bc2f40a9af61e789502d1ae49b0d5a260236.jpg', '招牌鸭脖（238g）+汽汽ta饮品*2', 28.50, 242);
INSERT INTO `meituan_goods` VALUES (2338, '夜宵特惠辣椒炒肉煲仔饭', 'http://p1.meituan.net/wmproduct/072e6cf85c10e1e970a0d5727369ac6b339455.jpg', '', 18.80, 243);
INSERT INTO `meituan_goods` VALUES (2339, '入味黄牛肉赠送可乐一瓶', 'http://p0.meituan.net/wmproduct/f1eadfc6929edee5a8eb569fbc2bc95b436519.jpg', '', 28.80, 243);
INSERT INTO `meituan_goods` VALUES (2340, '酸辣鸡杂赠送可乐一瓶', 'http://p1.meituan.net/wmproduct/9ad97c44ee395318f5d7af8b0fc755af369879.jpg', '', 23.80, 243);
INSERT INTO `meituan_goods` VALUES (2341, '野山椒牛肉赠送可乐一瓶', 'http://p0.meituan.net/wmproduct/8cf58700a3aba0688609e3b0a47d3aa0408981.jpg', '', 28.80, 243);
INSERT INTO `meituan_goods` VALUES (2342, '（夜宵特惠）辣椒炒肉赠送辣酱', 'http://p0.meituan.net/wmproduct/007dd432c08baf7a074ffdf9bea3fca8362592.jpg', '（中辣）人人必点的湘菜招牌菜！优质五花肉、前腿肉搭配新鲜尖青椒、小红椒爆炒，口味香辣', 20.80, 243);
INSERT INTO `meituan_goods` VALUES (2343, '大片藤椒牛肉煲仔饭+清爽豆花', 'http://p0.meituan.net/wmproduct/c1f6d3661772c56155943cfc0a31f387426887.jpg', '', 32.80, 244);
INSERT INTO `meituan_goods` VALUES (2344, '港式叉烧煲仔饭+清爽豆花', 'http://p0.meituan.net/wmproduct/5a122cee414a9e1f6bb7687898245653405915.jpg', '', 29.80, 244);
INSERT INTO `meituan_goods` VALUES (2345, '香汁排骨煲仔饭＋清爽豆花套餐', 'http://p0.meituan.net/wmproduct/d979ce7bdc84dd6837a3d44a7a03c0e8649047.jpg', '', 29.80, 244);
INSERT INTO `meituan_goods` VALUES (2346, '腊味双拼煲仔饭+清爽豆花套餐', 'http://p1.meituan.net/wmproduct/3b732a6a8a0cd564928eac02f4bc7839218404.jpg', '', 28.80, 244);
INSERT INTO `meituan_goods` VALUES (2347, '入味黄牛肉煲仔饭+清爽豆花', 'http://p1.meituan.net/wmproduct/0051f0ee22f216d19144957813f8ee5a223411.jpg', '', 33.80, 244);
INSERT INTO `meituan_goods` VALUES (2348, '青豆肉沫煲仔饭+清爽豆花', 'http://p0.meituan.net/wmproduct/48f2abcebd6c5584ab87acf556c73f32225661.jpg', '', 24.80, 244);
INSERT INTO `meituan_goods` VALUES (2349, '酸菜小笋肉沫煲仔饭+清爽豆花', 'http://p0.meituan.net/wmproduct/f60ebc9d4082d9e0a7fcb7be441beb5c471269.jpg', '', 24.80, 244);
INSERT INTO `meituan_goods` VALUES (2350, '原味山水豆花', 'http://p0.meituan.net/wmproduct/9952f27bc91d43a3ff493bd998d4edcb417356.jpg', '植物高蛋白，嫩滑甘甜，更适合中国人的营养甜品！', 4.99, 244);
INSERT INTO `meituan_goods` VALUES (2351, '家常香干炒肉煲仔饭+清爽豆花', 'http://p0.meituan.net/wmproduct/9ee932cb513a9ca240646ef322d36713230228.jpg', '', 22.80, 244);
INSERT INTO `meituan_goods` VALUES (2352, '风味鸡杂煲仔饭+清爽豆花', 'http://p0.meituan.net/wmproduct/57078d8605daf9b8742437533bb9e563449053.jpg', '', 26.80, 244);
INSERT INTO `meituan_goods` VALUES (2353, '酸豆角肉泥煲仔饭+清爽豆花', 'http://p0.meituan.net/wmproduct/9abe561ad742d877656c86c0aa56f365253742.jpg', '', 20.80, 244);
INSERT INTO `meituan_goods` VALUES (2354, '辣椒炒肉煲仔饭+清爽豆花', 'http://p0.meituan.net/wmproduct/8657ef4255026a27a7c358e188f26c02213497.jpg', '', 24.80, 244);
INSERT INTO `meituan_goods` VALUES (2355, '红豆山水豆花', 'http://p0.meituan.net/wmproduct/e36c0fb115dc098be8f86b7fdd12c4ae510444.jpg', '', 4.99, 244);
INSERT INTO `meituan_goods` VALUES (2356, '七彩山水豆花', 'http://p0.meituan.net/wmproduct/4d0efd01c2afe8715b3e16a8c8dc2b28539984.jpg', '植物高蛋白，嫩滑甘甜，更适合中国人的营养甜品！', 4.99, 244);
INSERT INTO `meituan_goods` VALUES (2357, '辣椒炒肉', 'http://p0.meituan.net/wmproduct/04c6fbff09099bf3f55cd4462a6ceaf1383417.jpg', '（中辣）人人必点的湘菜招牌菜！优质五花肉、前腿肉，搭配新鲜尖青椒，口味香辣。', 19.80, 245);
INSERT INTO `meituan_goods` VALUES (2358, '家常香干煲仔饭+王老吉', 'http://p0.meituan.net/wmproduct/3b3d49bc3381f157d5091e6808542fc0403605.jpg', '', 21.80, 245);
INSERT INTO `meituan_goods` VALUES (2359, '下单送可乐请点这里，每单只送一瓶', 'http://p0.meituan.net/wmproduct/55fe1bcf0c7ebfea2b4b74ea6feecabb308773.jpg', '单点不配送！在店内下单点煲仔饭都可以点这里！可免费赠送可乐一瓶！！！每单仅送一瓶，需要下单才能送哦！下单才送哦！', 0.01, 245);
INSERT INTO `meituan_goods` VALUES (2360, '矿泉水', 'http://p0.meituan.net/wmproduct/b3bfd959c9ce68dae5b4701a01e50c41283203.jpg', '', 0.60, 245);
INSERT INTO `meituan_goods` VALUES (2361, '酸豆角肉沫+王老吉', 'http://p0.meituan.net/wmproduct/293ffb4c010cb83176be9d1d412e250c441285.jpg', '', 19.80, 245);
INSERT INTO `meituan_goods` VALUES (2362, '辣椒炒肉＋王老吉', 'http://p1.meituan.net/wmproduct/fa469a71c549ad56438e0cf5825de415366403.jpg', '辣椒炒肉加王老吉，王老吉好喝不上火！', 23.80, 245);
INSERT INTO `meituan_goods` VALUES (2363, '高山小笋炒肉泥+王老吉', 'http://p0.meituan.net/wmproduct/8d245958c9037c86edf52cfc908e16ea402110.jpg', '', 23.80, 245);
INSERT INTO `meituan_goods` VALUES (2364, '入味黄牛肉+王老吉', 'http://p0.meituan.net/wmproduct/5cc617fc102bcc3941a4e9dac67d9fe4429106.jpg', '入味黄牛肉，片片够味，王老吉好喝不上火！', 30.80, 245);
INSERT INTO `meituan_goods` VALUES (2365, '酸辣鸡杂+王老吉', 'http://p0.meituan.net/wmproduct/d0bf2f934a66764b06967e3a7c2514bc385148.jpg', '（重辣）新鲜六合鸡胗配上酱香坛子菜，酸辣爽口，每一口都挑着味蕾！', 24.80, 245);
INSERT INTO `meituan_goods` VALUES (2366, '青豆炒肉沫+王老吉', 'http://p0.meituan.net/wmproduct/b8f077df7ec86a7d08dca3984a66795d354478.jpg', '', 24.80, 245);
INSERT INTO `meituan_goods` VALUES (2367, '红油腐乳一瓶', 'http://p0.meituan.net/wmproduct/16631dcafeacda5a7656ca1e9cd198be403120.jpg', '', 15.00, 245);
INSERT INTO `meituan_goods` VALUES (2368, '香辣鱼块+王老吉', 'http://p0.meituan.net/wmproduct/094dfffd5939a49a48155bdbcab01fc7417997.jpg', '（中辣）甄选新鲜雄鱼切大块，配上特色干辣椒粉、飘香豆豉，经油锅高温爆香，外酥里嫩，香辣下饭！饭！', 27.80, 245);
INSERT INTO `meituan_goods` VALUES (2369, '鲜香菇烧肉+王老吉', 'http://p0.meituan.net/wmproduct/e38481443d0d414a8833d348efd16f8f433528.jpg', '', 23.80, 245);
INSERT INTO `meituan_goods` VALUES (2370, '香肠排骨+王老吉', 'http://p0.meituan.net/wmproduct/d202a8a108d361714087f96b90e7c793360928.jpg', '', 28.80, 245);
INSERT INTO `meituan_goods` VALUES (2371, '腊味双拼+王老吉', 'http://p0.meituan.net/wmproduct/015e5ce85e12c62058d9bdeb1d5fb174342115.jpg', '', 25.80, 245);
INSERT INTO `meituan_goods` VALUES (2372, '青岛啤酒厅装', 'http://p1.meituan.net/xianfu/c50bc38217aae8b7e80e726278fe4aa4196608.jpg', '青岛啤酒厅装330ml', 4.00, 245);
INSERT INTO `meituan_goods` VALUES (2373, '红牛', 'http://p0.meituan.net/xianfu/d0b4e3fb3a23ae1fa8a2f92c90471ecb243712.jpg', '红牛250ml罐装', 6.00, 245);
INSERT INTO `meituan_goods` VALUES (2374, '旺仔牛奶罐装', 'http://p0.meituan.net/xianfu/d14e9e3f8bea969e047c73ea9d583914384103.jpg', '旺仔牛奶', 5.00, 245);
INSERT INTO `meituan_goods` VALUES (2375, '腐乳', 'http://p0.meituan.net/wmproduct/beaecd0b0cfcb8b35023dc6517346287510444.jpg', '单点不送哦！', 0.88, 245);
INSERT INTO `meituan_goods` VALUES (2376, '萝卜丁', 'http://p0.meituan.net/wmproduct/1d08e05b3e4cef190b0997c7352d91f7485606.jpg', '单点不送哦', 0.88, 245);
INSERT INTO `meituan_goods` VALUES (2377, '辣椒豆豉', 'http://p0.meituan.net/wmproduct/25cc8bce5c6a360291d2eccc2cb0a156479961.jpg', '单点不送哦', 0.88, 245);
INSERT INTO `meituan_goods` VALUES (2378, '藠头', 'http://p0.meituan.net/wmproduct/df905b3035fbef9e8d1f9838248247f1452415.jpg', '单点不送哦！', 1.76, 245);
INSERT INTO `meituan_goods` VALUES (2379, '王老吉厅装', 'http://p0.meituan.net/wmproduct/4571211d676e6506f704363c10639023176982.jpg', '单点不送哦', 4.00, 245);
INSERT INTO `meituan_goods` VALUES (2380, '下饭口味鸡套餐 【酸辣劲爽】', 'http://p0.meituan.net/wmproduct/d194a256d6683e459dc391d0abfab2db327824.jpg', '（中辣）酱椒、酸豆角、野山椒、酸笋丁、配上无骨的鸡腿肉大火一起翻炒，从汁里夹起的鸡块，吃在口里，酸辣爽口。', 38.80, 246);
INSERT INTO `meituan_goods` VALUES (2381, '云耳炒鸡套餐 【鲜辣交融】', 'http://p0.meituan.net/wmproduct/04b078065d740f46152c7cb168189331317900.jpg', '（中辣）取鲜嫩的鸡块入锅快炒，云耳的嫩脆润泽包裹每一块鸡肉，把鸡肉的鲜与滑一起带出，味鲜可口，肉鲜脆嫩。', 38.80, 246);
INSERT INTO `meituan_goods` VALUES (2382, '香菇滑鸡套餐 【香汁浓郁】', 'http://p0.meituan.net/wmproduct/cb6f5b724fdb230a11201b7c1222bb60316044.jpg', '（无辣）选用素有“山珍”之称的花菇，与无骨鸡块一同入锅，鸡块与香菇一起翻炒，香汁浓郁，鲜嫩爽滑', 38.80, 246);
INSERT INTO `meituan_goods` VALUES (2383, '风味鸡杂套餐【酸辣爽口】', 'http://p1.meituan.net/wmproduct/1ed0fd8bd9793e1addcf3b6e6c2dcad5374731.jpg', '（中辣）鸡胗搭配新鲜辣椒爆炒出锅，这种刺激，吃过一次也容易上瘾，妥妥拿下“下饭担当”的称号，还有饮品汤羹任君自选~', 37.80, 246);
INSERT INTO `meituan_goods` VALUES (2384, '酸豆角肉沫套餐【下饭经典】', 'http://p1.meituan.net/wmproduct/7f182c85ec8c116ed6d978f3aa7b1d81360141.jpg', '（中辣）新鲜细嫩的豆角经过腌制，切成小段加上鲜肉沫，小米椒爆炒出锅，酸得所向披靡，辣得势如破竹，开胃下饭之经典！配上汤羹佐饮任君自选~', 31.80, 247);
INSERT INTO `meituan_goods` VALUES (2385, '武冈香干炒肉套餐【地道香干】', 'http://p0.meituan.net/wmproduct/5467c49def6d8f50d6cb8d74cb51630e365669.jpg', '香、辣、下饭、农家风味，家的味道，还有饮品汤羹任君自选~', 33.80, 247);
INSERT INTO `meituan_goods` VALUES (2386, '酸菜小笋肉沫套餐【脆嫩爽口】', 'http://p1.meituan.net/wmproduct/dd0ff98776c96d4f7997ed56df6888db380285.jpg', '（微辣）脆嫩笋尖与老坛发酵酸菜和肉沫一起翻炒，鲜香开胃，久久不能忘怀，还有饮品汤羹任君自选~', 35.80, 247);
INSERT INTO `meituan_goods` VALUES (2387, '辣椒炒肉套餐【经典湘菜】', 'http://p1.meituan.net/wmproduct/6623f9533018400babc531e6ab6868d4378080.jpg', '（中辣）:人人必点湘菜招牌菜！优质五花肉、前腿肉，搭配新鲜尖青椒、小红椒爆炒，口味香辣。配上汤羹佐饮，任君自选~\n\n\n\n\n\n\n还有饮品汤羹任君自选~', 35.80, 247);
INSERT INTO `meituan_goods` VALUES (2388, '香菇烧肉套餐【清淡无辣】', 'http://p0.meituan.net/wmproduct/548b9c426a188d5a46a21df57a108ade367560.jpg', '（无辣）百姓饭桌的家常菜，丝滑入扣的鲜香菇与肉沫搭配烹炒，味道鲜美至极，还有饮品汤羹任君自选~', 35.80, 247);
INSERT INTO `meituan_goods` VALUES (2389, '青豆炒肉泥套餐【翠嫩清甜】', 'http://p1.meituan.net/wmproduct/d6aa6ea6bfac6faf7ea39c9559ab3713369788.jpg', '（微辣）选用时令青豆与五花肉沫和橄榄菜巧妙搭配，微辣，酱香爽滑，是大家都爱的下饭菜，还有饮品汤羹任君自选~', 37.80, 247);
INSERT INTO `meituan_goods` VALUES (2390, '坛子椒炒肉套餐【乡味下饭】', 'http://p0.meituan.net/wmproduct/a11fc4dc152df89a958717c5137aa7f8389088.jpg', '（中辣）五花肉与前腿肉同时爱上了风味坛子辣椒，风味十足，令人食欲大开~配上汤羹佐饮，任君自选~', 37.80, 247);
INSERT INTO `meituan_goods` VALUES (2391, '宝岛卤肉套餐【台湾风味】', 'http://p0.meituan.net/wmproduct/983a3c4d274def8bd67b59ba48e2f041374524.jpg', '（无辣）源自宝岛台湾，卤肉入口即化，菇香点缀，佐以绵软洋葱粒，回味悠长，还有饮品汤羹任君自选~', 37.80, 248);
INSERT INTO `meituan_goods` VALUES (2392, '招牌红烧肉套餐【肥而不腻】', 'http://p1.meituan.net/wmproduct/80ca61c53e2fe542bd9aaa5c1ec54720360411.jpg', '（微辣）三分瘦七分肥，肥肉入口即化毫无油腻之感，瘦肉肉汁丰盈无干柴之感，红烧肉卤汁用来拌饭吃，满足你的肉食的冲动！还有饮品汤羹任君自选', 39.80, 248);
INSERT INTO `meituan_goods` VALUES (2393, '梅菜扣肉套餐【大块朵颐】', 'http://p0.meituan.net/wmproduct/ef64dd5945103fca5825e25cb1649019384293.jpg', '中辣', 39.80, 248);
INSERT INTO `meituan_goods` VALUES (2394, '香辣鱼块套餐【外酥里嫩】', 'http://p0.meituan.net/wmproduct/3023503184f34f17188b1a39b9698f7a347665.jpg', '（中辣）甄选新鲜雄鱼切大块，配上特色干辣椒粉、飘香豆豉，经油锅高温爆香，外酥里嫩，香辣下饭！配上汤羹佐饮任君自选~', 41.80, 248);
INSERT INTO `meituan_goods` VALUES (2395, '冰凉粉', 'http://p1.meituan.net/wmproduct/40583824ada3d3c6308c399804b0b0a3321256.jpg', '低卡路里，清凉降火，入口顺滑细腻，Q弹有嚼劲，冰爽透凉，夏季必备甜品', 4.00, 249);
INSERT INTO `meituan_goods` VALUES (2396, '云耳炒鸡煲仔饭+冰凉粉', 'http://p0.meituan.net/wmproduct/1a3867e7d545fe7c6832aef0d4438973424903.jpg', '（中辣）取鲜嫩的鸡块入锅快炒，云耳的嫩脆润泽包裹每一块鸡肉，把鸡肉的鲜与滑一起带出，味鲜可口，肉鲜脆嫩。', 26.80, 249);
INSERT INTO `meituan_goods` VALUES (2397, '【你是女❤神】青豆炒肉沫煲仔饭', 'http://p0.meituan.net/wmproduct/cc9514559dbf912a89016630dc290c7a372407.jpg', '（微辣）圆滚滚的青豆，配上橄榄菜酱过的鲜肉沫，酱香美味，粒粒爽口！', 19.90, 249);
INSERT INTO `meituan_goods` VALUES (2398, '下饭口味鸡煲仔饭+冰凉粉', 'http://p1.meituan.net/wmproduct/05cca39835cf0aca5d8d95c064e33ef2433977.jpg', '（中辣）酱椒、酸豆角、野山椒、酸笋丁、配上无骨的鸡腿肉大火一起翻炒，从汁里夹起的鸡块，吃在口里，酸辣爽口。', 26.80, 249);
INSERT INTO `meituan_goods` VALUES (2399, '【你是男❤神】黑椒杏鲍菇牛肉粒', 'http://p1.meituan.net/wmproduct/d711b6e335022aeffbc4a122b2a45d95407806.jpg', '（微辣）  精选优质牛肉粒 ，通过精心腌制调味 搭上杏鲍菇简单烹饪后咬一口黑椒美味口口留香。', 19.90, 249);
INSERT INTO `meituan_goods` VALUES (2400, '劲爽孜然牛肉+营养汤套餐', 'http://p0.meituan.net/wmproduct/049c35462bedd72bf6ee4cf540c37bfa384899.jpg', '（中辣）进口新鲜牛霖切丝爆炒，撒上气味芬芳的孜然，轻轻咬上一口，沁人心脾，回味无穷。', 29.90, 249);
INSERT INTO `meituan_goods` VALUES (2401, '酸豆角炒肉沫+可乐套餐', 'http://p0.meituan.net/wmproduct/9aa4cb74c320867eb195e09700ca9468417740.jpg', '（中辣）新鲜细嫩的豆角经过腌制，切成小段加上鲜肉沫，小米椒爆炒出锅，酸得所向披靡，辣得势如破竹，开胃下饭之经典！', 32.00, 249);
INSERT INTO `meituan_goods` VALUES (2402, '下饭口味鸡煲仔饭', 'http://p1.meituan.net/wmproduct/996c9f67850ed0d463d5299654c9e9d5331343.jpg', '（中辣）酱椒、酸豆角、野山椒、酸笋丁、配上无骨的鸡腿肉大火一起翻炒，从汁里夹起的鸡块，吃在口里，酸辣爽口。', 22.80, 249);
INSERT INTO `meituan_goods` VALUES (2403, '云耳炒鸡煲仔饭', 'http://p0.meituan.net/wmproduct/af2bbe9a6c841598db91ab7a23208be7319336.jpg', '（中辣）取鲜嫩的鸡块入锅快炒，云耳的嫩脆润泽包裹每一块鸡肉，把鸡肉的鲜与滑一起带出，味鲜可口，肉鲜脆嫩。', 22.80, 249);
INSERT INTO `meituan_goods` VALUES (2404, '【超值套餐】港式叉烧+网红辣酱', 'http://p0.meituan.net/wmproduct/f6ce746b608bb714dc7f0a7653c73195402617.jpg', '', 26.80, 249);
INSERT INTO `meituan_goods` VALUES (2405, '香菇滑鸡煲仔饭', 'http://p0.meituan.net/wmproduct/af2bbe9a6c841598db91ab7a23208be7319336.jpg', '（无辣）选用素有“山珍”之称的花菇，与无骨鸡块一同入锅，鸡块与香菇一起翻炒，香汁浓郁，鲜嫩爽滑', 22.80, 249);
INSERT INTO `meituan_goods` VALUES (2406, '黑椒杏鲍菇牛肉粒+香干炒肉+可乐+美年达', 'http://p0.meituan.net/wmproduct/02a3a5b29506fd62b95edc55236dc80b603704.png', '黑椒杏鲍菇牛肉粒煲仔饭1份+武冈香干炒肉煲仔饭1份+可乐1瓶+美年达1瓶', 44.80, 249);
INSERT INTO `meituan_goods` VALUES (2407, '酸菜小笋肉沫煲仔饭', 'http://p0.meituan.net/wmproduct/9aaf71a68d8d7fcc8236cf67351d543a340328.jpg', '（微辣）脆嫩巴蜀野山笋，本土鲜猪五花肉沫，佐以爽口老坛酸菜，清脆爽口，口口入味！', 20.80, 249);
INSERT INTO `meituan_goods` VALUES (2408, '家常香干炒肉煲仔饭', 'http://p0.meituan.net/wmproduct/82fa790ff7ef362d68c55dde244126d1328225.jpg', '（微辣）柴火香干的香韧，与五花肉合理搭配，量足下饭，农家风味。', 16.80, 249);
INSERT INTO `meituan_goods` VALUES (2409, '辣椒炒肉煲仔饭', 'http://p0.meituan.net/wmproduct/e1417cfd140cd5ee66832ee34824ada3375151.jpg', '（中辣）人人必点湘菜招牌菜！优质五花肉、前腿肉，搭配新鲜尖青椒、小红椒爆炒，口味香辣。', 20.80, 249);
INSERT INTO `meituan_goods` VALUES (2410, '酸豆角肉沫煲仔饭', 'http://p0.meituan.net/wmproduct/9aa4cb74c320867eb195e09700ca9468417740.jpg', '（中辣）新鲜细嫩的豆角经过腌制，切成小段加上鲜肉沫，小米椒爆炒出锅，酸得所向披靡，辣得势如破竹，开胃下饭之经典！', 16.80, 249);
INSERT INTO `meituan_goods` VALUES (2411, '香菇烧肉煲仔饭', 'http://p0.meituan.net/wmproduct/c77724e9653d2f7c76b3ac5ab28c04c7327845.jpg', '（无辣）高蛋白低脂肪新鲜香菇，搭配优质五花肉，健康美味，鲜香爽滑。', 20.80, 249);
INSERT INTO `meituan_goods` VALUES (2412, '武冈香干炒肉煲仔饭', 'http://p0.meituan.net/wmproduct/bfb18598331fa11783494c61b413d96b353802.jpg', '（微辣）本土鲜猪五花，武冈老厂泉水香干，爆香出锅，香干鲜韧弹口。', 20.80, 249);
INSERT INTO `meituan_goods` VALUES (2413, '青豆炒肉沫煲仔饭', 'http://p0.meituan.net/wmproduct/cc9514559dbf912a89016630dc290c7a372407.jpg', '（微辣）圆滚滚的青豆，配上橄榄菜酱过的鲜肉沫，酱香美味，粒粒爽口！', 21.80, 249);
INSERT INTO `meituan_goods` VALUES (2414, '风味鸡杂煲仔饭', 'http://p0.meituan.net/wmproduct/00456a193fe138fb40d4e5053f431a2e328645.jpg', '（重辣）新鲜六合鸡胗配上酱香坛子菜，酸辣爽口，每一口都挑逗着味蕾~', 22.80, 249);
INSERT INTO `meituan_goods` VALUES (2415, '坛子椒炒肉煲仔饭', 'http://p0.meituan.net/wmproduct/e7650117e614cfd8549aac3da4c10c24380533.jpg', '（中辣）五花肉与前腿肉同时爱上了风味坛子辣椒，令人食欲大开~', 23.80, 249);
INSERT INTO `meituan_goods` VALUES (2416, '招牌红烧肉煲仔饭', 'http://p1.meituan.net/wmproduct/2ef826b33b1ac6207ee56420203f006c317264.jpg', '（无辣）比肩毛氏红烧肉，肥瘦适中，用筷轻夹香汁四溢，大块朵颐。', 24.80, 249);
INSERT INTO `meituan_goods` VALUES (2417, '宝岛卤肉煲仔饭', 'http://p1.meituan.net/wmproduct/67ae99cd994e2f6a685c8a2bbd25593e333677.jpg', '（无辣）精选五花肉切小块煸香，海鲜酱油上色，花菇洋葱做伴，细火慢炖，口口入味！', 22.80, 249);
INSERT INTO `meituan_goods` VALUES (2418, '梅菜扣肉煲仔饭', 'http://p1.meituan.net/wmproduct/f36b973dff3a0b3fa00f343e9002d5ca325572.jpg', '（中辣）肥瘦相间的五花肉经烹煮后，入口即化，梅菜香气扑鼻，肉软味香，肥而不腻。', 24.80, 249);
INSERT INTO `meituan_goods` VALUES (2419, '香汁排骨煲仔饭', 'http://p1.meituan.net/wmproduct/1de7cfd491c4d4d2543bc87f54d5321b336347.jpg', '（微辣）秘制酱汁腌子排，配上飘香豆豉，嫩中带香，香中透鲜~', 26.80, 249);
INSERT INTO `meituan_goods` VALUES (2420, '港式叉烧煲仔饭', 'http://p0.meituan.net/wmproduct/01f03ce21090ec422ddb98e6d3b3ff3d348898.jpg', '（无辣）正宗港式叉烧采用肥瘦适中的五花肉，每一块叉烧的肉汁都被封在纤维里，经砂锅高温细蒸，香气四溢，外焦里嫩甜而不腻。', 25.80, 249);
INSERT INTO `meituan_goods` VALUES (2421, '香辣鱼块煲仔饭', 'http://p0.meituan.net/wmproduct/12fd225635b4999e26c748a1644783b6328403.jpg', '（中辣）甄选新鲜雄鱼切大块，配上特色干辣椒粉、飘香豆豉，经油锅高温爆香，外酥里嫩，香辣下饭！', 25.80, 249);
INSERT INTO `meituan_goods` VALUES (2422, '香肠排骨煲仔饭', 'http://p1.meituan.net/wmproduct/f4f73df1813b50b1a36848512ad542df325808.jpg', '（中辣）唐人神翡翠香肠，搭配新鲜仔排搭配，蒸煮入味，每一碗都份量十足，醇香适口。', 26.80, 249);
INSERT INTO `meituan_goods` VALUES (2423, '腊味双拼煲仔饭', 'http://p0.meituan.net/wmproduct/4f950cf15c251a2766e51b2abb6be86e326238.jpg', '（无辣）正宗广式腊肠腊肉，砂锅高温细蒸，开锅瞬间香气四溢，色泽油润透亮，肉汁沁透米饭。', 24.80, 249);
INSERT INTO `meituan_goods` VALUES (2424, '【超值特惠】酸豆角肉沫+营养汤套餐', 'http://p1.meituan.net/wmproduct/7f182c85ec8c116ed6d978f3aa7b1d81360141.jpg', '（中辣）新鲜细嫩的豆角经过腌制，切成小段加上鲜肉沫，小米椒爆炒出锅，酸得所向披靡，辣得势如破竹，开胃下饭之经典！配上汤羹佐饮任君自选~', 21.80, 249);
INSERT INTO `meituan_goods` VALUES (2425, '入味黄牛肉煲仔饭', 'http://p1.meituan.net/wmproduct/8d599ad36aacb2a995c3974ea3a887bb336668.jpg', '（中辣）澳洲进口新鲜牛键芯，用地道山茶油爆炒，辅以剁辣椒调味，筋肉交错劲道十足。', 28.80, 249);
INSERT INTO `meituan_goods` VALUES (2426, '黑椒杏鲍菇牛肉粒煲仔饭', 'http://p1.meituan.net/wmproduct/d711b6e335022aeffbc4a122b2a45d95407806.jpg', '（微辣）  精选优质牛肉粒 ，通过精心腌制调味 搭上杏鲍菇简单烹饪后咬一口黑椒美味口口留香。', 25.80, 249);
INSERT INTO `meituan_goods` VALUES (2427, '劲爽孜然牛肉煲仔饭', 'http://p1.meituan.net/wmproduct/64207f48366152c5a2da7f765014b9b5337840.jpg', '', 26.80, 249);
INSERT INTO `meituan_goods` VALUES (2428, '野山椒牛肉煲仔饭', 'http://p1.meituan.net/wmproduct/49be02b6545c4c931f59deba79cfacd5330790.jpg', '（重辣）进口新鲜牛霖，佐以小米辣椒、红线椒出味，每一口都酸爽劲辣，酣畅淋漓~', 28.00, 249);
INSERT INTO `meituan_goods` VALUES (2429, '【超值特惠】黑椒杏鲍菇牛肉粒+可乐套餐', 'http://p1.meituan.net/wmproduct/8b251886d231b4cda1d1a95a242cba15688836.png', '（微辣）  精选优质牛肉粒 ，通过精心腌制调味 搭上杏鲍菇简单烹饪后咬一口黑椒美味口口留香。', 26.80, 249);
INSERT INTO `meituan_goods` VALUES (2430, '【超值双人餐】辣椒炒肉+腊味双拼', 'http://p0.meituan.net/wmproduct/3caba14dddc0044ebdee6b7d197c4157416284.jpg', '【超值双人餐】辣椒炒肉+腊味双拼', 39.90, 249);
INSERT INTO `meituan_goods` VALUES (2431, '【超值双人餐】青豆炒肉沫+坛子椒炒肉', 'http://p1.meituan.net/wmproduct/f298390182a2263d96c0b6f2e206adfb426735.jpg', '【超值双人餐】青豆炒肉沫+坛子椒炒肉', 39.90, 249);
INSERT INTO `meituan_goods` VALUES (2432, '【超值双人餐】梅菜扣肉+家常香干炒肉', 'http://p1.meituan.net/wmproduct/09b91f802aaf8b9bfef98674c68dbf2c373908.jpg', '超值双人餐:梅菜扣肉煲仔饭+家常香干炒肉煲仔饭', 39.90, 249);
INSERT INTO `meituan_goods` VALUES (2433, '香汁排骨套餐【块块生香】', 'http://p1.meituan.net/wmproduct/e4b2c8e512f5a6ad8186c42abc0c1fda397832.jpg', '（微辣）软脆入味的排骨与豆豉肉香融合，嫩中带香，香中透鲜，五味调和，渗透味蕾，十分诱惑，还有饮品汤羹任君自选~\n\n\n\n（微辣）软脆入味的排骨与豆豉肉香融合，嫩中带香，香中透鲜，五味调和，渗透味蕾，十分诱惑，还有饮品汤羹任君自选~\n\n\n（微辣）软脆入味的排骨与豆豉肉香融合，嫩中带香，香中透鲜，五味调和，渗透味蕾，十分诱惑，还有饮品汤羹任君自', 41.80, 250);
INSERT INTO `meituan_goods` VALUES (2434, '香肠蒸排骨套餐【醇香量足】', 'http://p0.meituan.net/wmproduct/44d514f2ce89bd874cfd6b1ad5bd8697387239.jpg', '（中辣）广式煲仔饭中的经典菜，加入湖南特产的豆豉和剁椒，蒸制而成，风味十足，非常适合下饭，还有饮品汤羹任君自选哦~', 41.80, 250);
INSERT INTO `meituan_goods` VALUES (2435, '腊味双拼套餐【广式经典】', 'http://p1.meituan.net/wmproduct/92f695862bd2641a2d6e6b659ce6cfe1383707.jpg', '（微甜）煲仔饭经典之作，晶莹剔透的米饭吸取了腊味的精华，饱含汤汁，浓郁咸香，吃上一首便觉得全身暖乎乎的,还有饮品汤羹任君自选~', 41.80, 250);
INSERT INTO `meituan_goods` VALUES (2436, '港式叉烧套餐【焦香脆甜】', 'http://p1.meituan.net/wmproduct/340a2523cd50eb97e894bbce37151d3c343823.jpg', '（无辣）正宗港式叉烧采用肥瘦适中的五花肉，每一块叉烧的肉汁都被封在纤维里，经砂锅高温细蒸，香气四溢，外焦里嫩甜而不腻！配上汤羹佐饮任君自选~', 41.80, 250);
INSERT INTO `meituan_goods` VALUES (2437, '矿泉水', 'http://p0.meituan.net/wmproduct/9edf72b082855ff34e71ce50460916aa289843.jpg', '', 1.80, 251);
INSERT INTO `meituan_goods` VALUES (2438, '牛肉辣酱', 'http://p0.meituan.net/wmproduct/a69a51a3c97ec661ff9047402003acb3294538.jpg', '大粒牛肉、真材实料，辣油鲜亮、酱心之选。', 3.50, 251);
INSERT INTO `meituan_goods` VALUES (2439, '鱼干辣酱', 'http://p1.meituan.net/wmproduct/514137ff1d891025b7ebfad52e3dc7b8296353.jpg', '鲜香鱼肉，精选大粒、嚼劲有味，口感醇厚。', 3.50, 251);
INSERT INTO `meituan_goods` VALUES (2440, '水溶C100', 'http://p1.meituan.net/wmproduct/ed2fa548d2dd68bbd02d890639b53aa8226612.jpg', '', 5.10, 251);
INSERT INTO `meituan_goods` VALUES (2441, '茶π', 'http://p1.meituan.net/wmproduct/d5d128f90dc65efa0d47ef74cdfc227c300613.jpg', '', 4.80, 251);
INSERT INTO `meituan_goods` VALUES (2442, '美年达', 'http://p0.meituan.net/wmproduct/5eab11c430cdf0af89530401eae2f30c336860.jpg', '', 0.99, 251);
INSERT INTO `meituan_goods` VALUES (2443, '可乐', 'http://p1.meituan.net/wmproduct/cbfa52a598fa75c2a59798715a69bf53256987.jpg', '', 0.99, 251);
INSERT INTO `meituan_goods` VALUES (2444, '可乐330毫升', 'http://p0.meituan.net/wmproduct/095a30025bf743737975715b7aaa2802474221.png', '', 2.80, 251);
INSERT INTO `meituan_goods` VALUES (2445, '剁椒包', 'http://p0.meituan.net/wmproduct/8d594dea95ffc04ccf66245a63138e99241468.jpg', '', 0.88, 251);
INSERT INTO `meituan_goods` VALUES (2446, '榨菜包', 'http://p1.meituan.net/wmproduct/5f4543af9601982f951aeca351cc7de8254669.jpg', '随套餐购买，单点不配送', 0.88, 251);
INSERT INTO `meituan_goods` VALUES (2447, '豆奶', 'http://p0.meituan.net/wmproduct/4437c2217fac42fc91c53f65839847a0276588.jpg', '随套餐购买，单点不配送', 4.00, 251);
INSERT INTO `meituan_goods` VALUES (2448, '茶派', 'http://p0.meituan.net/wmproduct/07259bfa85d9480175e96f9e74806679313362.jpg', '随套餐购买，单点不配送', 4.80, 251);
INSERT INTO `meituan_goods` VALUES (2449, '咸鸭蛋整个', 'http://p0.meituan.net/wmproduct/b259b669b1cccc8550fadae70ca19b23396423.png', '随套餐购买，单点不配送', 2.80, 251);
INSERT INTO `meituan_goods` VALUES (2450, '泰国香米煲仔饭', 'http://p1.meituan.net/wmproduct/e6b4ddf3c202de71df41731632dc04a7496765.png', '', 6.00, 251);
INSERT INTO `meituan_goods` VALUES (2451, '大片藤椒牛肉套餐【香麻爽口】', 'http://p0.meituan.net/wmproduct/0567eb22e825158ffc8b28cc87ac266e410759.jpg', '（中辣)采用精品牛霖肉大块厚切，配上香麻藤椒火爆黄贡椒，香麻爽口，片片够味！', 45.80, 252);
INSERT INTO `meituan_goods` VALUES (2452, '白椒腊牛肉套餐【嚼劲十足】', 'http://p1.meituan.net/wmproduct/728dfc9573a81615ee0fab3ea68234bc372921.jpg', '（中辣）湖南特色白椒，秘制腊牛肉，精烹细煮，香气四溢，嚼劲十足。', 45.80, 252);
INSERT INTO `meituan_goods` VALUES (2453, '黑椒杏鲍菇牛肉粒套餐【颗颗饱满】', 'http://p1.meituan.net/wmproduct/dc958925ea297750a13848ff83b2c925415552.jpg', '（微辣）  精选优质牛肉粒 ，通过精心腌制调味 搭上杏鲍菇简单烹饪后咬一口黑椒美味口口留香。配上汤羹佐饮，任君自选~', 41.80, 252);
INSERT INTO `meituan_goods` VALUES (2454, '野山椒牛肉套餐【辣的够牛】', 'http://p1.meituan.net/wmproduct/7c8046721a7e7cdaa3b383c785840b8b374453.jpg', '（重辣）酸甜爽辣的野山椒牛肉，一口咬到爆汁，酸酸甜甜又带着一点微辣，混着浓郁肉香，让你停不下来，还有饮品汤羹任君自选~', 42.80, 252);
INSERT INTO `meituan_goods` VALUES (2455, '劲爽孜然牛肉套餐【香爆下饭】', 'http://p1.meituan.net/wmproduct/049c35462bedd72bf6ee4cf540c37bfa384899.jpg', '（中辣）用澳洲进口牛肉搭配孜然爆香出锅，像是一道魔法，在锅中百花齐放，相互交织，还有饮品汤羹任君自选~', 42.80, 252);
INSERT INTO `meituan_goods` VALUES (2456, '入味黄牛肉套餐【片片劲道】', 'http://p0.meituan.net/wmproduct/eed34f9b9d4a3e1a6cde8b25a3652319383146.jpg', '（中辣）茶油爆炒牛肉，自制剁椒提香，牛肉味十足，椒香四溢，还有饮品汤羹任君自选~', 43.80, 252);
INSERT INTO `meituan_goods` VALUES (2457, '优雅时尚的线下就餐环境', 'http://p0.meituan.net/wmproduct/ef82e4588e7b730ba9877ca2d6c64f19592392.png', '', 88.88, 253);
INSERT INTO `meituan_goods` VALUES (2458, '点品质外卖就选香他她', 'http://p1.meituan.net/wmproduct/e7f3b3f4e90612de292646ab542bb040124674.png', '', 88.88, 253);
INSERT INTO `meituan_goods` VALUES (2459, '需要锅巴的亲，请备注哦', 'http://p1.meituan.net/wmproduct/1155c422d91e081cf8d4ba2ae4fa780f128654.png', '', 88.88, 253);
INSERT INTO `meituan_goods` VALUES (2460, '香辣蟹钳（送面）', 'http://p0.meituan.net/wmproduct/098f16e8bf84c50787b921ffc1bc1459657694.jpg', '', 46.80, 254);
INSERT INTO `meituan_goods` VALUES (2461, '老长沙口味虾（小份）送面', 'http://p1.meituan.net/xianfudwm/4f7b44b8359eacf50d5f4f87f6c9fd38249223.jpg', '', 46.80, 254);
INSERT INTO `meituan_goods` VALUES (2462, '老长沙臭豆腐8片', 'http://p0.meituan.net/wmproduct/835f66df1a8973e57c30dcd0e723848a312544.jpg', '老长沙特色小吃', 12.00, 254);
INSERT INTO `meituan_goods` VALUES (2463, '老长沙秘制虾尾(30-40颗）送面', 'http://p0.meituan.net/xianfu/72d5018092561959d86c14d4ffe7217d380295.jpg', '30-40颗左右，送无味凉面,麻辣口味，湘菜与川菜口味的结合。不能免辣，免麻！', 48.80, 254);
INSERT INTO `meituan_goods` VALUES (2464, '老长沙口味虾中份（送面）', 'http://p1.meituan.net/wmproductdwm/19cdd6ea6a430148a5b3bd79cea16ee5155248.jpg', '7钱以上小龙虾，15只左右每份', 68.80, 254);
INSERT INTO `meituan_goods` VALUES (2465, '忆口香卤虾2只/份', 'http://p1.meituan.net/xianfu/5522b1207e0e98873df1d269a90a52a5512170.jpg', '绝味卤虾。', 0.20, 254);
INSERT INTO `meituan_goods` VALUES (2466, '亿口香卤虾一斤', 'http://p1.meituan.net/xianfu/7bf703380b29306dc515d808f97252a2543438.jpg', '', 16.80, 254);
INSERT INTO `meituan_goods` VALUES (2467, '招牌蒜蓉大虾大份（送面）', 'http://p0.meituan.net/wmproduct/c42f5e9983ae999dfff4777bf9f425dd908686.jpg', '', 98.00, 254);
INSERT INTO `meituan_goods` VALUES (2468, '魔芋口味虾（送面）', 'http://p1.meituan.net/xianfu/0e140338bdc3a8159ccbccdf6835e7d4482849.jpg', '软糯Q弹的魔芋配上麻辣鲜香的口味虾', 79.80, 254);
INSERT INTO `meituan_goods` VALUES (2469, '秘制蒜蓉虾尾（无辣椒）送面', 'http://p0.meituan.net/wmproduct/a56f65ab691e3f66f7835cdc033a0557374876.jpg', '60-70只虾尾', 118.00, 254);
INSERT INTO `meituan_goods` VALUES (2470, '招牌油焖大虾大份（送面）', 'http://p0.meituan.net/xianfudwm/f399611c17a804a26d416fc34cc80600277078.jpg', '湖北潜江口味', 98.00, 254);
INSERT INTO `meituan_goods` VALUES (2471, '老长沙油爆大虾大份', 'http://p0.meituan.net/xianfu/7384ef51de4a8f3598748fc5a6fb6afd458611.jpg', '配蘸酱，', 98.00, 254);
INSERT INTO `meituan_goods` VALUES (2472, '老长沙秘制虾尾中份（送面）', 'http://p0.meituan.net/xianfudwm/bc06684e3570c323f2fdbb20634cd0af144853.jpg', '', 88.80, 254);
INSERT INTO `meituan_goods` VALUES (2473, '老长沙秘制虾尾60个送花甲一份', 'http://p0.meituan.net/xianfudwm/bc06684e3570c323f2fdbb20634cd0af144853.jpg', '', 168.00, 254);
INSERT INTO `meituan_goods` VALUES (2474, '忆口香卤虾30只', 'http://p0.meituan.net/xianfu/a0b15a4b0b6b5cb3a102e486e1b91eda499125.jpg', '', 68.00, 254);
INSERT INTO `meituan_goods` VALUES (2475, '忆口香卤虾60只', 'http://p0.meituan.net/xianfu/a0b15a4b0b6b5cb3a102e486e1b91eda499125.jpg', '', 118.00, 254);
INSERT INTO `meituan_goods` VALUES (2476, '十三香麻辣小龙虾', 'http://p1.meituan.net/xianfu/a27e8d068d850ca139fc2b9a1a2a5e25620544.jpg', '18只左右', 75.80, 254);
INSERT INTO `meituan_goods` VALUES (2477, '忆口香卤虾3斤（送一斤）', 'http://p1.meituan.net/xianfu/80fc6783959b758e24bb0fbe58f4fc46432244.jpg', '买三斤送一斤，每日定量，预购从速', 138.80, 254);
INSERT INTO `meituan_goods` VALUES (2478, '老长沙秘制虾尾大份（送面）', 'http://p0.meituan.net/xianfu/c8bef71fc37a73c6d884c575a9452883333662.jpg', '', 188.00, 254);
INSERT INTO `meituan_goods` VALUES (2479, '老长沙口味虾大份（送面）', 'http://p1.meituan.net/xianfudwm/4f7b44b8359eacf50d5f4f87f6c9fd38249223.jpg', '', 138.00, 254);
INSERT INTO `meituan_goods` VALUES (2480, '清水面（点虾，蟹会送一份）', 'http://p1.meituan.net/wmproductdwm/211b2f4bba0f89271aecca606fd4398c215889.jpg', '拌在龙虾，花甲等汤汁里面的，很好吃哦', 4.00, 255);
INSERT INTO `meituan_goods` VALUES (2481, '白米饭', 'http://p0.meituan.net/xianfudwm/617393feaab59e7ebb97eeaba1de3c0d110850.jpg', '', 2.00, 255);
INSERT INTO `meituan_goods` VALUES (2482, '铁板鱿鱼须', 'http://p0.meituan.net/xianfu/1139827261e29153aacaf98b6c45ac19576196.jpg', '', 48.00, 256);
INSERT INTO `meituan_goods` VALUES (2483, '秘制香辣蟹（送面条)', 'http://p0.meituan.net/xianfudwm/279bc067315e1e2ab19e0111b1698ac1239965.jpg', '', 68.00, 256);
INSERT INTO `meituan_goods` VALUES (2484, '爆炒牛蛙', 'http://p1.meituan.net/xianfudwm/c7fe96e9fb532a67724eb89dfa24c03c158226.jpg', '', 58.00, 256);
INSERT INTO `meituan_goods` VALUES (2485, '姜辣凤爪', 'http://p1.meituan.net/xianfudwm/5a3e937beeda4469e7b2a046e1da3278161035.jpg', '', 36.80, 256);
INSERT INTO `meituan_goods` VALUES (2486, '香辣跳跳蛙', 'http://p1.meituan.net/wmproductdwm/537fc4680544dd347a0bb5c586eefc1c132160.jpg', '现杀现做', 49.80, 256);
INSERT INTO `meituan_goods` VALUES (2487, '干锅鱼籽鱼泡', 'http://p0.meituan.net/xianfudwm/91fccddaa8da59f5078a93798ae3e897222422.jpg', '', 56.00, 256);
INSERT INTO `meituan_goods` VALUES (2488, '口味肥肠', 'http://p0.meituan.net/xianfudwm/98658db6f625dc9e467e434d336d71fc200589.jpg', '', 48.00, 256);
INSERT INTO `meituan_goods` VALUES (2489, '岳阳姜辣蛇（两斤）', 'http://p0.meituan.net/xianfu/5e4b1d1039f1cc9dbcd4d3400f8bb79263780.jpg', '', 298.00, 256);
INSERT INTO `meituan_goods` VALUES (2490, '秘制口味蛇（两斤）', 'http://p0.meituan.net/xianfudwm/758c4a616dc2cd7d4b0b26f2dc6224ec195242.jpg', '', 298.00, 256);
INSERT INTO `meituan_goods` VALUES (2491, '三码头唆螺/份', 'http://p0.meituan.net/wmproductdwm/dc0406f9dd9cd9d968799e071c7040a1354035.jpg', '放了辣椒小火煨制出来的，吃不得辣的小伙伴慎点哦!!', 13.80, 256);
INSERT INTO `meituan_goods` VALUES (2492, '香辣牛杂', 'http://p0.meituan.net/wmproduct/d06d6f5e62d05a19193a1cf6e6370844467959.jpg', '', 48.00, 256);
INSERT INTO `meituan_goods` VALUES (2493, '秘制口味花甲', 'http://p0.meituan.net/xianfudwm/dc4299836ea8d581ed6bf8fe85986133194940.jpg', '食材反复清洗，干净无沙，', 18.80, 256);
INSERT INTO `meituan_goods` VALUES (2494, '腊肉莴笋片', 'http://p1.meituan.net/wmproductdwm/f78e6ba9f500eb02d0661cdcc40584b5136861.jpg', '', 48.00, 256);
INSERT INTO `meituan_goods` VALUES (2495, '红烧鲫鱼', 'http://p0.meituan.net/xianfudwm/b2a41449dbc42ce95e525eeddd2790bc175647.jpg', '', 48.00, 256);
INSERT INTO `meituan_goods` VALUES (2496, '小炒河蚌肉', 'http://p0.meituan.net/xianfudwm/a32dcd770199c303935adac631d78d9a166478.jpg', '', 48.00, 256);
INSERT INTO `meituan_goods` VALUES (2497, '青椒拆骨肉', 'http://p0.meituan.net/xianfudwm/0103e0ef8e7c04d7824ab1c00d24c502242027.jpg', '', 48.00, 256);
INSERT INTO `meituan_goods` VALUES (2498, '辣椒炒腊牛肉', 'http://p0.meituan.net/xianfudwm/47f276fae6ae024a245e5ead233e9848157447.jpg', '', 58.00, 256);
INSERT INTO `meituan_goods` VALUES (2499, '香辣田螺肉', 'http://p0.meituan.net/xianfudwm/c27d2c28815710940d61e62e4aa4df3f152912.jpg', '', 48.00, 256);
INSERT INTO `meituan_goods` VALUES (2500, '小炒猪脚皮', 'http://p1.meituan.net/xianfudwm/4c734484ee50085ccb4ba0f2a085aa5c149782.jpg', '', 48.00, 256);
INSERT INTO `meituan_goods` VALUES (2501, '小鱼小虾', 'http://p0.meituan.net/xianfudwm/f25fefd3cabf5539c7e0a1c6a6a2d3bf197515.jpg', '', 48.00, 256);
INSERT INTO `meituan_goods` VALUES (2502, '铁板韭菜加两蛋', 'http://p1.meituan.net/xianfudwm/083038884f08a906023433850a2e65e5240112.jpg', '', 24.00, 256);
INSERT INTO `meituan_goods` VALUES (2503, '酸辣藕尖', 'http://p1.meituan.net/xianfudwm/f515850121ed4371ab8f93d88e5cae98159034.jpg', '', 38.00, 256);
INSERT INTO `meituan_goods` VALUES (2504, '清炒油麦菜', 'http://p0.meituan.net/xianfudwm/92451a0607c8bad4637ca6236479453f145329.jpg', '', 24.00, 256);
INSERT INTO `meituan_goods` VALUES (2505, '手撕包菜', 'http://p1.meituan.net/xianfudwm/87891cf78c6ccae947f058294af27db7117476.jpg', '', 24.00, 256);
INSERT INTO `meituan_goods` VALUES (2506, '酸辣土豆丝', 'http://p0.meituan.net/xianfudwm/c6b9784629de04b644fdf2da40972293181163.jpg', '', 24.00, 256);
INSERT INTO `meituan_goods` VALUES (2507, '剁椒牙白', 'http://p0.meituan.net/wmproductdwm/4fb20830950490f8a658327f81cbccab170829.jpg', '', 24.00, 256);
INSERT INTO `meituan_goods` VALUES (2508, '白米饭', 'http://p0.meituan.net/xianfudwm/617393feaab59e7ebb97eeaba1de3c0d110850.jpg', '', 2.00, 256);
INSERT INTO `meituan_goods` VALUES (2509, '老长沙大香肠', 'http://p1.meituan.net/wmproduct/637f70c27e8f670f1a04dad3b901b2e6241614.jpg', '老长沙特色小吃', 15.00, 257);
INSERT INTO `meituan_goods` VALUES (2510, '碳烤五花肉/半手', 'http://p1.meituan.net/wmproductdwm/b4efd497c34e853abd09d2bc19ad5f4c244104.jpg', '', 18.00, 257);
INSERT INTO `meituan_goods` VALUES (2511, '碳烤里脊肉10串', 'http://p0.meituan.net/xianfudwm/b551460c882ff132958703cdae197a78217996.jpg', '解馋，不油腻！', 18.00, 257);
INSERT INTO `meituan_goods` VALUES (2512, '碳烤鸡腿', 'http://p0.meituan.net/xianfu/5d663a8f3224ecd67312ac69aa7dbded506003.jpg', '', 12.90, 257);
INSERT INTO `meituan_goods` VALUES (2513, '碳烤鸡翅', 'http://p0.meituan.net/xianfu/ec55747ee97af928a5b8e4c57524ef7d402294.jpg', '', 12.90, 257);
INSERT INTO `meituan_goods` VALUES (2514, '烤掌中宝/半手', 'http://p1.meituan.net/wmproductdwm/2f7b3c507d5b019dcaccfc951e415dd3106051.jpg', '岳阳大串烧烤', 20.00, 257);
INSERT INTO `meituan_goods` VALUES (2515, '碳烤基围虾/半手', 'http://p1.meituan.net/wmproductdwm/55c30d3f530b8367cb93e7146d0aa26e310830.jpg', '', 20.00, 257);
INSERT INTO `meituan_goods` VALUES (2516, '碳烤鸡杂/半手', 'http://p1.meituan.net/wmproductdwm/f1bfb6cad7aba4f3191472894c2c73b7267597.jpg', '', 15.00, 257);
INSERT INTO `meituan_goods` VALUES (2517, '手撕干鱿鱼/条', 'http://p0.meituan.net/wmproductdwm/a6a6110ed263bd86b8877be20c1f62eb374338.jpg', '', 12.90, 257);
INSERT INTO `meituan_goods` VALUES (2518, '碳烤牛板筋/半手', 'http://p0.meituan.net/wmproductdwm/a3ee0375195c10664e303eb79b7db004266838.jpg', '', 20.00, 257);
INSERT INTO `meituan_goods` VALUES (2519, '骨肉相连/半手', 'http://p1.meituan.net/wmproductdwm/feb2fa0e8d15dbd7db604f214cf734b9471714.jpg', '', 20.00, 257);
INSERT INTO `meituan_goods` VALUES (2520, '烤秋刀鱼/', 'http://p1.meituan.net/xianfudwm/45be978492a5189f9cc185f6200a30f9220150.jpg', '岳阳大串烧烤', 16.00, 257);
INSERT INTO `meituan_goods` VALUES (2521, '烤火腿肠/串', 'http://p0.meituan.net/xianfu/4e3842c196565c0b0db7573128ba77b8360599.jpg', '', 4.00, 257);
INSERT INTO `meituan_goods` VALUES (2522, '烤热狗/串', 'http://p1.meituan.net/xianfudwm/f021b66c64ca9965a94ebf76582fb8b7184216.jpg', '岳阳大串烧烤', 0.39, 257);
INSERT INTO `meituan_goods` VALUES (2523, '烤鸡爪/串', 'http://p1.meituan.net/xianfudwm/ff7364647867b02d455b5d9cc8fa17aa165288.jpg', '', 7.00, 257);
INSERT INTO `meituan_goods` VALUES (2524, '烤鱼丸/2串', 'http://p0.meituan.net/xianfudwm/88a41ca7fc836d0c2e5081f26760fbbd175388.jpg', '', 6.90, 257);
INSERT INTO `meituan_goods` VALUES (2525, '烤虾丸/2串', 'http://p1.meituan.net/xianfudwm/879cd470e4ae80f5c82ab83d5870492f147281.jpg', '', 6.90, 257);
INSERT INTO `meituan_goods` VALUES (2526, '烤面筋/串', 'http://p0.meituan.net/xianfudwm/6ebcea7392f29e854eb1f8e4075cbcb8195310.jpg', '岳阳大串烧烤', 4.90, 257);
INSERT INTO `meituan_goods` VALUES (2527, '烤玉米肠/3串', 'http://p0.meituan.net/xianfudwm/d9366a515fa9bd23d4e33713b033a141137104.jpg', '', 15.90, 257);
INSERT INTO `meituan_goods` VALUES (2528, '烤手工肉肠3串', 'http://p0.meituan.net/xianfu/73a4c7e721da59bc4baf6e612de93e6975776.jpg', '', 12.00, 257);
INSERT INTO `meituan_goods` VALUES (2529, '烤鸡皮半手', 'http://p1.meituan.net/xianfudwm/4075fddc829e5f63153931497a14c28d182471.jpg', '', 25.00, 257);
INSERT INTO `meituan_goods` VALUES (2530, '烤奶油馒头3串', 'http://p1.meituan.net/xianfu/5bf111f6c84c0c831f90031358c9c2bd377023.jpg', '', 9.90, 257);
INSERT INTO `meituan_goods` VALUES (2531, '碳烤大鱿鱼/条', 'http://p0.meituan.net/xianfudwm/256c550cd52db2cd05f99fe1858ed2d5139765.jpg', '', 13.50, 257);
INSERT INTO `meituan_goods` VALUES (2532, '碳烤翅中/一对', 'http://p1.meituan.net/xianfudwm/820ad85a51940e2bd8365d1b03389891163671.jpg', '', 7.00, 257);
INSERT INTO `meituan_goods` VALUES (2533, '碳烤羊排/一份', 'http://p0.meituan.net/xianfudwm/0ec47cc90600b50fad4141ca60de1b89237469.jpg', '', 81.00, 257);
INSERT INTO `meituan_goods` VALUES (2534, '碳烤羊排/串', 'http://p0.meituan.net/xianfudwm/ed46b89e23f7d6f903e08556439a5dd3202393.jpg', '选用优质羊排 ，专业水准为您烹制', 13.80, 257);
INSERT INTO `meituan_goods` VALUES (2535, '碳烤大生蚝/半打', 'http://p0.meituan.net/xianfudwm/e85c15abb1e48a85b40ce28a5532efa3157961.jpg', '半打是六只', 38.00, 257);
INSERT INTO `meituan_goods` VALUES (2536, '烤扇贝/半打', 'http://p1.meituan.net/xianfudwm/f67fa29eedd9c4a668fad30858a66a08144168.jpg', '半打是六只', 35.00, 257);
INSERT INTO `meituan_goods` VALUES (2537, '烤牛油/半手', 'http://p0.meituan.net/xianfudwm/e28dd5d833bad1b3c8864c3d3e060b25134221.jpg', '', 11.25, 257);
INSERT INTO `meituan_goods` VALUES (2538, '烤黄牛肉/半手', 'http://p1.meituan.net/xianfudwm/71d6b6ecf0ffa791855f904cd212f88e205400.jpg', '', 9.90, 257);
INSERT INTO `meituan_goods` VALUES (2539, '烤五花肉/半手', 'http://p1.meituan.net/xianfudwm/08bb047436abd74ea302bf08d4aa5330194872.jpg', '', 9.80, 257);
INSERT INTO `meituan_goods` VALUES (2540, '烤韭菜/份', 'http://p0.meituan.net/xianfudwm/22704695d9b4c8ce4d291d84492dec8a198818.jpg', '', 9.00, 257);
INSERT INTO `meituan_goods` VALUES (2541, '烤蒜蓉茄子', 'http://p0.meituan.net/xianfudwm/c18bdc4b459da0a509140e79c2e6cacd210979.jpg', '', 8.80, 257);
INSERT INTO `meituan_goods` VALUES (2542, '碳烤大生蚝/2只', 'http://p0.meituan.net/xianfudwm/a635383c720e700538dcae37ce2399ff153222.jpg', '', 12.80, 257);
INSERT INTO `meituan_goods` VALUES (2543, '碳烤鸡翅/个', 'http://p0.meituan.net/xianfudwm/fe7d6249904647ba5bb87f60f3fb975d161372.jpg', '岳阳大串烧烤', 6.00, 257);
INSERT INTO `meituan_goods` VALUES (2544, '碳烤小羊肉/半手', 'http://p1.meituan.net/wmproductdwm/f6c1f83f7486a652ce76df2babd7e72d253712.jpg', '岳阳大串烧烤', 13.90, 257);
INSERT INTO `meituan_goods` VALUES (2545, '烤排骨/串', 'http://p1.meituan.net/xianfudwm/8386cb1281496c74993a0407aaf6825a217294.jpg', '', 5.00, 257);
INSERT INTO `meituan_goods` VALUES (2546, '烤扇贝2只', 'http://p1.meituan.net/xianfudwm/4746250e3bb70f336b7a460da75d08fd125595.jpg', '', 16.00, 257);
INSERT INTO `meituan_goods` VALUES (2547, '烤千叶豆腐3串', 'http://p0.meituan.net/xianfu/e5c48bf226d0ac54a997575c0ed7a198404157.jpg', '', 12.00, 257);
INSERT INTO `meituan_goods` VALUES (2548, '碳烤鱿鱼须/半手', 'http://p0.meituan.net/wmproductdwm/49f5932e84ae1d838b55e960676a8f83205678.jpg', '', 18.75, 257);
INSERT INTO `meituan_goods` VALUES (2549, '烤大红椒', 'http://p0.meituan.net/wmproduct/d7943159c144373b96b1e8421026eead796062.jpg', '', 5.00, 258);
INSERT INTO `meituan_goods` VALUES (2550, '烤韭菜/5串', 'http://p0.meituan.net/xianfudwm/8ff2c0c2c70034d1cf6331c4d55d0cdb175470.jpg', '', 15.00, 258);
INSERT INTO `meituan_goods` VALUES (2551, '烤黄瓜', 'http://p0.meituan.net/xianfudwm/3d57b5bbbf6657e0dab58a46a4350c8a599804.jpg', '', 15.00, 258);
INSERT INTO `meituan_goods` VALUES (2552, '烤土豆片/五串', 'http://p1.meituan.net/xianfudwm/492e5beb8d4e36a6949ab25a5a341d50222187.jpg', '', 15.00, 258);
INSERT INTO `meituan_goods` VALUES (2553, '烤玉米', 'http://p1.meituan.net/xianfudwm/848f16a0b1686ad6c46940364310c008155271.jpg', '香香甜甜的甜玉米', 10.00, 258);
INSERT INTO `meituan_goods` VALUES (2554, '烤四季豆/五串', 'http://p0.meituan.net/wmproductdwm/09d490e025b2301d380f396cfef54a52104371.jpg', '', 15.00, 258);
INSERT INTO `meituan_goods` VALUES (2555, '老长沙锅饺8个/份', 'http://p0.meituan.net/wmproduct/acbf147fb25f2c7c7e6e02ce5aa83b38456254.jpg', '', 9.90, 259);
INSERT INTO `meituan_goods` VALUES (2556, '白米饭', 'http://p1.meituan.net/xianfu/37e87ecdaac7ddb8fb631662cc41cfde241102.jpg', '', 2.00, 259);
INSERT INTO `meituan_goods` VALUES (2557, '黄金蛋炒粉', 'http://p0.meituan.net/xianfudwm/acaf20f2353cda0dda3dc449855ce815200295.jpg', '', 12.80, 259);
INSERT INTO `meituan_goods` VALUES (2558, '招牌蛋炒饭', 'http://p0.meituan.net/xianfudwm/75829cbaa6297713522ca37527a59162239187.jpg', '', 12.80, 259);
INSERT INTO `meituan_goods` VALUES (2559, '外婆菜炒饭', 'http://p1.meituan.net/wmproductdwm/c231e73c09a3f414f5759c7aa5b7d38b108585.jpg', '', 13.80, 259);
INSERT INTO `meituan_goods` VALUES (2560, '老干爹蛋炒饭', 'http://p0.meituan.net/xianfudwm/1637b7abd0ce04bc64f3021232a1e9d7170385.jpg', '', 13.80, 259);
INSERT INTO `meituan_goods` VALUES (2561, '酱油蛋炒饭', 'http://p1.meituan.net/xianfudwm/a070d768ec1a832409aa67cc3e1a3790142757.jpg', '', 12.80, 259);
INSERT INTO `meituan_goods` VALUES (2562, '酱卤毛豆', 'http://p0.meituan.net/wmproduct/32b1494b4d9e113c5b52b2891a0c3b60581201.jpg', '', 9.80, 260);
INSERT INTO `meituan_goods` VALUES (2563, '花生米', 'http://p1.meituan.net/xianfudwm/c133ebf092a123f24e2e03cc7bfbe87d183011.jpg', '', 14.00, 260);
INSERT INTO `meituan_goods` VALUES (2564, '凉拌皮蛋', 'http://p0.meituan.net/xianfu/919d3babc22a5fc403849e945136ee4763488.jpg', '', 18.00, 260);
INSERT INTO `meituan_goods` VALUES (2565, '芥末黄瓜', 'http://p0.meituan.net/xianfudwm/9ce0631ac01074ab4a2932ceedf00476162002.jpg', '', 16.00, 260);
INSERT INTO `meituan_goods` VALUES (2566, '凉拌黄瓜', 'http://p0.meituan.net/xianfudwm/b232e497f07bd8b2dea9d9b09706a5c1192997.jpg', '', 16.00, 260);
INSERT INTO `meituan_goods` VALUES (2567, '凉拌豆笋', 'http://p1.meituan.net/xianfudwm/d3a59211e163be35e3b070c6c7c3c3bc182665.jpg', '', 18.00, 260);
INSERT INTO `meituan_goods` VALUES (2568, '凉拌西红柿', 'http://p0.meituan.net/xianfudwm/422986cb4b44aa8e3ccc8ec077475378125346.jpg', '', 16.00, 260);
INSERT INTO `meituan_goods` VALUES (2569, '特色虾尾（60个）+口味花甲+清水面+王老吉2份', 'http://p0.meituan.net/xianfudwm/bc06684e3570c323f2fdbb20634cd0af144853.jpg', '', 118.00, 261);
INSERT INTO `meituan_goods` VALUES (2570, '虾尾60颗+牛油一手+牛肉一手+蒜蓉茄子', 'http://p0.meituan.net/xianfudwm/bc06684e3570c323f2fdbb20634cd0af144853.jpg', '', 138.00, 261);
INSERT INTO `meituan_goods` VALUES (2571, '500ml青岛啤酒', 'http://p1.meituan.net/xianfu/7fb0c96de9d9688a8e83fa8f95f03068146663.jpg', '', 8.00, 262);
INSERT INTO `meituan_goods` VALUES (2572, '怡宝', 'http://p0.meituan.net/xianfudwm/d81d8f35099b477871a59fdbbf65116785656.jpg', '单点不送', 2.00, 262);
INSERT INTO `meituan_goods` VALUES (2573, '百威啤酒', 'http://p0.meituan.net/xianfudwm/735d524f66ac949916aa8303b3e816db133505.jpg', '单点不送', 7.20, 262);
INSERT INTO `meituan_goods` VALUES (2574, '哈尔滨啤酒', 'http://p1.meituan.net/xianfudwm/00b0cb41608ce92e1a8e99016be06bf1222746.jpg', '单点不送', 6.80, 262);
INSERT INTO `meituan_goods` VALUES (2575, '小郎酒', 'http://p0.meituan.net/wmproductdwm/04a88852ece6645560ca59d9ff6d930992280.jpg', '', 16.20, 262);
INSERT INTO `meituan_goods` VALUES (2576, '青岛', 'http://p0.meituan.net/xianfudwm/02b617f21c8443849459d19f903f1d14191711.jpg', '单点不送', 6.40, 262);
INSERT INTO `meituan_goods` VALUES (2577, '小劲酒', 'http://p0.meituan.net/xianfudwm/1564db95df33622f706a9872dcf6b8fa75619.jpg', '单点不送', 14.40, 262);
INSERT INTO `meituan_goods` VALUES (2578, '百事可乐', 'http://p1.meituan.net/xianfu/03d2d1130f9eaf386f9bd621fb9e6843287429.jpg', '单点不送', 4.80, 262);
INSERT INTO `meituan_goods` VALUES (2579, '王老吉', 'http://p0.meituan.net/xianfu/72e23fdb7fff9922298d9c772fbe4226158059.jpg', '单点不送', 4.80, 262);
INSERT INTO `meituan_goods` VALUES (2580, '雪碧', 'http://p0.meituan.net/xianfu/30f7d2606c7897d93de2b59a42759dc6309222.jpg', '单点不送', 4.80, 262);
INSERT INTO `meituan_goods` VALUES (2581, '下单金额98元送随机饮料一份', 'http://p0.meituan.net/xianfu/06468905f9bafe5d3cbc0f85ab000744464800.jpg', '', 99.00, 262);
INSERT INTO `meituan_goods` VALUES (2582, '口味虾大份+口味花甲+唆螺+百威两瓶套餐', 'http://p1.meituan.net/xianfudwm/337cf3a6fe394f5acb6e5b290b9aa73b191800.jpg', '', 234.00, 263);
INSERT INTO `meituan_goods` VALUES (2583, '口味虾中份+特色虾尾+凉拌黄瓜+百威2瓶', 'http://p0.meituan.net/xianfudwm/6fc67da6bbe13f1023d30570b32e4a6b232368.jpg', '', 260.00, 263);
INSERT INTO `meituan_goods` VALUES (2584, '口味虾+口味花甲+三码头唆螺+花生米', 'http://p1.meituan.net/xianfudwm/ab372394132156a02b903006da23b0f9172817.jpg', '', 152.00, 263);
INSERT INTO `meituan_goods` VALUES (2585, '口味虾+牛油一手+生蚝六只', 'http://p1.meituan.net/xianfudwm/f274a87b152466aead63d4277812d245192404.jpg', '', 118.00, 263);
INSERT INTO `meituan_goods` VALUES (2586, '蒜香茄子', 'http://p1.meituan.net/xianfu/3661ac65fc7b972268ab5dd2b805b4dd320642.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2587, '拍黄瓜', 'http://p1.meituan.net/xianfu/96fab77d7ba44dc2ab6e6309b061280c350899.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2588, '凉拌皮蛋', 'http://p1.meituan.net/xianfu/46b3f4bff024662dbbef48ee8eade8d4395607.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2589, '冰镇蒜香鸡蛋干', 'http://p1.meituan.net/wmproduct/5fc5b525253e59422e3a77946db6f007524814.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2590, '鱿鱼须（3串）', 'http://p1.meituan.net/xianfu/05a29fe188550cba44db98a52a2a2ccb391626.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2591, '芥末黄瓜', 'http://p1.meituan.net/xianfudwm/82c867c1d614352d03b2cc34af39dcdf103835.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2592, '脆骨（5串）', 'http://p1.meituan.net/xianfudwm/7101310d37fd954e0c2b2ce96be03515222617.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2593, '里脊肉（5串）', 'http://p1.meituan.net/xianfudwm/119a1844a85ba6f8fd72a0dfdd2eb9c7199871.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2594, '牛油（5串）', 'http://p0.meituan.net/xianfudwm/b929889c6b602767792b3407521799d3195364.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2595, '鸡胗（5串）', 'http://p0.meituan.net/xianfu/35b92cbdfbd381d3f525d34e9b5fb274352727.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2596, '五花肉（5串）', 'http://p0.meituan.net/xianfudwm/7949ca893efea10eec5d226bc4d09d67202961.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2597, '羊肉（5串）', 'http://p0.meituan.net/xianfudwm/393c515a94993cf22eb6566a27e001c6205870.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2598, '牛肉（5串）', 'http://p1.meituan.net/xianfudwm/45f9589e277c36e663378c08805c7920182091.jpg', '', 20.00, 264);
INSERT INTO `meituan_goods` VALUES (2599, '不要放葱', 'http://p1.meituan.net/xianfudwm/fd15d1cae00a654942decc8b8b69b4f5199774.jpg', '', 0.00, 265);
INSERT INTO `meituan_goods` VALUES (2600, '酒水饮料要冰', 'http://p0.meituan.net/xianfudwm/c904a3426f4b471b72ab0a17f701c071138387.jpg', '', 0.00, 265);
INSERT INTO `meituan_goods` VALUES (2601, '我要超级辣', 'http://p1.meituan.net/xianfudwm/8f231a25fb4218ae0f68d0a8c2a4fb4b138685.jpg', '', 0.00, 265);
INSERT INTO `meituan_goods` VALUES (2602, '放微微辣', 'http://p1.meituan.net/xianfudwm/8f231a25fb4218ae0f68d0a8c2a4fb4b138685.jpg', '', 0.00, 265);
INSERT INTO `meituan_goods` VALUES (2603, '不要放辣', 'http://p0.meituan.net/xianfu/a53b2429fef246f961c7913f0d52f7ce23867.jpg', '', 0.00, 265);
INSERT INTO `meituan_goods` VALUES (2604, '漏餐和疑问提示', 'http://p0.meituan.net/wmproductdwm/d34febeb8fa8a508267ed0a2067c73c2121129.jpg', '您好！如果出现漏餐和别的疑问，请先联系我们不要急于评价哦，我们一定会在第一时间帮您解决问题，联系电话13637424301，祝您2019好运连连！', 0.00, 266);
INSERT INTO `meituan_goods` VALUES (2605, '折扣满减不能同享', 'http://p1.meituan.net/wmproductdwm/06d8e7db21b9e4729dc212f27bd7917490372.jpg', '折扣和满减别搞混合了，因为折扣和满减不能同享', 0.00, 266);
INSERT INTO `meituan_goods` VALUES (2606, '牛肉拉面', 'http://p0.meituan.net/xianfudwm/c3bac30d3873ff384155f480f36877b8236341.jpg', '', 15.00, 267);
INSERT INTO `meituan_goods` VALUES (2607, '牛肉炒拉面', 'http://p0.meituan.net/xianfudwm/3a6e1b1069cfd4473cbdf0291e4f96be218538.jpg', '', 18.00, 267);
INSERT INTO `meituan_goods` VALUES (2608, '牛肉炒刀削面', 'http://p1.meituan.net/xianfudwm/c068f4f978bb0e17c1eeb75daccdf2ef354412.jpg', '', 18.00, 267);
INSERT INTO `meituan_goods` VALUES (2609, '鸡蛋炒拉面', 'http://p1.meituan.net/xianfudwm/61a4f68ffedacaed8a0e3ff16bbd55fe174571.jpg', '', 18.00, 267);
INSERT INTO `meituan_goods` VALUES (2610, '红烧牛肉面', 'http://p1.meituan.net/xianfudwm/3026d5291457d583fbe83e7078f8d2fe230992.jpg', '', 28.00, 267);
INSERT INTO `meituan_goods` VALUES (2611, '鸡蛋炒刀削面', 'http://p1.meituan.net/xianfudwm/cfeec9f57c0ebf49450dd3e16332299f177895.jpg', '', 18.00, 267);
INSERT INTO `meituan_goods` VALUES (2612, '牛肉刀削面', 'http://p1.meituan.net/xianfudwm/a56935d577ba001efd7c4414c427f2b9159081.jpg', '', 15.00, 267);
INSERT INTO `meituan_goods` VALUES (2613, '青菜拉面', 'http://p0.meituan.net/xianfudwm/cf1f040346721a0d1106d75800297c6f173648.jpg', '', 15.00, 267);
INSERT INTO `meituan_goods` VALUES (2614, '青菜刀削面', 'http://p1.meituan.net/xianfudwm/1410540dfe9c5e71521dceecd367bdc1113666.jpg', '', 15.00, 267);
INSERT INTO `meituan_goods` VALUES (2615, '新疆拌面', 'http://p1.meituan.net/xianfudwm/02f759d83dbc9c5a7343e404d59454b9210049.jpg', '', 28.00, 267);
INSERT INTO `meituan_goods` VALUES (2616, '鸡蛋拉面', 'http://p0.meituan.net/xianfudwm/6870f5956927fbb92b9a9acd76c23545147515.jpg', '', 15.00, 267);
INSERT INTO `meituan_goods` VALUES (2617, '鸡蛋刀削面', 'http://p0.meituan.net/xianfudwm/0e973a67a6bf3685d2f90f2df0322e2e136616.jpg', '', 15.00, 267);
INSERT INTO `meituan_goods` VALUES (2618, '葱油拌面', 'http://p1.meituan.net/xianfudwm/cd4b6de70f3c1c5538415dda5271754d228430.jpg', '', 15.00, 267);
INSERT INTO `meituan_goods` VALUES (2619, '牛肉凉面', 'http://p1.meituan.net/wmproductdwm/2b13c126a50e0d4d2c8ffb04c6e48141139433.jpg', '', 16.00, 267);
INSERT INTO `meituan_goods` VALUES (2620, '羊肉拉面', 'http://p1.meituan.net/xianfudwm/25be3d77230cb2b213689c5e48ae5d9a160116.jpg', '', 18.00, 267);
INSERT INTO `meituan_goods` VALUES (2621, '羊肉刀削面', 'http://p1.meituan.net/xianfudwm/f8c9425e7473ab8f853d322c503ca4d8186864.jpg', '', 18.00, 267);
INSERT INTO `meituan_goods` VALUES (2622, '牛肉干拌面', 'http://p1.meituan.net/xianfudwm/3a643d0b4a45ab9816a5bb2e46c29636138988.jpg', '', 18.00, 267);
INSERT INTO `meituan_goods` VALUES (2623, '牛肉炸酱面', 'http://p1.meituan.net/wmproductdwm/f280f43efbdf7329e5bc6b7c7c98e077112661.jpg', '', 18.00, 267);
INSERT INTO `meituan_goods` VALUES (2624, '红烧牛肉刀削面', 'http://p0.meituan.net/wmproductdwm/27a4e5f9122f3952601e2e2cfe279507144494.jpg', '', 28.00, 267);
INSERT INTO `meituan_goods` VALUES (2625, '牛肉烩面片', 'http://p0.meituan.net/xianfudwm/afa46eab3641e14eef85edabc05c88bc160695.jpg', '', 28.00, 267);
INSERT INTO `meituan_goods` VALUES (2626, '牛肉烩面', 'http://p1.meituan.net/wmproductdwm/74cf5ee2ac6297122ac21ba3b30e761f986809.jpg', '', 28.00, 267);
INSERT INTO `meituan_goods` VALUES (2627, '牛肉泡馍', 'http://p0.meituan.net/xianfudwm/d7dcf22ee9f9a0671473acec33dde759140370.jpg', '', 28.00, 267);
INSERT INTO `meituan_goods` VALUES (2628, '羊肉泡馍', 'http://p0.meituan.net/xianfudwm/6b35460523799a21c4aa7deabcbf34fd174443.jpg', '', 28.00, 267);
INSERT INTO `meituan_goods` VALUES (2629, '牛肉炒面片', 'http://p1.meituan.net/wmproductdwm/cf08424c86d844913747eb62b2b9ea95146232.jpg', '', 28.00, 267);
INSERT INTO `meituan_goods` VALUES (2630, '土豆烧牛肉盖面', 'http://p1.meituan.net/wmproductdwm/620d0fc05d284b7c9e20ab3dda65430c110438.jpg', '土豆 青椒 牛肉', 18.00, 268);
INSERT INTO `meituan_goods` VALUES (2631, '蘑菇炒牛肉盖面', 'http://p0.meituan.net/wmproductdwm/2916d96b72d1039cdbca82f5a1b3d9ca115802.jpg', '蘑菇 青椒 牛肉', 18.00, 268);
INSERT INTO `meituan_goods` VALUES (2632, '酸辣白菜盖面', 'http://p1.meituan.net/wmproductdwm/5bf76b58703d58d7f9c8934e8d0593751019078.jpg', '辣椒 白菜', 17.00, 268);
INSERT INTO `meituan_goods` VALUES (2633, '茄子牛肉盖面', 'http://p1.meituan.net/xianfudwm/c4d5c7478ed7f8dcedea3ff557b2f8ce151898.jpg', '茄子 青椒 牛肉', 18.00, 268);
INSERT INTO `meituan_goods` VALUES (2634, '青椒炒牛肉盖面', 'http://p0.meituan.net/wmproductdwm/b365dfc69ea6d96e6b70e257d932914a116944.jpg', '青椒 牛肉', 18.00, 268);
INSERT INTO `meituan_goods` VALUES (2635, '西芹炒蛋盖面', 'http://p1.meituan.net/xianfudwm/96227b09d427d19c15836a18250091bc135200.jpg', '西芹 青椒 牛肉', 17.00, 268);
INSERT INTO `meituan_goods` VALUES (2636, '木耳炒牛肉盖面', 'http://p1.meituan.net/wmproductdwm/94a478d96ba045eae13adeeedaeecee7113783.jpg', '木耳 青椒 牛肉', 18.00, 268);
INSERT INTO `meituan_goods` VALUES (2637, '青椒炒蛋盖面', 'http://p1.meituan.net/xianfudwm/c33a72c4a61cad1f053a5d908a56a73e182527.jpg', '青椒 鸡蛋', 17.00, 268);
INSERT INTO `meituan_goods` VALUES (2638, '番茄炒蛋盖面', 'http://p1.meituan.net/wmproductdwm/3c5d40fb6261cc7d380923449b99051b1118803.jpg', '西红柿 鸡蛋 上海青', 17.00, 268);
INSERT INTO `meituan_goods` VALUES (2639, '香干牛肉盖面', 'http://p1.meituan.net/xianfudwm/da137a3fbea32a0701ddce60df419d74174219.jpg', '香干 青椒 牛肉', 18.00, 268);
INSERT INTO `meituan_goods` VALUES (2640, '蒜苔炒牛肉盖面', 'http://p1.meituan.net/wmproductdwm/4ae60094f3250bbddd9f109b2a9c7ea0117705.jpg', '蒜苔 青椒 牛肉', 18.00, 268);
INSERT INTO `meituan_goods` VALUES (2641, '洋葱炒牛肉盖面', 'http://p1.meituan.net/wmproductdwm/7d78f8688e8dcd62b70b6021267fbcaa116487.jpg', '洋葱 青椒 牛肉', 18.00, 268);
INSERT INTO `meituan_goods` VALUES (2642, '西芹炒牛肉盖面', 'http://p1.meituan.net/xianfudwm/47d9d867779dc517ab28c41cf5a83832107142.jpg', '西芹 青椒 牛肉', 18.00, 268);
INSERT INTO `meituan_goods` VALUES (2643, '红烧牛肉盖面', 'http://p0.meituan.net/wmproductdwm/098a394b6f8adf2354098ead8c3194de108619.jpg', '洋葱 青红椒 上海青 牛肉', 28.00, 268);
INSERT INTO `meituan_goods` VALUES (2644, '红烧鸡块盖面', 'http://p0.meituan.net/wmproductdwm/0433eb568fc384ea8180f7f661101f19101942.jpg', '洋葱 青红椒 上海青 鸡肉', 28.00, 268);
INSERT INTO `meituan_goods` VALUES (2645, '葱爆牛肉盖面', 'http://p1.meituan.net/wmproductdwm/1a5609c129e789c349aa0a878aa61844111307.jpg', '大葱 羊肉', 28.00, 268);
INSERT INTO `meituan_goods` VALUES (2646, '葱爆羊肉盖面', 'http://p1.meituan.net/wmproductdwm/1a5609c129e789c349aa0a878aa61844111307.jpg', '大葱 牛肉', 28.00, 268);
INSERT INTO `meituan_goods` VALUES (2647, '孜然牛肉盖面', 'http://p0.meituan.net/wmproductdwm/3da36da1c71b2ff2e5203790d12d8e1b124269.jpg', '孜然 洋葱 青椒 牛肉', 28.00, 268);
INSERT INTO `meituan_goods` VALUES (2648, '孜然羊肉盖面', 'http://p0.meituan.net/wmproductdwm/3da36da1c71b2ff2e5203790d12d8e1b124269.jpg', '孜然 洋葱 青椒 羊肉', 28.00, 268);
INSERT INTO `meituan_goods` VALUES (2649, '青椒土豆丝盖饭', 'http://p1.meituan.net/xianfudwm/3e77ba23f27644b2bd21f9b82468ff9b136346.jpg', '', 16.00, 269);
INSERT INTO `meituan_goods` VALUES (2650, '青椒炒蛋盖饭', 'http://p0.meituan.net/xianfudwm/667eba4ea3fe2625e6e1f893c52c6aad178398.jpg', '', 16.00, 269);
INSERT INTO `meituan_goods` VALUES (2651, '红烧牛肉盖饭', 'http://p1.meituan.net/xianfudwm/d0cf328739079be64eca46d5900095e5182465.jpg', '洋葱 青红椒 上海青 牛肉', 28.00, 269);
INSERT INTO `meituan_goods` VALUES (2652, '土豆烧牛肉盖饭', 'http://p0.meituan.net/wmproductdwm/a06c5d42cac6af8ed7b3b8edfe437e651062049.jpg', '土豆 青椒 牛肉', 17.00, 269);
INSERT INTO `meituan_goods` VALUES (2653, '西芹炒蛋盖饭', 'http://p0.meituan.net/xianfudwm/f63c05b04404c5a30a16cbca8242a3aa125332.jpg', '西芹 青椒 牛肉', 16.00, 269);
INSERT INTO `meituan_goods` VALUES (2654, '番茄炒蛋盖饭', 'http://p1.meituan.net/xianfudwm/03710581f225b2040d558b0e79016fd6173110.jpg', '西红柿 鸡蛋', 16.00, 269);
INSERT INTO `meituan_goods` VALUES (2655, '酸辣白菜盖饭', 'http://p0.meituan.net/xianfudwm/62cac4e6d8caf35dfb0e6a5781680ea7169954.jpg', '白菜 辣椒', 16.00, 269);
INSERT INTO `meituan_goods` VALUES (2656, '洋葱炒牛肉盖饭', 'http://p0.meituan.net/xianfudwm/3c0ecb8ed4408962a597bd1f88dbc162169359.jpg', '洋葱 青椒 牛肉', 17.00, 269);
INSERT INTO `meituan_goods` VALUES (2657, '青椒炒牛肉盖饭', 'http://p1.meituan.net/xianfudwm/a45a23b75cee27463787b34d3fc428a8165037.jpg', '青椒 牛肉', 17.00, 269);
INSERT INTO `meituan_goods` VALUES (2658, '蒜苔炒牛肉盖饭', 'http://p1.meituan.net/xianfudwm/13bceb69e377c96ca24ba40d3ad9271d184043.jpg', '蒜苔 青椒 牛肉', 17.00, 269);
INSERT INTO `meituan_goods` VALUES (2659, '蘑菇炒牛肉盖饭', 'http://p1.meituan.net/xianfudwm/b755a63f082ef6b85fbc280c7dae3519166147.jpg', '蘑菇 青椒 牛肉', 17.00, 269);
INSERT INTO `meituan_goods` VALUES (2660, '茄子炒牛肉盖饭', 'http://p1.meituan.net/xianfudwm/58e6edb809360d2271bcb758a072cdae225544.jpg', '茄子 青椒 牛肉', 17.00, 269);
INSERT INTO `meituan_goods` VALUES (2661, '木耳炒牛肉盖饭', 'http://p1.meituan.net/xianfudwm/8e5f75f1700c69ddbe5725f08a1a421d166837.jpg', '木耳 青椒 牛肉', 17.00, 269);
INSERT INTO `meituan_goods` VALUES (2662, '香干炒牛肉盖饭', 'http://p1.meituan.net/xianfudwm/cf331d79a0eeb8438cd33322ba434c7d179017.jpg', '香干 青椒 牛肉', 17.00, 269);
INSERT INTO `meituan_goods` VALUES (2663, '葱爆牛肉盖饭', 'http://p0.meituan.net/xianfudwm/9aa6e72654346ba599e8c0c79de97a99159425.jpg', '大葱 牛肉', 28.00, 269);
INSERT INTO `meituan_goods` VALUES (2664, '西芹炒牛肉盖饭', 'http://p1.meituan.net/xianfudwm/17ec91533c45aa0444d396f3209cabb2128487.jpg', '西芹 青椒 牛肉', 17.00, 269);
INSERT INTO `meituan_goods` VALUES (2665, '红烧鸡块盖饭', 'http://p0.meituan.net/xianfudwm/18c6373f13af4e38abfb3dc8a8bbb6d2169268.jpg', '洋葱 青红椒 上海青 鸡肉', 28.00, 269);
INSERT INTO `meituan_goods` VALUES (2666, '葱爆羊肉盖饭', 'http://p1.meituan.net/xianfudwm/3017e44728c77d8a8fc7cf13c6138f87167623.jpg', '大葱 羊肉', 28.00, 269);
INSERT INTO `meituan_goods` VALUES (2667, '孜然牛肉盖饭', 'http://p0.meituan.net/xianfudwm/2bc1f1ad1712432c1536a6702f4cdecd180598.jpg', '孜然 洋葱 青椒 牛肉', 28.00, 269);
INSERT INTO `meituan_goods` VALUES (2668, '孜然羊肉盖饭', 'http://p0.meituan.net/xianfudwm/8f48fbff467e074b0efe03806257b621161267.jpg', '孜然 洋葱 青椒 羊肉', 28.00, 269);
INSERT INTO `meituan_goods` VALUES (2669, '兰州炒饭', 'http://p1.meituan.net/xianfudwm/78648646f82c5ef293dece9cf87cb56f146800.jpg', '红萝卜 包菜 鸡蛋 牛肉', 16.00, 270);
INSERT INTO `meituan_goods` VALUES (2670, '羊肉炒饭', 'http://p0.meituan.net/xianfudwm/805a04c7fc1fe5a179e1398ff73db0ea144272.jpg', '红萝卜 包菜 羊肉', 16.00, 270);
INSERT INTO `meituan_goods` VALUES (2671, '牛肉炒饭', 'http://p0.meituan.net/xianfudwm/6b7ad912f2a08d0e2919ac50520fdb0d131402.jpg', '红萝卜 包菜 牛肉', 14.00, 270);
INSERT INTO `meituan_goods` VALUES (2672, '咖喱蛋炒饭', 'http://p0.meituan.net/xianfudwm/b43aeb0d3e747b68ca402bd21b1797f9161858.jpg', '红萝卜 包菜 咖喱 鸡蛋', 16.00, 270);
INSERT INTO `meituan_goods` VALUES (2673, '蛋炒饭', 'http://p1.meituan.net/xianfudwm/4e7249963a0922c79b228b3f9e85fd8d189971.jpg', '红萝卜 包菜 鸡蛋', 12.00, 270);
INSERT INTO `meituan_goods` VALUES (2674, '牛肉水饺', 'http://p0.meituan.net/xianfudwm/7f685d67b0ae2efbd5c94030d6fe6811140990.jpg', '大葱 牛肉', 18.00, 271);
INSERT INTO `meituan_goods` VALUES (2675, '牛肉汤', 'http://p1.meituan.net/xianfudwm/e9ef094f92b0f4eda9fb0ce0e933de39167871.jpg', '上海青 牛肉', 18.00, 272);
INSERT INTO `meituan_goods` VALUES (2676, '西红柿蛋汤', 'http://p0.meituan.net/xianfudwm/223c1bfa95ca18935dbc8ebc44d729fc117421.jpg', '西红柿 上海青 鸡蛋', 18.00, 272);
INSERT INTO `meituan_goods` VALUES (2677, '羊肉汤', 'http://p0.meituan.net/xianfudwm/79c8c3d02ab1636177740dd0f31c10fd224143.jpg', '上海青 羊肉', 28.00, 272);
INSERT INTO `meituan_goods` VALUES (2678, '牛肉粉丝汤', 'http://p0.meituan.net/xianfudwm/f9131a7e114485967181a57b9e6b739e168169.jpg', '白菜 西红柿 蘑菇 木耳 粉丝 牛肉', 18.00, 272);
INSERT INTO `meituan_goods` VALUES (2679, '凉拌牛肉', 'http://p0.meituan.net/xianfudwm/cdae021141d5d987d8fddb5ec48bf988250112.jpg', '青红椒  洋葱  牛肉', 68.00, 273);
INSERT INTO `meituan_goods` VALUES (2680, '老虎菜', 'http://p0.meituan.net/xianfudwm/b869d081b129ffd9df0de0818f515ea9153493.jpg', '洋葱 青椒 西红柿', 18.00, 273);
INSERT INTO `meituan_goods` VALUES (2681, '凉拌木耳', 'http://p1.meituan.net/xianfudwm/cb5f4b99c25885cbb4fca12e58961e24175019.jpg', '木耳 青红椒', 18.00, 273);
INSERT INTO `meituan_goods` VALUES (2682, '凉拌土豆丝', 'http://p1.meituan.net/xianfudwm/aee8b9c06b3994204fb3d6c918bf4483194165.jpg', '土豆丝 青椒', 18.00, 273);
INSERT INTO `meituan_goods` VALUES (2683, '凉拌黄瓜', 'http://p0.meituan.net/xianfudwm/fcabaf9ca27b7366d9c7fb3760f4ea07137273.jpg', '黄瓜 辣椒', 18.00, 273);
INSERT INTO `meituan_goods` VALUES (2684, '凉拌西红柿', 'http://p0.meituan.net/xianfudwm/f538c85ba1f0f5b357e963b2992f7f5a185857.jpg', '西红柿 糖', 18.00, 273);
INSERT INTO `meituan_goods` VALUES (2685, '凉拌三丝', 'http://p0.meituan.net/xianfudwm/a4222b4f6ed4cfc9a34d833f15e67b37176340.jpg', '红萝卜 青椒 粉丝', 18.00, 273);
INSERT INTO `meituan_goods` VALUES (2686, '土豆烧牛肉', 'http://p0.meituan.net/xianfudwm/6372d42e262e9aaa712154c97e3673d2173389.jpg', '土豆 青红椒 洋葱 牛肉  送饭', 55.00, 274);
INSERT INTO `meituan_goods` VALUES (2687, '孜然牛肉', 'http://p1.meituan.net/xianfudwm/ad791a54fe869be64a77e9d22702a51d179860.jpg', '青椒 洋葱 牛肉 送饭', 55.00, 274);
INSERT INTO `meituan_goods` VALUES (2688, '孜然羊肉', 'http://p0.meituan.net/xianfudwm/905c5010d4959850be7f42085c429a28191149.jpg', '', 60.00, 274);
INSERT INTO `meituan_goods` VALUES (2689, '红烧鸡块', 'http://p0.meituan.net/xianfudwm/55a46fb7e4f822965cb63cb1e074d7ba170311.jpg', '', 55.00, 274);
INSERT INTO `meituan_goods` VALUES (2690, '红烧牛肉', 'http://p0.meituan.net/xianfudwm/1eb5c99bbbdb2565ae23d183bbafd802187477.jpg', '', 55.00, 274);
INSERT INTO `meituan_goods` VALUES (2691, '牙签羊肉', 'http://p0.meituan.net/xianfudwm/ac6b123063f011ef45eb1ba151c0347c277959.jpg', '', 80.00, 274);
INSERT INTO `meituan_goods` VALUES (2692, '小盘鸡', 'http://p1.meituan.net/xianfudwm/0e0268d382345c00eff9493201eab9a2231005.jpg', '', 78.00, 274);
INSERT INTO `meituan_goods` VALUES (2693, '大盘鸡', 'http://p0.meituan.net/xianfudwm/6e39fc86776bfc290c6bd3c446c901f4182175.jpg', '', 108.00, 274);
INSERT INTO `meituan_goods` VALUES (2694, '木耳炒', 'http://p0.meituan.net/xianfudwm/3e4abd227c3e8bc3453a7df34b2d4cf4191666.jpg', '', 28.00, 274);
INSERT INTO `meituan_goods` VALUES (2695, '蘑菇炒牛肉', 'http://p1.meituan.net/xianfudwm/21d54e535b806fa5688726c9b565e993165297.jpg', '', 32.00, 274);
INSERT INTO `meituan_goods` VALUES (2696, '青椒土豆丝', 'http://p1.meituan.net/xianfudwm/6a348f3ab6dc25047f59695d82d1ca94148599.jpg', '', 22.00, 274);
INSERT INTO `meituan_goods` VALUES (2697, '手撕包菜', 'http://p0.meituan.net/xianfudwm/97f2fefd09bb76927a3541d4f026597d141792.jpg', '', 22.00, 274);
INSERT INTO `meituan_goods` VALUES (2698, '素炒青菜', 'http://p1.meituan.net/xianfudwm/128a96d3398333d40014d78cbebf00d1153998.jpg', '', 22.00, 274);
INSERT INTO `meituan_goods` VALUES (2699, '酸辣白菜', 'http://p0.meituan.net/xianfudwm/8a703694aa670b25121e152503ffd961153837.jpg', '', 22.00, 274);
INSERT INTO `meituan_goods` VALUES (2700, '青椒炒蛋', 'http://p1.meituan.net/xianfudwm/bd507e1eb9799f2f4ec1c7c2d2863117205830.jpg', '', 22.00, 274);
INSERT INTO `meituan_goods` VALUES (2701, '番茄炒蛋', 'http://p1.meituan.net/xianfudwm/924cb79f3be7e15433e098365eeb166e169056.jpg', '', 22.00, 274);
INSERT INTO `meituan_goods` VALUES (2702, '牛肉', 'http://p0.meituan.net/xianfudwm/0b078d38bf273997593b69820031321e147655.jpg', '', 15.00, 275);
INSERT INTO `meituan_goods` VALUES (2703, '卤牛肉', 'http://p0.meituan.net/xianfudwm/9b6ba46cdfd2126de6d6656008b07b00162138.jpg', '', 10.00, 276);
INSERT INTO `meituan_goods` VALUES (2704, '特色香肠', 'http://p1.meituan.net/xianfudwm/4cd869c4a839ed70c615142648bc440a222559.jpg', '', 4.00, 276);
INSERT INTO `meituan_goods` VALUES (2705, '碗筷', 'http://p0.meituan.net/wmproduct/888b524e66b93e708e69f6f3ce7dbf6a326787.jpg', '', 1.40, 276);
INSERT INTO `meituan_goods` VALUES (2706, '袋装螺鼎记螺蛳粉', 'http://p0.meituan.net/wmproductdwm/b86fe6d31f7db3c975e708362354fd50125216.jpg', '', 12.74, 276);
INSERT INTO `meituan_goods` VALUES (2707, '脆口木耳', 'http://p0.meituan.net/wmproductdwm/982381432c518e6eadf3c95268f1ab79243364.jpg', '', 4.00, 276);
INSERT INTO `meituan_goods` VALUES (2708, '美味卤蛋', 'http://p0.meituan.net/xianfudwm/19359cda5fb2ef2b38aea914743e61d6125018.jpg', '', 4.00, 276);
INSERT INTO `meituan_goods` VALUES (2709, '招牌林大螺蛳粉', 'http://p0.meituan.net/wmproductdwm/1860c19060dd525e3ffc58da40225c3c92055.jpg', '请备注好特辣，中辣，微辣，不辣', 12.00, 276);
INSERT INTO `meituan_goods` VALUES (2710, '美味鹌鹑蛋', 'http://p0.meituan.net/xianfudwm/30e06682993ccb1f997f7c26a2f7bfa090225.jpg', '4个', 4.00, 276);
INSERT INTO `meituan_goods` VALUES (2711, '香脆腐竹', 'http://p0.meituan.net/wmproductdwm/a6a98ab4b06eb4688dfd46cf1e2495c4131042.jpg', '', 4.00, 276);
INSERT INTO `meituan_goods` VALUES (2712, '开胃酸笋', 'http://p0.meituan.net/wmproductdwm/bf75fc489fc9bc801ef7aeaafc9cd0f7140212.jpg', '', 4.00, 276);
INSERT INTO `meituan_goods` VALUES (2713, '香脆花生', 'http://p1.meituan.net/wmproductdwm/a0258affcd401daa08f048ba90ffa914135545.jpg', '', 4.00, 276);
INSERT INTO `meituan_goods` VALUES (2714, '青菜', 'http://p1.meituan.net/wmproductdwm/224e129dd3d0d01b1c4d8341a4e6c560145660.jpg', '', 4.00, 276);
INSERT INTO `meituan_goods` VALUES (2715, '加粉', 'http://p0.meituan.net/wmproductdwm/e76a5414ee93bfc55c5076d26deafcd6113872.jpg', '', 2.80, 276);
INSERT INTO `meituan_goods` VALUES (2716, '特惠开胃套餐', 'http://p0.meituan.net/wmproductdwm/cedb7f39142da75be14d5796914dd5bc169602.jpg', '招牌螺蛳粉+鸡爪+酸笋+青菜+腐竹+维他奶', 32.00, 277);
INSERT INTO `meituan_goods` VALUES (2717, '特惠过瘾套餐', 'http://p0.meituan.net/wmproductdwm/2a20dfc0c57b0681b4eda2da7015bbc8181230.jpg', '招牌螺蛳粉+鸡爪+香肠+青菜+腐竹+维他奶', 32.00, 277);
INSERT INTO `meituan_goods` VALUES (2718, '特惠营养套餐', 'http://p0.meituan.net/wmproductdwm/e56d0b1a230e62249486109cfeb72836170168.jpg', '招牌螺蛳粉+鹌鹑蛋+鸡爪+青菜+油豆腐+维他奶', 31.00, 277);
INSERT INTO `meituan_goods` VALUES (2719, '特惠双人套餐', 'http://p1.meituan.net/wmproductdwm/ce430770894ba1e0ecc688cb80c08ae2167511.jpg', '招牌螺蛳粉2份+鸡爪2支+青菜2份+油豆腐2份+维他奶2瓶', 60.00, 277);
INSERT INTO `meituan_goods` VALUES (2720, '特惠全家福套餐', 'http://p1.meituan.net/wmproductdwm/594a16df24b5c5e0d5082f4d052a20f1194258.jpg', '招牌螺蛳粉+鹌鹑蛋+鸡爪+香肠+腐竹+油豆腐+酸笋+花生米+木耳+青菜', 45.00, 277);
INSERT INTO `meituan_goods` VALUES (2721, '绿豆沙冰', 'http://p0.meituan.net/wmproduct/e9a8d17b748f695b1321e8115d1b7120138688.jpg', '', 4.00, 278);
INSERT INTO `meituan_goods` VALUES (2722, '厅装百事可乐', 'http://p0.meituan.net/xianfudwm/fc900656bb3ee489c26e33e394818f84108398.jpg', '要冰的请备注', 4.00, 278);
INSERT INTO `meituan_goods` VALUES (2723, '王老吉', 'http://p0.meituan.net/xianfudwm/0121a007d9fcd462646adb406c4a195a152344.jpg', '', 4.00, 278);
INSERT INTO `meituan_goods` VALUES (2724, '怡宝纯净水', 'http://p0.meituan.net/xianfudwm/4d8a67f7acb15dae0cae0370586e346d165663.jpg', '', 2.64, 278);
INSERT INTO `meituan_goods` VALUES (2725, '盒装维他奶原味', 'http://p1.meituan.net/wmproductdwm/e5361c5b22a664cc1f20efb0fdfa91391454588.jpg', '', 4.00, 278);
INSERT INTO `meituan_goods` VALUES (2726, '盒装柠檬茶', 'http://p1.meituan.net/wmproductdwm/3c7d38b5e9e1e7406c0fc689e06b1646251597.jpg', '', 4.00, 278);
INSERT INTO `meituan_goods` VALUES (2727, '用餐人数', 'http://p0.meituan.net/wmproduct/779c1207c8dc9d3408afe5b6bab0c20e189112.jpg', '几人用餐点几份哟。', 0.00, 279);
INSERT INTO `meituan_goods` VALUES (2728, '饺子+辣酱套餐', 'http://p0.meituan.net/wmproduct/a8e70f7bb305452553b690c080170e0d357809.jpg', '销量领先，超级划算的单人套餐。', 15.98, 280);
INSERT INTO `meituan_goods` VALUES (2729, '至尊套餐', 'http://p0.meituan.net/wmproduct/a8e70f7bb305452553b690c080170e0d357809.jpg', '饭都吃不好，还谈什么理想。', 26.99, 280);
INSERT INTO `meituan_goods` VALUES (2730, '全家福15个(随机5种口味)', 'http://p0.meituan.net/wmproduct/ae05d6c0268f8e716f520e5da89c2c41339017.jpg', '', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2731, '素三鲜水饺15个', 'http://p1.meituan.net/wmproduct/753af1a7f9d4e68faf74a36765274698239082.jpg', '香菇，白菜，鸡蛋，粉丝，不含肉肉。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2732, '三鲜肉水饺15个', 'http://p0.meituan.net/wmproduct/26760ff7ef7df7e72d85ff4936d41228295447.jpg', '每份饺子免费赠送一份调料。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2733, '东北酸菜水饺15个', 'http://p0.meituan.net/wmproduct/ea6646bf968880dcec795fc8bd354dad332553.jpg', '重口味，正宗东北味。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2734, '荠菜鲜肉水饺15个', 'http://p1.meituan.net/wmproduct/dd65dfd9bf0b83ec63eb6d3bb11d5411305585.jpg', '每份饺子免费赠送一份调料。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2735, '纯鲜肉水饺15个', 'http://p1.meituan.net/wmproduct/d913d4ef0f178b8f74f64432f1983b38302589.jpg', '放开我，我要吃肉肉。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2736, '猪肉大葱水饺15个', 'http://p0.meituan.net/wmproduct/0550d314afa35197f5e2897c0724777a292107.jpg', '每份饺子免费赠送一份调料。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2737, '玉米鲜肉饺15个', 'http://p0.meituan.net/wmproduct/86dd7724919ff52c2d4204c361cfca40293225.jpg', '我在我们店排第一哦。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2738, '白菜鲜肉水饺15个', 'http://p0.meituan.net/wmproduct/9a05f2d248a9ee52a28ad15882c64041319771.jpg', '每份饺子免费赠送一份调料。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2739, '韭菜鲜肉水饺15个', 'http://p1.meituan.net/wmproduct/9542654f28c817eb5a60c7b359a6fdf9311662.jpg', '每份饺子免费赠送一份调料。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2740, '芹菜鲜肉水饺15个', 'http://p0.meituan.net/wmproduct/3685f21e1b2060cf3c98e4094eba6c8d326988.jpg', '每份饺子免费赠送一份调料。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2741, '香菇鲜肉水饺15个', 'http://p1.meituan.net/wmproduct/3e2508adf521a8024ce6455255aab182294851.jpg', '隔壁小孩都馋哭了。', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2742, '咖喱鸡肉水饺(15个)', 'http://p1.meituan.net/xianfu/55beb32de8900b7029b77901ed6baffb32066.jpg', '咖喱咖喱我爱你。', 19.50, 281);
INSERT INTO `meituan_goods` VALUES (2743, '精品玉米虾仁水饺(15个)', 'http://p0.meituan.net/wmproduct/67cf76f7c4b3b0c21798506909b15ae6220518.jpg', '1个饺子里面就有1个虾仁哦。', 23.90, 281);
INSERT INTO `meituan_goods` VALUES (2744, '精品牛肉水饺(15个)', 'http://p1.meituan.net/xianfu/55beb32de8900b7029b77901ed6baffb32066.jpg', '大家千呼万唤的牛肉水饺来啦。', 23.90, 281);
INSERT INTO `meituan_goods` VALUES (2745, '韭菜鸡蛋水饺15个', 'http://p1.meituan.net/wmproduct/5f3c1691f60eb3897a9007f466041cc2176955.jpg', '每份饺子免费送一份料包', 12.98, 281);
INSERT INTO `meituan_goods` VALUES (2746, '半份8个水饺(随机3个口味)(限时特价)', 'http://p1.meituan.net/wmproduct/5f4c1bc4cf76c1c498f6b3d0e9ef038f341536.jpg', '', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2747, '玉米鲜肉水饺8个', 'http://p0.meituan.net/wmproduct/86dd7724919ff52c2d4204c361cfca40293225.jpg', '小朋友都说我好吃。', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2748, '三鲜肉水饺8个', 'http://p1.meituan.net/wmproduct/5f43fdc3172ee96c4d238930f6b1b147302840.jpg', '真的挺鲜的。', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2749, '香菇猪肉水饺（8个）', 'http://p0.meituan.net/wmproduct/88dbb84b9c26bd16208e055846625c72310719.jpg', '小朋友都喜欢的味道', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2750, '素三鲜水饺8个', 'http://p0.meituan.net/wmproduct/d0191bf291f6ec5dd2f42f668d122bf8179182.jpg', '我有香菇，粉丝，鸡蛋还有白菜，约吗', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2751, '东北酸菜水饺8个', 'http://p0.meituan.net/wmproduct/ea6646bf968880dcec795fc8bd354dad332553.jpg', '我是来自东北那嘎达的酸菜，你敢试波', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2752, '猪肉大葱水饺（8个）', 'http://p0.meituan.net/wmproduct/b9b07c2075a36c89eaeb45cf53361675287824.jpg', '猪肉配大葱，你知道的', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2753, '白菜猪肉水饺（8个）', 'http://p0.meituan.net/wmproduct/9a05f2d248a9ee52a28ad15882c64041319771.jpg', '忠实粉超级多的白菜猪肉', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2754, '韭菜猪肉水饺（8个）', 'http://p1.meituan.net/wmproduct/6412141de195b3ba002a953fd2f74ea6317318.jpg', '韭菜的魅力，懂得人都懂。', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2755, '芹菜鲜肉水饺（8个）', 'http://p0.meituan.net/wmproduct/b9afa2c37c240441e259fbf2673656e4319671.jpg', '喜欢芹菜的人，都是不一般的人。', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2756, '纯鲜肉水饺（8个）', 'http://p1.meituan.net/wmproduct/ab8a42dbd03d1b52293a5d3391ae86b6308661.jpg', '我要吃肉肉。', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2757, '韭菜鸡蛋水饺（8个）', 'http://p0.meituan.net/wmproduct/cd147a070fc523290a670cf25ffceccc278160.jpg', '韭菜的魅力，你知道吗？', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2758, '荠菜猪肉水饺（8个）', 'http://p0.meituan.net/wmproduct/cb8c95ce02c15d9b299946d35d942627290361.jpg', '尝一次就着魔的荠菜。', 6.98, 282);
INSERT INTO `meituan_goods` VALUES (2759, '冰绿豆沙1杯(300g)', 'http://p0.meituan.net/wmproduct/1639369661dea5b4bd4db793c85b068b337235.jpg', '喝前摇一摇，冰冰冰，凉凉凉。', 3.99, 283);
INSERT INTO `meituan_goods` VALUES (2760, '加多宝', 'http://p1.meituan.net/xianfu/b8b7a10ee7fdd8b68da2e2c1b20c3c2c321597.jpg', '', 4.50, 283);
INSERT INTO `meituan_goods` VALUES (2761, '营养豆奶200ml', 'http://p0.meituan.net/wmproduct/ce13ad3a096b00665ec490efc5e9971a197020.jpg', '', 2.99, 283);
INSERT INTO `meituan_goods` VALUES (2762, '乳酸菌(右上角点⭐专享价格)', 'http://p0.meituan.net/wmproduct/7b5a59514190fb37a7cb818906cd5bc8125531.jpg', '要健康哟，促进肠道吸收。', 0.10, 283);
INSERT INTO `meituan_goods` VALUES (2763, '百事可乐厅装', 'http://p0.meituan.net/xianfu/5e1919b33699a83f8d18530358f04594253397.jpg', '快乐肥皂水。', 3.99, 283);
INSERT INTO `meituan_goods` VALUES (2764, '雪碧罐装', 'http://p1.meituan.net/xianfu/2dbb8bf0602fcdec51d82fb906ae4331326762.jpg', '夏日冰爽缺不了我。', 3.99, 283);
INSERT INTO `meituan_goods` VALUES (2765, '怡宝矿泉水555ml', 'http://p0.meituan.net/wmproduct/6ba8ab379e13896513b434686ebff8a0244028.jpg', '生命之泉。', 2.99, 283);
INSERT INTO `meituan_goods` VALUES (2766, '小可乐', 'http://p0.meituan.net/xianfu/1699ed1134e221c56c4dbc3318a5306f330553.jpg', '快乐肥皂水。', 2.99, 283);
INSERT INTO `meituan_goods` VALUES (2767, '拍黄瓜(限时特价)', 'http://p1.meituan.net/xianfu/144d6c45d037c94d94960cbd281e3cc7384017.jpg', '', 6.98, 284);
INSERT INTO `meituan_goods` VALUES (2768, '涪陵榨菜1包(15g)', 'http://p0.meituan.net/wmproduct/68e025636bd15af7a17f91ab95343e4c390788.jpg', '', 0.50, 284);
INSERT INTO `meituan_goods` VALUES (2769, '五香豇豆角(15g)', 'http://p0.meituan.net/wmproduct/3d068c121081d55ffb53cdb956b47561428196.jpg', '', 0.50, 284);
INSERT INTO `meituan_goods` VALUES (2770, '木耳笋丝(15g)', 'http://p1.meituan.net/wmproduct/b4accea612bf3f42d123b4d448230da5418467.jpg', '', 0.50, 284);
INSERT INTO `meituan_goods` VALUES (2771, '香辣海带丝', 'http://p0.meituan.net/xianfu/41f43558511b419004df402ca4ab08d3352216.jpg', '低热量，高矿物质。补充维生素E,锌。', 6.98, 284);
INSERT INTO `meituan_goods` VALUES (2772, '网红虎皮蒜蓉酱', 'http://p0.meituan.net/wmproduct/8f58cb3ac468908fd2d2cdaeec8bb349817184.jpg', '一口下去，欲罢不能。', 3.99, 284);
INSERT INTO `meituan_goods` VALUES (2773, '网红鲁西牛肉酱', 'http://p0.meituan.net/wmproduct/5c7a83f786215dd1bc86a441600ada6a648738.jpg', '饺子绝配，天生一对。', 3.99, 284);
INSERT INTO `meituan_goods` VALUES (2774, '网红魔鬼特辣', 'http://p0.meituan.net/wmproduct/9bbe499258f3cca85a2a897ac487c12a761080.jpg', '你是魔鬼吗?来试试魔鬼特辣。', 3.99, 284);
INSERT INTO `meituan_goods` VALUES (2775, '凉拌豆皮(大)【新】', 'http://p1.meituan.net/wmproduct/84a991da0c0297a0600ab1cab33eac30327494.jpg', '香味扑鼻，微辣；可选择辣的程度，下饺子绝配。', 6.98, 284);
INSERT INTO `meituan_goods` VALUES (2776, '全家福23个(随机7个口味)', 'http://p0.meituan.net/wmproduct/ae05d6c0268f8e716f520e5da89c2c41339017.jpg', '吃1种口味的请备注。', 16.98, 285);
INSERT INTO `meituan_goods` VALUES (2777, '全家福23个十饮料十凉菜+饺子汤', 'http://p1.meituan.net/wmproduct/a43e247af169258f59035350145bbc14375824.jpg', '小主，给您配齐了。', 45.98, 285);
INSERT INTO `meituan_goods` VALUES (2778, '手工煎饺6个', 'http://p1.meituan.net/xianfu/0f7381a897d04482d4ae4099043b4f2e311723.jpg', '一个个煎成爱你的样子。', 8.99, 286);
INSERT INTO `meituan_goods` VALUES (2779, '煎饺20个（香香脆脆)', 'http://p1.meituan.net/xianfu/cfc3fac70ac0aa2ae5c4bb66a37e99c2315490.jpg', '一个个煎成爱你的样子。', 43.98, 286);
INSERT INTO `meituan_goods` VALUES (2780, '煎饺15个（香香脆脆）', 'http://p1.meituan.net/xianfu/cfc3fac70ac0aa2ae5c4bb66a37e99c2315490.jpg', '一个个煎成爱你的样子。', 22.50, 286);
INSERT INTO `meituan_goods` VALUES (2781, '水饺15个+韭菜盒子(送饮料1瓶)', 'http://p0.meituan.net/wmproduct/ae05d6c0268f8e716f520e5da89c2c41339017.jpg', '', 19.98, 287);
INSERT INTO `meituan_goods` VALUES (2782, '随机饺子8个+冰绿豆沙', 'http://p0.meituan.net/wmproduct/bcb0e5b93d346e839153f6ab20540206343136.jpg', '', 12.98, 287);
INSERT INTO `meituan_goods` VALUES (2783, '饺子15个(随机口味+)手抓饼', 'http://p0.meituan.net/wmproduct/ae05d6c0268f8e716f520e5da89c2c41339017.jpg', '', 18.98, 287);
INSERT INTO `meituan_goods` VALUES (2784, '全家福23个+饮料+韭菜盒子', 'http://p1.meituan.net/wmproduct/271d6e341baba858960ff0a3a55070a1935897.jpg', '', 46.88, 287);
INSERT INTO `meituan_goods` VALUES (2785, '随机饺子8个+饮料', 'http://p1.meituan.net/wmproduct/9d4ace5bfad606c47fa350522590c7b9353036.jpg', '饺子随机', 9.98, 287);
INSERT INTO `meituan_goods` VALUES (2786, '全家福15个十汤圆15个＋大包榨菜(50克)', 'http://p1.meituan.net/xianfudwm/b2f43b7d3d7d1fdace480c97971760d1133006.jpg', '', 45.98, 287);
INSERT INTO `meituan_goods` VALUES (2787, '手工煎饺12个十饮料十大包榨菜(50克)', 'http://p0.meituan.net/xianfudwm/b77bdc1b78ac875dfe4b3cefc713181b187571.jpg', '', 41.98, 287);
INSERT INTO `meituan_goods` VALUES (2788, '管饱套餐饺子15个十15个(送大包榨菜)', 'http://p0.meituan.net/wmproduct/e07811c16da3bcd7d0d5c5e2f06cb027368539.jpg', '饺子随机，吃一种馅备注哦！', 45.98, 287);
INSERT INTO `meituan_goods` VALUES (2789, '超大狮子头3个(送辣椒油)', 'http://p1.meituan.net/xianfu/5de6fa5afdd22c768f5b98ab7438d4e9344064.jpg', '我要大口吃肉肉。', 6.98, 288);
INSERT INTO `meituan_goods` VALUES (2790, '香脆虾饼(2个)', 'http://p0.meituan.net/xianfu/1026db3ddd297a9e8033f89d51ef62dd431038.jpg', '', 5.98, 288);
INSERT INTO `meituan_goods` VALUES (2791, '手抓饼特价(培根+生菜)', 'http://p1.meituan.net/xianfu/f565c46bf3421277c027a3b2949697dd298113.jpg', '', 7.98, 288);
INSERT INTO `meituan_goods` VALUES (2792, '川香鸡柳1串', 'http://p1.meituan.net/xianfu/34cda7511e8657314b1319ca1e7ae001344590.jpg', '', 2.98, 288);
INSERT INTO `meituan_goods` VALUES (2793, '鲜嫩吮指鱼(整颗鱼肉)', 'http://p0.meituan.net/wmproduct/29b1243fd038da91bccc38ad5c935962363568.jpg', '每一粒里面都是整颗鱼肉，Q弹滑嫩，回味无穷。', 9.98, 288);
INSERT INTO `meituan_goods` VALUES (2794, '油炸红豆相思双皮奶(5个)', 'http://p1.meituan.net/xianfu/3f5919e54ed478a14f5052a82cf1f0dc267414.jpg', '', 9.98, 288);
INSERT INTO `meituan_goods` VALUES (2795, '韭菜盒子1个', 'http://p1.meituan.net/xianfu/00a72f47f6f4eed0d14c84b3890ba33a293570.jpg', '', 4.98, 288);
INSERT INTO `meituan_goods` VALUES (2796, '香芋地瓜丸4颗', 'http://p1.meituan.net/xianfu/3fa30137b65d9791763f4ca698af45df304558.jpg', '', 5.98, 288);
INSERT INTO `meituan_goods` VALUES (2797, '小土豆12粒', 'http://p0.meituan.net/wmproduct/ac4aa13db3d42f8be86f19038e410c3d264381.jpg', '一口一个把你吃掉。', 5.98, 288);
INSERT INTO `meituan_goods` VALUES (2798, '炸鸡排', 'http://p0.meituan.net/xianfu/442d5f1ad60dfa55d41ee2d97d589cc1342782.jpg', '超级受欢迎的就是我啦。', 5.98, 288);
INSERT INTO `meituan_goods` VALUES (2799, '黑椒鸡块4个装', 'http://p0.meituan.net/xianfu/b26af3b2d32348e32251d79db6eed70f296255.jpg', '酸酸甜甜还脆脆的，回味无穷。', 5.98, 288);
INSERT INTO `meituan_goods` VALUES (2800, '鸡肉洋葱圈5个', 'http://p0.meituan.net/xianfu/aecd34df043fadfc94652e5c7801c9a1196167.jpg', '鸡肉加洋葱。', 6.98, 288);
INSERT INTO `meituan_goods` VALUES (2801, '原味飞饼', 'http://p0.meituan.net/xianfu/d5eddf5d132e8a5620b69f16ff0af49466509.jpg', '飞饼还是原味好。', 5.98, 288);
INSERT INTO `meituan_goods` VALUES (2802, '小香蕉（4个）', 'http://p0.meituan.net/xianfu/3d9864e7d7b9dd46d2bfb1c4cafd3460443301.jpg', '', 5.98, 288);
INSERT INTO `meituan_goods` VALUES (2803, '南瓜饼4个', 'http://p1.meituan.net/xianfu/537a005eefbac033cc4f0e747f3a83a994313.jpg', '肚里有货哟。', 5.98, 288);
INSERT INTO `meituan_goods` VALUES (2804, '鲜肉馄饨【限时特价】', 'http://p1.meituan.net/xianfu/d2c25cd010345a0adcf1c3e679776305417792.jpg', '加葱花，紫菜和虾米哦，厚皮大馄饨，不喜勿拍。', 11.98, 289);
INSERT INTO `meituan_goods` VALUES (2805, '汤圆（15个）一一团团圆圆', 'http://p1.meituan.net/wmproduct/bca62cf7caca5e6c9cfa5d0465f62bf9193952.jpg', '', 11.98, 289);
INSERT INTO `meituan_goods` VALUES (2806, '各位小主，有任何问题请先联系我们哟。', 'http://p0.meituan.net/wmproduct/4e03daeed9578c78e8c54ed51841d05f273354.jpg', '少餐漏餐请不要急着给差评，请联系我们给您满意答复。祝我的顾客暴瘦暴富。', 6.00, 290);
INSERT INTO `meituan_goods` VALUES (2807, '辣椒油(要1份不要拍，可以免费送1包)', 'http://p0.meituan.net/xianfu/16a26bc53db3e76a4ea661c18cde0547391168.jpg', '需要多的宝宝请拍。', 0.27, 290);
INSERT INTO `meituan_goods` VALUES (2808, '醋(要1份的不拍，可免费送1包)', 'http://p0.meituan.net/xianfu/a067ccff7063fd5fb4f1fd1bceea5c6e41746.jpg', '需要多的宝宝请拍。', 0.27, 290);
INSERT INTO `meituan_goods` VALUES (2809, '防油桌纸', 'http://p0.meituan.net/wmproduct/9276c6e91913051e3dafcb766e8269df178525.jpg', '', 0.00, 291);
INSERT INTO `meituan_goods` VALUES (2810, '雨天路滑，如有延迟敬请谅解～', 'http://p0.meituan.net/wmproduct/6cad16f9c9ed16f511752683d01cfeb6378032.jpg', '雨雪天气路滑，小哥正在加紧配送，如有延迟，还请见谅～', 0.00, 292);
INSERT INTO `meituan_goods` VALUES (2811, '油爆虾', 'http://p0.meituan.net/wmproduct/1e3c453ac80d2a1a48983818d80abbee1083009.jpg', '', 138.00, 293);
INSERT INTO `meituan_goods` VALUES (2812, '手撕鸭', 'http://p1.meituan.net/wmproduct/ed4d13e786c6fc024e67602fb182d2356117928.jpg', '整只，香辣', 98.00, 293);
INSERT INTO `meituan_goods` VALUES (2813, '油爆大虾', 'http://p0.meituan.net/wmproduct/ac75c4782f7838c2fda1dd5c284bc00b1067171.jpg', '18只1两左右的大虾 个大Q弹', 200.00, 293);
INSERT INTO `meituan_goods` VALUES (2814, '口味大虾', 'http://p1.meituan.net/wmproduct/c843391627101fb1cea7325e138a0a064326784.jpg', '9~10钱的小龙虾 一根大筒子骨 鲜爽Q弹', 200.00, 293);
INSERT INTO `meituan_goods` VALUES (2815, '老长沙无骨蛇.', 'http://p1.meituan.net/wmproduct/aeda75a94e81809f097a03205ce131f7804723.jpg', '香辣味 去骨蛇肉', 198.00, 293);
INSERT INTO `meituan_goods` VALUES (2816, '老长沙虾尾.', 'http://p0.meituan.net/wmproduct/e8c76f4539518bb3635fdb8c162060c26183801.jpg', '麻辣味', 138.00, 293);
INSERT INTO `meituan_goods` VALUES (2817, '招牌虾(原袋装口味虾)【明星必点】', 'http://p1.meituan.net/wmproduct/a2a143257d30f15debeda737849b744e6504205.jpg', '麻辣味 传统 有汤汁', 138.00, 293);
INSERT INTO `meituan_goods` VALUES (2818, '蒜蓉虾.', 'http://p1.meituan.net/xianfu/7ee23ee7c44c673a83b265d993b72ce1449122.jpg', '蒜茸味', 138.00, 293);
INSERT INTO `meituan_goods` VALUES (2819, '文和友虾【明星必点】', 'http://p1.meituan.net/wmproduct/b2a5bc79f331e629fbda76d296b1ae766377298.jpg', '微辣 小骄傲张艺兴同款 无汤汁', 138.00, 293);
INSERT INTO `meituan_goods` VALUES (2820, '超级大油爆虾.', 'http://p0.meituan.net/wmproduct/b8f049ac39485da56a8f9255e1d877e81076515.jpg', '沾酱(蒜香味) 1.2两的小龙虾 超级满足你的味蕾', 300.00, 293);
INSERT INTO `meituan_goods` VALUES (2821, '老长沙口味虾.', 'http://p0.meituan.net/wmproduct/9094c9d414e8848fa2de49d2cf97f2813854085.jpg', '香辣 小龙虾 紫苏', 138.00, 293);
INSERT INTO `meituan_goods` VALUES (2822, '蒜苗炒金钱肚', 'http://p1.meituan.net/wmproduct/09b1cd5a40e2e31f7a65f40b7775a0734391111.jpg', '', 30.00, 294);
INSERT INTO `meituan_goods` VALUES (2823, '口味莴笋片', 'http://p0.meituan.net/wmproduct/01c1143b34ebe5fb854d8ab6465715004960325.jpg', '', 20.00, 294);
INSERT INTO `meituan_goods` VALUES (2824, '卤牛肉炒蛋', 'http://p0.meituan.net/wmproduct/24ed39cbf843e9a0d9a4c30a699373696232072.jpg', '', 30.00, 294);
INSERT INTO `meituan_goods` VALUES (2825, '小炒藕尖', 'http://p0.meituan.net/wmproduct/9737a14994c37ea152d6551c545741265039697.jpg', '香辣味', 20.00, 294);
INSERT INTO `meituan_goods` VALUES (2826, '鱼虾一家亲', 'http://p0.meituan.net/wmproduct/a2ee9f43b946fbbd80074001f47f25e76152244.jpg', '小鱼炒小虾', 30.00, 294);
INSERT INTO `meituan_goods` VALUES (2827, '爆炒田螺肉', 'http://p1.meituan.net/wmproduct/280bd0b15d2346a04e42240f3eb7ceb56673942.jpg', '田螺肉炒韭菜花', 30.00, 294);
INSERT INTO `meituan_goods` VALUES (2828, '小炒仔鸡', 'http://p0.meituan.net/wmproduct/5547ea925ed4c007512dc56887f9782c6402011.jpg', '鸡肉 酸萝卜丁', 20.00, 294);
INSERT INTO `meituan_goods` VALUES (2829, '绝味牛蛙.', 'http://p0.meituan.net/wmproduct/eeebb2dcb55998ec6786c1a5a4cf3dfd2193574.jpg', '辣 牛蛙 泡椒 开胃', 58.00, 294);
INSERT INTO `meituan_goods` VALUES (2830, '爆炒田鸡腿.', 'http://p0.meituan.net/wmproduct/6a3e34132c26b55706823ee8f58bff286120796.jpg', '干香味 田鸡腿肉 韭黄', 88.00, 294);
INSERT INTO `meituan_goods` VALUES (2831, '黄焖鳝鱼.', 'http://p1.meituan.net/wmproduct/88ddc3c37d5d006883d878d3a031cf295917811.jpg', '鲜香味 鳝鱼 黄瓜', 78.00, 294);
INSERT INTO `meituan_goods` VALUES (2832, '爆炒肥肠.', 'http://p1.meituan.net/wmproduct/0ff73ad0713aff91a70641d1605ee47b1459899.jpg', '香辣 肥肠', 30.00, 294);
INSERT INTO `meituan_goods` VALUES (2833, '爆炒鸭脚筋.', 'http://p0.meituan.net/wmproduct/5895ac1ba40ccc8f376f8b041c06882c6992062.jpg', '香辣味', 68.00, 294);
INSERT INTO `meituan_goods` VALUES (2834, '织机街孜然牛肉.', 'http://p0.meituan.net/wmproduct/5dbfa82a7462de9933a055a0959ffc985690008.jpg', '香辣味 牛肉 酸甜萝卜丁', 68.00, 294);
INSERT INTO `meituan_goods` VALUES (2835, '大片冬瓜.', 'http://p0.meituan.net/wmproduct/b597c17e17a9d55c5b31e8433db0b7904865020.jpg', '微辣 冬瓜片', 10.00, 294);
INSERT INTO `meituan_goods` VALUES (2836, '爽辣鸡杂.', 'http://p0.meituan.net/wmproduct/4486ee18e5c0f09a54d384e53da7226b4568765.jpg', '香辣味(鸡肝.鸡胗.鸡心)', 20.00, 294);
INSERT INTO `meituan_goods` VALUES (2837, '姜辣风爪.', 'http://p0.meituan.net/wmproduct/dce285aea14a77f90efff7081152026f1094380.jpg', '姜辣 凤爪 生姜片', 30.00, 294);
INSERT INTO `meituan_goods` VALUES (2838, '热卤四合一.', 'http://p1.meituan.net/wmproduct/e3269f2bced27f715e4407cb2583a928879782.jpg', '香辣 牛肉 耳尖 素捆鸡 韭菜', 30.00, 294);
INSERT INTO `meituan_goods` VALUES (2839, '辣椒炒肉.', 'http://p0.meituan.net/wmproduct/8be33532d99c05eea686ebc929bf4fd61191230.jpg', '下饭 青椒 五花肉', 20.00, 294);
INSERT INTO `meituan_goods` VALUES (2840, '香干回锅肉.', 'http://p0.meituan.net/wmproduct/9842c199aef824fd9b5b2d33a62562a91010786.jpg', '香辣 五花肉  香干', 20.00, 294);
INSERT INTO `meituan_goods` VALUES (2841, '猪血丸子.', 'http://p0.meituan.net/wmproduct/2c5ba3506936363f148accb029161f5a1325603.jpg', '香辣味', 20.00, 294);
INSERT INTO `meituan_goods` VALUES (2842, '德字香干.', 'http://p1.meituan.net/wmproduct/dae29734a385f397ef46ad91069439764055618.jpg', '德字香干 汤汁', 10.00, 294);
INSERT INTO `meituan_goods` VALUES (2843, '孜然花菜.', 'http://p0.meituan.net/wmproduct/52cd84eee6b109c31f43376be7d840254027705.jpg', '孜然  花菜', 10.00, 294);
INSERT INTO `meituan_goods` VALUES (2844, '凉面.', 'http://p0.meituan.net/xianfu/66b2096f38bef4dcfc6a2f47956c3ffc361008.jpg', '凉面 花生米 香菜', 10.00, 295);
INSERT INTO `meituan_goods` VALUES (2845, '白米饭', 'http://p1.meituan.net/xianfu/0199bf76ebd1bf41bae8e381a803224c279404.jpg', '男生建议一人食用，饭量不大的女生可以两人分食。', 5.00, 295);
INSERT INTO `meituan_goods` VALUES (2846, '百威金樽', 'http://p1.meituan.net/wmproduct/e4eb3ec921174fbace7e3e089497ebcd4226035.jpg', '', 18.00, 296);
INSERT INTO `meituan_goods` VALUES (2847, '矿泉水.', 'http://p0.meituan.net/wmproduct/29b7ec62b90a6590388c9de425777bb1242754.jpg', '需要冰的请备注', 2.00, 296);
INSERT INTO `meituan_goods` VALUES (2848, '江小白.', 'http://p1.meituan.net/wmproduct/330ad373658b259b1977153abab731c2979851.jpg', '', 18.00, 296);
INSERT INTO `meituan_goods` VALUES (2849, '王老吉凉茶.', 'http://p0.meituan.net/wmproduct/fe76e57933a67d8605ee76821dcbb409447563.jpg', '需要冰的请备注', 6.00, 296);
INSERT INTO `meituan_goods` VALUES (2850, '文和友杨梅汁.', 'http://p0.meituan.net/wmproduct/b3b36277c5694b66340413a537730119238604.jpg', '需要冰的请备注', 5.00, 296);
INSERT INTO `meituan_goods` VALUES (2851, '红牛.', 'http://p0.meituan.net/wmproduct/240cb6d1df1b21825586c13f49d4d72d475084.jpg', '需要冰的请备注', 8.00, 296);
INSERT INTO `meituan_goods` VALUES (2852, '紫苏桃子姜.', 'http://p0.meituan.net/wmproduct/d851a27ac231b852f517d8894c057df85206432.jpg', '', 10.00, 297);
INSERT INTO `meituan_goods` VALUES (2853, '卤鸭舌.', 'http://p0.meituan.net/wmproduct/2524391aa7395adc4a56861469b1069f1602579.jpg', '鸭舌', 30.00, 297);
INSERT INTO `meituan_goods` VALUES (2854, '孜然捆鸡.', 'http://p1.meituan.net/wmproduct/2f46e050cf323c87d4b92c4d31c9ad892014247.jpg', '捆鸡 香菜', 20.00, 297);
INSERT INTO `meituan_goods` VALUES (2855, '拍黄瓜.', 'http://p0.meituan.net/wmproduct/b8c1f39a5f1c1f1ef29bfaea3627dde83823888.jpg', '黄瓜 微酸辣 脆爽', 10.00, 297);
INSERT INTO `meituan_goods` VALUES (2856, '口味豆笋.', 'http://p0.meituan.net/wmproduct/d2e99444dcce2db8d739dcbaff7fd6e73505030.jpg', '豆笋', 10.00, 297);
INSERT INTO `meituan_goods` VALUES (2857, '冰镇西红柿.', 'http://p0.meituan.net/wmproduct/2ef5be75ef88506899a29f4ac022b2345555057.jpg', '西红柿 白糖 酸甜爽口', 10.00, 297);
INSERT INTO `meituan_goods` VALUES (2858, '酱牛肉.', 'http://p0.meituan.net/wmproduct/fab0c95a11ca280ffa15c7db3f1496ed972524.jpg', '牛肉 香菜', 30.00, 297);
INSERT INTO `meituan_goods` VALUES (2859, '文和友辣椒酱', 'http://p1.meituan.net/wmproduct/8f77cb04341b46b80e3f9d65148b05ff553165.jpg', '文和友特制 15包/盒 洋姜、萝卜、蒜蓉三种口味', 36.00, 298);
INSERT INTO `meituan_goods` VALUES (2860, '酱板鸭', 'http://p1.meituan.net/wmproduct/5d6956adcb126b6988401647ae44f264375665.jpg', '', 68.00, 298);
INSERT INTO `meituan_goods` VALUES (2861, '肉酱臭豆腐', 'http://p0.meituan.net/wmproduct/c44a8dafca7e729bf13296714464e502406715.jpg', '', 16.00, 298);
INSERT INTO `meituan_goods` VALUES (2862, '经典臭豆腐', 'http://p0.meituan.net/wmproduct/c9198a084fb0547c02c25117777862061737563.jpg', '', 12.00, 298);
INSERT INTO `meituan_goods` VALUES (2863, '请认准文和友，谨防假冒', 'http://p0.meituan.net/wmproduct/3f047db076cfb42acee3d7d0df740822210521.jpg', '', 0.00, 299);
INSERT INTO `meituan_goods` VALUES (2864, '本店不赠送米饭，需要另点，有猪油拌饭和白米饭两选', 'http://p1.meituan.net/wmproduct/792510c2bedeb61bc6faa9ade23edefb432964.jpg', '', 0.00, 299);
INSERT INTO `meituan_goods` VALUES (2865, '啤酒、饮料需要冰的请备注', 'http://p1.meituan.net/wmproduct/066fb6ba1ad26f48eec7cf24a59c6c20400444.jpg', '', 0.00, 299);
INSERT INTO `meituan_goods` VALUES (2866, '有任何问题电联13332515335', 'http://p0.meituan.net/wmproduct/4b4a9be84c07f093d9d14fcff4871407999297.png', '', 0.00, 299);
INSERT INTO `meituan_goods` VALUES (2867, '维他柠檬茶.', 'http://p0.meituan.net/wmproduct/2daaecd63c0e0276a57193ffea29c9ba363747.jpg', '需要冰的请备注', 6.00, 300);
INSERT INTO `meituan_goods` VALUES (2868, '热卤四合一', 'http://p1.meituan.net/xianfudwm/96e6afca55bb0890234de4b406cf96ee235746.jpg', '荤菜：牛肉捆鸡猪耳朵鸡抓牛肚鹅肠脆骨猪尾巴鸭脚筋鸡杂猪舌！素菜：韭菜香干包菜豆皮素捆鸡生菜豆笋云耳金针菇豆芽菜海带任选2荤2素', 32.00, 301);
INSERT INTO `meituan_goods` VALUES (2869, '重辣', 'http://p1.meituan.net/xianfudwm/5326620a9c3c2f0da329fccfd51811bc224170.jpg', '', 0.00, 301);
INSERT INTO `meituan_goods` VALUES (2870, '微辣', 'http://p1.meituan.net/xianfudwm/5326620a9c3c2f0da329fccfd51811bc224170.jpg', '', 0.00, 301);
INSERT INTO `meituan_goods` VALUES (2871, '口味黄喉', 'http://p0.meituan.net/wmproduct/01c67c4429c5d3aeed369c90f7890531287785.jpg', '', 58.00, 302);
INSERT INTO `meituan_goods` VALUES (2872, '口味虾', 'http://p1.meituan.net/xianfu/dcf201abff87ce0eb879c741ca13598d449730.jpg', '', 128.00, 302);
INSERT INTO `meituan_goods` VALUES (2873, '卤猪脚', 'http://p0.meituan.net/wmproductdwm/d6f0597d0677e85acae5aed16f1ce052171004.jpg', '', 28.00, 302);
INSERT INTO `meituan_goods` VALUES (2874, '酱爆肥肠', 'http://p1.meituan.net/wmproductdwm/44bdffeaeb801638fe60449807c013c7295321.jpg', '', 38.00, 302);
INSERT INTO `meituan_goods` VALUES (2875, '香辣口味蟹', 'http://p0.meituan.net/wmproductdwm/7e00f649582cafe83c3288ea0ed75529391352.jpg', '肉蟹 4只', 58.00, 302);
INSERT INTO `meituan_goods` VALUES (2876, '姜辣凤爪', 'http://p0.meituan.net/wmproduct/1b314fb4953a9a16dabed452cb68ae7f370539.jpg', '', 48.00, 302);
INSERT INTO `meituan_goods` VALUES (2877, '山胡椒花甲炒毛肚', 'http://p1.meituan.net/xianfudwm/341033217bcdcabbcf0efafd48346e20266362.jpg', '', 38.00, 302);
INSERT INTO `meituan_goods` VALUES (2878, '口味圣子', 'http://p0.meituan.net/wmproductdwm/21744661e3a88b446385f4fa61c02dc2377418.jpg', '', 48.00, 302);
INSERT INTO `meituan_goods` VALUES (2879, '风味嗦啰', 'http://p0.meituan.net/wmproductdwm/192c674155ae40db1f77920e1607f272350191.jpg', '', 25.00, 302);
INSERT INTO `meituan_goods` VALUES (2880, '风味花甲', 'http://p1.meituan.net/wmproductdwm/1c93420289ed3cbf6f7200cdc5db79d0319727.jpg', '', 30.00, 302);
INSERT INTO `meituan_goods` VALUES (2881, '口味虾尾', 'http://p1.meituan.net/wmproductdwm/4a05f1a70238fd2cbcda4c21bdb90805410397.jpg', '35-45个', 88.00, 302);
INSERT INTO `meituan_goods` VALUES (2882, '口味牛蛙', 'http://p0.meituan.net/wmproductdwm/6132605350b3e0e4d269ed88b6596b64336130.jpg', '现杀现卖！', 68.00, 302);
INSERT INTO `meituan_goods` VALUES (2883, '香蕉飞饼', 'http://p1.meituan.net/xianfudwm/3c601150457c7ea79fb7a43a7422a9b0124712.jpg', '', 20.00, 303);
INSERT INTO `meituan_goods` VALUES (2884, '菠萝飞饼', 'http://p0.meituan.net/xianfudwm/20eac65a10803727ff039e4335ae6818124584.jpg', '', 20.00, 303);
INSERT INTO `meituan_goods` VALUES (2885, '三合肉饼', 'http://p1.meituan.net/xianfudwm/c5576da34276d35d998db6bf75e93812156411.jpg', '', 20.00, 303);
INSERT INTO `meituan_goods` VALUES (2886, '猪油粉', 'http://p1.meituan.net/xianfudwm/41d6070ca215c9792bd13c212cc3a89f189237.jpg', '老长沙特色小吃！纯猪油酱油！份量不多！多了不好拌，且不好吃！', 6.00, 304);
INSERT INTO `meituan_goods` VALUES (2887, '秘制凉卤面', 'http://p0.meituan.net/xianfudwm/edfac5074a7846f918a6a21007b14ec0266163.jpg', '我店出品的面长沙找不出第二家！（冷卤面）冷的！冷的！冷的！重要的话讲3遍！', 10.00, 304);
INSERT INTO `meituan_goods` VALUES (2888, '海带排骨汤', 'http://p0.meituan.net/wmproductdwm/5cad72a822af695af51a137760996de9246167.jpg', '', 10.00, 305);
INSERT INTO `meituan_goods` VALUES (2889, '白粒丸', 'http://p0.meituan.net/wmproductdwm/7af5fa2057fdbfa6a5869c9a1f4af215405781.jpg', '', 10.00, 305);
INSERT INTO `meituan_goods` VALUES (2890, '麻油猪血', 'http://p1.meituan.net/wmproductdwm/08af84c962a0a16ed3779116027071e0413268.jpg', '', 10.00, 305);
INSERT INTO `meituan_goods` VALUES (2891, '莲藕排骨汤', 'http://p0.meituan.net/xianfudwm/ef0c8a7476b6e1b75b094d17a019cc64132522.jpg', '', 10.00, 305);
INSERT INTO `meituan_goods` VALUES (2892, '花生排骨汤', 'http://p1.meituan.net/wmproductdwm/be4009100345f2acd12f4a0cd4d94b08217804.jpg', '', 10.00, 305);
INSERT INTO `meituan_goods` VALUES (2893, '猪肚红枣汤', 'http://p0.meituan.net/xianfudwm/4501325981c74c6acab08903fbb29aca167879.jpg', '', 15.00, 305);
INSERT INTO `meituan_goods` VALUES (2894, '清炖牛腩', 'http://p0.meituan.net/xianfudwm/978ba76da205ae64abad56a4b4e63e12146500.jpg', '有点点辣味', 15.00, 305);
INSERT INTO `meituan_goods` VALUES (2895, '寒菌炖肉', 'http://p0.meituan.net/wmproductdwm/551dcf51f03dbc06ee6f85b9d9f4fd91275597.jpg', '', 20.00, 305);
INSERT INTO `meituan_goods` VALUES (2896, '墨鱼排骨汤', 'http://p0.meituan.net/wmproductdwm/e298dd62b5f038fb11f58d4c514a3594249328.jpg', '', 15.00, 305);
INSERT INTO `meituan_goods` VALUES (2897, '老火炖汤', 'http://p0.meituan.net/xianfudwm/5f25ee6bfae3332039336c8ac8fb1390182952.jpg', '上序7种汤都是瓦缸煨的小份', 0.00, 305);
INSERT INTO `meituan_goods` VALUES (2898, '油炸花生米', 'http://p0.meituan.net/xianfudwm/5b059d6de212a0054fe73b5b9cdf4b15132858.jpg', '', 8.00, 306);
INSERT INTO `meituan_goods` VALUES (2899, '凉拌鱼腥草', 'http://p1.meituan.net/wmproductdwm/85df4aca4209878a8e2d6a9917b0ad28183964.jpg', '', 10.00, 306);
INSERT INTO `meituan_goods` VALUES (2900, '凉拌荷兰豆', 'http://p1.meituan.net/wmproductdwm/1e45a8e2abe1c915a9aad71887542cb2370974.jpg', '', 8.00, 306);
INSERT INTO `meituan_goods` VALUES (2901, '芥末花生米', 'http://p1.meituan.net/wmproductdwm/49de1fa6d27d40d68858d5795a3e3af9290352.jpg', '', 15.00, 306);
INSERT INTO `meituan_goods` VALUES (2902, '糖拌西红柿', 'http://p1.meituan.net/wmproductdwm/084199872cfdd047539aa003a0e8b5a8405404.jpg', '', 8.00, 306);
INSERT INTO `meituan_goods` VALUES (2903, '凉拌刀豆', 'http://p1.meituan.net/wmproductdwm/bb54bd346498fc2a09fc67b2ed3ddbd3321932.jpg', '', 10.00, 306);
INSERT INTO `meituan_goods` VALUES (2904, '凉拌海带丝', 'http://p0.meituan.net/wmproductdwm/dea0f6444efd6dcc92c849283855442f88025.jpg', '', 8.00, 306);
INSERT INTO `meituan_goods` VALUES (2905, '空心菜杆子', 'http://p0.meituan.net/wmproductdwm/92e25e9cae777290c335308ea94cfa29344736.jpg', '', 10.00, 306);
INSERT INTO `meituan_goods` VALUES (2906, '糖醋藕丁', 'http://p1.meituan.net/wmproductdwm/c0fdc1bea3dfea689e38eeab24e0528a368300.jpg', '', 10.00, 306);
INSERT INTO `meituan_goods` VALUES (2907, '凉拌土豆丝', 'http://p1.meituan.net/wmproductdwm/3910198de42b45db0d8967da1c1df3c8375713.jpg', '', 8.00, 306);
INSERT INTO `meituan_goods` VALUES (2908, '凉拌黄瓜', 'http://p1.meituan.net/wmproductdwm/9fd1a7337ba2afdc6d422eb9b9be9fef85264.jpg', '', 8.00, 306);
INSERT INTO `meituan_goods` VALUES (2909, '凉拌腐竹', 'http://p0.meituan.net/wmproductdwm/3a1bcaccf29f7182e7fe5932aa8a3926130940.jpg', '', 8.00, 306);
INSERT INTO `meituan_goods` VALUES (2910, '糖醋排骨', 'http://p1.meituan.net/xianfudwm/6c5a92159364af8444b7fb99c6e6cda6295698.jpg', '', 20.00, 306);
INSERT INTO `meituan_goods` VALUES (2911, '紫苏桃子', 'http://p1.meituan.net/wmproductdwm/6925f48d913d66f3be4724abb6871cb1136954.jpg', '', 10.00, 306);
INSERT INTO `meituan_goods` VALUES (2912, '油炸泥鳅', 'http://p1.meituan.net/xianfudwm/be73d4e2a833c0df17158ba3757f7277107609.jpg', '', 20.00, 306);
INSERT INTO `meituan_goods` VALUES (2913, '脆爽萝卜皮', 'http://p1.meituan.net/wmproductdwm/ad94e4b5640db45ef25e2b91cb1587cb248967.jpg', '', 10.00, 306);
INSERT INTO `meituan_goods` VALUES (2914, '烧辣椒皮蛋', 'http://p1.meituan.net/xianfudwm/0b4d4e4acd2ca0f65a28014a5f44426d134751.jpg', '', 12.00, 306);
INSERT INTO `meituan_goods` VALUES (2915, '凉拌红薯', 'http://p0.meituan.net/wmproductdwm/da8f63528df3efc561830c9fd36ba292365277.jpg', '', 8.00, 306);
INSERT INTO `meituan_goods` VALUES (2916, '卤牛肉', 'http://p0.meituan.net/wmproductdwm/5af3784295477053e51be56f672da4cb197322.jpg', '一斤新鲜牛肉卤出来只有5至6两.', 22.00, 307);
INSERT INTO `meituan_goods` VALUES (2917, '鸡杂', 'http://p1.meituan.net/wmproductdwm/b0f4e80fb8bead37604fd344e5f9784c366649.jpg', '', 18.00, 307);
INSERT INTO `meituan_goods` VALUES (2918, '猪舌', 'http://p0.meituan.net/wmproductdwm/0baa228a640efc93c9b4cee171a8339b351006.jpg', '', 18.00, 307);
INSERT INTO `meituan_goods` VALUES (2919, '鸭脚筋', 'http://p0.meituan.net/wmproductdwm/eedce0761c3e0deb682dc81b16538732289385.jpg', '', 18.00, 307);
INSERT INTO `meituan_goods` VALUES (2920, '卤鸡抓', 'http://p0.meituan.net/wmproductdwm/4fa38f81d30b2ed11c35b693e0532ab3297791.jpg', '', 18.00, 307);
INSERT INTO `meituan_goods` VALUES (2921, '卤耳尖', 'http://p1.meituan.net/wmproductdwm/11ebdc6a1e21c511bbc4e1b2b3377bda331578.jpg', '', 18.00, 307);
INSERT INTO `meituan_goods` VALUES (2922, '卤猪尾巴', 'http://p1.meituan.net/wmproductdwm/241f529dd128fde54e7f9c043157a004323224.jpg', '', 18.00, 307);
INSERT INTO `meituan_goods` VALUES (2923, '卤牛肚', 'http://p1.meituan.net/wmproductdwm/701c5fc4baf0fa1973dd177ffefea707311166.jpg', '', 18.00, 307);
INSERT INTO `meituan_goods` VALUES (2924, '卤肉捆鸡', 'http://p1.meituan.net/wmproductdwm/7b4e6d632fa7d4586ae2003354bfde86371729.jpg', '', 18.00, 307);
INSERT INTO `meituan_goods` VALUES (2925, '卤脆骨', 'http://p0.meituan.net/wmproductdwm/af03771578b51de1ecc882dda732126d382683.jpg', '', 18.00, 307);
INSERT INTO `meituan_goods` VALUES (2926, '卤鹅肠', 'http://p1.meituan.net/xianfudwm/c4be1b87a3c1781a2b7ff7bcd0587656149837.jpg', '', 18.00, 307);
INSERT INTO `meituan_goods` VALUES (2927, '1664', 'http://p0.meituan.net/wmproduct/ec2ade4b24cb52e0790ddad551a776ec487415.jpg', '', 24.00, 308);
INSERT INTO `meituan_goods` VALUES (2928, '百威', 'http://p1.meituan.net/wmproductdwm/3f24e223e492cf4843b1d099477fcb3564954.jpg', '500ml 无备注都是常温', 8.00, 308);
INSERT INTO `meituan_goods` VALUES (2929, '哈啤纯生', 'http://p0.meituan.net/wmproduct/67c9cdf53f7e782b9fad75444f1cbc44431701.jpg', '', 8.00, 308);
INSERT INTO `meituan_goods` VALUES (2930, '田家浊米酒（桂花味）半斤装', 'http://p1.meituan.net/wmproductdwm/3cc4ae9859ae4e2234cbf477c9134094242917.jpg', '', 38.00, 308);
INSERT INTO `meituan_goods` VALUES (2931, '田家浊米酒（原味）半斤装', 'http://p0.meituan.net/wmproductdwm/b21d2bdb8192cf9bc3cbb5f03f771fff241000.jpg', '', 38.00, 308);
INSERT INTO `meituan_goods` VALUES (2932, '椰树椰奶', 'http://p1.meituan.net/wmproductdwm/ec9174c81ebd15ecdbcd0e18c3e80b13124817.jpg', '', 6.00, 308);
INSERT INTO `meituan_goods` VALUES (2933, '雪碧厅装', 'http://p0.meituan.net/xianfu/231d7135cb04592db5864d389c50e778298592.jpg', '', 4.00, 308);
INSERT INTO `meituan_goods` VALUES (2934, '福佳白啤酒', 'http://p0.meituan.net/wmproductdwm/efe5f4d6f3d4e926407f62565c461b4e374114.jpg', '进口福家白', 18.00, 308);
INSERT INTO `meituan_goods` VALUES (2935, '王老吉', 'http://p0.meituan.net/xianfu/86b624ca0cd737ba72d4d394be3d88a1200448.jpg', '', 5.00, 308);
INSERT INTO `meituan_goods` VALUES (2936, '豆奶', 'http://p0.meituan.net/wmproduct/45e4c44ebb39e5dc33711a516bf1ce86262553.jpg', '', 4.00, 308);
INSERT INTO `meituan_goods` VALUES (2937, '矿泉水', 'http://p0.meituan.net/xianfudwm/22f8d62f542e7806c082aa3a2d4f188d168699.jpg', '', 3.00, 308);
INSERT INTO `meituan_goods` VALUES (2938, '可乐', 'http://p1.meituan.net/xianfudwm/7dc3af306c88d93427c40dd6fd799c57139651.jpg', '', 4.00, 308);
INSERT INTO `meituan_goods` VALUES (2939, '过桥毛肚', 'http://p1.meituan.net/xianfudwm/6397c15d76ecdfef39d7cb8c33b96559158932.jpg', '点此菜请电联！13974811810', 68.00, 309);
INSERT INTO `meituan_goods` VALUES (2940, '聪哥到店！', 'http://p0.meituan.net/wmproductdwm/84c0cd825d25cb330dbc46d0328b140c134692.jpg', '', 0.00, 310);
INSERT INTO `meituan_goods` VALUES (2941, '聪哥到店', 'http://p1.meituan.net/wmproductdwm/fd41a70078dab6fd820bf3a2571528f790200.jpg', '', 0.00, 310);
INSERT INTO `meituan_goods` VALUES (2942, '明星到店', 'http://p0.meituan.net/xianfudwm/fc6cf8a843868e168327eaed6ed70be8184717.jpg', '六脉神剑', 0.00, 310);
INSERT INTO `meituan_goods` VALUES (2943, '绿豆稀', 'http://p1.meituan.net/xianfudwm/632759e2878ea1d0e451b33e816a851e124550.jpg', '', 6.00, 311);
INSERT INTO `meituan_goods` VALUES (2944, '甜酒冲蛋', 'http://p1.meituan.net/xianfudwm/7631f1160af1b60b7110842219d8ee0e144799.jpg', '', 8.00, 311);
INSERT INTO `meituan_goods` VALUES (2945, '鸡柳', 'http://p0.meituan.net/wmproduct/f74e4d818d9aeb58d1844770d82d7150279966.jpg', '', 15.00, 312);
INSERT INTO `meituan_goods` VALUES (2946, '里脊肉', 'http://p1.meituan.net/xianfu/40cb6c544d2a3833c5ba1cdb45a5c4de379627.jpg', '', 15.00, 312);
INSERT INTO `meituan_goods` VALUES (2947, '老长沙臭豆腐', 'http://p0.meituan.net/xianfu/8fcd2b61e6f967b0ee0d9821cebf27ec48695.jpg', '', 15.00, 312);
INSERT INTO `meituan_goods` VALUES (2948, '33支蓝色妖姬花束', 'http://p1.meituan.net/wmproduct/faa74de53b7a8d9dcda668e96c710f0b259880.jpg', '下单后可加V15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 520.00, 313);
INSERT INTO `meituan_goods` VALUES (2949, '33朵韩式花束大', 'http://p0.meituan.net/wmproductdwm/09a6e6170bdb1689b294bf92bbd48f3384751.jpg', '下单后可加wei15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 588.00, 313);
INSERT INTO `meituan_goods` VALUES (2950, '33朵蓝色妖姬花束', 'http://p0.meituan.net/wmproduct/0827fdb4c40d46c1ae2ebb758ccf2dfe236280.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 499.00, 313);
INSERT INTO `meituan_goods` VALUES (2951, '33朵红玫瑰黑纱款3号', 'http://p0.meituan.net/wmproduct/845d0731c195d720a43df313fe187973250054.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2952, '33朵香槟花束', 'http://p1.meituan.net/wmproduct/47ea8663307d2ee86f377deb4ced72d1262234.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2953, '33朵带灯黑纱款', 'http://p1.meituan.net/wmproductdwm/220ab2b6be690a57995fef82f2f0a888154590.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 288.00, 313);
INSERT INTO `meituan_goods` VALUES (2954, '33朵红玫瑰石竹梅', 'http://p1.meituan.net/wmproduct/af2245d7739f0dec95a6516a8bb73f73278862.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2955, '33朵黑纱满天星', 'http://p0.meituan.net/wmproductdwm/d0f3efda2221a9efa5e8336393322953366518.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 288.00, 313);
INSERT INTO `meituan_goods` VALUES (2956, '33朵红玫瑰红色包装', 'http://p0.meituan.net/wmproductdwm/c8dc75d76044528f90424ca37d788bb8132253.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2957, '33朵黑色包装3号', 'http://p0.meituan.net/wmproduct/114e9ad6afd92760162264567c7904ca249146.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 288.00, 313);
INSERT INTO `meituan_goods` VALUES (2958, '33朵红玫瑰经典款', 'http://p0.meituan.net/wmproduct/f61e65938772786dacfdae07ee7e4d3340852.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2959, '33朵紫玫瑰', 'http://p0.meituan.net/wmproductdwm/712899c17e1fd955120547ee037d3448167406.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 288.00, 313);
INSERT INTO `meituan_goods` VALUES (2960, '33朵香槟牛皮纸款式', 'http://p0.meituan.net/wmproductdwm/8c30fdabd94ab00fd2a1f437f7d93830140174.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (2961, '33红玫瑰黑纱款', 'http://p0.meituan.net/wmproduct/bbb1f993989591b344111c2a44acf2f5256755.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2962, '33朵香槟黑纱', 'http://p0.meituan.net/wmproduct/a7113a20731cb1ed6f9b120884f28737250747.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (2963, '33朵粉玫瑰黑纱2号', 'http://p0.meituan.net/wmproduct/ef03985ce85284dd1acf69c24ee3ac15281488.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2964, '33朵高档混搭礼盒', 'http://p1.meituan.net/wmproductdwm/82428296a87634e719cc73d15099db55134463.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2965, '33朵混搭缎带款', 'http://p0.meituan.net/wmproduct/536196c4dcb5f57aef76cf12f08cf8a0238933.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2966, '33朵香槟加百合', 'http://p0.meituan.net/wmproductdwm/fc81bc4f3304bd262b069bb4471c646799419.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (2967, '33朵粉玫瑰加娃娃礼盒', 'http://p1.meituan.net/wmproductdwm/5cc1f46c89a8870673bd2cf455068246123824.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (2968, '33朵粉玫瑰牛皮纸款', 'http://p1.meituan.net/wmproduct/302b183b12e4670e925c58de45ad40f1223395.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2969, '33朵红玫瑰黑色包装', 'http://p0.meituan.net/wmproductdwm/16d86545b109a4016fa40bf8f66ffb92151110.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2970, '33朵白玫瑰牛皮纸', 'http://p1.meituan.net/wmproduct/b6953957fcf4b24050a99f52a6c57376116353.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2971, '33朵香槟小菊款', 'http://p0.meituan.net/wmproduct/2bf592c13324f92253879a2200ef2f89228862.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2972, '33朵粉玫瑰礼盒', 'http://p1.meituan.net/wmproductdwm/8de2215ed4cc507c7c171fff294590d9135918.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (2973, '33朵香槟2号', 'http://p1.meituan.net/wmproduct/bd7cb6ff204d20691511d14125851602219249.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2974, '33朵混搭玫瑰3号', 'http://p1.meituan.net/wmproduct/7f737288331522538d17506b7bd70545293462.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2975, '33朵香槟礼盒2款', 'http://p1.meituan.net/wmproductdwm/f7496dce28a5e8056de56bed7d05dae8134471.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (2976, '33朵红玫瑰礼盒5 号', 'http://p1.meituan.net/wmproduct/be88a44262da37e2c0da5ff2560d7551165704.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2977, '33朵粉玫瑰黑纱', 'http://p1.meituan.net/wmproduct/0d486320c1f4f09d39680b228dfe52cf249636.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2978, '33朵香槟颜值款', 'http://p0.meituan.net/wmproduct/5d74606a7acb7f941ad4d83dc8cbece3288102.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 428.00, 313);
INSERT INTO `meituan_goods` VALUES (2979, '33朵粉色香槟色玫瑰', 'http://p1.meituan.net/wmproductdwm/cf7fd319503fbc3feeab92bfd220892893232.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (2980, '33朵紫玫瑰花束', 'http://p1.meituan.net/wmproductdwm/cf107207e775e12d605876225f532dda131910.jpg', '', 458.00, 313);
INSERT INTO `meituan_goods` VALUES (2981, '33朵紫玫瑰实物图', 'http://p1.meituan.net/wmproduct/4bfc36cb3f027d7a320025eba5e11030212462.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 458.00, 313);
INSERT INTO `meituan_goods` VALUES (2982, '33朵香水加娃娃', 'http://p0.meituan.net/wmproduct/b1008ceb2ab47c43523dc03dfafd20a8263105.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2983, '33支粉玫瑰缎带款', 'http://p1.meituan.net/wmproductdwm/1ef42c31a65a7a4f18589c788cca3f36241167.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 288.00, 313);
INSERT INTO `meituan_goods` VALUES (2984, '33朵粉玫瑰', 'http://p1.meituan.net/wmproductdwm/a38237ae9282bc635da038f3b5bc3cf4134936.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2985, '33朵红玫瑰加银叶菊2号', 'http://p1.meituan.net/wmproduct/13979555b8390ebdca714bfe860b5523227313.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2986, '33朵混搭玫瑰花束', 'http://p1.meituan.net/wmproduct/cae4ca7f49e8972902d7ee4700c91961237043.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 429.00, 313);
INSERT INTO `meituan_goods` VALUES (2987, '33朵红玫瑰白色款', 'http://p0.meituan.net/wmproduct/60aa5af14b314fcbaa9f8a6d288a753c227334.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 428.00, 313);
INSERT INTO `meituan_goods` VALUES (2988, '33朵香槟礼盒', 'http://p1.meituan.net/wmproductdwm/224b7e0d0232c7fd7ada81b69b658a90130899.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2989, '33朵红玫瑰加娃娃', 'http://p1.meituan.net/wmproductdwm/668883248c7a7c55c437bc04c50e9d95147595.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2990, '33朵礼盒黑色包装', 'http://p0.meituan.net/wmproductdwm/27365d363e9b5f669c0a797e6bb8194e114529.jpg', '', 268.00, 313);
INSERT INTO `meituan_goods` VALUES (2991, '33朵红玫瑰情人草款', 'http://p0.meituan.net/wmproductdwm/06776bf00e845c7d3999e35721cd23ff126785.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2992, '33朵香槟灰色', 'http://p1.meituan.net/wmproductdwm/9841a476daf641d9f22ef7d9a8d7baa4140192.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2993, '33朵粉玫瑰加娃娃', 'http://p1.meituan.net/wmproductdwm/3771c102b099f4574b6821639eb7fe77211551.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (2994, '33朵红玫瑰1款', 'http://p1.meituan.net/wmproductdwm/7c7b8aa3b2b48c49c1409e9c2efa682e170172.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (2995, '33朵香槟玫瑰加娃娃', 'http://p1.meituan.net/wmproductdwm/b47a2f058e86e01c7ce5db648482a9ab169553.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (2996, '33朵香槟', 'http://p0.meituan.net/wmproductdwm/c0914b441b312ae1177e9ae73ff87d15181814.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2997, '33朵红玫瑰加满天星', 'http://p0.meituan.net/wmproductdwm/a84ebd1d9bd5ceabac09c9730fa8e6ec156614.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2998, '33朵红玫瑰加银叶菊', 'http://p0.meituan.net/wmproductdwm/10b4f7032fae5560948c23e5adba391f137949.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (2999, '33朵红玫瑰', 'http://p0.meituan.net/wmproductdwm/b34060a047d67f7599ff01c8832d2224144705.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (3000, '33朵混搭玫瑰', 'http://p1.meituan.net/wmproductdwm/bacd53665d563207114e7b93ab876c2b69579.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 429.00, 313);
INSERT INTO `meituan_goods` VALUES (3001, '33朵粉玫瑰礼盒2款', 'http://p0.meituan.net/wmproductdwm/a1f918dd00dd962d3b75c9af455b08e080228.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (3002, '33朵混搭玫瑰礼盒', 'http://p0.meituan.net/wmproductdwm/c3a991ed9c48664087ab2a8b9c4fecbe96479.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (3003, '33朵礼盒红玫瑰1号', 'http://p1.meituan.net/wmproductdwm/d605df5478bef35dcaa995f74454929c113461.jpg', '本店图片均为实物图下单后可联系，卡片留言，大型节假日以留言为准15111317056', 268.00, 313);
INSERT INTO `meituan_goods` VALUES (3004, '33朵红玫瑰花束', 'http://p0.meituan.net/wmproductdwm/dfe06c60767237660a7695ece7a3b5aa151228.jpg', '本店图片均为实物图下单后可联系，卡片留言，大型节假日以留言为准15111317056', 399.00, 313);
INSERT INTO `meituan_goods` VALUES (3005, '33朵', 'http://p0.meituan.net/wmproductdwm/23f767cf6ba7bfe8014cfbfc6cccd958187313.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 459.00, 313);
INSERT INTO `meituan_goods` VALUES (3006, '33朵粉色玫瑰', 'http://p1.meituan.net/wmproductdwm/537b85cd2c66e5c94de5ef822525d290211342.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 313);
INSERT INTO `meituan_goods` VALUES (3007, '百合红玫瑰礼盒2号', 'http://p0.meituan.net/wmproduct/7e9122fcec8288c9dc5d8bf1c571e545118950.jpg', '下单后可加V15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 328.00, 314);
INSERT INTO `meituan_goods` VALUES (3008, '生日花束心愿礼盒红玫瑰', 'http://p1.meituan.net/wmproduct/87c60358e1f95d1baddef0a9211b4bf9164571.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 258.00, 314);
INSERT INTO `meituan_goods` VALUES (3009, '19朵红玫瑰礼盒3号', 'http://p0.meituan.net/wmproduct/4579bb6babc29d06717a840ed9efb2fd89811.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，一旦下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 228.00, 314);
INSERT INTO `meituan_goods` VALUES (3010, '11朵红玫瑰礼盒3号', 'http://p1.meituan.net/wmproduct/245674741aa468bda429c5392fb3414d93920.jpg', '下单后可加微15111317056。节日期间订单量大，保证当天送达，不指定时间，请勿催单。平时1-3小时送。鲜花为特殊定制商品，下单后因拒收等各原因拒绝退单。大型节假日卡片以留言为准。', 158.00, 314);

-- ----------------------------
-- Table structure for meituan_goodscategory
-- ----------------------------
DROP TABLE IF EXISTS `meituan_goodscategory`;
CREATE TABLE `meituan_goodscategory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `meituan_goodscategor_merchant_id_857fe7ec_fk_meituan_m`(`merchant_id`) USING BTREE,
  CONSTRAINT `meituan_goodscategor_merchant_id_857fe7ec_fk_meituan_m` FOREIGN KEY (`merchant_id`) REFERENCES `meituan_merchant` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 330 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meituan_goodscategory
-- ----------------------------
INSERT INTO `meituan_goodscategory` VALUES (207, '炸鸡啤酒', 31);
INSERT INTO `meituan_goodscategory` VALUES (208, '夜宵套餐', 31);
INSERT INTO `meituan_goodscategory` VALUES (209, '夜宵单品', 31);
INSERT INTO `meituan_goodscategory` VALUES (210, '桶', 31);
INSERT INTO `meituan_goodscategory` VALUES (211, '现熬好粥', 31);
INSERT INTO `meituan_goodscategory` VALUES (212, '美味汉堡/卷', 31);
INSERT INTO `meituan_goodscategory` VALUES (213, '鸡翅/鸡排', 31);
INSERT INTO `meituan_goodscategory` VALUES (214, '原味鸡', 31);
INSERT INTO `meituan_goodscategory` VALUES (215, '小食/配餐', 31);
INSERT INTO `meituan_goodscategory` VALUES (216, '甜品/冰淇淋', 31);
INSERT INTO `meituan_goodscategory` VALUES (217, '缤纷饮料', 31);
INSERT INTO `meituan_goodscategory` VALUES (218, '美味早餐', 31);
INSERT INTO `meituan_goodscategory` VALUES (219, 'K 咖啡', 31);
INSERT INTO `meituan_goodscategory` VALUES (220, '安格斯黑金系列', 32);
INSERT INTO `meituan_goodscategory` VALUES (221, '单人超值套餐', 32);
INSERT INTO `meituan_goodscategory` VALUES (222, '多人超值组合', 32);
INSERT INTO `meituan_goodscategory` VALUES (223, '金拱门桶', 32);
INSERT INTO `meituan_goodscategory` VALUES (224, '500大卡套餐', 32);
INSERT INTO `meituan_goodscategory` VALUES (225, '主食', 32);
INSERT INTO `meituan_goodscategory` VALUES (226, '小食', 32);
INSERT INTO `meituan_goodscategory` VALUES (227, '饮品', 32);
INSERT INTO `meituan_goodscategory` VALUES (228, '甜品', 32);
INSERT INTO `meituan_goodscategory` VALUES (229, '开心乐园餐', 32);
INSERT INTO `meituan_goodscategory` VALUES (230, '可乐杯只送不卖', 32);
INSERT INTO `meituan_goodscategory` VALUES (231, '早餐主食', 32);
INSERT INTO `meituan_goodscategory` VALUES (232, '西式早餐', 32);
INSERT INTO `meituan_goodscategory` VALUES (233, '中式早餐', 32);
INSERT INTO `meituan_goodscategory` VALUES (234, '小食饮品', 32);
INSERT INTO `meituan_goodscategory` VALUES (235, '绝味招牌（正辣）', 33);
INSERT INTO `meituan_goodscategory` VALUES (236, '绝味素菜（微辣）', 33);
INSERT INTO `meituan_goodscategory` VALUES (237, '汽泡果汁', 33);
INSERT INTO `meituan_goodscategory` VALUES (238, '绝味黑鸭（甜辣）', 33);
INSERT INTO `meituan_goodscategory` VALUES (239, '藤椒系列（麻辣）', 33);
INSERT INTO `meituan_goodscategory` VALUES (240, '酱香系列（微辣）', 33);
INSERT INTO `meituan_goodscategory` VALUES (241, '绝味组合套餐', 33);
INSERT INTO `meituan_goodscategory` VALUES (242, '金牌套餐', 33);
INSERT INTO `meituan_goodscategory` VALUES (243, '夜宵特惠', 34);
INSERT INTO `meituan_goodscategory` VALUES (244, '清爽豆花套餐', 34);
INSERT INTO `meituan_goodscategory` VALUES (245, '特惠商品', 34);
INSERT INTO `meituan_goodscategory` VALUES (246, '大鸡大利', 34);
INSERT INTO `meituan_goodscategory` VALUES (247, '家常小炒', 34);
INSERT INTO `meituan_goodscategory` VALUES (248, '无肉不欢', 34);
INSERT INTO `meituan_goodscategory` VALUES (249, '精选煲仔', 34);
INSERT INTO `meituan_goodscategory` VALUES (250, '排骨腊味', 34);
INSERT INTO `meituan_goodscategory` VALUES (251, '汤羹佐饮', 34);
INSERT INTO `meituan_goodscategory` VALUES (252, '劲爽牛肉', 34);
INSERT INTO `meituan_goodscategory` VALUES (253, '温馨提示', 34);
INSERT INTO `meituan_goodscategory` VALUES (254, '小龙虾', 35);
INSERT INTO `meituan_goodscategory` VALUES (255, '点虾，送面条', 35);
INSERT INTO `meituan_goodscategory` VALUES (256, '老口子私房菜', 35);
INSERT INTO `meituan_goodscategory` VALUES (257, '岳阳大串烤肉', 35);
INSERT INTO `meituan_goodscategory` VALUES (258, '岳阳烧烤素菜', 35);
INSERT INTO `meituan_goodscategory` VALUES (259, '主食', 35);
INSERT INTO `meituan_goodscategory` VALUES (260, '凉菜', 35);
INSERT INTO `meituan_goodscategory` VALUES (261, '特价虾尾套餐', 35);
INSERT INTO `meituan_goodscategory` VALUES (262, '酒水饮料', 35);
INSERT INTO `meituan_goodscategory` VALUES (263, '特价口味虾套餐', 35);
INSERT INTO `meituan_goodscategory` VALUES (264, '满减优惠区', 36);
INSERT INTO `meituan_goodscategory` VALUES (265, '为上帝服务区', 36);
INSERT INTO `meituan_goodscategory` VALUES (266, '温馨提示', 36);
INSERT INTO `meituan_goodscategory` VALUES (267, '西部面食', 37);
INSERT INTO `meituan_goodscategory` VALUES (268, '盖浇面', 37);
INSERT INTO `meituan_goodscategory` VALUES (269, '盖码饭', 37);
INSERT INTO `meituan_goodscategory` VALUES (270, '炒饭', 37);
INSERT INTO `meituan_goodscategory` VALUES (271, '水饺', 37);
INSERT INTO `meituan_goodscategory` VALUES (272, '汤类', 37);
INSERT INTO `meituan_goodscategory` VALUES (273, '特色凉菜', 37);
INSERT INTO `meituan_goodscategory` VALUES (274, '特色炒菜', 37);
INSERT INTO `meituan_goodscategory` VALUES (275, '另加', 37);
INSERT INTO `meituan_goodscategory` VALUES (276, '自由搭配，随心所欲', 39);
INSERT INTO `meituan_goodscategory` VALUES (277, '精选套餐', 39);
INSERT INTO `meituan_goodscategory` VALUES (278, '饮品', 39);
INSERT INTO `meituan_goodscategory` VALUES (279, '免费餐具', 41);
INSERT INTO `meituan_goodscategory` VALUES (280, '超值热卖套餐', 41);
INSERT INTO `meituan_goodscategory` VALUES (281, '水饺整份15个', 41);
INSERT INTO `meituan_goodscategory` VALUES (282, '水饺半份8个', 41);
INSERT INTO `meituan_goodscategory` VALUES (283, '饮料(夏日大作战)', 41);
INSERT INTO `meituan_goodscategory` VALUES (284, '开胃凉拌菜', 41);
INSERT INTO `meituan_goodscategory` VALUES (285, '全家福水饺', 41);
INSERT INTO `meituan_goodscategory` VALUES (286, '特色煎饺 口味随机', 41);
INSERT INTO `meituan_goodscategory` VALUES (287, '套餐区', 41);
INSERT INTO `meituan_goodscategory` VALUES (288, '小吃、手抓饼', 41);
INSERT INTO `meituan_goodscategory` VALUES (289, '馄饨-汤圆', 41);
INSERT INTO `meituan_goodscategory` VALUES (290, '爱心❤贴士', 41);
INSERT INTO `meituan_goodscategory` VALUES (291, '0元抢购', 42);
INSERT INTO `meituan_goodscategory` VALUES (292, '雨雪天气，如有延迟敬', 42);
INSERT INTO `meituan_goodscategory` VALUES (293, '本店招牌', 42);
INSERT INTO `meituan_goodscategory` VALUES (294, '小炒菜', 42);
INSERT INTO `meituan_goodscategory` VALUES (295, '主食', 42);
INSERT INTO `meituan_goodscategory` VALUES (296, '酒水饮料', 42);
INSERT INTO `meituan_goodscategory` VALUES (297, '凉菜', 42);
INSERT INTO `meituan_goodscategory` VALUES (298, '特色商品', 42);
INSERT INTO `meituan_goodscategory` VALUES (299, '联系方式(选填项)', 42);
INSERT INTO `meituan_goodscategory` VALUES (300, '待开始...', 42);
INSERT INTO `meituan_goodscategory` VALUES (301, '热卤四合一（外卖）', 43);
INSERT INTO `meituan_goodscategory` VALUES (302, '口味菜（外卖）', 43);
INSERT INTO `meituan_goodscategory` VALUES (303, '印度飞饼（外卖）', 43);
INSERT INTO `meituan_goodscategory` VALUES (304, '饱肚（外卖）', 43);
INSERT INTO `meituan_goodscategory` VALUES (305, '老火炖汤（外卖）', 43);
INSERT INTO `meituan_goodscategory` VALUES (306, '凉菜（外卖）', 43);
INSERT INTO `meituan_goodscategory` VALUES (307, '卤（外卖）', 43);
INSERT INTO `meituan_goodscategory` VALUES (308, '酒水饮料（外卖）', 43);
INSERT INTO `meituan_goodscategory` VALUES (309, '过桥毛肚（外卖）', 43);
INSERT INTO `meituan_goodscategory` VALUES (310, '明星到店', 43);
INSERT INTO `meituan_goodscategory` VALUES (311, '甜点（外卖）', 43);
INSERT INTO `meituan_goodscategory` VALUES (312, '炸炸炸', 43);
INSERT INTO `meituan_goodscategory` VALUES (313, '33朵玫瑰', 44);
INSERT INTO `meituan_goodscategory` VALUES (314, '精美礼盒', 44);
INSERT INTO `meituan_goodscategory` VALUES (315, '鲜花花束', 44);
INSERT INTO `meituan_goodscategory` VALUES (316, '情人节预订', 44);
INSERT INTO `meituan_goodscategory` VALUES (317, '巧克力', 44);
INSERT INTO `meituan_goodscategory` VALUES (318, '满天星', 44);
INSERT INTO `meituan_goodscategory` VALUES (319, '99朵玫瑰', 44);
INSERT INTO `meituan_goodscategory` VALUES (320, '韩式花束', 44);
INSERT INTO `meituan_goodscategory` VALUES (321, '百合花束', 44);
INSERT INTO `meituan_goodscategory` VALUES (322, '向日葵花束', 44);
INSERT INTO `meituan_goodscategory` VALUES (323, '单枝花120起送', 44);
INSERT INTO `meituan_goodscategory` VALUES (327, '11', 31);
INSERT INTO `meituan_goodscategory` VALUES (329, '酒水', 31);

-- ----------------------------
-- Table structure for meituan_merchant
-- ----------------------------
DROP TABLE IF EXISTS `meituan_merchant`;
CREATE TABLE `meituan_merchant`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `up_send` decimal(6, 2) NOT NULL,
  `lon` double NOT NULL,
  `lat` double NOT NULL,
  `created_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `meituan_merchant_created_id_e14bc127_fk_mtauth_mtuser_uid`(`created_id`) USING BTREE,
  CONSTRAINT `meituan_merchant_created_id_e14bc127_fk_mtauth_mtuser_uid` FOREIGN KEY (`created_id`) REFERENCES `mtauth_mtuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meituan_merchant
-- ----------------------------
INSERT INTO `meituan_merchant` VALUES (31, '肯德基(花城店)', '湖南省长沙市天心区花城路211号', 'http://p1.meituan.net/xianfu/33c48a92a31a21e4bf32d3aa7c1c5c0d16649.jpg', '欢迎光临肯德基宅急送，专业外送，全程保温，准时送达！', 0.00, 22, 22, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (32, '麦当劳万家丽店', '长沙市', 'http://p1.meituan.net/xianfu/f85a2370d6f23866e8e16efce56ecd1015464.jpg', NULL, 10.00, 22, 11, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (33, '绝味鸭脖', '长沙市', 'http://p1.meituan.net/waimaipoi/bb937d469c2cb7f44ca572797f295fbb35261.jpg', 'xxxxxxxxxxxxxxxxxx', 0.00, 12, 22, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (34, '香他她煲仔饭', '长沙市', 'http://p0.meituan.net/waimaipoi/ec85ed20652422502d61abd44b0d7dcf36349.jpg', NULL, 0.00, 12, 22, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (35, '老长沙虾馆', '长沙市', 'http://p1.meituan.net/waimaipoi/35843e3d6fca99c7dbe90a106abef027223326.jpg', NULL, 0.00, 12, 22, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (36, '美林烧烤', '长沙市', 'http://p1.meituan.net/waimaipoi/08cd41e5dd478efd2c4cd935eeee5d9e36864.jpg', NULL, 0.00, 12, 22, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (37, '兰州拉面', '长沙市', 'http://p0.meituan.net/waimaipoi/0b183b65e3bbe4ca572dd15e53a9133424018.jpg', NULL, 0.00, 12, 22, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (38, '新佳宜', '长沙市', 'http://p1.meituan.net/waimaipoi/20a3a4ab4fca667e81e602b495936f0c36773.jpg', NULL, 0.00, 11, 22, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (39, '螺蛳粉', '长沙市', 'http://p1.meituan.net/waimaipoi/a953c08c78e5e6ac8c599aaedb7c075d34608.jpg', NULL, 10.00, 22, 11, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (40, '蛮有味麻辣烫', '长沙市', 'http://p0.meituan.net/waimaipoi/4c78f294b8e0996bc936c35bf98656eb38912.jpg', NULL, 0.00, 11, 22, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (41, '正宗东北饺子馆', '长沙市', 'http://p1.meituan.net/waimaipoi/295e75ea990e209287f5a1c6df447a3232768.jpg', NULL, 0.00, 11, 22, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (42, '文和友', '长沙市', 'http://p1.meituan.net/business/78497f8bbcdec30fa60209eb9091f4ab239826.jpg', NULL, 0.00, 33, 22, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (43, '丹丹热卤', '长沙市', 'http://p0.meituan.net/waimaipoi/b9c007777606a2b087f90a0db8641cb615857.jpg', NULL, 0.00, 54, 34, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (44, '诗情花艺', '长沙市', 'http://p1.meituan.net/waimaipoi/5931448af756d8ba2169734b02042b80198656.jpg', NULL, 0.00, 76, 55, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (46, '麻辣烫', '是', 'http://127.0.0.1:8000/media/BhXgq7UMRSsAkTJNrymL9J.jpg', '', 0.00, 111, 222, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (47, '叫了个鸡', '山东', 'http://127.0.0.1:8000/media/ayBvGdY4jE8sjZgQD462kW.jpg', '', 0.00, 23, 23, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (48, 'ss', 'sa', 'http://127.0.0.1:8000/media/urfvQ2xUbVAndov6EH5rbJ.jpg', '', 0.00, 23, 12, NULL, '2020-01-30 13:31:33.502734');
INSERT INTO `meituan_merchant` VALUES (49, '大虾1', '都是', 'http://127.0.0.1:8000/media/3ndiu5jmSsrLNAxyeuVoAo.jpg', '', 0.00, 23, 43, NULL, '2020-01-30 13:32:44.032361');

-- ----------------------------
-- Table structure for meituan_order
-- ----------------------------
DROP TABLE IF EXISTS `meituan_order`;
CREATE TABLE `meituan_order`  (
  `order_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pay_method` smallint(6) NOT NULL,
  `order_status` smallint(6) NOT NULL,
  `goods_count` smallint(6) NOT NULL,
  `total_price` decimal(10, 2) NOT NULL,
  `address_id` int(11) NOT NULL,
  `user_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `meituan_order_address_id_97eebaf2_fk_meituan_useraddress_id`(`address_id`) USING BTREE,
  INDEX `meituan_order_user_id_eeae4f46_fk_mtauth_mtuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `meituan_order_address_id_97eebaf2_fk_meituan_useraddress_id` FOREIGN KEY (`address_id`) REFERENCES `meituan_useraddress` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `meituan_order_user_id_eeae4f46_fk_mtauth_mtuser_id` FOREIGN KEY (`user_id`) REFERENCES `mtauth_mtuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meituan_order
-- ----------------------------
INSERT INTO `meituan_order` VALUES ('202002051602155092', 0, 1, 2, 54.50, 1, 'FpwGxvcS9cnSFPdduKrUAo');
INSERT INTO `meituan_order` VALUES ('202002051717574615', 0, 1, 2, 54.50, 1, 'FpwGxvcS9cnSFPdduKrUAo');
INSERT INTO `meituan_order` VALUES ('202002051718503405', 0, 1, 2, 54.50, 1, 'FpwGxvcS9cnSFPdduKrUAo');
INSERT INTO `meituan_order` VALUES ('202002051720106425', 0, 1, 2, 54.50, 1, 'FpwGxvcS9cnSFPdduKrUAo');

-- ----------------------------
-- Table structure for meituan_order_goods_list
-- ----------------------------
DROP TABLE IF EXISTS `meituan_order_goods_list`;
CREATE TABLE `meituan_order_goods_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `meituan_order_goods_list_order_id_goods_id_9b37072e_uniq`(`order_id`, `goods_id`) USING BTREE,
  INDEX `meituan_order_goods_list_goods_id_f63e578f_fk_meituan_goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `meituan_order_goods__order_id_e42b4640_fk_meituan_o` FOREIGN KEY (`order_id`) REFERENCES `meituan_order` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `meituan_order_goods_list_goods_id_f63e578f_fk_meituan_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `meituan_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meituan_order_goods_list
-- ----------------------------
INSERT INTO `meituan_order_goods_list` VALUES (1, '202002051602155092', 2011);
INSERT INTO `meituan_order_goods_list` VALUES (2, '202002051602155092', 2012);
INSERT INTO `meituan_order_goods_list` VALUES (3, '202002051717574615', 2011);
INSERT INTO `meituan_order_goods_list` VALUES (4, '202002051717574615', 2012);
INSERT INTO `meituan_order_goods_list` VALUES (5, '202002051718503405', 2011);
INSERT INTO `meituan_order_goods_list` VALUES (6, '202002051718503405', 2012);
INSERT INTO `meituan_order_goods_list` VALUES (7, '202002051720106425', 2011);
INSERT INTO `meituan_order_goods_list` VALUES (8, '202002051720106425', 2012);

-- ----------------------------
-- Table structure for meituan_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `meituan_useraddress`;
CREATE TABLE `meituan_useraddress`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `county` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_detail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `meituan_useraddress_user_id_46e4f123_fk_mtauth_mtuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `meituan_useraddress_user_id_46e4f123_fk_mtauth_mtuser_id` FOREIGN KEY (`user_id`) REFERENCES `mtauth_mtuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meituan_useraddress
-- ----------------------------
INSERT INTO `meituan_useraddress` VALUES (1, '燕康佳', '18532200945', '北京市', '北京市', '海淀区', '水电费', '110108', 1, 'FpwGxvcS9cnSFPdduKrUAo');
INSERT INTO `meituan_useraddress` VALUES (2, '北北', '15566667777', '天津市', '天津市', '和平区', '商店商店', '120101', 0, 'FpwGxvcS9cnSFPdduKrUAo');

-- ----------------------------
-- Table structure for mtauth_mtuser
-- ----------------------------
DROP TABLE IF EXISTS `mtauth_mtuser`;
CREATE TABLE `mtauth_mtuser`  (
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_merchant` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `telephone`(`telephone`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mtauth_mtuser
-- ----------------------------
INSERT INTO `mtauth_mtuser` VALUES ('pbkdf2_sha256$150000$n3Zys7pQ1VaI$xWIGaUFi6J3ZDyrlJ63rIIwS0NcD7ZNsm7scJTQ+MOA=', '2020-02-04 16:31:03.774115', 1, 'FpwGxvcS9cnSFPdduKrUAo', '18532200945', NULL, 'admin', '', '2020-01-27 22:26:50.611619', 1, 1, 0);
INSERT INTO `mtauth_mtuser` VALUES ('', '2020-02-02 17:16:30.967362', 0, 'FUKxaK26vVa7XPJzW3BdcK', '15600302429', NULL, '美团用户838943', '', '2020-02-02 14:23:35.996652', 1, 0, 0);

-- ----------------------------
-- Table structure for mtauth_mtuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `mtauth_mtuser_groups`;
CREATE TABLE `mtauth_mtuser_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mtuser_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mtauth_mtuser_groups_mtuser_id_group_id_b528428d_uniq`(`mtuser_id`, `group_id`) USING BTREE,
  INDEX `mtauth_mtuser_groups_group_id_7a5ba333_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `mtauth_mtuser_groups_group_id_7a5ba333_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mtauth_mtuser_groups_mtuser_id_355cb2b4_fk_mtauth_mtuser_id` FOREIGN KEY (`mtuser_id`) REFERENCES `mtauth_mtuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mtauth_mtuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `mtauth_mtuser_user_permissions`;
CREATE TABLE `mtauth_mtuser_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mtuser_id` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mtauth_mtuser_user_permi_mtuser_id_permission_id_99e8b21b_uniq`(`mtuser_id`, `permission_id`) USING BTREE,
  INDEX `mtauth_mtuser_user_p_permission_id_80b5611d_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `mtauth_mtuser_user_p_mtuser_id_77b03327_fk_mtauth_mt` FOREIGN KEY (`mtuser_id`) REFERENCES `mtauth_mtuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mtauth_mtuser_user_p_permission_id_80b5611d_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
