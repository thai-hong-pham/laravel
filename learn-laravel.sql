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

 Date: 23/09/2022 11:45:06
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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'GIÀY ADIDAS', 0, 'giay-adidas', '2022-07-18 17:04:09', '2022-07-18 17:04:09', NULL);
INSERT INTO `categories` VALUES (2, 'GIÀY NIKE', 0, 'giay-nike', '2022-07-18 17:04:18', '2022-07-18 17:04:18', NULL);
INSERT INTO `categories` VALUES (3, 'GIÀY CONVERSE', 0, 'giay-converse', '2022-07-18 17:04:30', '2022-07-18 17:04:30', NULL);
INSERT INTO `categories` VALUES (4, 'Giày Superstar', 1, 'giay-superstar', '2022-07-18 17:05:42', '2022-07-18 17:52:44', NULL);
INSERT INTO `categories` VALUES (5, 'Giày Nike Air Force One', 2, 'giay-nike-air-force-one', '2022-07-18 17:05:58', '2022-07-18 17:05:58', NULL);
INSERT INTO `categories` VALUES (6, 'Giày Converse Taylor Chuck', 3, 'giay-converse-taylor-chuck', '2022-07-18 17:06:19', '2022-07-18 17:06:19', NULL);
INSERT INTO `categories` VALUES (7, 'Giày Adidas Stansmith', 1, 'giay-adidas-stansmith', '2022-07-18 17:06:58', '2022-07-18 17:06:58', NULL);
INSERT INTO `categories` VALUES (9, 'Phạm Hồng Thái', 1, 'pham-hong-thai', '2022-07-18 18:03:34', '2022-07-18 18:03:37', '2022-07-18 18:03:37');

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'Menu 1', 0, NULL, NULL, '', NULL);
INSERT INTO `menus` VALUES (2, 'Menu 2', 0, NULL, NULL, '', NULL);
INSERT INTO `menus` VALUES (3, 'Menu 3', 0, NULL, NULL, '', NULL);
INSERT INTO `menus` VALUES (4, 'Menu 1.1', 1, NULL, NULL, '', NULL);
INSERT INTO `menus` VALUES (5, 'Menu 1.2', 1, NULL, NULL, '', NULL);
INSERT INTO `menus` VALUES (6, 'Menu 1.1.1', 4, NULL, NULL, '', NULL);
INSERT INTO `menus` VALUES (7, 'Menu 1.2.1', 5, NULL, NULL, '', NULL);
INSERT INTO `menus` VALUES (8, 'Menu 2.1', 2, NULL, NULL, '', NULL);
INSERT INTO `menus` VALUES (9, 'Menu 1.1.2', 4, '2022-07-21 09:14:34', '2022-07-21 09:14:34', '', NULL);
INSERT INTO `menus` VALUES (10, 'Menu 4', 0, '2022-07-21 09:18:46', '2022-07-21 10:28:24', '', '2022-07-21 10:28:24');
INSERT INTO `menus` VALUES (11, 'Menu 4.1', 10, '2022-07-21 09:18:58', '2022-07-21 10:28:26', '', '2022-07-21 10:28:26');
INSERT INTO `menus` VALUES (12, 'Menu 3.1', 3, '2022-07-21 09:19:13', '2022-07-21 09:19:13', '', NULL);
INSERT INTO `menus` VALUES (13, 'Menu 5', 0, '2022-07-21 09:39:02', '2022-07-21 10:28:21', 'menu-5', '2022-07-21 10:28:21');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (1, 5, 2, NULL, NULL);
INSERT INTO `permission_role` VALUES (2, 5, 3, NULL, NULL);
INSERT INTO `permission_role` VALUES (3, 5, 4, NULL, NULL);
INSERT INTO `permission_role` VALUES (4, 5, 5, NULL, NULL);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT 0,
  `key_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'Danh mục sản phẩm', 'Danh mục sản phẩm', NULL, NULL, 0, '');
INSERT INTO `permissions` VALUES (2, 'Danh sách danh mục sản phẩm', 'Danh sách danh mục sản phẩm', NULL, NULL, 1, 'list_category');
INSERT INTO `permissions` VALUES (3, 'Thêm danh mục', 'Thêm danh mục', NULL, NULL, 1, 'add_category');
INSERT INTO `permissions` VALUES (4, 'Sửa danh mục', 'Sửa danh mục', NULL, NULL, 1, 'edit_category');
INSERT INTO `permissions` VALUES (5, 'Xóa danh mục', 'Xóa danh mục', NULL, NULL, 1, 'delete_category');
INSERT INTO `permissions` VALUES (6, 'Menu', 'Menu', NULL, NULL, 0, '');
INSERT INTO `permissions` VALUES (7, 'Danh sách menu', 'Danh sách menu', NULL, NULL, 6, 'list_menu');
INSERT INTO `permissions` VALUES (8, 'Thêm menu', 'Thêm menu', NULL, NULL, 6, 'add_menu');
INSERT INTO `permissions` VALUES (9, 'Sửa menu', 'Sửa menu', NULL, NULL, 6, 'edit_menu');
INSERT INTO `permissions` VALUES (10, 'Xóa menu', 'Xóa menu', NULL, NULL, 6, 'delete_menu');
INSERT INTO `permissions` VALUES (11, 'Slider', 'Slider', NULL, NULL, 0, '');
INSERT INTO `permissions` VALUES (12, 'Danh sách Slider', 'Danh sách Slider', NULL, NULL, 11, 'list_slider');
INSERT INTO `permissions` VALUES (13, 'Thêm Slider', 'Thêm Slider', NULL, NULL, 11, 'add_slider');
INSERT INTO `permissions` VALUES (14, 'Sửa Slider', 'Sửa Slider', NULL, NULL, 11, 'edit_slider');
INSERT INTO `permissions` VALUES (15, 'Xóa Slider', 'Xóa Slider', NULL, NULL, 11, 'delete_slider');
INSERT INTO `permissions` VALUES (16, 'Sản phẩm', 'Sản phẩm', NULL, NULL, 0, '');
INSERT INTO `permissions` VALUES (17, 'Danh sách sản phẩm', 'Danh sách sản phẩm', NULL, NULL, 16, 'list_product');
INSERT INTO `permissions` VALUES (18, 'Thêm sản phẩm', 'Thêm sản phẩm', NULL, NULL, 16, 'add_product');
INSERT INTO `permissions` VALUES (19, 'Sửa sản phẩm', 'Sửa sản phẩm', NULL, NULL, 16, 'edit_product');
INSERT INTO `permissions` VALUES (20, 'Xóa sản phẩm', 'Xóa sản phẩm', NULL, NULL, 16, 'delete_product');
INSERT INTO `permissions` VALUES (21, 'Settings', 'Settings', NULL, NULL, 0, '');
INSERT INTO `permissions` VALUES (22, 'Danh sách Settings', 'Danh sách Settings', NULL, NULL, 21, 'list_setting');
INSERT INTO `permissions` VALUES (23, 'Thêm Settings', 'Thêm Settings', NULL, NULL, 21, 'add_setting');
INSERT INTO `permissions` VALUES (24, 'Sửa Settings', 'Sửa Settings', NULL, NULL, 21, 'edit_setting');
INSERT INTO `permissions` VALUES (25, 'Xóa Settings', 'Xóa Settings', NULL, NULL, 21, 'delete_setting');
INSERT INTO `permissions` VALUES (26, 'Nhân viên', 'Nhân viên', NULL, NULL, 0, '');
INSERT INTO `permissions` VALUES (27, 'Danh sách nhân viên', 'Danh sách nhân viên', NULL, NULL, 26, 'list_user');
INSERT INTO `permissions` VALUES (28, 'Thêm nhân viên', 'Thêm nhân viên', NULL, NULL, 26, 'add_user');
INSERT INTO `permissions` VALUES (29, 'Sửa nhân viên', 'Sửa nhân viên', NULL, NULL, 26, 'edit_user');
INSERT INTO `permissions` VALUES (30, 'Xóa nhân viên', 'Xóa nhân viên', NULL, NULL, 26, 'delete_user');
INSERT INTO `permissions` VALUES (31, 'Vai trò', 'Vai trò', NULL, NULL, 0, '');
INSERT INTO `permissions` VALUES (32, 'Danh sách vai trò', 'Danh sách vai trò', NULL, NULL, 31, 'list_role');
INSERT INTO `permissions` VALUES (33, 'Thêm vai trò', 'Thêm vai trò', NULL, NULL, 31, 'add_role');
INSERT INTO `permissions` VALUES (34, 'Sửa vai trò', 'Sửa vai trò', NULL, NULL, 31, 'edit_role');
INSERT INTO `permissions` VALUES (35, 'Xóa vai trò', 'Xóa vai trò', NULL, NULL, 31, 'delete_role');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_images
-- ----------------------------
INSERT INTO `product_images` VALUES (1, '/storage/products/1/vTn5LPMUC0hMKo0Fk6ee.jpg', 1, '2022-08-13 01:24:59', '2022-08-13 01:24:59', 'testimonial-1.jpg');
INSERT INTO `product_images` VALUES (2, '/storage/products/1/pbdGtDF14zMRU7iylUtl.jpg', 1, '2022-08-13 01:24:59', '2022-08-13 01:24:59', 'testimonial-2.jpg');
INSERT INTO `product_images` VALUES (3, '/storage/products/1/dEMLvaIsvMVxWhy65yQl.jpg', 1, '2022-08-13 01:24:59', '2022-08-13 01:24:59', 'user.jpg');
INSERT INTO `product_images` VALUES (4, '/storage/products/1/5uurTgLVz801l2Uv5bIV.jpg', 2, '2022-08-26 22:47:51', '2022-08-26 22:47:51', 'testimonial-1.jpg');
INSERT INTO `product_images` VALUES (5, '/storage/products/1/Xt8wkX6FXou6Partsu2y.jpg', 2, '2022-08-26 22:47:51', '2022-08-26 22:47:51', 'testimonial-2.jpg');
INSERT INTO `product_images` VALUES (6, '/storage/products/1/yjPRFMamrAhfeboDGLHm.jpg', 2, '2022-08-26 22:47:51', '2022-08-26 22:47:51', 'user.jpg');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_tags
-- ----------------------------
INSERT INTO `product_tags` VALUES (1, 2, 1, '2022-08-26 22:47:51', '2022-08-26 22:47:51');

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
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Phạm Hồng Thái', '150000', '/storage/products/1/9irKGy2iY7mUsQgtBTQ9.jpg', '<p>sssssssssss</p>', 1, 1, '2022-08-13 01:24:59', '2022-08-26 22:50:03', 'testimonial-2.jpg', '2022-08-26 22:50:03');
INSERT INTO `products` VALUES (2, 'GIÀY ADIDAS', '150000', '/storage/products/1/4ZVPC8lyANKJTLraiMWr.jpg', '<p>fafasdasdassadasdasdasd</p>', 1, 4, '2022-08-26 22:47:51', '2022-08-26 22:47:51', 'testimonial-2.jpg', NULL);

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (1, 2, 2, NULL, NULL);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'quản trị viên', NULL, NULL);
INSERT INTO `roles` VALUES (2, 'dev', 'phát triển phần mềm', NULL, NULL);
INSERT INTO `roles` VALUES (3, 'content', 'Chỉnh sửa nội dung', NULL, NULL);
INSERT INTO `roles` VALUES (5, 'editor 1', 'editor 1', '2022-09-23 04:09:54', '2022-09-23 04:26:15');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sliders
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, 's', '2022-08-26 22:47:51', '2022-08-26 22:47:51');

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
INSERT INTO `users` VALUES (1, 'thasi', 'thaihongpham0212@gmail.com', NULL, '$2y$10$ICfl1L7y8v45CmgLpykYI.F0sB9lMiSqRCuefxHJCfA2IwEmU4y/i', 'Mf7u3vQnGJpLsDkfksII9DjHrKVLEB3h4mv3DzxK2Bzz7SgUVxsqo51Ye0N8', '2022-07-04 09:35:38', '2022-07-04 09:35:38', NULL);
INSERT INTO `users` VALUES (2, 'Thái Phạm', 'dev@gmail.com', NULL, '$2y$10$issVxMT5zdFLAgsoGeGQmOd1S6PkHz9SuYu/Ulp.MtY1C2/WKIFcC', NULL, '2022-09-17 03:54:54', '2022-09-17 03:54:54', NULL);

SET FOREIGN_KEY_CHECKS = 1;
