-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 20, 2022 lúc 10:48 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `learn-laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'GIÀY ADIDAS', 0, 'giay-adidas', '2022-07-18 10:04:09', '2022-07-18 10:04:09', NULL),
(2, 'GIÀY NIKE', 0, 'giay-nike', '2022-07-18 10:04:18', '2022-07-18 10:04:18', NULL),
(3, 'GIÀY CONVERSE', 0, 'giay-converse', '2022-07-18 10:04:30', '2022-07-18 10:04:30', NULL),
(4, 'Giày Superstar', 1, 'giay-superstar', '2022-07-18 10:05:42', '2022-07-18 10:52:44', NULL),
(5, 'Giày Nike Air Force One', 2, 'giay-nike-air-force-one', '2022-07-18 10:05:58', '2022-07-18 10:05:58', NULL),
(6, 'Giày Converse Taylor Chuck', 3, 'giay-converse-taylor-chuck', '2022-07-18 10:06:19', '2022-07-18 10:06:19', NULL),
(7, 'Giày Adidas Stansmith', 1, 'giay-adidas-stansmith', '2022-07-18 10:06:58', '2022-07-18 10:06:58', NULL),
(9, 'Phạm Hồng Thái', 1, 'pham-hong-thai', '2022-07-18 11:03:34', '2022-07-18 11:03:37', '2022-07-18 11:03:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'Menu 1', 0, NULL, NULL, '', NULL),
(2, 'Menu 2', 0, NULL, NULL, '', NULL),
(3, 'Menu 3', 0, NULL, NULL, '', NULL),
(4, 'Menu 1.1', 1, NULL, NULL, '', NULL),
(5, 'Menu 1.2', 1, NULL, NULL, '', NULL),
(6, 'Menu 1.1.1', 4, NULL, NULL, '', NULL),
(7, 'Menu 1.2.1', 5, NULL, NULL, '', NULL),
(8, 'Menu 2.1', 2, NULL, NULL, '', NULL),
(9, 'Menu 1.1.2', 4, '2022-07-21 02:14:34', '2022-07-21 02:14:34', '', NULL),
(10, 'Menu 4', 0, '2022-07-21 02:18:46', '2022-07-21 03:28:24', '', '2022-07-21 03:28:24'),
(11, 'Menu 4.1', 10, '2022-07-21 02:18:58', '2022-07-21 03:28:26', '', '2022-07-21 03:28:26'),
(12, 'Menu 3.1', 3, '2022-07-21 02:19:13', '2022-07-21 02:19:13', '', NULL),
(13, 'Menu 5', 0, '2022-07-21 02:39:02', '2022-07-21 03:28:21', 'menu-5', '2022-07-21 03:28:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_05_163451_create_menus_table', 2),
(6, '2022_07_18_075710_create_categories_table', 3),
(7, '2022_07_18_175844_add_column_deleted_at_table_categories', 4),
(8, '2022_07_21_080914_create_menus_table', 5),
(9, '2022_07_21_093303_add_column_slug_to_menus_table', 6),
(10, '2022_07_21_102313_add_column_soft_delete_to_menus', 7),
(11, '2022_08_06_015110_create_products_table', 8),
(12, '2022_08_06_015348_create_product_images_table', 8),
(13, '2022_08_06_015458_create_tags_table', 8),
(14, '2022_08_06_015539_create_product_tags_table', 8),
(15, '2022_08_11_174100_add_column_feature_image_name', 8),
(16, '2022_08_11_180352_add_column_image_name_to_table_product_image', 8),
(17, '2022_08_18_143201_add_cloumn_deleted_at_toproduct_table', 9),
(18, '2022_08_21_002735_create_sliders_table', 9),
(19, '2022_08_24_213643_add_column_deleted_at_to_sliders', 9),
(20, '2022_09_12_031112_create_settings_table', 10),
(21, '2022_09_16_023735_create_roles_table', 10),
(22, '2022_09_16_023938_create_permissions_table', 10),
(23, '2022_09_16_024043_create_table_user_role', 10),
(24, '2022_09_16_024227_create_table_permission_role', 10),
(25, '2022_09_16_084640_add_column_deleted_at_table_user', 10),
(26, '2022_09_17_011105_add_column_parent_id_permission', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Danh mục sản phẩm', 'Danh mục sản phẩm', NULL, NULL, 0),
(2, 'Danh sách danh mục sản phẩm', 'Danh sách danh mục sản phẩm', NULL, NULL, 1),
(3, 'Thêm danh mục', 'Thêm danh mục', NULL, NULL, 1),
(4, 'Sửa danh mục', 'Sửa danh mục', NULL, NULL, 1),
(5, 'Xóa danh mục', 'Xóa danh mục', NULL, NULL, 1),
(6, 'Menu', 'Menu', NULL, NULL, 0),
(7, 'Danh sách menu', 'Danh sách menu', NULL, NULL, 6),
(8, 'Thêm menu', 'Thêm menu', NULL, NULL, 6),
(9, 'Sửa menu', 'Sửa menu', NULL, NULL, 6),
(10, 'Xóa menu', 'Xóa menu', NULL, NULL, 6),
(11, 'Slider', 'Slider', NULL, NULL, 0),
(12, 'Danh sách Slider', 'Danh sách Slider', NULL, NULL, 11),
(13, 'Thêm Slider', 'Thêm Slider', NULL, NULL, 11),
(14, 'Sửa Slider', 'Sửa Slider', NULL, NULL, 11),
(15, 'Xóa Slider', 'Xóa Slider', NULL, NULL, 11),
(16, 'Sản phẩm', 'Sản phẩm', NULL, NULL, 0),
(17, 'Danh sách sản phẩm', 'Danh sách sản phẩm', NULL, NULL, 16),
(18, 'Thêm sản phẩm', 'Thêm sản phẩm', NULL, NULL, 16),
(19, 'Sửa sản phẩm', 'Sửa sản phẩm', NULL, NULL, 16),
(20, 'Xóa sản phẩm', 'Xóa sản phẩm', NULL, NULL, 16),
(21, 'Settings', 'Settings', NULL, NULL, 0),
(22, 'Danh sách Settings', 'Danh sách Settings', NULL, NULL, 21),
(23, 'Thêm Settings', 'Thêm Settings', NULL, NULL, 21),
(24, 'Sửa Settings', 'Sửa Settings', NULL, NULL, 21),
(25, 'Xóa Settings', 'Xóa Settings', NULL, NULL, 21),
(26, 'Nhân viên', 'Nhân viên', NULL, NULL, 0),
(27, 'Danh sách nhân viên', 'Danh sách nhân viên', NULL, NULL, 26),
(28, 'Thêm nhân viên', 'Thêm nhân viên', NULL, NULL, 26),
(29, 'Sửa nhân viên', 'Sửa nhân viên', NULL, NULL, 26),
(30, 'Xóa nhân viên', 'Xóa nhân viên', NULL, NULL, 26),
(31, 'Vai trò', 'Vai trò', NULL, NULL, 0),
(32, 'Danh sách vai trò', 'Danh sách vai trò', NULL, NULL, 31),
(33, 'Thêm vai trò', 'Thêm vai trò', NULL, NULL, 31),
(34, 'Sửa vai trò', 'Sửa vai trò', NULL, NULL, 31),
(35, 'Xóa vai trò', 'Xóa vai trò', NULL, NULL, 31);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`) VALUES
(1, 'Phạm Hồng Thái', '150000', '/storage/products/1/9irKGy2iY7mUsQgtBTQ9.jpg', '<p>sssssssssss</p>', 1, 1, '2022-08-12 18:24:59', '2022-08-26 15:50:03', 'testimonial-2.jpg', '2022-08-26 15:50:03'),
(2, 'GIÀY ADIDAS', '150000', '/storage/products/1/4ZVPC8lyANKJTLraiMWr.jpg', '<p>fafasdasdassadasdasdasd</p>', 1, 4, '2022-08-26 15:47:51', '2022-08-26 15:47:51', 'testimonial-2.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(1, '/storage/products/1/vTn5LPMUC0hMKo0Fk6ee.jpg', 1, '2022-08-12 18:24:59', '2022-08-12 18:24:59', 'testimonial-1.jpg'),
(2, '/storage/products/1/pbdGtDF14zMRU7iylUtl.jpg', 1, '2022-08-12 18:24:59', '2022-08-12 18:24:59', 'testimonial-2.jpg'),
(3, '/storage/products/1/dEMLvaIsvMVxWhy65yQl.jpg', 1, '2022-08-12 18:24:59', '2022-08-12 18:24:59', 'user.jpg'),
(4, '/storage/products/1/5uurTgLVz801l2Uv5bIV.jpg', 2, '2022-08-26 15:47:51', '2022-08-26 15:47:51', 'testimonial-1.jpg'),
(5, '/storage/products/1/Xt8wkX6FXou6Partsu2y.jpg', 2, '2022-08-26 15:47:51', '2022-08-26 15:47:51', 'testimonial-2.jpg'),
(6, '/storage/products/1/yjPRFMamrAhfeboDGLHm.jpg', 2, '2022-08-26 15:47:51', '2022-08-26 15:47:51', 'user.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-08-26 15:47:51', '2022-08-26 15:47:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'quản trị viên', NULL, NULL),
(2, 'dev', 'phát triển phần mềm', NULL, NULL),
(3, 'content', 'Chỉnh sửa nội dung', NULL, NULL),
(4, 'guest', 'Khách', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 's', '2022-08-26 15:47:51', '2022-08-26 15:47:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'thasi', 'thaihongpham0212@gmail.com', NULL, '$2y$10$ICfl1L7y8v45CmgLpykYI.F0sB9lMiSqRCuefxHJCfA2IwEmU4y/i', 'Mf7u3vQnGJpLsDkfksII9DjHrKVLEB3h4mv3DzxK2Bzz7SgUVxsqo51Ye0N8', '2022-07-04 02:35:38', '2022-07-04 02:35:38', NULL),
(2, 'Thái Phạm', 'dev@gmail.com', NULL, '$2y$10$issVxMT5zdFLAgsoGeGQmOd1S6PkHz9SuYu/Ulp.MtY1C2/WKIFcC', NULL, '2022-09-16 20:54:54', '2022-09-16 20:54:54', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
