/*
 Navicat Premium Data Transfer

 Source Server         : mySQL
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : e-shop

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 12/10/2022 16:25:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL DEFAULT 0,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Adidas', 0, 'adidas', '2022-10-05 05:55:04', '2022-10-05 05:55:04', NULL);
INSERT INTO `categories` VALUES (2, 'Nike', 0, 'nike', '2022-10-05 05:55:11', '2022-10-05 05:55:11', NULL);
INSERT INTO `categories` VALUES (3, 'New Balance', 0, 'new-balance', '2022-10-05 05:55:20', '2022-10-05 05:55:20', NULL);
INSERT INTO `categories` VALUES (4, 'Vans', 0, 'vans', '2022-10-05 05:55:31', '2022-10-05 05:55:31', NULL);
INSERT INTO `categories` VALUES (5, 'Converse', 0, 'converse', '2022-10-05 05:55:37', '2022-10-05 05:55:41', NULL);
INSERT INTO `categories` VALUES (6, 'Alexander McQueen', 0, 'alexander-mcqueen', '2022-10-05 05:56:28', '2022-10-05 07:51:45', '2022-10-05 07:51:45');
INSERT INTO `categories` VALUES (7, 'Balenciaga', 0, 'balenciaga', '2022-10-05 05:56:34', '2022-10-05 05:56:34', NULL);
INSERT INTO `categories` VALUES (8, 'Adidas Superstar', 1, 'adidas-superstar', '2022-10-05 05:57:05', '2022-10-05 05:57:05', NULL);
INSERT INTO `categories` VALUES (9, 'Adidas Stansmith', 1, 'adidas-stansmith', '2022-10-05 05:57:14', '2022-10-05 05:57:14', NULL);
INSERT INTO `categories` VALUES (10, 'Adidas Alphabounce', 1, 'adidas-alphabounce', '2022-10-05 05:57:44', '2022-10-05 05:57:44', NULL);
INSERT INTO `categories` VALUES (11, 'Adidas Prophere', 1, 'adidas-prophere', '2022-10-05 05:58:15', '2022-10-05 06:55:59', '2022-10-05 06:55:59');
INSERT INTO `categories` VALUES (12, 'Adidas Yeezy', 1, 'adidas-yeezy', '2022-10-05 05:59:43', '2022-10-05 05:59:43', NULL);
INSERT INTO `categories` VALUES (13, 'Nike Air Force 1', 2, 'nike-air-force-1', '2022-10-05 05:59:59', '2022-10-05 05:59:59', NULL);
INSERT INTO `categories` VALUES (14, 'Nike Jordan', 2, 'nike-jordan', '2022-10-05 06:00:18', '2022-10-05 06:00:18', NULL);
INSERT INTO `categories` VALUES (15, 'Nike Air Max', 2, 'nike-air-max', '2022-10-05 06:00:34', '2022-10-05 06:00:34', NULL);
INSERT INTO `categories` VALUES (16, 'Nike Air Max 97', 2, 'nike-air-max-97', '2022-10-05 06:00:59', '2022-10-05 07:07:46', '2022-10-05 07:07:46');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'Menu 1', 0, NULL, '2022-09-28 02:06:30', '', '2022-09-28 02:06:30');
INSERT INTO `menus` VALUES (2, 'Menu 2', 0, NULL, '2022-09-28 02:06:28', '', '2022-09-28 02:06:28');
INSERT INTO `menus` VALUES (3, 'Menu 3', 0, NULL, '2022-09-28 02:06:26', '', '2022-09-28 02:06:26');
INSERT INTO `menus` VALUES (4, 'Menu 1.1', 1, NULL, '2022-09-28 02:06:24', '', '2022-09-28 02:06:24');
INSERT INTO `menus` VALUES (5, 'Menu 1.2', 1, NULL, '2022-09-28 02:06:22', '', '2022-09-28 02:06:22');
INSERT INTO `menus` VALUES (6, 'Menu 1.1.1', 4, NULL, '2022-09-28 02:06:20', '', '2022-09-28 02:06:20');
INSERT INTO `menus` VALUES (7, 'Menu 1.2.1', 5, NULL, '2022-09-28 02:06:17', '', '2022-09-28 02:06:17');
INSERT INTO `menus` VALUES (8, 'Menu 2.1', 2, NULL, '2022-09-28 02:06:14', '', '2022-09-28 02:06:14');
INSERT INTO `menus` VALUES (9, 'Menu 1.1.2', 4, '2022-07-21 09:14:34', '2022-09-28 02:06:00', '', '2022-09-28 02:06:00');
INSERT INTO `menus` VALUES (10, 'Menu 4', 0, '2022-07-21 09:18:46', '2022-07-21 10:28:24', '', '2022-07-21 10:28:24');
INSERT INTO `menus` VALUES (11, 'Menu 4.1', 10, '2022-07-21 09:18:58', '2022-07-21 10:28:26', '', '2022-07-21 10:28:26');
INSERT INTO `menus` VALUES (12, 'Menu 3.1', 3, '2022-07-21 09:19:13', '2022-09-28 02:06:11', '', '2022-09-28 02:06:11');
INSERT INTO `menus` VALUES (13, 'Menu 5', 0, '2022-07-21 09:39:02', '2022-07-21 10:28:21', 'menu-5', '2022-07-21 10:28:21');
INSERT INTO `menus` VALUES (14, 'Dev', 3, '2022-09-28 01:59:02', '2022-09-28 02:06:06', 'dev', '2022-09-28 02:06:06');
INSERT INTO `menus` VALUES (15, 'Menu 1', 0, '2022-09-28 02:06:37', '2022-09-28 02:06:37', 'menu-1', NULL);
INSERT INTO `menus` VALUES (16, 'Menu 2', 0, '2022-09-28 02:06:44', '2022-09-28 02:06:44', 'menu-2', NULL);
INSERT INTO `menus` VALUES (17, 'Menu 1.1', 15, '2022-09-28 02:06:52', '2022-09-28 02:06:52', 'menu-11', NULL);
INSERT INTO `menus` VALUES (18, 'Menu 1.2', 15, '2022-09-28 02:07:03', '2022-09-28 02:07:03', 'menu-12', NULL);
INSERT INTO `menus` VALUES (19, 'Menu 2.1', 16, '2022-09-28 02:07:11', '2022-09-28 02:07:11', 'menu-21', NULL);
INSERT INTO `menus` VALUES (20, 'menu 2.2', 16, '2022-09-28 02:07:25', '2022-09-28 02:07:25', 'menu-22', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_07_05_163451_create_menus_table', 2);
INSERT INTO `migrations` VALUES (6, '2022_07_18_075710_create_categories_table', 3);
INSERT INTO `migrations` VALUES (7, '2022_07_18_175844_add_column_deleted_at_table_categories', 4);
INSERT INTO `migrations` VALUES (8, '2022_07_21_080914_create_menus_table', 5);
INSERT INTO `migrations` VALUES (9, '2022_07_21_093303_add_column_slug_to_menus_table', 6);
INSERT INTO `migrations` VALUES (10, '2022_07_21_102313_add_column_soft_delete_to_menus', 7);
INSERT INTO `migrations` VALUES (11, '2022_08_06_015110_create_products_table', 8);
INSERT INTO `migrations` VALUES (12, '2022_08_06_015348_create_product_images_table', 8);
INSERT INTO `migrations` VALUES (13, '2022_08_06_015458_create_tags_table', 8);
INSERT INTO `migrations` VALUES (14, '2022_08_06_015539_create_product_tags_table', 8);
INSERT INTO `migrations` VALUES (15, '2022_08_11_174100_add_column_feature_image_name', 8);
INSERT INTO `migrations` VALUES (16, '2022_08_11_180352_add_column_image_name_to_table_product_image', 8);
INSERT INTO `migrations` VALUES (17, '2022_08_18_143201_add_cloumn_deleted_at_toproduct_table', 9);
INSERT INTO `migrations` VALUES (18, '2022_08_21_002735_create_sliders_table', 9);
INSERT INTO `migrations` VALUES (19, '2022_08_24_213643_add_column_deleted_at_to_sliders', 9);
INSERT INTO `migrations` VALUES (20, '2022_09_12_031112_create_settings_table', 10);
INSERT INTO `migrations` VALUES (21, '2022_09_16_023735_create_roles_table', 10);
INSERT INTO `migrations` VALUES (22, '2022_09_16_023938_create_permissions_table', 10);
INSERT INTO `migrations` VALUES (23, '2022_09_16_024043_create_table_user_role', 10);
INSERT INTO `migrations` VALUES (24, '2022_09_16_024227_create_table_permission_role', 10);
INSERT INTO `migrations` VALUES (25, '2022_09_16_084640_add_column_deleted_at_table_user', 10);
INSERT INTO `migrations` VALUES (26, '2022_09_17_011105_add_column_parent_id_permission', 10);
INSERT INTO `migrations` VALUES (27, '2022_09_23_035027_add_column_key_permission_table', 11);
INSERT INTO `migrations` VALUES (28, '2022_10_01_152447_add_column_views_products', 12);
INSERT INTO `migrations` VALUES (29, '2022_10_03_075158_create_permission_tables', 13);
INSERT INTO `migrations` VALUES (30, '2022_10_04_083752_create_orders_table', 14);
INSERT INTO `migrations` VALUES (31, '2022_10_04_084312_create_order_items_table', 14);

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES (1, '5', 'Dev2', '249000', '15', '2022-10-04 09:06:02', '2022-10-04 09:06:02');
INSERT INTO `order_items` VALUES (2, '5', 'Dev1', '249000', '20', '2022-10-04 09:06:02', '2022-10-04 09:06:02');
INSERT INTO `order_items` VALUES (3, '6', 'Dev2', '249000', '4', '2022-10-04 09:08:56', '2022-10-04 09:08:56');
INSERT INTO `order_items` VALUES (4, '6', 'Dev3', '249000', '4', '2022-10-04 09:08:57', '2022-10-04 09:08:57');
INSERT INTO `order_items` VALUES (5, '6', 'Dev4', '249000', '4', '2022-10-04 09:08:57', '2022-10-04 09:08:57');
INSERT INTO `order_items` VALUES (6, '7', 'Balenciaga Triple S Clear Sole Orange Grey Black', '1450000', '1', '2022-10-06 05:59:39', '2022-10-06 05:59:39');
INSERT INTO `order_items` VALUES (7, '8', 'Balenciaga Triple S Trainer White', '1750000', '1', '2022-10-06 06:16:10', '2022-10-06 06:16:10');
INSERT INTO `order_items` VALUES (8, '9', 'Converse Fear of God Essentials', '1450000', '1', '2022-10-06 06:17:50', '2022-10-06 06:17:50');
INSERT INTO `order_items` VALUES (9, '10', 'Balenciaga Triple S Clear Sole Orange Grey Black', '1450000', '1', '2022-10-06 07:56:53', '2022-10-06 07:56:53');
INSERT INTO `order_items` VALUES (10, '10', 'Adidas Superstar 20 \"Golden Brand/Black Stripes\"', '1450000', '1', '2022-10-06 07:56:53', '2022-10-06 07:56:53');
INSERT INTO `order_items` VALUES (11, '10', 'New Balance 327 Moonbeam Gum', '1750000', '1', '2022-10-06 07:56:53', '2022-10-06 07:56:53');
INSERT INTO `order_items` VALUES (12, '10', 'Converse Chuck 70 Low ‘Flames’', '1250000', '1', '2022-10-06 07:56:53', '2022-10-06 07:56:53');
INSERT INTO `order_items` VALUES (13, '11', 'Balenciaga Triple S Trainer White', '1750000', '1', '2022-10-06 08:00:51', '2022-10-06 08:00:51');
INSERT INTO `order_items` VALUES (14, '12', 'Balenciaga Triple S Clear Sole White Transparent', '1550000', '1', '2022-10-06 08:01:26', '2022-10-06 08:01:26');
INSERT INTO `order_items` VALUES (15, '13', 'Adidas Superstar 20 \"Golden Brand/Black Stripes\"', '1450000', '4', '2022-10-12 09:10:12', '2022-10-12 09:10:12');
INSERT INTO `order_items` VALUES (16, '13', 'Balenciaga Triple S Clear Sole Orange Grey Black', '1450000', '3', '2022-10-12 09:10:12', '2022-10-12 09:10:12');
INSERT INTO `order_items` VALUES (17, '13', 'Converse Chuck 70 Low ‘Flames’', '1250000', '1', '2022-10-12 09:10:12', '2022-10-12 09:10:12');
INSERT INTO `order_items` VALUES (18, '13', 'Adidas Stan Smith \"Dark Blue\"', '1450000', '1', '2022-10-12 09:10:12', '2022-10-12 09:10:12');
INSERT INTO `order_items` VALUES (19, '13', 'Vans Style 36 Decon SF Black Pont', '1250000', '1', '2022-10-12 09:10:12', '2022-10-12 09:10:12');
INSERT INTO `order_items` VALUES (20, '13', 'New Balance 327 Moonbeam Gum', '1750000', '1', '2022-10-12 09:10:12', '2022-10-12 09:10:12');
INSERT INTO `order_items` VALUES (21, '13', 'Nike Air Force 1 Shadow \"Triple White\"', '1250000', '1', '2022-10-12 09:10:12', '2022-10-12 09:10:12');
INSERT INTO `order_items` VALUES (22, '13', 'New Balance 550 ‘White Pink’', '2450000', '1', '2022-10-12 09:10:12', '2022-10-12 09:10:12');
INSERT INTO `order_items` VALUES (23, '13', 'Adidas Stansmith Mule \"Green Classic\"', '1450000', '1', '2022-10-12 09:10:12', '2022-10-12 09:10:12');
INSERT INTO `order_items` VALUES (24, '13', 'Adidas Yeezy 350 V2 \"Slate\"', '1350000', '1', '2022-10-12 09:10:12', '2022-10-12 09:10:12');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 0,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'Thasi', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Nam Tu Liem', 'Ha Noi', '10000', 1, NULL, '2022-10-04 09:03:31', '2022-10-04 09:03:31');
INSERT INTO `orders` VALUES (2, 'Thasi', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Nam Tu Liem', 'Ha Noi', '10000', 0, NULL, '2022-10-04 09:03:55', '2022-10-04 09:03:55');
INSERT INTO `orders` VALUES (3, 'Thasi', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Nam Tu Liem', 'Ha Noi', '10000', 0, NULL, '2022-10-04 09:04:07', '2022-10-04 09:04:07');
INSERT INTO `orders` VALUES (4, 'Thasi', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Nam Tu Liem', 'Ha Noi', '10000', 0, NULL, '2022-10-04 09:05:27', '2022-10-04 09:05:27');
INSERT INTO `orders` VALUES (5, 'Thasi', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Nam Tu Liem', 'Ha Noi', '10000', 0, NULL, '2022-10-04 09:06:02', '2022-10-04 09:06:02');
INSERT INTO `orders` VALUES (6, 'Super Idol', 'admin@gmail.com', '0962324697', 'Yen Hoa ,Cau Giay , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Cau Giay', 'Ha Noi', '10000', 0, NULL, '2022-10-04 09:08:56', '2022-10-04 09:08:56');
INSERT INTO `orders` VALUES (7, 'Thasi', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Nam Tu Liem', 'Ha Noi', '10000', 0, NULL, '2022-10-06 05:59:39', '2022-10-06 05:59:39');
INSERT INTO `orders` VALUES (8, 'Thasi', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Nam Tu Liem', 'Ha Noi', '10000', 1, NULL, '2022-10-06 06:16:10', '2022-10-06 06:16:10');
INSERT INTO `orders` VALUES (9, 'Thinh', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Cau Giay', 'Ha Noi', '10000', 0, NULL, '2022-10-06 06:17:50', '2022-10-06 06:17:50');
INSERT INTO `orders` VALUES (10, 'Pham Hong Thai', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Nam Tu Liem', 'Ha Noi', '10000', 0, NULL, '2022-10-06 07:56:53', '2022-10-06 07:56:53');
INSERT INTO `orders` VALUES (11, 'Thasi', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Nam Tu Liem', 'Ha Noi', '10000', 0, NULL, '2022-10-06 08:00:51', '2022-10-06 08:00:51');
INSERT INTO `orders` VALUES (12, 'Thasi', 'thaihongpham0212@gmail.com', '0962324697', 'Phu Do , Nam Tu Liem , Ha Noi', 'Tay Phong , Tien Hai , Thai Binh', 'Nam Tu Liem', 'Ha Noi', '10000', 0, NULL, '2022-10-06 08:01:26', '2022-10-06 08:01:26');
INSERT INTO `orders` VALUES (13, 'Hong Thinh', 'thaihongpham0212@gmail.com', '0962324697', 'Tay Phong , Tien Hai , Thai Binh', 'Tay Phong , Tien Hai , Thai Binh', 'Tien Hai', 'Thai Binh', '12345', 0, NULL, '2022-10-12 09:10:12', '2022-10-12 09:10:12');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'user-menu', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (2, 'user-list', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (3, 'user-create', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (4, 'user-edit', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (5, 'user-delete', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (6, 'role-menu', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (7, 'role-list', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (8, 'role-create', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (9, 'role-edit', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (10, 'role-delete', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (11, 'permission-menu', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (12, 'permission-list', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (13, 'permission-create', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (14, 'permission-edit', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');
INSERT INTO `permissions` VALUES (15, 'permission-delete', 'web', '2022-10-03 08:29:45', '2022-10-03 08:29:45');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for product_images
-- ----------------------------
DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_images
-- ----------------------------
INSERT INTO `product_images` VALUES (4, '/storage/products/1/5uurTgLVz801l2Uv5bIV.jpg', 2, '2022-08-26 22:47:51', '2022-08-26 22:47:51', 'testimonial-1.jpg');
INSERT INTO `product_images` VALUES (5, '/storage/products/1/Xt8wkX6FXou6Partsu2y.jpg', 2, '2022-08-26 22:47:51', '2022-08-26 22:47:51', 'testimonial-2.jpg');
INSERT INTO `product_images` VALUES (6, '/storage/products/1/yjPRFMamrAhfeboDGLHm.jpg', 2, '2022-08-26 22:47:51', '2022-08-26 22:47:51', 'user.jpg');
INSERT INTO `product_images` VALUES (7, '/storage/products/5/EuWp8EBaMim6mpGF12vf.jpg', 3, '2022-09-28 02:04:14', '2022-09-28 02:04:14', '66331_ban_phim_co_edra_ek387l_mau_den_red_sw_usbc_huano_0002_3.jpg');
INSERT INTO `product_images` VALUES (8, '/storage/products/5/u4Vqz05iHfvZ6iZL5vFA.png', 3, '2022-09-28 02:04:14', '2022-09-28 02:04:14', '296833622_587283236449137_2094786813492442790_n.png');
INSERT INTO `product_images` VALUES (9, '/storage/products/5/tZfBja56bnHP5AAsfoNK.png', 3, '2022-09-28 02:04:14', '2022-09-28 02:04:14', '300788590_130265939736172_6172602244378534098_n.png');
INSERT INTO `product_images` VALUES (10, '/storage/products/5/DP5fQMrGLOwCrFymh03u.jpg', 4, '2022-09-28 02:05:17', '2022-09-28 02:05:17', '66331_ban_phim_co_edra_ek387l_mau_den_red_sw_usbc_huano_0002_3.jpg');
INSERT INTO `product_images` VALUES (11, '/storage/products/5/kqzevyGGcJAv7BKQ8N2i.png', 4, '2022-09-28 02:05:17', '2022-09-28 02:05:17', '296833622_587283236449137_2094786813492442790_n.png');
INSERT INTO `product_images` VALUES (12, '/storage/products/5/qj7o9nj7Qi8EUySccU1a.png', 4, '2022-09-28 02:05:17', '2022-09-28 02:05:17', '300788590_130265939736172_6172602244378534098_n.png');
INSERT INTO `product_images` VALUES (13, '/storage/products/5/tQu1QJEwT8CfRi9A2DG2.png', 5, '2022-09-28 02:59:36', '2022-09-28 02:59:36', '300788590_130265939736172_6172602244378534098_n.png');
INSERT INTO `product_images` VALUES (14, '/storage/products/5/GI8OEgXEjF1HxdMFlxCO.jpg', 5, '2022-09-28 02:59:36', '2022-09-28 02:59:36', 'anh-nen-den-cho-dien-thoai.jpg');
INSERT INTO `product_images` VALUES (15, '/storage/products/5/ezfjj0utDLBfr4vF3RUC.png', 5, '2022-09-28 02:59:36', '2022-09-28 02:59:36', 'Black_flag.svg.png');
INSERT INTO `product_images` VALUES (16, '/storage/products/6/E6AfCax3DhTw590bdc7j.jpg', 6, '2022-09-29 13:07:33', '2022-09-29 13:07:33', 'girl1.jpg');
INSERT INTO `product_images` VALUES (17, '/storage/products/6/jFV3f4ty28QrdCb4l9ys.jpg', 6, '2022-09-29 13:07:33', '2022-09-29 13:07:33', 'girl2.jpg');
INSERT INTO `product_images` VALUES (18, '/storage/products/6/MBmlt4EdMaQr0QG7qwKf.jpg', 7, '2022-09-29 13:08:41', '2022-09-29 13:08:41', 'girl1.jpg');
INSERT INTO `product_images` VALUES (19, '/storage/products/6/UyGztdWWhUw0H6VQAAMT.jpg', 7, '2022-09-29 13:08:41', '2022-09-29 13:08:41', 'girl2.jpg');
INSERT INTO `product_images` VALUES (20, '/storage/products/6/ijTFXrvufYMymp8f0d9X.jpg', 8, '2022-09-29 13:18:51', '2022-09-29 13:18:51', 'girl1.jpg');
INSERT INTO `product_images` VALUES (21, '/storage/products/6/oTZOagMa0u2dg0bNY91e.jpg', 8, '2022-09-29 13:18:51', '2022-09-29 13:18:51', 'girl2.jpg');
INSERT INTO `product_images` VALUES (22, '/storage/products/6/Iib4p7M1qYRqFrupHpNb.jpg', 9, '2022-10-01 07:17:36', '2022-10-01 07:17:36', 'artworks-UwyGKT2UGEqwmTML-1u0WXg-t500x500.jpg');
INSERT INTO `product_images` VALUES (23, '/storage/products/6/LxHqUu7H9YhRM8fC26vf.jpg', 9, '2022-10-01 07:17:36', '2022-10-01 07:17:36', 'channels4_profile.jpg');
INSERT INTO `product_images` VALUES (24, '/storage/products/6/K558lw157UGqc3Ydg0IV.jpg', 10, '2022-10-01 14:59:50', '2022-10-01 14:59:50', 'girl2.jpg');
INSERT INTO `product_images` VALUES (25, '/storage/products/6/vVHMyF4lntIVRiRSHMYb.jpg', 10, '2022-10-01 14:59:50', '2022-10-01 14:59:50', 'girl3.jpg');
INSERT INTO `product_images` VALUES (30, '/storage/product/2/arJnNgca3xE7jYWGyCio.jpg', 1, '2022-10-05 06:20:46', '2022-10-05 06:20:46', 'ezgif-2-57effea644.jpg');
INSERT INTO `product_images` VALUES (31, '/storage/product/2/ddhmVPnJa5ohwI3LgKnO.jpg', 1, '2022-10-05 06:20:46', '2022-10-05 06:20:46', 'ezgif-2-163e072b87.jpg');
INSERT INTO `product_images` VALUES (32, '/storage/product/2/W28oVMQ9rKYHmgWkY7hQ.jpg', 1, '2022-10-05 06:20:46', '2022-10-05 06:20:46', 'ezgif-2-24229a19d4.jpg');
INSERT INTO `product_images` VALUES (33, '/storage/products/2/NkFm47NmJDwZYREhhMP8.jpg', 2, '2022-10-05 06:24:27', '2022-10-05 06:24:27', 'ezgif-2-2c7aa346db.jpg');
INSERT INTO `product_images` VALUES (34, '/storage/products/2/SmQs7VDAJishxGzACynk.jpg', 2, '2022-10-05 06:24:27', '2022-10-05 06:24:27', 'ezgif-2-6ea9b32946.jpg');
INSERT INTO `product_images` VALUES (35, '/storage/products/2/h2ROZaT3LlnUsyOm2CVK.jpg', 2, '2022-10-05 06:24:27', '2022-10-05 06:24:27', 'ezgif-2-ae5a5a275b.jpg');
INSERT INTO `product_images` VALUES (36, '/storage/products/2/n3xOWxDhzajxXViYtFDg.jpg', 3, '2022-10-05 06:27:57', '2022-10-05 06:27:57', 'ezgif-2-9c5eb3dd54.jpg');
INSERT INTO `product_images` VALUES (37, '/storage/products/2/K6oTlHhmHWxcIVZoLfcU.jpg', 3, '2022-10-05 06:27:57', '2022-10-05 06:27:57', 'ezgif-2-851f69c319.jpg');
INSERT INTO `product_images` VALUES (38, '/storage/products/2/MKAAjH35BTvhD9plP8Yo.jpg', 3, '2022-10-05 06:27:57', '2022-10-05 06:27:57', 'ezgif-2-e695428285.jpg');
INSERT INTO `product_images` VALUES (39, '/storage/products/2/re3aebOpBCUyOY24gbls.jpg', 4, '2022-10-05 06:33:21', '2022-10-05 06:33:21', 'ezgif-2-7aa01577f5.jpg');
INSERT INTO `product_images` VALUES (40, '/storage/products/2/v9URIBUgZXPfke9iuLxW.jpg', 4, '2022-10-05 06:33:21', '2022-10-05 06:33:21', 'ezgif-2-a93b2c5bb8.jpg');
INSERT INTO `product_images` VALUES (41, '/storage/products/2/5rNrJoiNfJxCnC4HEP7a.jpg', 4, '2022-10-05 06:33:21', '2022-10-05 06:33:21', 'ezgif-2-cc2810bac3.jpg');
INSERT INTO `product_images` VALUES (42, '/storage/products/2/t0rs8Qdv8CX9Ju5gne1o.jpg', 5, '2022-10-05 06:36:25', '2022-10-05 06:36:25', 'ezgif-2-8954d8784b.jpg');
INSERT INTO `product_images` VALUES (43, '/storage/products/2/aMURGc3S6Xy1kVDMadwh.jpg', 5, '2022-10-05 06:36:25', '2022-10-05 06:36:25', 'ezgif-2-0355047f79.jpg');
INSERT INTO `product_images` VALUES (44, '/storage/products/2/bCdC5rXmO4648iZOyuQ0.jpg', 5, '2022-10-05 06:36:25', '2022-10-05 06:36:25', 'ezgif-2-dae573afb6.jpg');
INSERT INTO `product_images` VALUES (45, '/storage/products/2/8RywASJGbbYk8jTpw55Z.jpg', 6, '2022-10-05 06:39:44', '2022-10-05 06:39:44', 'ezgif-2-3d85953635.jpg');
INSERT INTO `product_images` VALUES (46, '/storage/products/2/FlfRqo4kTIq5rQC0LAyd.jpg', 6, '2022-10-05 06:39:44', '2022-10-05 06:39:44', 'ezgif-2-9dab91076f.jpg');
INSERT INTO `product_images` VALUES (47, '/storage/products/2/SegKRzqf6kD2j09gHiqL.jpg', 6, '2022-10-05 06:39:44', '2022-10-05 06:39:44', 'ezgif-2-12745c2856.jpg');
INSERT INTO `product_images` VALUES (48, '/storage/products/2/eDFu3y2L7lovSt7elsLV.jpg', 7, '2022-10-05 06:47:04', '2022-10-05 06:47:04', 'ezgif-2-3a3dcb9d55.jpg');
INSERT INTO `product_images` VALUES (49, '/storage/products/2/5kYAnFD0Lvp3l9TFDpmM.jpg', 7, '2022-10-05 06:47:04', '2022-10-05 06:47:04', 'ezgif-2-5c44ae3bef.jpg');
INSERT INTO `product_images` VALUES (50, '/storage/products/2/D2R82TwkYfx7DM2ERLdH.jpg', 7, '2022-10-05 06:47:04', '2022-10-05 06:47:04', 'ezgif-2-c0641e4c82.jpg');
INSERT INTO `product_images` VALUES (51, '/storage/products/2/R7Rjs8YfvStB5uK23vTB.jpg', 8, '2022-10-05 06:49:03', '2022-10-05 06:49:03', 'ezgif-2-4a9928d79d.jpg');
INSERT INTO `product_images` VALUES (52, '/storage/products/2/cc1Djvy1eORYnP3kYF85.jpg', 8, '2022-10-05 06:49:03', '2022-10-05 06:49:03', 'ezgif-2-716670036d.jpg');
INSERT INTO `product_images` VALUES (53, '/storage/products/2/Z80qf2uM6mVxV6MhRBEm.jpg', 8, '2022-10-05 06:49:03', '2022-10-05 06:49:03', 'ezgif-2-c044b585b9.jpg');
INSERT INTO `product_images` VALUES (54, '/storage/products/2/SvdC2DP8CpvPSPbfD172.jpg', 9, '2022-10-05 06:51:38', '2022-10-05 06:51:38', 'ezgif-2-4d4ad5d056.jpg');
INSERT INTO `product_images` VALUES (55, '/storage/products/2/B07C2ajhrx6HXPjxwFgv.jpg', 9, '2022-10-05 06:51:38', '2022-10-05 06:51:38', 'ezgif-2-7fbee08c9f.jpg');
INSERT INTO `product_images` VALUES (56, '/storage/products/2/skFitwdVMFZH3xNUbeyg.jpg', 9, '2022-10-05 06:51:38', '2022-10-05 06:51:38', 'ezgif-2-17e8ed39b3.jpg');
INSERT INTO `product_images` VALUES (57, '/storage/products/2/ManXskLHw6zSo53bcylY.jpg', 10, '2022-10-05 06:55:05', '2022-10-05 06:55:05', 'ezgif-2-5bb57be5fa.jpg');
INSERT INTO `product_images` VALUES (58, '/storage/products/2/f49mqmB4iNzwYLOo7enx.jpg', 10, '2022-10-05 06:55:05', '2022-10-05 06:55:05', 'ezgif-2-83238b450f.jpg');
INSERT INTO `product_images` VALUES (59, '/storage/products/2/xiisGYpnCGF8shW7W4NQ.jpg', 10, '2022-10-05 06:55:05', '2022-10-05 06:55:05', 'ezgif-2-e545b7c94b.jpg');
INSERT INTO `product_images` VALUES (60, '/storage/products/2/MUcVHGL76C9uuMgThEm5.jpg', 11, '2022-10-05 06:58:45', '2022-10-05 06:58:45', 'ezgif-2-8646f1a49e.jpg');
INSERT INTO `product_images` VALUES (61, '/storage/products/2/uSzNPM6jAWZTpegGuWJx.jpg', 11, '2022-10-05 06:58:45', '2022-10-05 06:58:45', 'ezgif-2-d79497e04a.jpg');
INSERT INTO `product_images` VALUES (62, '/storage/products/2/6agk1tncniScNXj4Ti9n.jpg', 11, '2022-10-05 06:58:45', '2022-10-05 06:58:45', 'ezgif-2-f549de3c41.jpg');
INSERT INTO `product_images` VALUES (63, '/storage/products/2/HIXNPplsj5bWeFgIb5eh.jpg', 12, '2022-10-05 07:01:08', '2022-10-05 07:01:08', 'ezgif-2-5eb5ae70d2.jpg');
INSERT INTO `product_images` VALUES (64, '/storage/products/2/osIutiiIn1nc99PZ43cl.jpg', 12, '2022-10-05 07:01:08', '2022-10-05 07:01:08', 'ezgif-2-d71c322010.jpg');
INSERT INTO `product_images` VALUES (65, '/storage/products/2/RZtZ2xaRxoK7vMTvanGT.jpg', 12, '2022-10-05 07:01:08', '2022-10-05 07:01:08', 'ezgif-2-f9f0ab3718.jpg');
INSERT INTO `product_images` VALUES (66, '/storage/products/2/fm9Po6Vb5Bk2ngmax6kT.jpg', 13, '2022-10-05 07:04:33', '2022-10-05 07:04:33', 'ezgif-2-2f0093ac3f.jpg');
INSERT INTO `product_images` VALUES (67, '/storage/products/2/VsFXVx57NvQRvH7bLo4J.jpg', 13, '2022-10-05 07:04:33', '2022-10-05 07:04:33', 'ezgif-2-4f13b4b44e.jpg');
INSERT INTO `product_images` VALUES (68, '/storage/products/2/qmPKBZ407ywDaSwXaWyR.jpg', 13, '2022-10-05 07:04:33', '2022-10-05 07:04:33', 'ezgif-2-dfdc88860c.jpg');
INSERT INTO `product_images` VALUES (69, '/storage/products/2/OejTTISjAJWumtWYFUMb.jpg', 14, '2022-10-05 07:06:53', '2022-10-05 07:06:53', 'ezgif-2-2eae442922.jpg');
INSERT INTO `product_images` VALUES (70, '/storage/products/2/3Hiwko0L6bCHSxIiTA24.jpg', 14, '2022-10-05 07:06:53', '2022-10-05 07:06:53', 'ezgif-2-78d890e4bc.jpg');
INSERT INTO `product_images` VALUES (71, '/storage/products/2/2oWRmq6GSNPKaiCLdjBV.jpg', 14, '2022-10-05 07:06:53', '2022-10-05 07:06:53', 'ezgif-2-ab1d2f38d8.jpg');
INSERT INTO `product_images` VALUES (72, '/storage/products/2/vH2bnPQdpO0V2ZewggNH.jpg', 15, '2022-10-05 07:16:23', '2022-10-05 07:16:23', 'ezgif-2-8a36072fda.jpg');
INSERT INTO `product_images` VALUES (73, '/storage/products/2/LJUATcnIlegJlJF37Tm1.jpg', 15, '2022-10-05 07:16:23', '2022-10-05 07:16:23', 'ezgif-2-83d9a71f4a.jpg');
INSERT INTO `product_images` VALUES (74, '/storage/products/2/Nk3IX0gA6ndPILf1PwV2.jpg', 15, '2022-10-05 07:16:23', '2022-10-05 07:16:23', 'ezgif-2-a3d945e798.jpg');
INSERT INTO `product_images` VALUES (75, '/storage/products/2/3kL3ayOpoN4q1m8ld6zf.jpg', 16, '2022-10-05 07:18:46', '2022-10-05 07:18:46', 'ezgif-2-23f633278d.jpg');
INSERT INTO `product_images` VALUES (76, '/storage/products/2/Y1HlxXcnqU2K1DGngDQR.jpg', 16, '2022-10-05 07:18:46', '2022-10-05 07:18:46', 'ezgif-2-7185f59edb.jpg');
INSERT INTO `product_images` VALUES (77, '/storage/products/2/ZoBDBDTJ9L8w3u8ej0Gw.jpg', 16, '2022-10-05 07:18:46', '2022-10-05 07:18:46', 'ezgif-2-a3cbb1018e.jpg');
INSERT INTO `product_images` VALUES (78, '/storage/products/2/hk3NnVADsnP8qfe5QgBj.jpg', 17, '2022-10-05 07:22:55', '2022-10-05 07:22:55', 'ezgif-2-5ec2c111cb.jpg');
INSERT INTO `product_images` VALUES (79, '/storage/products/2/NLjypj93LIDJxeLGvPNu.jpg', 17, '2022-10-05 07:22:55', '2022-10-05 07:22:55', 'ezgif-2-9f9acf98dd (1).jpg');
INSERT INTO `product_images` VALUES (80, '/storage/products/2/YjdYYleJGcw3Q9QhF83o.jpg', 17, '2022-10-05 07:22:55', '2022-10-05 07:22:55', 'ezgif-2-c56193a65e.jpg');
INSERT INTO `product_images` VALUES (81, '/storage/products/2/ETKsNRPAaUrVbr8MSlmO.jpg', 18, '2022-10-05 07:25:08', '2022-10-05 07:25:08', 'ezgif-2-0cbbeaeb72.jpg');
INSERT INTO `product_images` VALUES (82, '/storage/products/2/NSBQqQa5IlOuN6H0kdDe.jpg', 18, '2022-10-05 07:25:08', '2022-10-05 07:25:08', 'ezgif-2-7963362fbc.jpg');
INSERT INTO `product_images` VALUES (83, '/storage/products/2/MAuxBajwlKbVGvnssE0V.jpg', 18, '2022-10-05 07:25:08', '2022-10-05 07:25:08', 'ezgif-2-bd002266b1.jpg');
INSERT INTO `product_images` VALUES (84, '/storage/products/2/NBmh1kqhCL8inr1Xwt8z.jpg', 19, '2022-10-05 07:28:00', '2022-10-05 07:28:00', 'ezgif-2-3a2d7f136f.jpg');
INSERT INTO `product_images` VALUES (85, '/storage/products/2/pTVhqhRIILRYQG929hXl.jpg', 19, '2022-10-05 07:28:00', '2022-10-05 07:28:00', 'ezgif-2-7a7f48ce1f.jpg');
INSERT INTO `product_images` VALUES (86, '/storage/products/2/IJY6woFRzdPbfPBgQgQT.jpg', 19, '2022-10-05 07:28:00', '2022-10-05 07:28:00', 'ezgif-2-518bd4e7f9.jpg');
INSERT INTO `product_images` VALUES (87, '/storage/products/2/LyzJqNzDGKGlODTMXNqR.jpg', 20, '2022-10-05 07:30:27', '2022-10-05 07:30:27', 'ezgif-2-6449fa0adf.jpg');
INSERT INTO `product_images` VALUES (88, '/storage/products/2/XFWT2e8qcdP4x8J2a9g7.jpg', 20, '2022-10-05 07:30:27', '2022-10-05 07:30:27', 'ezgif-2-0275272aca.jpg');
INSERT INTO `product_images` VALUES (89, '/storage/products/2/4q5k0UHBvTwlEznIdcNV.jpg', 20, '2022-10-05 07:30:27', '2022-10-05 07:30:27', 'ezgif-2-c8b6413a3b.jpg');
INSERT INTO `product_images` VALUES (90, '/storage/products/2/a9kn9bj9r37o4oxFHVKe.jpg', 21, '2022-10-05 07:34:41', '2022-10-05 07:34:41', 'ezgif-2-3fcfd90f8b.jpg');
INSERT INTO `product_images` VALUES (91, '/storage/products/2/28UWuwjlvEWyZ5WV6Fpd.jpg', 21, '2022-10-05 07:34:41', '2022-10-05 07:34:41', 'ezgif-2-7d5ec6e782.jpg');
INSERT INTO `product_images` VALUES (92, '/storage/products/2/4D7t0kq4MlgJbmCZ2rwf.jpg', 21, '2022-10-05 07:34:41', '2022-10-05 07:34:41', 'ezgif-2-814cfb2edb.jpg');
INSERT INTO `product_images` VALUES (93, '/storage/products/2/5sTRPOW31iIm1MvfmXkf.jpg', 22, '2022-10-05 07:39:32', '2022-10-05 07:39:32', 'ezgif-4-63238f6db9.jpg');
INSERT INTO `product_images` VALUES (94, '/storage/products/2/3APf01nmRvB95rrc2s6F.jpg', 22, '2022-10-05 07:39:32', '2022-10-05 07:39:32', 'ezgif-4-eddd52b106.jpg');
INSERT INTO `product_images` VALUES (95, '/storage/products/2/nYtJ8zzofqTNByWgLFMz.jpg', 22, '2022-10-05 07:39:32', '2022-10-05 07:39:32', 'ezgif-4-f6b6c779c0.jpg');
INSERT INTO `product_images` VALUES (96, '/storage/products/2/rtl8ignGiaN9dAslIpLx.jpg', 23, '2022-10-05 07:41:26', '2022-10-05 07:41:26', 'ezgif-4-68cdc05841.jpg');
INSERT INTO `product_images` VALUES (97, '/storage/products/2/3ejWAvQJIIgNExtCrSKr.jpg', 23, '2022-10-05 07:41:26', '2022-10-05 07:41:26', 'ezgif-4-fb0d09d183.jpg');
INSERT INTO `product_images` VALUES (98, '/storage/products/2/Qz3JQD9EVXY5fkbfnVzb.jpg', 23, '2022-10-05 07:41:26', '2022-10-05 07:41:26', 'ezgif-4-feb8308909.jpg');
INSERT INTO `product_images` VALUES (99, '/storage/products/2/XcBeFGYNwZz1ys6uaa4h.jpg', 24, '2022-10-05 07:43:58', '2022-10-05 07:43:58', 'ezgif-4-6c840a8fb5.jpg');
INSERT INTO `product_images` VALUES (100, '/storage/products/2/lEqsjuv2uPTY4kK99S6H.jpg', 24, '2022-10-05 07:43:58', '2022-10-05 07:43:58', 'ezgif-4-589f46953c.jpg');
INSERT INTO `product_images` VALUES (101, '/storage/products/2/3uATb48lUvMi0V3Wjxh6.jpg', 24, '2022-10-05 07:43:58', '2022-10-05 07:43:58', 'ezgif-4-e74ab6d480.jpg');
INSERT INTO `product_images` VALUES (102, '/storage/products/2/c9CFfsukhzfE2OP1jory.jpg', 25, '2022-10-05 07:47:46', '2022-10-05 07:47:46', 'ezgif-4-2bba095415.jpg');
INSERT INTO `product_images` VALUES (103, '/storage/products/2/VYhEsfHRqE95jNbACXqM.jpg', 25, '2022-10-05 07:47:46', '2022-10-05 07:47:46', 'ezgif-4-9a8f2793e3.jpg');
INSERT INTO `product_images` VALUES (104, '/storage/products/2/HnQalHPwKJp5gu1RIetE.jpg', 25, '2022-10-05 07:47:46', '2022-10-05 07:47:46', 'ezgif-4-54ae95180c.jpg');
INSERT INTO `product_images` VALUES (105, '/storage/products/2/IERVwILtUbcb0Uj5uMOs.jpg', 26, '2022-10-05 07:49:39', '2022-10-05 07:49:39', 'ezgif-4-22ecfd9830.jpg');
INSERT INTO `product_images` VALUES (106, '/storage/products/2/hqE9KzL6Usmb9No6g44d.jpg', 26, '2022-10-05 07:49:39', '2022-10-05 07:49:39', 'ezgif-4-1519ce50a0.jpg');
INSERT INTO `product_images` VALUES (107, '/storage/products/2/F5iYwaIMZ5tXuDSrz5KC.jpg', 26, '2022-10-05 07:49:39', '2022-10-05 07:49:39', 'ezgif-4-ee8759e5bc.jpg');
INSERT INTO `product_images` VALUES (108, '/storage/products/2/xifmw6VrhMq3zTmrEv2R.jpg', 27, '2022-10-05 07:51:19', '2022-10-05 07:51:19', 'ezgif-4-1b806a5605.jpg');
INSERT INTO `product_images` VALUES (109, '/storage/products/2/ipS3S7vSffaKYYvi85XP.jpg', 27, '2022-10-05 07:51:19', '2022-10-05 07:51:19', 'ezgif-4-4e27b548dd.jpg');
INSERT INTO `product_images` VALUES (110, '/storage/products/2/U33MtH3aAeuLy15JTUc3.jpg', 27, '2022-10-05 07:51:19', '2022-10-05 07:51:19', 'ezgif-4-dea3f81d31.jpg');
INSERT INTO `product_images` VALUES (111, '/storage/products/2/jaC1XH2QdpvjWitSqShE.jpg', 28, '2022-10-06 05:36:31', '2022-10-06 05:36:31', 'ezgif-4-1b3850551e.jpg');
INSERT INTO `product_images` VALUES (112, '/storage/products/2/ymRThuXaxA3nWTfMZt4M.jpg', 28, '2022-10-06 05:36:31', '2022-10-06 05:36:31', 'ezgif-4-7c2b3a91d8.jpg');
INSERT INTO `product_images` VALUES (113, '/storage/products/2/YNADaKUlNR2jVTVGLFi7.jpg', 28, '2022-10-06 05:36:31', '2022-10-06 05:36:31', 'ezgif-4-9f2712b043.jpg');
INSERT INTO `product_images` VALUES (114, '/storage/products/2/toLg1fXhM19NRKbhUJj8.jpg', 29, '2022-10-06 05:40:17', '2022-10-06 05:40:17', 'ezgif-4-0e2502a413.jpg');
INSERT INTO `product_images` VALUES (115, '/storage/products/2/K2zFhqKP1WhVL1LoZSYa.jpg', 29, '2022-10-06 05:40:18', '2022-10-06 05:40:18', 'ezgif-4-28dea1a98f.jpg');
INSERT INTO `product_images` VALUES (116, '/storage/products/2/rmNa6lGTLaokxoYMvwaZ.jpg', 29, '2022-10-06 05:40:18', '2022-10-06 05:40:18', 'ezgif-4-e6906d14ea.jpg');
INSERT INTO `product_images` VALUES (117, '/storage/products/2/jrAFxiXrXy9g7uaDDyaK.jpg', 30, '2022-10-06 05:44:22', '2022-10-06 05:44:22', 'ezgif-4-24be72d040.jpg');
INSERT INTO `product_images` VALUES (118, '/storage/products/2/Z2dbBUVu0cupb7ElivLq.jpg', 30, '2022-10-06 05:44:22', '2022-10-06 05:44:22', 'ezgif-4-58bffdac5a.jpg');
INSERT INTO `product_images` VALUES (119, '/storage/products/2/5I4N8C1laxlERRv6za4j.jpg', 30, '2022-10-06 05:44:22', '2022-10-06 05:44:22', 'ezgif-4-c6bada07c0.jpg');
INSERT INTO `product_images` VALUES (120, '/storage/products/2/7Uuv4viLlctK5U2Huix9.jpg', 31, '2022-10-06 05:47:38', '2022-10-06 05:47:38', 'balemc-6.jpg');
INSERT INTO `product_images` VALUES (121, '/storage/products/2/kZU3o9o1GOyoLtvm0ISr.jpg', 31, '2022-10-06 05:47:38', '2022-10-06 05:47:38', 'balemc-12.jpg');
INSERT INTO `product_images` VALUES (122, '/storage/products/2/2XzzSGD0B0MaPzSZF6gq.jpg', 31, '2022-10-06 05:47:38', '2022-10-06 05:47:38', 'balemc-20.jpg');
INSERT INTO `product_images` VALUES (123, '/storage/products/2/I42hrgXdkpdNz516Kyww.jpg', 32, '2022-10-06 05:48:40', '2022-10-06 05:48:40', '53.jpg');
INSERT INTO `product_images` VALUES (124, '/storage/products/2/iDyZZbDctIrRmDDZgV8Y.jpg', 32, '2022-10-06 05:48:40', '2022-10-06 05:48:40', 'IMG_1030-1.jpg');
INSERT INTO `product_images` VALUES (125, '/storage/products/2/WULkZENjEMgDxPxKqV1F.jpg', 32, '2022-10-06 05:48:40', '2022-10-06 05:48:40', 'IMG_1056-1.jpg');
INSERT INTO `product_images` VALUES (126, '/storage/products/2/3nOlPko1ZpVWGEjSXbWi.jpg', 33, '2022-10-06 05:49:32', '2022-10-06 05:49:32', '2-1-1024x1024-1-scaled.jpg');
INSERT INTO `product_images` VALUES (127, '/storage/products/2/6aXSg1ELr1HNGnM6jS8U.jpg', 33, '2022-10-06 05:49:32', '2022-10-06 05:49:32', 'balemc-1.jpg');
INSERT INTO `product_images` VALUES (128, '/storage/products/2/Ki8CM2i19oXnWgh5RJos.jpg', 33, '2022-10-06 05:49:32', '2022-10-06 05:49:32', 'balemc-4.jpg');
INSERT INTO `product_images` VALUES (129, '/storage/products/2/dnz6EG80LjgdF6dxxftY.jpg', 34, '2022-10-06 05:50:42', '2022-10-06 05:50:42', 'IMG_1057-1.jpg');
INSERT INTO `product_images` VALUES (130, '/storage/products/2/H0Ab1y7a8PUQ9FtSOwlF.jpg', 34, '2022-10-06 05:50:42', '2022-10-06 05:50:42', 'IMG_5039.jpg');
INSERT INTO `product_images` VALUES (131, '/storage/products/2/O1BTBFL0nwM0FuG8erPB.jpg', 34, '2022-10-06 05:50:42', '2022-10-06 05:50:42', 'IMG_5041.jpg');
INSERT INTO `product_images` VALUES (132, '/storage/products/2/cmw9fjaT0ArclLRgyT0D.jpg', 35, '2022-10-06 05:51:46', '2022-10-06 05:51:46', 'IMG_1054-1.jpg');
INSERT INTO `product_images` VALUES (133, '/storage/products/2/He8ARH9x3HirIDXK9Aig.jpg', 35, '2022-10-06 05:51:46', '2022-10-06 05:51:46', 'IMG_5049.jpg');
INSERT INTO `product_images` VALUES (134, '/storage/products/2/orxbGr4Tq7Oh9zadRZZF.jpg', 35, '2022-10-06 05:51:46', '2022-10-06 05:51:46', 'IMG_5064.jpg');

-- ----------------------------
-- Table structure for product_tags
-- ----------------------------
DROP TABLE IF EXISTS `product_tags`;
CREATE TABLE `product_tags`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `tag_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_tags
-- ----------------------------
INSERT INTO `product_tags` VALUES (1, 2, 1, '2022-08-26 22:47:51', '2022-08-26 22:47:51');
INSERT INTO `product_tags` VALUES (2, 3, 2, '2022-09-28 02:04:14', '2022-09-28 02:04:14');
INSERT INTO `product_tags` VALUES (3, 3, 3, '2022-09-28 02:04:14', '2022-09-28 02:04:14');
INSERT INTO `product_tags` VALUES (4, 4, 2, '2022-09-28 02:05:17', '2022-09-28 02:05:17');
INSERT INTO `product_tags` VALUES (5, 4, 4, '2022-09-28 02:05:17', '2022-09-28 02:05:17');
INSERT INTO `product_tags` VALUES (6, 5, 5, '2022-09-28 02:59:36', '2022-09-28 02:59:36');
INSERT INTO `product_tags` VALUES (7, 6, 1, '2022-09-29 13:07:33', '2022-09-29 13:07:33');
INSERT INTO `product_tags` VALUES (8, 6, 6, '2022-09-29 13:07:33', '2022-09-29 13:07:33');
INSERT INTO `product_tags` VALUES (9, 6, 7, '2022-09-29 13:07:33', '2022-09-29 13:07:33');
INSERT INTO `product_tags` VALUES (10, 7, 1, '2022-09-29 13:08:41', '2022-09-29 13:08:41');
INSERT INTO `product_tags` VALUES (11, 7, 6, '2022-09-29 13:08:41', '2022-09-29 13:08:41');
INSERT INTO `product_tags` VALUES (12, 7, 7, '2022-09-29 13:08:41', '2022-09-29 13:08:41');
INSERT INTO `product_tags` VALUES (13, 8, 1, '2022-09-29 13:18:51', '2022-09-29 13:18:51');
INSERT INTO `product_tags` VALUES (14, 8, 7, '2022-09-29 13:18:51', '2022-09-29 13:18:51');
INSERT INTO `product_tags` VALUES (15, 9, 1, '2022-10-01 07:17:36', '2022-10-01 07:17:36');
INSERT INTO `product_tags` VALUES (16, 9, 6, '2022-10-01 07:17:36', '2022-10-01 07:17:36');
INSERT INTO `product_tags` VALUES (17, 9, 7, '2022-10-01 07:17:36', '2022-10-01 07:17:36');
INSERT INTO `product_tags` VALUES (18, 10, 1, '2022-10-01 14:59:50', '2022-10-01 14:59:50');
INSERT INTO `product_tags` VALUES (19, 10, 7, '2022-10-01 14:59:50', '2022-10-01 14:59:50');
INSERT INTO `product_tags` VALUES (20, 1, 2, '2022-10-05 06:15:34', '2022-10-05 06:15:34');
INSERT INTO `product_tags` VALUES (21, 1, 8, '2022-10-05 06:15:34', '2022-10-05 06:15:34');
INSERT INTO `product_tags` VALUES (22, 2, 2, '2022-10-05 06:24:27', '2022-10-05 06:24:27');
INSERT INTO `product_tags` VALUES (23, 2, 8, '2022-10-05 06:24:27', '2022-10-05 06:24:27');
INSERT INTO `product_tags` VALUES (24, 3, 2, '2022-10-05 06:27:57', '2022-10-05 06:27:57');
INSERT INTO `product_tags` VALUES (25, 3, 8, '2022-10-05 06:27:57', '2022-10-05 06:27:57');
INSERT INTO `product_tags` VALUES (26, 3, 9, '2022-10-05 06:27:57', '2022-10-05 06:27:57');
INSERT INTO `product_tags` VALUES (27, 4, 2, '2022-10-05 06:33:21', '2022-10-05 06:33:21');
INSERT INTO `product_tags` VALUES (28, 4, 10, '2022-10-05 06:33:21', '2022-10-05 06:33:21');
INSERT INTO `product_tags` VALUES (29, 5, 2, '2022-10-05 06:36:25', '2022-10-05 06:36:25');
INSERT INTO `product_tags` VALUES (30, 5, 10, '2022-10-05 06:36:25', '2022-10-05 06:36:25');
INSERT INTO `product_tags` VALUES (31, 6, 2, '2022-10-05 06:39:44', '2022-10-05 06:39:44');
INSERT INTO `product_tags` VALUES (32, 6, 10, '2022-10-05 06:39:44', '2022-10-05 06:39:44');
INSERT INTO `product_tags` VALUES (33, 7, 2, '2022-10-05 06:47:04', '2022-10-05 06:47:04');
INSERT INTO `product_tags` VALUES (34, 7, 11, '2022-10-05 06:47:04', '2022-10-05 06:47:04');
INSERT INTO `product_tags` VALUES (35, 8, 2, '2022-10-05 06:49:03', '2022-10-05 06:49:03');
INSERT INTO `product_tags` VALUES (36, 8, 11, '2022-10-05 06:49:03', '2022-10-05 06:49:03');
INSERT INTO `product_tags` VALUES (37, 9, 2, '2022-10-05 06:51:38', '2022-10-05 06:51:38');
INSERT INTO `product_tags` VALUES (38, 9, 11, '2022-10-05 06:51:38', '2022-10-05 06:51:38');
INSERT INTO `product_tags` VALUES (39, 10, 2, '2022-10-05 06:55:05', '2022-10-05 06:55:05');
INSERT INTO `product_tags` VALUES (40, 10, 12, '2022-10-05 06:55:05', '2022-10-05 06:55:05');
INSERT INTO `product_tags` VALUES (41, 11, 13, '2022-10-05 06:58:45', '2022-10-05 06:58:45');
INSERT INTO `product_tags` VALUES (42, 11, 14, '2022-10-05 06:58:45', '2022-10-05 06:58:45');
INSERT INTO `product_tags` VALUES (43, 11, 15, '2022-10-05 06:58:45', '2022-10-05 06:58:45');
INSERT INTO `product_tags` VALUES (44, 12, 16, '2022-10-05 07:01:08', '2022-10-05 07:01:08');
INSERT INTO `product_tags` VALUES (45, 12, 14, '2022-10-05 07:01:08', '2022-10-05 07:01:08');
INSERT INTO `product_tags` VALUES (46, 12, 15, '2022-10-05 07:01:08', '2022-10-05 07:01:08');
INSERT INTO `product_tags` VALUES (47, 13, 16, '2022-10-05 07:04:33', '2022-10-05 07:04:33');
INSERT INTO `product_tags` VALUES (48, 13, 14, '2022-10-05 07:04:33', '2022-10-05 07:04:33');
INSERT INTO `product_tags` VALUES (49, 13, 15, '2022-10-05 07:04:33', '2022-10-05 07:04:33');
INSERT INTO `product_tags` VALUES (50, 14, 16, '2022-10-05 07:06:53', '2022-10-05 07:06:53');
INSERT INTO `product_tags` VALUES (51, 14, 14, '2022-10-05 07:06:53', '2022-10-05 07:06:53');
INSERT INTO `product_tags` VALUES (52, 14, 15, '2022-10-05 07:06:53', '2022-10-05 07:06:53');
INSERT INTO `product_tags` VALUES (53, 15, 16, '2022-10-05 07:16:23', '2022-10-05 07:16:23');
INSERT INTO `product_tags` VALUES (54, 15, 14, '2022-10-05 07:16:23', '2022-10-05 07:16:23');
INSERT INTO `product_tags` VALUES (55, 15, 17, '2022-10-05 07:16:23', '2022-10-05 07:16:23');
INSERT INTO `product_tags` VALUES (56, 16, 16, '2022-10-05 07:18:46', '2022-10-05 07:18:46');
INSERT INTO `product_tags` VALUES (57, 16, 14, '2022-10-05 07:18:46', '2022-10-05 07:18:46');
INSERT INTO `product_tags` VALUES (58, 16, 17, '2022-10-05 07:18:46', '2022-10-05 07:18:46');
INSERT INTO `product_tags` VALUES (59, 17, 16, '2022-10-05 07:22:55', '2022-10-05 07:22:55');
INSERT INTO `product_tags` VALUES (60, 17, 14, '2022-10-05 07:22:55', '2022-10-05 07:22:55');
INSERT INTO `product_tags` VALUES (61, 17, 17, '2022-10-05 07:22:55', '2022-10-05 07:22:55');
INSERT INTO `product_tags` VALUES (62, 18, 16, '2022-10-05 07:25:08', '2022-10-05 07:25:08');
INSERT INTO `product_tags` VALUES (63, 18, 14, '2022-10-05 07:25:08', '2022-10-05 07:25:08');
INSERT INTO `product_tags` VALUES (64, 18, 17, '2022-10-05 07:25:08', '2022-10-05 07:25:08');
INSERT INTO `product_tags` VALUES (65, 19, 16, '2022-10-05 07:28:00', '2022-10-05 07:28:00');
INSERT INTO `product_tags` VALUES (66, 19, 14, '2022-10-05 07:28:00', '2022-10-05 07:28:00');
INSERT INTO `product_tags` VALUES (67, 19, 18, '2022-10-05 07:28:00', '2022-10-05 07:28:00');
INSERT INTO `product_tags` VALUES (68, 20, 16, '2022-10-05 07:30:27', '2022-10-05 07:30:27');
INSERT INTO `product_tags` VALUES (69, 20, 14, '2022-10-05 07:30:27', '2022-10-05 07:30:27');
INSERT INTO `product_tags` VALUES (70, 20, 18, '2022-10-05 07:30:27', '2022-10-05 07:30:27');
INSERT INTO `product_tags` VALUES (71, 21, 16, '2022-10-05 07:34:41', '2022-10-05 07:34:41');
INSERT INTO `product_tags` VALUES (72, 21, 14, '2022-10-05 07:34:41', '2022-10-05 07:34:41');
INSERT INTO `product_tags` VALUES (73, 21, 18, '2022-10-05 07:34:41', '2022-10-05 07:34:41');
INSERT INTO `product_tags` VALUES (74, 22, 19, '2022-10-05 07:39:32', '2022-10-05 07:39:32');
INSERT INTO `product_tags` VALUES (75, 22, 20, '2022-10-05 07:39:32', '2022-10-05 07:39:32');
INSERT INTO `product_tags` VALUES (76, 23, 19, '2022-10-05 07:41:26', '2022-10-05 07:41:26');
INSERT INTO `product_tags` VALUES (77, 23, 20, '2022-10-05 07:41:26', '2022-10-05 07:41:26');
INSERT INTO `product_tags` VALUES (78, 24, 19, '2022-10-05 07:43:58', '2022-10-05 07:43:58');
INSERT INTO `product_tags` VALUES (79, 24, 20, '2022-10-05 07:43:58', '2022-10-05 07:43:58');
INSERT INTO `product_tags` VALUES (80, 25, 21, '2022-10-05 07:47:46', '2022-10-05 07:47:46');
INSERT INTO `product_tags` VALUES (81, 25, 22, '2022-10-05 07:47:46', '2022-10-05 07:47:46');
INSERT INTO `product_tags` VALUES (82, 26, 21, '2022-10-05 07:49:39', '2022-10-05 07:49:39');
INSERT INTO `product_tags` VALUES (83, 26, 22, '2022-10-05 07:49:39', '2022-10-05 07:49:39');
INSERT INTO `product_tags` VALUES (84, 27, 21, '2022-10-05 07:51:19', '2022-10-05 07:51:19');
INSERT INTO `product_tags` VALUES (85, 27, 22, '2022-10-05 07:51:19', '2022-10-05 07:51:19');
INSERT INTO `product_tags` VALUES (86, 28, 23, '2022-10-06 05:36:31', '2022-10-06 05:36:31');
INSERT INTO `product_tags` VALUES (87, 29, 23, '2022-10-06 05:40:18', '2022-10-06 05:40:18');
INSERT INTO `product_tags` VALUES (88, 29, 24, '2022-10-06 05:40:18', '2022-10-06 05:40:18');
INSERT INTO `product_tags` VALUES (89, 29, 25, '2022-10-06 05:40:18', '2022-10-06 05:40:18');
INSERT INTO `product_tags` VALUES (90, 30, 23, '2022-10-06 05:44:22', '2022-10-06 05:44:22');
INSERT INTO `product_tags` VALUES (91, 30, 26, '2022-10-06 05:44:22', '2022-10-06 05:44:22');
INSERT INTO `product_tags` VALUES (92, 30, 24, '2022-10-06 05:44:22', '2022-10-06 05:44:22');
INSERT INTO `product_tags` VALUES (93, 31, 27, '2022-10-06 05:47:39', '2022-10-06 05:47:39');
INSERT INTO `product_tags` VALUES (94, 31, 28, '2022-10-06 05:47:39', '2022-10-06 05:47:39');
INSERT INTO `product_tags` VALUES (95, 31, 29, '2022-10-06 05:47:39', '2022-10-06 05:47:39');
INSERT INTO `product_tags` VALUES (96, 32, 27, '2022-10-06 05:48:40', '2022-10-06 05:48:40');
INSERT INTO `product_tags` VALUES (97, 32, 28, '2022-10-06 05:48:40', '2022-10-06 05:48:40');
INSERT INTO `product_tags` VALUES (98, 32, 29, '2022-10-06 05:48:40', '2022-10-06 05:48:40');
INSERT INTO `product_tags` VALUES (99, 33, 27, '2022-10-06 05:49:32', '2022-10-06 05:49:32');
INSERT INTO `product_tags` VALUES (100, 33, 28, '2022-10-06 05:49:32', '2022-10-06 05:49:32');
INSERT INTO `product_tags` VALUES (101, 33, 29, '2022-10-06 05:49:32', '2022-10-06 05:49:32');
INSERT INTO `product_tags` VALUES (102, 34, 27, '2022-10-06 05:50:42', '2022-10-06 05:50:42');
INSERT INTO `product_tags` VALUES (103, 34, 28, '2022-10-06 05:50:42', '2022-10-06 05:50:42');
INSERT INTO `product_tags` VALUES (104, 34, 29, '2022-10-06 05:50:42', '2022-10-06 05:50:42');
INSERT INTO `product_tags` VALUES (105, 35, 27, '2022-10-06 05:51:46', '2022-10-06 05:51:46');
INSERT INTO `product_tags` VALUES (106, 35, 28, '2022-10-06 05:51:46', '2022-10-06 05:51:46');
INSERT INTO `product_tags` VALUES (107, 35, 29, '2022-10-06 05:51:46', '2022-10-06 05:51:46');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `view_count` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Adidas Superstar Triple White', '1150000', '/storage/product/2/UhHM4uAp0zTjSzwDXO1G.jpg', 'THIẾT KẾ CỔ THẤP ĐẶC TRƯNG VỚI MŨI GIÀY VỎ SÒ.\r\nThiết kế ban đầu dành cho sân bóng rổ vào thập niên 70. Được các ngôi sao hip hop tôn sùng vào thập niên 80. Đôi giày adidas Superstar giờ đây đã trở thành biểu tượng của các tín đồ thời trang đường phố. Thiết kế mũi giày vỏ sò nổi tiếng thế giới mang đến phong cách chất lừ và khả năng bảo vệ. Giống như những gì đôi giày này đã thể hiện trên sân bóng rổ trong quá khứ.    \r\nGiờ đây, bạn có thể tự tin tham gia lễ hội âm nhạc hay dạo phố mà không sợ bị dẫm lên chân. Chi tiết 3 Sọc viền răng cưa và logo adidas Superstar đóng khung mang đậm phong cách nguyên bản chính hiệu.\r\n\r\nTHÔNG SỐ\r\n- Có dây buộc\r\n- Thân giày bằng da\r\n- Biểu tượng giày da\r\n- Đế ngoài bằng cao su\r\n- Màu sản phẩm: Triple White / Cloud White\r\n- Mã sản phẩm: BA8380', 8, '2022-10-05 06:15:34', '2022-10-05 06:20:46', 'ezgif-2-57effea644.jpg', NULL, 1);
INSERT INTO `products` VALUES (2, 'Adidas Superstar 20 \"Golden Brand/Black Stripes\"', '1450000', '/storage/products/2/ywN83GYzKQwRSRpWwetP.jpg', 'E-SHOPPER CAM KẾT\r\n- Cam kết chính hãng 100% nhập từ US, UK, JP.\r\n- Hàng đi kèm full box, tem, tag, giấy gói chính hãng.\r\n- Miễn phí đổi size, đổi mẫu trong vòng 5 ngày.\r\n- Dịch vụ tốt, hàng được giao từ 1-4 ngày kể từ ngày đặt hàng.\r\n- Đa dạng mẫu mã, luôn cập nhập các mẫu mới , giá sale rẻ.\r\n\r\nTHÔNG SỐ\r\n- Kiểu dáng: Ôm vừa, có dây buộc\r\n- Đế ngoài: Đế ngoài bằng cao su chống trơn trượt\r\n- Màu sản phẩm: Golden Brand/Black Stripes\r\n- Mã sản phẩm: FV3284', 8, '2022-10-05 06:24:27', '2022-10-05 06:24:27', 'ezgif-2-5835509dc2.jpg', NULL, 1);
INSERT INTO `products` VALUES (3, 'Adidas Superstar Slip-On \"Core Black\"', '1090000', '/storage/products/2/pd4QI6bJOqtOF5p7QeKs.jpg', 'ĐẶC ĐIỂM NỔI BẬT\r\nLà biểu tượng đường phố và biểu tượng văn hóa, giày adidas Superstar Slip-On FV3187 có một câu chuyện được kể lại nhiều lần theo những cách mới mẻ khác nhau. Trở lại như đồ trượt, đôi giày này mang lại một cái nhìn mới mẻ, hoàn toàn mới. Chúng có một kết cấu waffle kéo dài và vỏ bọc ở mũi giày đặc trưng.\r\n\r\nTHÔNG SỐ\r\n-Ôm vừa\r\n-Thiết kế không dây với đai co giãn\r\n-Thân giày bằng vải dệt\r\n-Cảm giác ôm sát\r\n-Phiên bản slip-on của đôi giày adidas Superstar\r\n-Đế ngoài bằng cao su\r\n-Màu sản phẩm: Core Black / Cloud White / Gold Metallic\r\n-Mã sản phẩm: FV3187', 8, '2022-10-05 06:27:57', '2022-10-05 06:27:57', 'ezgif-2-d6e89ff963.jpg', NULL, 1);
INSERT INTO `products` VALUES (4, 'Adidas Stansmith \"Green Classic\"', '1450000', '/storage/products/2/ZB7tK1SZgwh49ScjS2hs.jpg', 'ĐÔI GIÀY CÁ TÍNH DÀNH CHO PHÁI ĐẸP\r\n\r\nGiày Sneaker Nam Nữ Adidas Stansmith M20324 “Green” - Hàng Chính Hãng\r\n\r\nThe Stan Smith là dòng sản phẩm giày quần vợt cổ điển cho nữ, lần đầu tiên xuất hiện vào năm 1971 và đã trở thành một biểu tượng thời trang và nhìn thấy từ sân tennis đến văn phòng trên toàn thế giới. Lớp lót bằng da, với sockliner OrthoLite® mang lại cho giày một cái nhìn cao cấp, gót chân được giữ trong da lộn cho một cái nhìn cổ điển và 3-sọc đục lỗ mang tính biểu tượng tự hào ở hai bên.', 9, '2022-10-05 06:33:21', '2022-10-05 06:33:21', 'ezgif-2-e6c04ab10b.jpg', NULL, 1);
INSERT INTO `products` VALUES (5, 'Adidas Stan Smith \"Dark Blue\"', '1450000', '/storage/products/2/6mwIsJZhuAHUOOAFdvQP.jpg', 'ĐÔI GIÀY CÁ TÍNH DÀNH CHO PHÁI ĐẸP\r\n\r\nGiày Sneaker Nam Nữ Adidas Stansmith M20324 “Dark Blue” - Hàng Chính Hãng\r\n\r\nThe Stan Smith là dòng sản phẩm giày quần vợt cổ điển cho nữ, lần đầu tiên xuất hiện vào năm 1971 và đã trở thành một biểu tượng thời trang và nhìn thấy từ sân tennis đến văn phòng trên toàn thế giới. Lớp lót bằng da, với sockliner OrthoLite® mang lại cho giày một cái nhìn cao cấp, gót chân được giữ trong da lộn cho một cái nhìn cổ điển và 3-sọc đục lỗ mang tính biểu tượng tự hào ở hai bên.', 9, '2022-10-05 06:36:25', '2022-10-05 06:36:25', 'ezgif-2-9a9be7559a.jpg', NULL, 1);
INSERT INTO `products` VALUES (6, 'Adidas Stansmith Mule \"Green Classic\"', '1450000', '/storage/products/2/IGQDAXoDzdwCPsqZDEnK.jpg', 'ĐÔI GIÀY CÁ TÍNH DÀNH CHO PHÁI ĐẸP Giày Sneaker Nam Nữ Adidas Stansmith Mule \"Green Classic\" - Hàng Chính Hãng The Stan Smith là dòng sản phẩm giày quần vợt cổ điển cho nữ, lần đầu tiên xuất hiện vào năm 1971 và đã trở thành một biểu tượng thời trang và nhìn thấy từ sân tennis đến văn phòng trên toàn thế giới. Lớp lót bằng da, với sockliner OrthoLite® mang lại cho giày một cái nhìn cao cấp, gót chân được giữ trong da lộn cho một cái nhìn cổ điển và 3-sọc đục lỗ mang tính biểu tượng tự hào ở hai bên.', 9, '2022-10-05 06:39:44', '2022-10-05 06:39:44', 'ezgif-2-6eeb67c250.jpg', NULL, 1);
INSERT INTO `products` VALUES (7, 'Adidas Alphatorsion 360 \"Triple Black\"', '1250000', '/storage/products/2/2syxIEV9ohVjv1YwTuOJ.jpg', 'Alphabounce là mẫu giày chạy trung tính được thiết kế nâng cấp hỗ trợ cho việc tập luyện và hoạt động hàng ngày. Upper với thiết kế lưới nguyên khối hỗ trợ tuyệt vời cho các chuyển động đa chiều. Đệm midsole \"phản ứng nhanh\" ở phần mu trước và gót chân tạo lên sự chắc chắn cho các bài tập sức mạnh. Ngoài ra, Alphabounce cũng được xem là mẫu giày thời trang năng động v ới phong cách thiết kế hiện đại.', 10, '2022-10-05 06:47:04', '2022-10-05 06:47:04', 'ezgif-2-0c22725afe.jpg', NULL, 1);
INSERT INTO `products` VALUES (8, 'Adidas Alphabounce  \"Acid Mint\"', '1250000', '/storage/products/2/jNUHIw2FX5anwChFTuJZ.jpg', 'Alphabounce là mẫu giày chạy trung tính được thiết kế nâng cấp hỗ trợ cho việc tập luyện và hoạt động hàng ngày. Upper với thiết kế lưới nguyên khối hỗ trợ tuyệt vời cho các chuyển động đa chiều. Đệm midsole \"phản ứng nhanh\" ở phần mu trước và gót chân tạo lên sự chắc chắn cho các bài tập sức mạnh. Ngoài ra, Alphabounce cũng được xem là mẫu giày thời trang năng động v ới phong cách thiết kế hiện đại', 10, '2022-10-05 06:49:03', '2022-10-05 06:49:03', 'ezgif-2-323a9a5528.jpg', NULL, 1);
INSERT INTO `products` VALUES (9, 'Adidas Alphabounce J “Black Grey”', '950000', '/storage/products/2/oeHnuIOea0tQv1hFftvM.jpg', 'Alphabounce là mẫu giày chạy trung tính được thiết kế nâng cấp hỗ trợ cho việc tập luyện và hoạt động hàng ngày. Upper với thiết kế lưới nguyên khối hỗ trợ tuyệt vời cho các chuyển động đa chiều. Đệm midsole \"phản ứng nhanh\" ở phần mu trước và gót chân tạo lên sự chắc chắn cho các bài tập sức mạnh. Ngoài ra, Alphabounce cũng được xem là mẫu giày thời trang năng động v ới phong cách thiết kế hiện đại', 10, '2022-10-05 06:51:38', '2022-10-05 06:51:38', 'ezgif-2-bb4793b308.jpg', NULL, 1);
INSERT INTO `products` VALUES (10, 'Adidas Yeezy 350 V2 \"Slate\"', '1350000', '/storage/products/2/cpKMN8T0uQUkby9QjsmM.jpg', 'E-SHOPPER CAM KẾT\r\n- Cam kết chính hãng 100% nhập từ US, UK, JP.\r\n- Hàng đi kèm full box, tem, tag, giấy gói chính hãng.\r\n- Miễn phí đổi size, đổi mẫu trong vòng 5 ngày.\r\n- Dịch vụ hỏa tốc, hàng được giao nhanh từ 1-4 ngày kể từ ngày đặt hàng.\r\n- Đa dạng mẫu mã, luôn cập nhập các mẫu mới , giá sale rẻ.\r\n\r\nTHÔNG SỐ\r\n- Kiểu dáng: Ôm vừa, có dây buộc\r\n- Đế ngoài: Đế ngoài bằng cao su chống trơn trượt\r\n- Màu sản phẩm: Slate\r\n- Mã sản phẩm: HP7870', 12, '2022-10-05 06:55:05', '2022-10-05 06:55:05', 'ezgif-2-8254d6c3ed.jpg', NULL, 1);
INSERT INTO `products` VALUES (11, 'Nike Air Force 1 Shadow \"Triple White\"', '1250000', '/storage/products/2/d8SOTFtMGikmAXq3PqUk.jpg', 'ĐẶC ĐIỂM NỔI BẬT\r\nĐúng như cái tên của nó, giày Nike Air Force 1 nổi bật nhất với công nghê Air sử dụng trong thiết kế đế giày. Dưới đế giày có một túi khí được đặt bên trong, chính điều này giúp người dùng khi vận động sẽ giảm được tối đa các chấn thương cho bàn chân. Mang đến sự thoải mái, êm ái và chắc chắn cho người dùng.\r\n\r\nTHÔNG SỐ\r\n- Đế ngoài bằng cao su mềm dẻo tạo độ bám, lớp lót mềm mại mang lại cảm giác thoải mái cho đôi chân.\r\n- Form giày đi lên chân vừa vặn, các đường chỉ khâu rất tinh tế và chắc chắn đảm bảo hài lòng mọi khách hàng\r\n- Phần trên của giày được làm từ chất liệu da cao cấp với độ ôm được thiết kế đặc biệt để nâng đỡ có định hướng và hỗ trợ chuyển động.\r\n- Màu sản phẩm: Triple White \r\n- Mã sản phẩm: CU8591-103', 13, '2022-10-05 06:58:45', '2022-10-05 06:58:45', 'ezgif-2-4682cbf4cb.jpg', NULL, 1);
INSERT INTO `products` VALUES (12, 'Nike Air Force 1 Shadow \"Multicolor\"', '1650000', '/storage/products/2/KGMxkLVTllHqTgCos4he.jpg', 'ĐẶC ĐIỂM NỔI BẬT\r\nĐúng như cái tên của nó, giày Nike Air Force 1 nổi bật nhất với công nghê Air sử dụng trong thiết kế đế giày. Dưới đế giày có một túi khí được đặt bên trong, chính điều này giúp người dùng khi vận động sẽ giảm được tối đa các chấn thương cho bàn chân. Mang đến sự thoải mái, êm ái và chắc chắn cho người dùng.\r\n\r\nTHÔNG SỐ\r\n- Đế ngoài bằng cao su mềm dẻo tạo độ bám, lớp lót mềm mại mang lại cảm giác thoải mái cho đôi chân.\r\n- Form giày đi lên chân vừa vặn, các đường chỉ khâu rất tinh tế và chắc chắn đảm bảo hài lòng mọi khách hàng\r\n- Phần trên của giày được làm từ chất liệu da cao cấp với độ ôm được thiết kế đặc biệt để nâng đỡ có định hướng và hỗ trợ chuyển động.\r\n- Màu sản phẩm: Shadow \"Multicolor\"\r\n- Mã sản phẩm: CU8591-104', 13, '2022-10-05 07:01:08', '2022-10-05 07:02:08', 'ezgif-2-a6a8ecc5b1.jpg', NULL, 1);
INSERT INTO `products` VALUES (13, 'Nike Air Force 1 Custom \"Shattered Backboard\"', '1850000', '/storage/products/2/8DfjWj32n07UfEHKD3el.jpg', 'ĐẶC ĐIỂM NỔI BẬT\r\nĐúng như cái tên của nó, giày Nike Air Force 1 nổi bật nhất với công nghê Air sử dụng trong thiết kế đế giày. Dưới đế giày có một túi khí được đặt bên trong, chính điều này giúp người dùng khi vận động sẽ giảm được tối đa các chấn thương cho bàn chân. Mang đến sự thoải mái, êm ái và chắc chắn cho người dùng.\r\n\r\nTHÔNG SỐ\r\n- Đế ngoài bằng cao su mềm dẻo tạo độ bám, lớp lót mềm mại mang lại cảm giác thoải mái cho đôi chân.\r\n- Form giày đi lên chân vừa vặn, các đường chỉ khâu rất tinh tế và chắc chắn đảm bảo hài lòng mọi khách hàng\r\n- Phần trên của giày được làm từ chất liệu da cao cấp với độ ôm được thiết kế đặc biệt để nâng đỡ có định hướng và hỗ trợ chuyển động.\r\n- Màu sản phẩm: Custom \"Shattered Backboard\"\r\n- Mã sản phẩm: CU8591-106', 13, '2022-10-05 07:04:33', '2022-10-05 07:04:33', 'ezgif-2-356347cbaf.jpg', NULL, 1);
INSERT INTO `products` VALUES (14, 'Nike Air Force 1 Shadow ‘Infinite Lilac’', '1650000', '/storage/products/2/K9WnZu3zEQ30V2WmRWEa.jpg', 'ĐẶC ĐIỂM NỔI BẬT\r\nĐúng như cái tên của nó, giày Nike Air Force 1 nổi bật nhất với công nghê Air sử dụng trong thiết kế đế giày. Dưới đế giày có một túi khí được đặt bên trong, chính điều này giúp người dùng khi vận động sẽ giảm được tối đa các chấn thương cho bàn chân. Mang đến sự thoải mái, êm ái và chắc chắn cho người dùng.\r\n\r\nTHÔNG SỐ\r\n- Đế ngoài bằng cao su mềm dẻo tạo độ bám, lớp lót mềm mại mang lại cảm giác thoải mái cho đôi chân.\r\n- Form giày đi lên chân vừa vặn, các đường chỉ khâu rất tinh tế và chắc chắn đảm bảo hài lòng mọi khách hàng\r\n- Phần trên của giày được làm từ chất liệu da cao cấp với độ ôm được thiết kế đặc biệt để nâng đỡ có định hướng và hỗ trợ chuyển động.\r\n- Màu sản phẩm: Shadow ‘Infinite Lilac’ \r\n- Mã sản phẩm: CU8591-108', 13, '2022-10-05 07:06:53', '2022-10-05 07:06:53', 'ezgif-2-dc1951b167.jpg', NULL, 1);
INSERT INTO `products` VALUES (15, 'Nike Air Jordan 1 Gs \"Tie Dye\"', '2250000', '/storage/products/2/DNZqBlPZ2lAEr2h3GwrJ.jpg', 'Nike Air Jordan 1 Gs \"Tie Dye\" là phiên bản low-top mới nhất của bộ hình bóng AJ1 cổ điển. Chúng lấy cảm hứng từ màu sắc “Shadow” mang tính biểu tượng, một trong những phiên bản OG đầu tiên của giày ra mắt và được chính Michael Jordan đi vào năm 1985.\r\n\r\nChúng được sản xuất từ chất liệu da cao cấp chất lượng cao trong suốt và có mặt trên màu đen, xám và trắng. Thương hiệu được thể hiện trên toàn bộ thiết kế bao gồm Swoosh đặc trưng của Nike ở cả 2 mặt của đôi giày, logo Jumpman được thêu trên lưỡi gà và logo đôi cánh cổ điển của Jordan Brand ở phía sau mỗi đôi giày.\r\n\r\nDưới chân, đế giữa màu trắng được làm nổi bật với đế ngoài màu xám khói để hoàn thiện vẻ ngoài hoàn hảo, trong khi chúng kết hợp công nghệ Nike Air ẩn bên trong để mang lại xu hướng phản ứng và hỗ trợ nhằm mang lại trải nghiệm tốt nhất cho người dùng.\r\n\r\nNike Air Jordan 1 Gs \"Tie Dye\" được đồn đại sẽ sớm phát hành thông qua một số nhà bán lẻ hàng đầu và chúng chắc chắn sẽ bán hết nhanh khi ra mắt. Sản phẩm được phân phối trực tiếp tại Authentic Shoes, hãy là người may mắn sở hữu phối màu này bằng cách liên hệ ngay với chúng mình nhé.', 14, '2022-10-05 07:16:23', '2022-10-05 07:16:23', 'ezgif-2-a53735634d.jpg', NULL, 1);
INSERT INTO `products` VALUES (16, 'Nike Air Jordan 1 Low \"Grey Navy\"', '1650000', '/storage/products/2/GlE5o1XYAmjNnlC5aYa4.jpg', 'Nike Air Jordan 1 Low \"Grey Navy\" là phiên bản low-top mới nhất của bộ hình bóng AJ1 cổ điển. Chúng lấy cảm hứng từ màu sắc “Shadow” mang tính biểu tượng, một trong những phiên bản OG đầu tiên của giày ra mắt và được chính Michael Jordan đi vào năm 1985.\r\n\r\nChúng được sản xuất từ chất liệu da cao cấp chất lượng cao trong suốt và có mặt trên màu đen, xám và trắng. Thương hiệu được thể hiện trên toàn bộ thiết kế bao gồm Swoosh đặc trưng của Nike ở cả 2 mặt của đôi giày, logo Jumpman được thêu trên lưỡi gà và logo đôi cánh cổ điển của Jordan Brand ở phía sau mỗi đôi giày.\r\n\r\nDưới chân, đế giữa màu trắng được làm nổi bật với đế ngoài màu xám khói để hoàn thiện vẻ ngoài hoàn hảo, trong khi chúng kết hợp công nghệ Nike Air ẩn bên trong để mang lại xu hướng phản ứng và hỗ trợ nhằm mang lại trải nghiệm tốt nhất cho người dùng.\r\n\r\nNike Air Jordan 1 Low \"Grey Navy\" được đồn đại sẽ sớm phát hành thông qua một số nhà bán lẻ hàng đầu và chúng chắc chắn sẽ bán hết nhanh khi ra mắt. Sản phẩm được phân phối trực tiếp tại Authentic Shoes, hãy là người may mắn sở hữu phối màu này bằng cách liên hệ ngay với chúng mình nhé.', 14, '2022-10-05 07:18:46', '2022-10-05 07:18:46', 'ezgif-2-db742a6344.jpg', NULL, 1);
INSERT INTO `products` VALUES (17, 'Nike Air Jordan 1 Low \"Washed Denim\"', '2450000', '/storage/products/2/PTwQ1d6KEa1Naqrl38B8.jpg', 'Nike Air Jordan 1 Low \"Washed Denim\" là phiên bản low-top mới nhất của bộ hình bóng AJ1 cổ điển. Chúng lấy cảm hứng từ màu sắc “Shadow” mang tính biểu tượng, một trong những phiên bản OG đầu tiên của giày ra mắt và được chính Michael Jordan đi vào năm 1985.\r\n\r\nChúng được sản xuất từ chất liệu da cao cấp chất lượng cao trong suốt và có mặt trên màu đen, xám và trắng. Thương hiệu được thể hiện trên toàn bộ thiết kế bao gồm Swoosh đặc trưng của Nike ở cả 2 mặt của đôi giày, logo Jumpman được thêu trên lưỡi gà và logo đôi cánh cổ điển của Jordan Brand ở phía sau mỗi đôi giày.\r\n\r\nDưới chân, đế giữa màu trắng được làm nổi bật với đế ngoài màu xám khói để hoàn thiện vẻ ngoài hoàn hảo, trong khi chúng kết hợp công nghệ Nike Air ẩn bên trong để mang lại xu hướng phản ứng và hỗ trợ nhằm mang lại trải nghiệm tốt nhất cho người dùng.\r\n\r\nNike Air Jordan 1 Low \"Washed Denim\" được đồn đại sẽ sớm phát hành thông qua một số nhà bán lẻ hàng đầu và chúng chắc chắn sẽ bán hết nhanh khi ra mắt. Sản phẩm được phân phối trực tiếp tại Authentic Shoes, hãy là người may mắn sở hữu phối màu này bằng cách liên hệ ngay với chúng mình nhé.', 14, '2022-10-05 07:22:55', '2022-10-05 07:22:55', 'ezgif-2-ce7582d214.jpg', NULL, 1);
INSERT INTO `products` VALUES (18, 'Nike Jordan 1 Mid \"Amory Navy\"', '2150000', '/storage/products/2/c3rWdP63yHOiRvJADuUR.jpg', 'Nike Jordan 1 Mid \"Amory Navy\"  là phiên bản low-top mới nhất của bộ hình bóng AJ1 cổ điển. Chúng lấy cảm hứng từ màu sắc “Shadow” mang tính biểu tượng, một trong những phiên bản OG đầu tiên của giày ra mắt và được chính Michael Jordan đi vào năm 1985.\r\n\r\nChúng được sản xuất từ chất liệu da cao cấp chất lượng cao trong suốt và có mặt trên màu đen, xám và trắng. Thương hiệu được thể hiện trên toàn bộ thiết kế bao gồm Swoosh đặc trưng của Nike ở cả 2 mặt của đôi giày, logo Jumpman được thêu trên lưỡi gà và logo đôi cánh cổ điển của Jordan Brand ở phía sau mỗi đôi giày.\r\n\r\nDưới chân, đế giữa màu trắng được làm nổi bật với đế ngoài màu xám khói để hoàn thiện vẻ ngoài hoàn hảo, trong khi chúng kết hợp công nghệ Nike Air ẩn bên trong để mang lại xu hướng phản ứng và hỗ trợ nhằm mang lại trải nghiệm tốt nhất cho người dùng.\r\n\r\nNike Jordan 1 Mid \"Amory Navy\"  được đồn đại sẽ sớm phát hành thông qua một số nhà bán lẻ hàng đầu và chúng chắc chắn sẽ bán hết nhanh khi ra mắt. Sản phẩm được phân phối trực tiếp tại Authentic Shoes, hãy là người may mắn sở hữu phối màu này bằng cách liên hệ ngay với chúng mình nhé.', 14, '2022-10-05 07:25:08', '2022-10-05 07:25:08', 'ezgif-2-5752f648a4.jpg', NULL, 1);
INSERT INTO `products` VALUES (19, 'Nike Air Max 97 \"Black Woodgrain\"', '2600000', '/storage/products/2/juN0R0BubnUM2LuOtHZY.jpg', 'BẠN NGHĨ SAO VỀ HÌNH ẢNH TÀU CAO TỐC CÓ THỂ TẠO RA MỘT BEST SNEAKER !!\r\n\r\nĐúng vậy !! Lấy cảm hứng từ những chiếc tàu cao tốc có tốc độ như hình viên đạn đó chính là phần LINE PHẢN QUANG đặc trưng kéo dài quanh đôi giày tạo thành một điểm nhấn chỉ cần nhắc tới AIR MAX 97 là ai cũng nhớ tới. Đi ban đêm ánh đèn chiếu vào khiến bạn nổi bật hơn phần còn lại của thế giới. Cùng với bộ đế không lẫn đi đâu được, công nghệ AIR trải dọc toàn đôi giày hỗ trợ từng bước đi nhẹ nhàng êm ái hơn bao giờ hết. Về phần thiết kế thời trang thì không còn gì để bàn cãi, chỉ cần bạn onfit lên chân là bạn sẽ siêu lòng ngay từ cái nhìn đầu tiên', 15, '2022-10-05 07:28:00', '2022-10-05 07:28:00', 'ezgif-2-9225f1a510.jpg', NULL, 1);
INSERT INTO `products` VALUES (20, 'Nike Air Max 97 \"Gold Medal\"', '2450000', '/storage/products/2/pRTV2kiUY83kMIDNrhZZ.jpg', 'BẠN NGHĨ SAO VỀ HÌNH ẢNH TÀU CAO TỐC CÓ THỂ TẠO RA MỘT BEST SNEAKER !!\r\n\r\nĐúng vậy !! Lấy cảm hứng từ những chiếc tàu cao tốc có tốc độ như hình viên đạn đó chính là phần LINE PHẢN QUANG đặc trưng kéo dài quanh đôi giày tạo thành một điểm nhấn chỉ cần nhắc tới AIR MAX 97 là ai cũng nhớ tới. Đi ban đêm ánh đèn chiếu vào khiến bạn nổi bật hơn phần còn lại của thế giới. Cùng với bộ đế không lẫn đi đâu được, công nghệ AIR trải dọc toàn đôi giày hỗ trợ từng bước đi nhẹ nhàng êm ái hơn bao giờ hết. Về phần thiết kế thời trang thì không còn gì để bàn cãi, chỉ cần bạn onfit lên chân là bạn sẽ siêu lòng ngay từ cái nhìn đầu tiên', 15, '2022-10-05 07:30:27', '2022-10-05 07:30:27', 'ezgif-2-0698b96eb3.jpg', NULL, 1);
INSERT INTO `products` VALUES (21, 'Nike Air Max Alpha Tr 3 \"Core Black\"', '1650000', '/storage/products/2/tgWwIiHwNjbV5Gx0N7Vq.jpg', 'Đặc điểm nổi bật và thiết kế\r\n- Được làm từ chất liệu da và vải cao cấp , bền đẹp với thời gian\r\n- Đế giày cao su mềm tạo độ êm ái khi lên chân, giúp bạn thoải mái vận động cả ngày dài mà không gây đau chân.\r\n- Giày kiểu dáng năng động. dễ phối đồ và ứng đụng được vào nhiều hoàn cảnh khác nhai như đi chơi, đi daojm đi du lịch.\r\n- Form giày chắc chắn , đường nét vô cùng tinh tế và sắc sảo.', 15, '2022-10-05 07:34:41', '2022-10-05 07:34:41', 'ezgif-2-23619a67cb.jpg', NULL, 1);
INSERT INTO `products` VALUES (22, 'New Balance 327 Moonbeam Gum', '1750000', '/storage/products/2/4KocFTbJpYL6kdr4QHfR.jpg', 'Giày New Balance 327 Moonbeam Gum giới thiệu cách phối màu truyền thống trên một kết cấu hoàn toàn bằng da thông thường. Phần đế màu trắng rõ nét với màu hồng trắng, Swoosh và lớp phủ bàn chân và gót giày của giày thể thao. Màu hồng được lặp lại trên thẻ lưỡi dệt và miếng lót gót, cả hai đều được đánh dấu bằng thương hiệu tiêu chuẩn của Nike. Phần đầu thấp cưỡi trên một đế lót cao su hai tông màu, được trang bị một đế ngoài cứng cáp ban đầu được thiết kế để xoay trên gỗ cứng.', 3, '2022-10-05 07:39:32', '2022-10-05 07:39:32', 'ezgif-4-de85440d19.jpg', NULL, 1);
INSERT INTO `products` VALUES (23, 'New Balance 550 ‘White Pink’', '2450000', '/storage/products/2/XF5DGNWHW3L0C8U3Yytu.jpg', 'Giày New Balance 550 ‘White Pink’ giới thiệu cách phối màu truyền thống trên một kết cấu hoàn toàn bằng da thông thường. Phần đế màu trắng rõ nét với màu hồng trắng, Swoosh và lớp phủ bàn chân và gót giày của giày thể thao. Màu hồng được lặp lại trên thẻ lưỡi dệt và miếng lót gót, cả hai đều được đánh dấu bằng thương hiệu tiêu chuẩn của Nike. Phần đầu thấp cưỡi trên một đế lót cao su hai tông màu, được trang bị một đế ngoài cứng cáp ban đầu được thiết kế để xoay trên gỗ cứng.', 3, '2022-10-05 07:41:26', '2022-10-05 07:41:26', 'ezgif-4-fb0d09d183.jpg', NULL, 1);
INSERT INTO `products` VALUES (24, 'New Balance 550 ‘Shadow’ On Feet', '2150000', '/storage/products/2/61opIpL2qyr1zJL3BheI.jpg', 'New Balance là một thương hiệu thời trang và giày thể thao từ Mỹ. Hơn 100 năm qua, New Balance luôn tìm hiểu nhu cầu của những vận động viên để đầu tư, thiết kế những sản phẩm phù hợp. New Balance luôn tập trung đến từng chuyển động của cơ thể con người để có thể “Tạo-Ra-Điều-Tuyệt-Vời” (Making Excellent Happen)!\r\n\r\nNew Balance 550 ‘Shadow’ đã được bày bán tại New Balance và các nhà bán lẻ khác, đừng bỏ lỡ cơ hội sở hữu chúng qua E-SHOPPER nhé ^^', 3, '2022-10-05 07:43:58', '2022-10-06 05:57:44', 'ezgif-4-3b4375d074.jpg', NULL, 1);
INSERT INTO `products` VALUES (25, 'Vans Old Skool Mule Black Classic', '1250000', '/storage/products/2/Pq38MY0fVTaxZkf6EJBQ.jpg', 'VANS - một thương hiệu giày thể thao vang tầm thế giới với các sản phẩm đi đôi cùng tâm huyết, chất lượng và đẳng cấp thời trang toàn cầu. Với kinh nghiệm hoạt động trong nghề cực kỳ phong phú với hơn nửa thế kỷ cống hiến hết mình, VANS chính thức đi vào hoạt động và cho ra mắt những sản phẩm đầu tiên gây chấn động thị trường Sneaker vào ngày 16 tháng 3 năm 1966 tại số 704E Broadway, Anaheim, California. Sau 11 năm hoạt động vào năm 1977 cùng với những thành công nhất định, VANS chưa một lần ngủ quên trong chiến thẳng của mình mà tiếp tục cống hiến đến các VANSAHOLIC một huyền thoại tiếp theo mang tên VANS OLD SKOOL.', 4, '2022-10-05 07:47:46', '2022-10-06 05:57:06', 'ezgif-4-e304255432.jpg', NULL, 1);
INSERT INTO `products` VALUES (26, 'Vans Style 36 Decon SF Black Pont', '1250000', '/storage/products/2/SGmODZzsQ7n0kZd39PvM.jpg', 'VANS - một thương hiệu giày thể thao vang tầm thế giới với các sản phẩm đi đôi cùng tâm huyết, chất lượng và đẳng cấp thời trang toàn cầu. Với kinh nghiệm hoạt động trong nghề cực kỳ phong phú với hơn nửa thế kỷ cống hiến hết mình, VANS chính thức đi vào hoạt động và cho ra mắt những sản phẩm đầu tiên gây chấn động thị trường Sneaker vào ngày 16 tháng 3 năm 1966 tại số 704E Broadway, Anaheim, California. Sau 11 năm hoạt động vào năm 1977 cùng với những thành công nhất định, VANS chưa một lần ngủ quên trong chiến thẳng của mình mà tiếp tục cống hiến đến các VANSAHOLIC một huyền thoại tiếp theo mang tên VANS OLD SKOOL.', 4, '2022-10-05 07:49:39', '2022-10-05 07:49:39', 'ezgif-4-97a60c8d07.jpg', NULL, 1);
INSERT INTO `products` VALUES (27, 'Vans Sk8-Hi Horror Pack The Shining', '1450000', '/storage/products/2/XioTZ7yFwl578fTscFEK.jpg', 'VANS - một thương hiệu giày thể thao vang tầm thế giới với các sản phẩm đi đôi cùng tâm huyết, chất lượng và đẳng cấp thời trang toàn cầu. Với kinh nghiệm hoạt động trong nghề cực kỳ phong phú với hơn nửa thế kỷ cống hiến hết mình, VANS chính thức đi vào hoạt động và cho ra mắt những sản phẩm đầu tiên gây chấn động thị trường Sneaker vào ngày 16 tháng 3 năm 1966 tại số 704E Broadway, Anaheim, California. Sau 11 năm hoạt động vào năm 1977 cùng với những thành công nhất định, VANS chưa một lần ngủ quên trong chiến thẳng của mình mà tiếp tục cống hiến đến các VANSAHOLIC một huyền thoại tiếp theo mang tên VANS OLD SKOOL.', 4, '2022-10-05 07:51:19', '2022-10-05 07:51:19', 'ezgif-4-83a7e688e9.jpg', NULL, 1);
INSERT INTO `products` VALUES (28, 'Converse Run Star Hi ‘Black’ White Gum', '1350000', '/storage/products/2/9ZiJi0PEDsUJE1ahleQd.jpg', 'Converse là một trong những thương hiệu giày nổi tiếng và uy tín nhất trên thế giới với lịch sử phát triển lên đến hơn 100 năm. Đến 60% người Mỹ đều sở hữu ít nhất 1 đôi giày từ nhãn hiệu Converse. Với thiết kế đơn giản, trẻ trung và năng động, Converse trở thành một ‘must-have item’ cần có trong bộ sưu tập giày của tất cả mọi người, không chỉ riêng với các sneakerhead. Lịch sử phát triển của Converse lâu đời hơn rất nhiều so với các loại giày thể thao đang làm mưa làm gió ngày nay như hai ông lớn Nike và adidas.\r\n\r\nTrên thế giới, Converse vẫn luôn cố giữ cho mình những bản sắc nhất định đã luôn gắn bó với họ từ những ngày đầu, hàng năm Converse cũng tạo ra những bản collab vô cùng đa dạng với mọi chủ đề độc đáo trên thế giới từ những nhân vật hoạt hình cho đến những thương hiệu đồ uống như Coca cola. Nhìn trung, tuy không còn giữ được ánh hào quang vốn có, Converse vẫn luôn tồn tại trong tim người tiêu dùng như một tượng đài bất diệt về dòng giày được yêu thích bậc nhất một thời.\r\n\r\nGiày Run Star Hi ‘Black’ hứa hẹn là một siêu phẩm mà bất cứ sneakerhead nào cũng mong muốn sở hữu trong tủ giày của mình.', 5, '2022-10-06 05:36:31', '2022-10-06 05:56:20', 'ezgif-4-df1e0771e4.jpg', NULL, 1);
INSERT INTO `products` VALUES (29, 'Converse Chuck 70 Low ‘Flames’', '1250000', '/storage/products/2/wOyjH4edBfACYcuAKMRV.jpg', 'Converse là một trong những thương hiệu giày nổi tiếng và uy tín nhất trên thế giới với lịch sử phát triển lên đến hơn 100 năm. Đến 60% người Mỹ đều sở hữu ít nhất 1 đôi giày từ nhãn hiệu Converse. Với thiết kế đơn giản, trẻ trung và năng động, Converse trở thành một ‘must-have item’ cần có trong bộ sưu tập giày của tất cả mọi người, không chỉ riêng với các sneakerhead. Lịch sử phát triển của Converse lâu đời hơn rất nhiều so với các loại giày thể thao đang làm mưa làm gió ngày nay như hai ông lớn Nike và adidas.\r\n\r\nTrên thế giới, Converse vẫn luôn cố giữ cho mình những bản sắc nhất định đã luôn gắn bó với họ từ những ngày đầu, hàng năm Converse cũng tạo ra những bản collab vô cùng đa dạng với mọi chủ đề độc đáo trên thế giới từ những nhân vật hoạt hình cho đến những thương hiệu đồ uống như Coca cola. Nhìn trung, tuy không còn giữ được ánh hào quang vốn có, Converse vẫn luôn tồn tại trong tim người tiêu dùng như một tượng đài bất diệt về dòng giày được yêu thích bậc nhất một thời.\r\n\r\nGiày Converse Chuck 70 Low ‘Flames’ hứa hẹn là một siêu phẩm mà bất cứ sneakerhead nào cũng mong muốn sở hữu trong tủ giày của mình.', 5, '2022-10-06 05:40:17', '2022-10-06 05:40:17', 'ezgif-4-a2a2dace8d.jpg', NULL, 1);
INSERT INTO `products` VALUES (30, 'Converse Fear of God Essentials', '1450000', '/storage/product/2/dhzpRkSOnNIEzbEMkUmd.jpg', 'Converse là một trong những thương hiệu giày nổi tiếng và uy tín nhất trên thế giới với lịch sử phát triển lên đến hơn 100 năm. Đến 60% người Mỹ đều sở hữu ít nhất 1 đôi giày từ nhãn hiệu Converse. Với thiết kế đơn giản, trẻ trung và năng động, Converse trở thành một ‘must-have item’ cần có trong bộ sưu tập giày của tất cả mọi người, không chỉ riêng với các sneakerhead. Lịch sử phát triển của Converse lâu đời hơn rất nhiều so với các loại giày thể thao đang làm mưa làm gió ngày nay như hai ông lớn Nike và adidas.\r\n\r\nTrên thế giới, Converse vẫn luôn cố giữ cho mình những bản sắc nhất định đã luôn gắn bó với họ từ những ngày đầu, hàng năm Converse cũng tạo ra những bản collab vô cùng đa dạng với mọi chủ đề độc đáo trên thế giới từ những nhân vật hoạt hình cho đến những thương hiệu đồ uống như Coca cola. Nhìn trung, tuy không còn giữ được ánh hào quang vốn có, Converse vẫn luôn tồn tại trong tim người tiêu dùng như một tượng đài bất diệt về dòng giày được yêu thích bậc nhất một thời.\r\n\r\nGiày Converse Fear of God Essentials x Chuck 70 High ‘Black’ hứa hẹn là một siêu phẩm mà bất cứ sneakerhead nào cũng mong muốn sở hữu trong tủ giày của mình.', 5, '2022-10-06 05:44:22', '2022-10-06 05:55:42', 'ezgif-4-467008536c.jpg', NULL, 1);
INSERT INTO `products` VALUES (31, 'Balenciaga Triple S Trainer Black Red', '1750000', '/storage/products/2/tYz7brj46zQpTr1J9WU5.jpg', 'Đây là thương hiệu thời trang lâu đời nổi tiếng, cao cấp nhất nhì thế giới được thành lập từ năm 1919. Tiếp nối sự thành công, thương hiệu tiếp tục tung ra Triple S – dòng giày đa sắc màu, phá bỏ mọi giới hạn, đủ đẹp, đủ chất để khiến giới mộ điệu lại một lần nữa phải điên đảo Đây là mẫu giày cũng được nhiều người nghệ sĩ thế giới lựa chọn. Tại Việt Nam, giày Triple S được rất nhiều nghệ sĩ nổi tiếng yêu thích.\r\nThiết kế đột phá.\r\nMột đôi giày ra đời đã phá vỡ những tiêu chuẩn về thời trang hiện nay.\r\nPhần đế cao, uốn lượn hơn hẳn để bạn ăn gian thêm vài centimet\r\nPha trộn những gam màu vintage và nhiều chất liệu vải khác nhau.\r\nTrên thân, gót hay đế giày cũng đều được thêu và khắc tên thương hiệu, tạo sự đẳng cấp.', 7, '2022-10-06 05:47:38', '2022-10-06 05:47:38', 'Triple-S-Trainer-Black-Red-2018.jpg', NULL, 1);
INSERT INTO `products` VALUES (32, 'Balenciaga Triple S Trainer Yellow Green', '1450000', '/storage/products/2/ZAQbOdPhuwMOUNRPCT82.jpg', 'Đây là thương hiệu thời trang lâu đời nổi tiếng, cao cấp nhất nhì thế giới được thành lập từ năm 1919. Tiếp nối sự thành công, thương hiệu tiếp tục tung ra Triple S – dòng giày đa sắc màu, phá bỏ mọi giới hạn, đủ đẹp, đủ chất để khiến giới mộ điệu lại một lần nữa phải điên đảo Đây là mẫu giày cũng được nhiều người nghệ sĩ thế giới lựa chọn. Tại Việt Nam, giày Triple S được rất nhiều nghệ sĩ nổi tiếng yêu thích.\r\nThiết kế đột phá.\r\nMột đôi giày ra đời đã phá vỡ những tiêu chuẩn về thời trang hiện nay.\r\nPhần đế cao, uốn lượn hơn hẳn để bạn ăn gian thêm vài centimet\r\nPha trộn những gam màu vintage và nhiều chất liệu vải khác nhau.\r\nTrên thân, gót hay đế giày cũng đều được thêu và khắc tên thương hiệu, tạo sự đẳng cấp.', 7, '2022-10-06 05:48:39', '2022-10-06 05:48:39', 'IMG_1030-1.jpg', NULL, 1);
INSERT INTO `products` VALUES (33, 'Balenciaga Triple S Trainer White', '1750000', '/storage/products/2/zEDH8Ouz86MUTNlqAj8O.jpg', 'Đây là thương hiệu thời trang lâu đời nổi tiếng, cao cấp nhất nhì thế giới được thành lập từ năm 1919. Tiếp nối sự thành công, thương hiệu tiếp tục tung ra Triple S – dòng giày đa sắc màu, phá bỏ mọi giới hạn, đủ đẹp, đủ chất để khiến giới mộ điệu lại một lần nữa phải điên đảo Đây là mẫu giày cũng được nhiều người nghệ sĩ thế giới lựa chọn. Tại Việt Nam, giày Triple S được rất nhiều nghệ sĩ nổi tiếng yêu thích.\r\nThiết kế đột phá.\r\nMột đôi giày ra đời đã phá vỡ những tiêu chuẩn về thời trang hiện nay.\r\nPhần đế cao, uốn lượn hơn hẳn để bạn ăn gian thêm vài centimet\r\nPha trộn những gam màu vintage và nhiều chất liệu vải khác nhau.\r\nTrên thân, gót hay đế giày cũng đều được thêu và khắc tên thương hiệu, tạo sự đẳng cấp.', 7, '2022-10-06 05:49:32', '2022-10-06 05:49:32', '2-1-1024x1024-1-scaled.jpg', NULL, 1);
INSERT INTO `products` VALUES (34, 'Balenciaga Triple S Clear Sole Orange Grey Black', '1450000', '/storage/products/2/YsHEUA1bRdgLDjRRRiDa.jpg', 'Đây là thương hiệu thời trang lâu đời nổi tiếng, cao cấp nhất nhì thế giới được thành lập từ năm 1919. Tiếp nối sự thành công, thương hiệu tiếp tục tung ra Triple S – dòng giày đa sắc màu, phá bỏ mọi giới hạn, đủ đẹp, đủ chất để khiến giới mộ điệu lại một lần nữa phải điên đảo Đây là mẫu giày cũng được nhiều người nghệ sĩ thế giới lựa chọn. Tại Việt Nam, giày Triple S được rất nhiều nghệ sĩ nổi tiếng yêu thích.\r\nThiết kế đột phá.\r\nMột đôi giày ra đời đã phá vỡ những tiêu chuẩn về thời trang hiện nay.\r\nPhần đế cao, uốn lượn hơn hẳn để bạn ăn gian thêm vài centimet\r\nPha trộn những gam màu vintage và nhiều chất liệu vải khác nhau.\r\nTrên thân, gót hay đế giày cũng đều được thêu và khắc tên thương hiệu, tạo sự đẳng cấp.', 7, '2022-10-06 05:50:42', '2022-10-06 05:50:42', 'IMG_1029-1.jpg', NULL, 1);
INSERT INTO `products` VALUES (35, 'Balenciaga Triple S Clear Sole White Transparent', '1550000', '/storage/products/2/EaKS8XPvyuyGpGTxfibs.jpg', 'Đây là thương hiệu thời trang lâu đời nổi tiếng, cao cấp nhất nhì thế giới được thành lập từ năm 1919. Tiếp nối sự thành công, thương hiệu tiếp tục tung ra Triple S – dòng giày đa sắc màu, phá bỏ mọi giới hạn, đủ đẹp, đủ chất để khiến giới mộ điệu lại một lần nữa phải điên đảo Đây là mẫu giày cũng được nhiều người nghệ sĩ thế giới lựa chọn. Tại Việt Nam, giày Triple S được rất nhiều nghệ sĩ nổi tiếng yêu thích.\r\nThiết kế đột phá.\r\nMột đôi giày ra đời đã phá vỡ những tiêu chuẩn về thời trang hiện nay.\r\nPhần đế cao, uốn lượn hơn hẳn để bạn ăn gian thêm vài centimet\r\nPha trộn những gam màu vintage và nhiều chất liệu vải khác nhau.\r\nTrên thân, gót hay đế giày cũng đều được thêu và khắc tên thương hiệu, tạo sự đẳng cấp.', 7, '2022-10-06 05:51:46', '2022-10-06 05:58:49', 'IMG_1032-1.jpg', NULL, 1);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'phone_contact', '0962324697', '2022-09-28 01:53:47', '2022-09-28 01:53:47');
INSERT INTO `settings` VALUES (2, 'link_facebook', 'https://www.facebook.com/thaithai0212', '2022-09-28 01:54:13', '2022-09-28 01:54:13');
INSERT INTO `settings` VALUES (4, 'mail_contact', 'thaihongpham0212@gmail.com', '2022-10-02 07:46:47', '2022-10-02 07:46:47');
INSERT INTO `settings` VALUES (5, 'linkendin_link', 'https://www.linkedin.com/in/thai-hong-pham-493a90243/', '2022-10-02 07:47:34', '2022-10-02 07:47:34');
INSERT INTO `settings` VALUES (7, 'footer_infomation', '<p class=\"pull-left\">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>\r\n<p class=\"pull-right\">Designed by <span><a target=\"_blank\" href=\"http://www.themeum.com\">Themeum</a></span></p>', '2022-10-02 07:51:00', '2022-10-02 07:51:00');

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES (1, 'slider 31', 'slider 31', 'Black_flag.svg.png', '/storage/sliders/5/knB7XvawQF2oPNVfdtNH.png', '2022-09-28 02:42:50', '2022-09-28 06:46:36', '2022-09-28 06:46:36');
INSERT INTO `sliders` VALUES (2, 'slider 1', 'sssssssssssss', '66331_ban_phim_co_edra_ek387l_mau_den_red_sw_usbc_huano_0002_3.jpg', '/storage/sliders/5/OX9SaBLGDxDQ2VRyNBhI.jpg', '2022-09-28 02:43:07', '2022-09-28 06:46:38', '2022-09-28 06:46:38');
INSERT INTO `sliders` VALUES (3, 'slider 4', 'ssssssssssss', 'Black_flag.svg.png', '/storage/sliders/5/aCgxKTEMN6J4j3xz15QJ.png', '2022-09-28 02:44:46', '2022-09-28 06:46:40', '2022-09-28 06:46:40');
INSERT INTO `sliders` VALUES (4, '100% Responsive Design', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '', '', '2022-09-28 06:48:16', '2022-09-28 06:49:45', '2022-09-28 06:49:45');
INSERT INTO `sliders` VALUES (5, 'Free Ecommerce Template', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'IMG_1057-1.jpg', '/storage/sliders/2/xS2p9y3dPjg1w9LB6sqN.jpg', '2022-09-28 06:50:48', '2022-10-06 06:19:10', NULL);
INSERT INTO `sliders` VALUES (6, '100% Responsive Design', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'IMG_5064.jpg', '/storage/sliders/2/nDVkRuohdrbbrwbVqk0p.jpg', '2022-09-28 06:51:56', '2022-10-06 06:19:16', NULL);
INSERT INTO `sliders` VALUES (7, 'Free Ecommerce Template', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'IMG_1054-1.jpg', '/storage/sliders/2/fBedEjgML0TXd8fBadft.jpg', '2022-09-28 06:52:24', '2022-10-06 06:19:23', NULL);
INSERT INTO `sliders` VALUES (8, 'Free Ecommerce Template', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'girl2.jpg', '/storage/sliders//poYfripnXWmrx44B4u0j.jpg', '2022-09-28 06:52:24', '2022-09-28 07:24:48', '2022-09-28 07:24:48');
INSERT INTO `sliders` VALUES (9, 'Free Ecommerce Template', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'girl3.jpg', '/storage/sliders//ihzULaU71mSUCJX2qJSK.jpg', '2022-09-28 06:52:24', '2022-09-28 07:24:51', '2022-09-28 07:24:51');
INSERT INTO `sliders` VALUES (10, 'Free Ecommerce Template', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'IMG_5039.jpg', '/storage/sliders/2/uee16MLzYXYS8znfMUED.jpg', '2022-09-28 15:42:57', '2022-10-06 06:19:42', NULL);

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, 's', '2022-08-26 22:47:51', '2022-08-26 22:47:51');
INSERT INTO `tags` VALUES (2, 'adidas', '2022-09-28 02:04:14', '2022-09-28 02:04:14');
INSERT INTO `tags` VALUES (3, 'supperstar', '2022-09-28 02:04:14', '2022-09-28 02:04:14');
INSERT INTO `tags` VALUES (4, 'alphabounce', '2022-09-28 02:05:17', '2022-09-28 02:05:17');
INSERT INTO `tags` VALUES (5, 'dev', '2022-09-28 02:59:36', '2022-09-28 02:59:36');
INSERT INTO `tags` VALUES (6, 'd', '2022-09-29 13:07:33', '2022-09-29 13:07:33');
INSERT INTO `tags` VALUES (7, 'a', '2022-09-29 13:07:33', '2022-09-29 13:07:33');
INSERT INTO `tags` VALUES (8, 'superstar', '2022-10-05 06:15:34', '2022-10-05 06:15:34');
INSERT INTO `tags` VALUES (9, 'slip-on', '2022-10-05 06:27:57', '2022-10-05 06:27:57');
INSERT INTO `tags` VALUES (10, 'stansmith', '2022-10-05 06:33:21', '2022-10-05 06:33:21');
INSERT INTO `tags` VALUES (11, 'alpha', '2022-10-05 06:47:04', '2022-10-05 06:47:04');
INSERT INTO `tags` VALUES (12, 'yeezy', '2022-10-05 06:55:05', '2022-10-05 06:55:05');
INSERT INTO `tags` VALUES (13, 'nikce', '2022-10-05 06:58:45', '2022-10-05 06:58:45');
INSERT INTO `tags` VALUES (14, 'air', '2022-10-05 06:58:45', '2022-10-05 06:58:45');
INSERT INTO `tags` VALUES (15, 'air force 1', '2022-10-05 06:58:45', '2022-10-05 06:58:45');
INSERT INTO `tags` VALUES (16, 'nike', '2022-10-05 07:01:08', '2022-10-05 07:01:08');
INSERT INTO `tags` VALUES (17, 'jordan', '2022-10-05 07:16:23', '2022-10-05 07:16:23');
INSERT INTO `tags` VALUES (18, 'max', '2022-10-05 07:28:00', '2022-10-05 07:28:00');
INSERT INTO `tags` VALUES (19, 'new', '2022-10-05 07:39:32', '2022-10-05 07:39:32');
INSERT INTO `tags` VALUES (20, 'balance', '2022-10-05 07:39:32', '2022-10-05 07:39:32');
INSERT INTO `tags` VALUES (21, 'vans', '2022-10-05 07:47:46', '2022-10-05 07:47:46');
INSERT INTO `tags` VALUES (22, 'old school', '2022-10-05 07:47:46', '2022-10-05 07:47:46');
INSERT INTO `tags` VALUES (23, 'converse', '2022-10-06 05:36:31', '2022-10-06 05:36:31');
INSERT INTO `tags` VALUES (24, 'chuck', '2022-10-06 05:40:18', '2022-10-06 05:40:18');
INSERT INTO `tags` VALUES (25, 'flames', '2022-10-06 05:40:18', '2022-10-06 05:40:18');
INSERT INTO `tags` VALUES (26, 'fear', '2022-10-06 05:44:22', '2022-10-06 05:44:22');
INSERT INTO `tags` VALUES (27, 'balen', '2022-10-06 05:47:38', '2022-10-06 05:47:38');
INSERT INTO `tags` VALUES (28, 'balenciaga', '2022-10-06 05:47:38', '2022-10-06 05:47:38');
INSERT INTO `tags` VALUES (29, 'triple s', '2022-10-06 05:47:39', '2022-10-06 05:47:39');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'admin', 'admin@gmail.com', NULL, '$2y$10$akGhUhAhEQ4bJdDXM6FMj.XUvRGr.QDbt5un/2/oydBjFkK4lkpka', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
