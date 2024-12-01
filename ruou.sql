-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 19, 2023 lúc 10:29 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ruou`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, '.', 'lorem-ipsum', '/storage/photos/33/Banner/xxx.jpg', '<h2><span style=\"font-weight: bold; color: rgb(99, 99, 99);\">Giảm tới 30%</span></h2>', 'active', '2020-08-14 01:50:23', '2023-05-18 22:31:24'),
(4, '.', 'banner', '/storage/photos/33/Banner/banner-ruou-han-quoc-2.png', '<blockquote><h2><span style=\"font-weight: bold; color: rgb(99, 99, 99);\">Miễn phí giao hàng cho đơn trên 1.000.000đ</span></h2><h6><span style=\"font-family: &quot;Arial Black&quot;;\">﻿</span></h6></blockquote><h2><span style=\"color: rgb(156, 0, 255);\"></span></h2>', 'active', '2020-08-17 20:46:59', '2023-05-18 22:31:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Absolut Vodka', 'absolut-vodka', 'active', '2023-05-18 23:01:05', '2023-05-18 23:01:05'),
(10, 'Johnnie Walker Gold Label', 'johnnie-walker-gold-label', 'active', '2023-05-18 23:01:17', '2023-05-18 23:01:17'),
(11, 'Remy Martin', 'remy-martin', 'active', '2023-05-18 23:01:28', '2023-05-18 23:01:28'),
(12, 'Hennessy', 'hennessy', 'active', '2023-05-18 23:01:45', '2023-05-18 23:01:45'),
(13, 'ohnnie Walker Gold Label', 'ohnnie-walker-gold-label', 'active', '2023-05-18 23:01:57', '2023-05-18 23:01:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `status` enum('new','progress','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `quantity` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `order_id`, `user_id`, `price`, `status`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(44, 31, NULL, 33, 600600.00, 'new', 1, 780000.00, '2023-05-19 00:40:00', '2023-05-19 00:40:00'),
(45, 37, 24, 49, 845500.00, 'new', 4, 3382000.00, '2023-05-19 01:03:19', '2023-05-19 01:05:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT 1,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(32, 'Rượu Vang', 'ruou-vangx', '<p><br></p><table class=\"table table-bordered dataTable\" id=\"banner-dataTable\" width=\"100%\" cellspacing=\"0\" role=\"grid\" aria-describedby=\"banner-dataTable_info\" style=\"width: 1253.6px; border-right-width: 0px; clear: both; border-spacing: 0px; border-collapse: separate !important; margin-bottom: 6px !important; margin-top: 6px !important; max-width: none !important;\"><tbody><tr role=\"row\" class=\"odd\"><td style=\"box-sizing: content-box; border-bottom-width: 0px; border-left-width: 0px;\">Rượu Vang</td></tr></tbody></table>', '/storage/photos/33/Product_Category/tt.jpg', 1, NULL, NULL, 'active', '2023-05-19 00:37:39', '2023-05-19 00:46:23'),
(33, 'CHAMPAGNE', 'champagnex', '<p><span style=\"color: rgb(133, 135, 150);\">CHAMPAGNE</span><br></p>', '/storage/photos/33/Product_Category/to.png', 1, NULL, NULL, 'active', '2023-05-19 00:41:19', '2023-05-19 00:46:31'),
(34, 'BIA & CIDER', 'bia-ciderx', '<p><br></p><table class=\"table table-bordered dataTable\" id=\"banner-dataTable\" width=\"100%\" cellspacing=\"0\" role=\"grid\" aria-describedby=\"banner-dataTable_info\" style=\"width: 1253.6px; border-right-width: 0px; clear: both; border-spacing: 0px; border-collapse: separate !important; margin-bottom: 6px !important; margin-top: 6px !important; max-width: none !important;\"><tbody><tr role=\"row\" class=\"odd\"><td style=\"box-sizing: content-box; border-bottom-width: 0px; border-left-width: 0px;\">BIA &amp; CIDER</td></tr></tbody></table>', '/storage/photos/33/Product_Category/t.png', 1, NULL, NULL, 'active', '2023-05-19 00:43:10', '2023-05-19 00:46:40'),
(35, 'RƯỢU PHA CHẾ', 'ruou-pha-chex', '<p><span style=\"color: rgb(133, 135, 150);\">RƯỢU PHA CHẾ</span><br></p>', '/storage/photos/33/Product_Category/Rượu Macallan.jpg', 1, NULL, NULL, 'active', '2023-05-19 00:43:44', '2023-05-19 00:46:57'),
(36, 'VODKA', 'vodkax', '<p><span style=\"color: rgb(133, 135, 150);\">VODKA</span><br></p>', '/storage/photos/33/Product_Category/Moet_and_glass.jpg', 1, NULL, NULL, 'active', '2023-05-19 00:44:11', '2023-05-19 00:46:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'GIAMGIAT4', 'percent', '11.00', 'active', '2022-04-25 11:42:51', '2022-04-25 11:43:59'),
(7, 'LOVE-JELLY', 'percent', '20.00', 'active', '2022-04-25 11:43:49', '2022-04-25 11:43:49'),
(8, 'CODEDOAN', 'fixed', '6.00', 'active', '2023-04-19 09:09:40', '2023-04-19 09:09:40'),
(9, 'BCA', 'fixed', '4.00', 'active', '2023-05-19 01:11:41', '2023-05-19 01:11:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `email`, `photo`, `phone`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 'chau', 'xxxxx', 'chau@gmail.com', NULL, '0987654321', 'xxxxx ccccccccccccc fergre', NULL, '2023-04-19 08:47:48', '2023-04-19 08:47:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('150cdcf5-c912-4383-a96d-5538d878448c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2022-04-10 08:56:44', '2022-04-10 08:56:44'),
('2145a8e3-687d-444a-8873-b3b2fb77a342', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:31:21', '2020-08-15 07:31:21'),
('33fbcd3a-160e-417c-b742-c46af5288b2f', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/11\",\"fas\":\"fa-file-alt\"}', '2022-05-19 11:30:41', '2022-04-27 00:57:49', '2022-05-19 11:30:41'),
('3762a12a-e923-4815-8054-e7ca59d9e605', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/17\",\"fas\":\"fa-file-alt\"}', NULL, '2022-05-21 09:09:44', '2022-05-21 09:09:44'),
('37fd0380-cef7-4347-be03-3ca3c27f4183', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u00e1nh gi\\u00e1 s\\u1ea3n ph\\u1ea9m m\\u1edbi!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/ruou-pimms\",\"fas\":\"fa-star\"}', NULL, '2023-05-19 01:03:46', '2023-05-19 01:03:46'),
('3af39f84-cab4-4152-9202-d448435c67de', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 07:54:52', '2020-08-15 07:54:52'),
('3c496f77-eaac-468c-b202-afd69c7445e7', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/16\",\"fas\":\"fa-file-alt\"}', NULL, '2022-05-21 07:29:07', '2022-05-21 07:29:07'),
('3f49bf73-b9db-40a0-844e-df33f0abc477', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/23\",\"fas\":\"fa-file-alt\"}', NULL, '2023-04-19 09:01:32', '2023-04-19 09:01:32'),
('49e28d05-dc44-4650-b427-20e9136c6bfd', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"B\\u00ecnh lu\\u1eadn m\\u1edbi \\u0111\\u01b0\\u1ee3c t\\u1ea1o\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/blog-detail\\/mua-quan-ao-online-lieu-co-thuc-su-tot\",\"fas\":\"fas fa-comment\"}', '2022-04-25 11:44:37', '2022-04-25 11:32:08', '2022-04-25 11:44:37'),
('4a0afdb0-71ad-4ce6-bc70-c92ef491a525', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:51', '2020-08-17 21:13:51'),
('503c7c00-3587-462b-bafd-a36dfb7355b8', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/19\",\"fas\":\"fa-file-alt\"}', NULL, '2022-07-03 07:33:08', '2022-07-03 07:33:08'),
('540ca3e9-0ff9-4e2e-9db3-6b5abc823422', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2020-08-15 07:30:44', '2020-08-14 07:12:28', '2020-08-15 07:30:44'),
('583cca10-9a7e-4c08-a51f-ebe18f0f5df6', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"B\\u00ecnh lu\\u1eadn m\\u1edbi \\u0111\\u01b0\\u1ee3c t\\u1ea1o\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/blog-detail\\/mua-quan-ao-online-lieu-co-thuc-su-tot\",\"fas\":\"fas fa-comment\"}', NULL, '2022-07-03 07:34:44', '2022-07-03 07:34:44'),
('598c4988-99ff-44c6-8bee-a8c692b573c0', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/6\",\"fas\":\"fa-file-alt\"}', NULL, '2022-04-11 08:26:33', '2022-04-11 08:26:33'),
('5c589337-cb66-4e08-b4bb-dfacb2e6a682', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/12\",\"fas\":\"fa-file-alt\"}', '2022-05-19 11:30:46', '2022-04-29 00:56:30', '2022-05-19 11:30:46'),
('5d8b5057-0447-4c06-817e-e3dbdd424170', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u00e1nh gi\\u00e1 s\\u1ea3n ph\\u1ea9m m\\u1edbi!\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/product-detail\\/bo-tap-gym-nu\",\"fas\":\"fa-star\"}', '2022-05-19 11:30:49', '2022-04-28 09:59:54', '2022-05-19 11:30:49'),
('5da09dd1-3ffc-43b0-aba2-a4260ba4cc76', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:51:02', '2020-08-15 07:51:02'),
('5e91e603-024e-45c5-b22f-36931fef0d90', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/white-sports-casual-t\",\"fas\":\"fa-star\"}', NULL, '2020-08-15 07:44:07', '2020-08-15 07:44:07'),
('7259bc2d-ae63-492a-a29b-8711580bc287', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u00e1nh gi\\u00e1 s\\u1ea3n ph\\u1ea9m m\\u1edbi!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/dong-ho-epos-swiss-e-3435313242625-limited\",\"fas\":\"fa-star\"}', NULL, '2023-04-19 08:42:07', '2023-04-19 08:42:07'),
('729a1ccb-a531-4d19-95cf-4e0a8398a98b', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u00e1nh gi\\u00e1 s\\u1ea3n ph\\u1ea9m m\\u1edbi!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/garmin-fenix-7-sapphire-solar-carbon-grey-dlc-titanium-with-carbon-grey-dlc-vented-titanium-band\",\"fas\":\"fa-star\"}', NULL, '2023-04-19 08:41:27', '2023-04-19 08:41:27'),
('73a3b51a-416a-4e7d-8ca2-53b216d9ad8e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
('754c75a1-ccc0-4200-b6df-95f85fd8813e', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/18\",\"fas\":\"fa-file-alt\"}', NULL, '2022-05-21 18:28:12', '2022-05-21 18:28:12'),
('81942209-edba-4829-b459-24de3fcc621b', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/12\",\"fas\":\"fa-file-alt\"}', '2022-05-09 09:36:53', '2022-05-09 09:35:18', '2022-05-09 09:36:53'),
('82a451dd-e6e1-4c8a-8be2-0e8163ff9558', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/22\",\"fas\":\"fa-file-alt\"}', NULL, '2023-04-19 08:56:46', '2023-04-19 08:56:46'),
('8605db5d-1462-496e-8b5f-8b923d88912c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/1\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-14 07:20:44', '2020-08-14 07:20:44'),
('86cc4893-9589-4508-8f2c-7b8fe3d6868c', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/14\",\"fas\":\"fa-file-alt\"}', '2022-05-19 11:30:24', '2022-05-11 11:00:52', '2022-05-19 11:30:24'),
('97542d15-92d0-441a-8db2-2e6fd6ac8ea9', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/15\",\"fas\":\"fa-file-alt\"}', '2022-05-19 11:34:35', '2022-05-19 11:34:04', '2022-05-19 11:34:35'),
('9a44d5e2-0e99-4f56-b514-e18d619834eb', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/13\",\"fas\":\"fa-file-alt\"}', '2022-05-19 11:30:38', '2022-05-09 09:47:04', '2022-05-19 11:30:38'),
('9b09da73-8ad5-48ed-ac4f-cfdf39671067', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/21\",\"fas\":\"fa-file-alt\"}', NULL, '2023-04-19 08:39:44', '2023-04-19 08:39:44'),
('a6ec5643-748c-4128-92e2-9a9f293f53b5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-17 21:17:03', '2020-08-17 21:17:03'),
('a8e2cdc0-722b-47d6-a410-45eafdea38b7', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"B\\u00ecnh lu\\u1eadn m\\u1edbi \\u0111\\u01b0\\u1ee3c t\\u1ea1o\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/blog-detail\\/mua-quan-ao-online-lieu-co-thuc-su-tot\",\"fas\":\"fas fa-comment\"}', '2022-04-25 11:39:30', '2022-04-25 11:32:29', '2022-04-25 11:39:30'),
('aa91b4ee-99e8-4f50-bad3-6d9a47b388f1', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u00e1nh gi\\u00e1 s\\u1ea3n ph\\u1ea9m m\\u1edbi!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/garmin-forerunner-255-slate-gray\",\"fas\":\"fa-star\"}', NULL, '2023-04-19 08:40:41', '2023-04-19 08:40:41'),
('aab7f84a-357c-4b07-b5ae-92e6a4f06681', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/8\",\"fas\":\"fa-file-alt\"}', NULL, '2022-04-11 09:23:01', '2022-04-11 09:23:01'),
('b012e35e-622a-4a40-880d-e6b6e98cb6e0', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/24\",\"fas\":\"fa-file-alt\"}', NULL, '2023-05-19 01:05:05', '2023-05-19 01:05:05'),
('b186a883-42f2-4a05-8fc5-f0d3e10309ff', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/2\",\"fas\":\"fa-file-alt\"}', '2020-08-15 04:17:24', '2020-08-14 22:14:55', '2020-08-15 04:17:24'),
('b7b4a6e1-28df-4938-b0bd-e943405f1fc8', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/order\\/20\",\"fas\":\"fa-file-alt\"}', NULL, '2023-04-19 08:37:27', '2023-04-19 08:37:27'),
('d2fd7c33-b0fe-47d6-8bc6-f377d404080d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:08:50', '2020-08-14 07:08:50'),
('d5578f59-dd6b-4b66-b033-42503d720fec', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/9\",\"fas\":\"fa-file-alt\"}', NULL, '2022-04-11 09:28:24', '2022-04-11 09:28:24'),
('dff78b90-85c8-42ee-a5b1-de8ad0b21be4', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 06:40:54', '2020-08-15 06:40:54'),
('e28b0a73-4819-4016-b915-0e525d4148f5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fa-star\"}', NULL, '2020-08-17 21:08:16', '2020-08-17 21:08:16'),
('e2c9c58b-a066-4bee-ae6e-48c191dc1d39', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/jellyboutique.vtest:85\\/admin\\/order\\/7\",\"fas\":\"fa-file-alt\"}', NULL, '2022-04-11 08:37:28', '2022-04-11 08:37:28'),
('e55d51c2-104a-4297-83e1-bf34f6785b5b', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u00e1nh gi\\u00e1 s\\u1ea3n ph\\u1ea9m m\\u1edbi!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/dong-ho-epos-swiss-e-3435313242625-limited\",\"fas\":\"fa-star\"}', NULL, '2023-04-19 09:00:23', '2023-04-19 09:00:23'),
('fd027d1c-9367-4c0b-8adc-865f7dcceea2', 'App\\Notifications\\StatusNotification', 'App\\User', 33, '{\"title\":\"C\\u00f3 \\u0111\\u00e1nh gi\\u00e1 s\\u1ea3n ph\\u1ea9m m\\u1edbi!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/dong-ho-epos-swiss-e-3429195205825-limited\",\"fas\":\"fa-star\"}', NULL, '2023-04-19 08:49:43', '2023-04-19 08:49:43'),
('ffffa177-c54e-4dfe-ba43-27c466ff1f4b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` double(10,2) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon` double(10,2) DEFAULT NULL,
  `total_amount` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment_method` enum('cod','paypal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `status` enum('new','process','delivered','cancel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `sub_total`, `shipping_id`, `coupon`, `total_amount`, `quantity`, `payment_method`, `payment_status`, `status`, `first_name`, `last_name`, `email`, `phone`, `country`, `post_code`, `address1`, `address2`, `created_at`, `updated_at`) VALUES
(6, 'ORD-T0HFZM7VQ0', NULL, 730.00, 4, NULL, 1130.00, 3, 'cod', 'unpaid', 'cancel', 'Nguyễn', 'Thịnh', 'thinhphuongxa1@gmail.com', '0398314279', 'NP', '1313', 'http://giathinh.phanmemnhathuoc.vn', NULL, '2022-04-11 08:26:32', '2022-05-19 10:34:56'),
(9, 'ORD-00FKLQNRYA', NULL, 380.00, 4, 250.00, 530.00, 2, 'cod', 'unpaid', 'delivered', 'Nguyễn', 'Thịnh', 'thinhphuongxa1@gmail.com', '0398314279', 'VN', '1234', 'http://giathinh.phanmemnhathuoc.vn', 'Hai Ba Trung', '2022-04-11 09:28:24', '2022-05-19 11:29:11'),
(10, 'ORD-YJMQSPUTSB', 35, 2000000.00, 4, NULL, 2000400.00, 1, 'cod', 'unpaid', 'delivered', 'Thịnh', 'Nguyễn', 'thinhphuongxa1@gmail.com', '0398314279', 'NP', NULL, 'http://giathinh.phanmemnhathuoc.vn', NULL, '2022-04-25 10:39:53', '2022-04-25 11:40:54'),
(11, 'ORD-4A4A0TVRNJ', 35, 3780000.00, 2, NULL, 3810000.00, 3, 'cod', 'unpaid', 'new', 'Nguyễn', 'Thịnh', 'thinhphuongxa1@gmail.com', '0398314279', 'VN', NULL, 'Quảng Cáo Hội Hồng - Xã Minh Tân - Huyện Cẩm Khê - Tỉnh Phú Thọ', NULL, '2022-04-27 00:57:49', '2022-04-27 00:57:49'),
(12, 'ORD-HZKZWEM4TO', 35, 39330000.00, 4, NULL, 39365000.00, 103, 'cod', 'unpaid', 'delivered', 'Nguyễn', 'Thịnh', 'thinhphuongxa1@gmail.com', '0398314279', 'VN', NULL, 'http://giathinh.phanmemnhathuoc.vn', NULL, '2022-05-09 09:35:16', '2022-05-09 09:37:12'),
(13, 'ORD-IQ8EYKIKJ8', 34, 360000.00, 4, NULL, 395000.00, 1, 'cod', 'unpaid', 'delivered', 'Linh', 'Cao', 'linh@gmail.com', '0999888777', 'VN', NULL, 'Ninh Bình', NULL, '2022-05-09 09:47:03', '2022-05-19 10:59:25'),
(14, 'ORD-CSQ2VJHIXP', 37, 360000.00, 4, NULL, 395000.00, 1, 'cod', 'unpaid', 'delivered', 'user1', 'user1', 'user1@gmail.com', '0987987897', 'VN', NULL, 'Ninh Bình', NULL, '2022-05-11 11:00:51', '2022-05-19 11:29:42'),
(15, 'ORD-SO8RKE0GGO', 34, 19560000.00, 1, NULL, 19600000.00, 14, 'cod', 'unpaid', 'delivered', 'Linh', 'Cao', 'linh@gmail.com', '0987897987', 'VN', NULL, 'Hà Nội', 'Hà Nội', '2022-04-19 11:34:04', '2022-04-19 11:35:17'),
(16, 'ORD-PQZ1FVKRJT', 34, 360000.00, 4, 39600.00, 355400.00, 1, 'cod', 'unpaid', 'delivered', 'Nguyễn', 'Thịnh', 'thinhphuongxa1@gmail.com', '0999888999', 'VN', NULL, 'Hà Nội', NULL, '2022-05-21 07:29:06', '2022-05-21 07:31:45'),
(17, 'ORD-M3EMSW3DPN', 38, 382500.00, 2, NULL, 412500.00, 1, 'cod', 'unpaid', 'delivered', 'user2', 'user2', 'user2@gmail.com', '0987654123', 'VN', NULL, 'Hà Nội', NULL, '2022-05-21 09:09:42', '2022-05-21 09:10:06'),
(18, 'ORD-CVYRXPXVDE', 38, 190000.00, 3, 18810.00, 211190.00, 1, 'cod', 'unpaid', 'delivered', 'Thịnh', 'Nguyễn', 'thinhphuongxa1@gmail.com', '0398314279', 'VN', NULL, 'Hà Nội', NULL, '2022-05-21 18:28:09', '2022-05-21 18:29:26'),
(19, 'ORD-VS4SWG6NCO', 43, 290000.00, 1, 29986.00, 300014.00, 1, 'cod', 'unpaid', 'delivered', 'Linh', 'Cao', 'linh3@gmail.com', '0999888777', 'VN', NULL, 'Hà Nội', NULL, '2022-07-03 07:33:06', '2023-04-19 09:07:42'),
(20, 'ORD-JQLXX40OZE', 44, 42320000.00, NULL, NULL, 42320000.00, 2, 'cod', 'unpaid', 'delivered', 'chau', 'Bui', 'chau@gmail.com', '09876543', 'VN', '70000', 'hcm vn q8', 'hcm vn q8', '2023-04-19 08:37:26', '2023-04-19 09:03:17'),
(21, 'ORD-EEEAUGFH61', 44, 11160000.00, NULL, NULL, 11160000.00, 1, 'cod', 'unpaid', 'delivered', 'chau', 'Bui', 'chau@gmail.com', '09844444', 'VN', '70000', 'hcm vn q8', 'hcm vn q8', '2023-04-19 08:39:43', '2023-04-19 09:03:26'),
(22, 'ORD-DJVJIX4M4Q', 45, 65280000.00, NULL, 9380800.00, 55899200.00, 2, 'cod', 'unpaid', 'delivered', 'chaux', 'Buix', 'chau@gmail.com', '09999999999', 'WF', '70000', 'hcm vn q6', 'hcm vn q8', '2023-04-19 08:56:46', '2023-04-19 09:03:11'),
(23, 'ORD-BEPOLKANQW', 46, 89300000.00, 3, 4911500.00, 84428500.00, 2, 'cod', 'unpaid', 'process', 'chau', 'Buix', 'chau@gmail.com', '099999999', 'VN', '70000', 'hcm vn q8', 'hcm vn q7', '2023-04-19 09:01:32', '2023-04-19 09:03:05'),
(24, 'ORD-QUYMKJD2TZ', 49, 3382000.00, 3, NULL, 3422000.00, 4, 'cod', 'unpaid', 'delivered', 'code', 'nguyen', 'codedoan@gmail.com', '0364877524', 'VN', 'đ', 'sđssd', 'fff', '2023-05-19 01:05:05', '2023-05-19 01:10:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('thinhtest222@gmail.com', '$2y$10$UpffYw4dpalbkPbK4U.G0eESzAPNL51Z4mMMKJa7Isx5h5Z/owehy', '2022-04-21 07:10:03'),
('thinhtest111@gmail.com', '$2y$10$Bs7ZIpjeJxaXkcZJVQsA2OdoPec6PNN6Co7CWD4OwEGeKnldJqgg2', '2022-04-21 07:15:47'),
('thinhphuongxa1@gmail.com', '$2y$10$zrt0Y16waKaRz4oX1sYgteMUFa2PGL9.ubqeQwA1f9nObdcg4MvXO', '2022-05-19 09:44:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `description`, `quote`, `photo`, `tags`, `post_cat_id`, `post_tag_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới', 'top-10-thuong-hieu-ruou-noi-tieng-va-duoc-ua-chuong-nhat-the-gioi', '<p><span style=\"font-family: Pangea, sans-serif; font-size: 20px; letter-spacing: 0.6px;\">Ở Việt Nam ta, rượu đã xuất hiện từ rất lâu. Nó là công cụ kết nối, gắn kết của đàn ông trên bàn nhậu. Không chỉ là chất cồn màu trắng đơn thuần, rượu chính là thương hiệu của nhà sản xuất, là đẳng cấp của người sử dụng. Hãy cùng Coolmate điểm qua top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới!</span><br></p>', '<h2 id=\"b-heading-H2-1\" style=\"color: rgb(35, 31, 32); font-size: 24px; font-family: Pangea, sans-serif; line-height: 1.25em; letter-spacing: 0.42px; margin-left: 0px !important;\"><span style=\"font-weight: bolder;\">1.Thương hiệu rượu nổi tiếng Absolut Vodka</span></h2><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><img src=\"https://mcdn.coolmate.me/uploads/February2022/ruou-noi-tieng-1.jpg\" alt=\"Top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới\" width=\"600\" style=\"max-width: 100%; height: auto; text-indent: -9999px; color: transparent; image-rendering: -webkit-optimize-contrast; border-radius: 20px; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><span style=\"font-weight: bolder;\">Thương hiệu Absolut Vodka</span>&nbsp;– loại rượu vô cùng nổi tiếng là dòng sản phẩm hiện đại, sành điệu và đẳng cấp tại Thụy Điển. Với tuổi đời hơn 30 năm, đây chắc chắn là kết quả của một quá trình chưng cất công phu và tỉ mỉ. Rượu Absolut Vodka có hương vị thơm, dịu ngọt rất dễ đi vào lòng người. Hiện nay, dòng rượu này đã có mặt tại hơn 130 quốc gia trên toàn thế giới và số lượng tiêu thụ hàng năm là một con số vô cùng “khủng”.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\">Vodka được bán hợp pháp đầu tiên tại Thụy Điển năm 1498. Absolut Vodka được giới thiệu tại Thụy Điển với tên gọi “ Absolut rent bran-don” – “ Vodka nguyên chất 100%” vào năm 1879.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\">Cha đẻ của thương hiệu này chính là doanh nhân nổi tiếng Lars Olsson Smith. Ông đã đưa một số phương pháp chưng cất mới vào quá trình sản xuất rượu. Cũng chính từ phương pháp này đã sản xuất ra những chai rượu Vodka tinh khiết nhất. Hơn nữa, cho đến nay phương pháp của Lars Olsson Smith vẫn được đưa vào sản xuất.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\">Absolut Vodka được ra mắt vào năm 1979 tại New York. Ngay sau đó nó đã tạo được một “cơn sốt” tại Mỹ và các nước trên toàn thế giới. Loại rượu này có nồng độ cồn vừa phải, nguyên liệu tự nhiên, không chứa đường phù hợp với cả nam và nữ khi thưởng thức.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><img src=\"https://mcdn.coolmate.me/uploads/February2022/ruou-noi-tieng-2.jpg\" alt=\"Top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới\" width=\"600\" style=\"max-width: 100%; height: auto; text-indent: -9999px; color: transparent; image-rendering: -webkit-optimize-contrast; border-radius: 20px; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"></p><div class=\"info-box\" style=\"font-family: Pangea, sans-serif; background-color: rgb(241, 241, 241); padding: 24px; border-radius: 16px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><p style=\"line-height: 25.6px; margin: 15px 0px;\"></p><p style=\"line-height: 25.6px; margin: 15px 0px;\">Giá tham khảo: 310.000 VNĐ</p><p style=\"line-height: 25.6px; margin: 15px 0px;\"></p></div><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"></p><h2 id=\"b-heading-H2-2\" style=\"color: rgb(35, 31, 32); font-size: 24px; font-family: Pangea, sans-serif; line-height: 1.25em; letter-spacing: 0.42px; margin-left: 0px !important;\"><span style=\"font-weight: bolder;\">2.Thương hiệu rượu Hennessy</span></h2><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><img src=\"https://mcdn.coolmate.me/uploads/February2022/ruou-noi-tieng-3.jpg\" alt=\"Top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới\" width=\"600\" style=\"max-width: 100%; height: auto; text-indent: -9999px; color: transparent; image-rendering: -webkit-optimize-contrast; border-radius: 20px; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><span style=\"font-weight: bolder;\">Hennessy</span>&nbsp;là thương hiệu rượu nổi tiếng và được ưa chuộng nhất của Pháp. Đây là loại rượu vô cùng mạnh được chiết xuất từ nho. Hương vị của chúng nồng đậm và quyến rũ với nhiều thương hiệu trực thuộc như: Hennessy Vsop, Hennessy XO, Hennessy Richard, Hennessy Paradis,… Mỗi năm thương hiệu rượu nổi tiếng này xuất hơn 50 triệu chai, cung cấp hơn 40% lượng cognac ra thị trường toàn cầu. Đây chắc chắn là một lượng tiêu thụ cực kì lớn đối với một thương hiệu rượu.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\">Tuy dòng rượu này được ra mắt tại Pháp, thế nhưng cha đẻ của nó là người Ireland – Richard Hennessy. Ông chuyển đến Pháp vào giữa thế kỷ XVIII. Rượu Hennessy trở nên đặc biệt hơn khi được pha trộn, kết hợp cùng hơn 100 loại cồn khác nhau tạo nên hương vị mới và vô cùng ấn tượng với người tiêu dùng.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><img src=\"https://mcdn.coolmate.me/uploads/February2022/ruou-noi-tieng-4.jpg\" alt=\"Top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới\" width=\"600\" style=\"max-width: 100%; height: auto; text-indent: -9999px; color: transparent; image-rendering: -webkit-optimize-contrast; border-radius: 20px; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\">Các chữ XO, VS, VSOP,… đứng sau tên Hennessy thực chất là một trong những cách để đánh giá tác động của rượu mạnh đối với khẩu vị và túi tiền của bạn. Với Hennessy XO, đây là loại rượu có hương vị trái cây mềm, hạt nướng vani đem lại cho bạn cảm giác tự nhiên, thoải mái cùng với mức giá dao động từ 50 đến 55 đô la. Nếu như bạn có nhiều tiền hơn, hãy thưởng thức loại rượu được đặt tên theo nhà sáng lập Richard Hennessy sản xuất vào dịp kỷ niệm 250 năm ngày ra mắt thương hiệu nổi tiếng này.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"></p><div class=\"info-box\" style=\"font-family: Pangea, sans-serif; background-color: rgb(241, 241, 241); padding: 24px; border-radius: 16px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><p style=\"line-height: 25.6px; margin: 15px 0px;\"></p><p style=\"line-height: 25.6px; margin: 15px 0px;\">Giá tham khảo: 1.100.000 – 17.000.000 VNĐ</p><p style=\"line-height: 25.6px; margin: 15px 0px;\"></p></div><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"></p><h2 id=\"b-heading-H2-3\" style=\"color: rgb(35, 31, 32); font-size: 24px; font-family: Pangea, sans-serif; line-height: 1.25em; letter-spacing: 0.42px; margin-left: 0px !important;\"><span style=\"font-weight: bolder;\">3.Thương hiệu rượu Johnnie Walker Gold Label</span></h2><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><img src=\"https://mcdn.coolmate.me/uploads/February2022/ruou-noi-tieng-5.jpg\" alt=\"Top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới\" width=\"600\" style=\"max-width: 100%; height: auto; text-indent: -9999px; color: transparent; image-rendering: -webkit-optimize-contrast; border-radius: 20px; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><span style=\"font-weight: bolder;\">Johnnie Walker Gold Label</span>&nbsp;là một loại rượu đắt tiền nhất trong các thương hiệu của Johnnie Walker. Đây là sản phẩm hàng đầu của hãng với tuổi đời hơn 100 năm trên thị trường thế giới.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\">Với sự pha trộn đầy cảm hứng đã tạo ra cho người tiêu dùng cảm giác thỏa mãn mỗi khi sử dụng. Nếu bạn là một tín đồ của rượu chắc hẳn bạn sẽ nhận ra đây chính là sự pha trộn của 15 loại hương vị Whisky lâu năm. Chính vì thế nó được gọi với biệt danh “ bậc thầy của dòng rượu Whisky”</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\">Đây là một loại rượu Whisky độc đáo với hương vị mật ong ngọt ngào. Johnnie Walker Blue Label được chọn lọc từ loại rượu Scotch Whisky quý hiếm. Mỗi năm chỉ có 1/10000 thùng được bán ra. Jonnie Walker Blue Label có hương vị vô cùng mượt mà tạo cho người tiêu dùng cảm giác như nhung nở trên đầu lưỡi.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><img src=\"https://mcdn.coolmate.me/uploads/February2022/ruou-noi-tieng-6.jpg\" alt=\"Top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới\" width=\"600\" style=\"max-width: 100%; height: auto; text-indent: -9999px; color: transparent; image-rendering: -webkit-optimize-contrast; border-radius: 20px; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\">Ngày nay, Jonnie Walker đã tạo ra nhiều loại rượu Scotch Whisky hơn bất kỳ nhà sản xuất rượu nào trên thế giới.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"></p><div class=\"info-box\" style=\"font-family: Pangea, sans-serif; background-color: rgb(241, 241, 241); padding: 24px; border-radius: 16px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><p style=\"line-height: 25.6px; margin: 15px 0px;\"></p><p style=\"line-height: 25.6px; margin: 15px 0px;\">Giá tham khảo: 880.000 VNĐ</p><p style=\"line-height: 25.6px; margin: 15px 0px;\"></p></div><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"></p><h2 id=\"b-heading-H2-4\" style=\"color: rgb(35, 31, 32); font-size: 24px; font-family: Pangea, sans-serif; line-height: 1.25em; letter-spacing: 0.42px; margin-left: 0px !important;\"><span style=\"font-weight: bolder;\">4. Thương hiệu rượu Chivas</span></h2><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><img src=\"https://mcdn.coolmate.me/uploads/February2022/ruou-noi-tieng-7.jpg\" alt=\"Top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới\" width=\"600\" style=\"max-width: 100%; height: auto; text-indent: -9999px; color: transparent; image-rendering: -webkit-optimize-contrast; border-radius: 20px; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><span style=\"font-weight: bolder;\">Rượu Chivas</span>&nbsp;là thương hiệu rượu của Hoàng gia Anh. Với công thức pha trộn các loại Whisky đã tạo nên loại rượu này. Các nghệ nhân cần ít nhất 12 năm chưng cất và ủ để tạo ra hương vị của thương hiệu rượu đẳng cấp hàng đầu thế giới. Mỗi loại rượu whisky chivas đều mang đến cho người dùng các trải nghiệm đặc trưng và hương vị.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\">Khi thương thức, chắc chắn bạn sẽ nhận ra được sự hòa quyện giữa các loại trái cây như: táo đỏ, vani, đào và hoa quả khô,… chúng ta dễ dàng bắt gặp các dòng rượu nổi tiếng như: Chivas 12, Chivas 17, Chivas 18, Chivas 21, Chivas 25, Chivas 32, Chivas 38, Chivas 62,…. Mỗi dòng rượu lại mang đặc trưng khác nhau tạo nên đẳng cấp dành cho người sành rượu.</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><img src=\"https://mcdn.coolmate.me/uploads/February2022/ruou-noi-tieng-8.jpg\" alt=\"Top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới\" width=\"600\" style=\"max-width: 100%; height: auto; text-indent: -9999px; color: transparent; image-rendering: -webkit-optimize-contrast; border-radius: 20px; display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><a title=\"rượu chivas\" href=\"https://www.coolmate.me/post/ruou-chivas-la-gi-gia-ruou-chivas-chinh-hang\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(47, 90, 207); transition: all 0.2s ease 0s;\">Chivas</a>&nbsp;đạt được nhiều thành công trong ngành công nghiệp thế giới và được các nhà phê bình đánh giá cao. Rượu Chivas Regal là rượu whisky sang trọng hàng đầu và Scotch whisky nổi tiếng số 1 tại Trung Quốc,….</p><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"></p><div class=\"info-box\" style=\"font-family: Pangea, sans-serif; background-color: rgb(241, 241, 241); padding: 24px; border-radius: 16px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"><p style=\"line-height: 25.6px; margin: 15px 0px;\"></p><p style=\"line-height: 25.6px; margin: 15px 0px;\">Giá tham khảo: 550.000 – 220.000.000 VNĐ</p><p style=\"line-height: 25.6px; margin: 15px 0px;\"></p></div><p style=\"font-family: Pangea, sans-serif; line-height: 25.6px; margin: 15px 0px; color: rgb(35, 31, 32); letter-spacing: 0.42px;\"></p><h2 id=\"b-heading-H2-5\" style=\"color: rgb(35, 31, 32); font-size: 24px; font-family: Pangea, sans-serif; line-height: 1.25em; letter-spacing: 0.42px; margin-left: 0px !important;\"><span style=\"font-weight: bolder;\">5. Thương hiệu rượu Moet Chandon</span></h2>', '<h1 style=\"margin-bottom: 30px; color: rgb(35, 31, 32); font-weight: 700; font-size: 35px; line-height: 40.25px; letter-spacing: 0.01em; font-family: Pangea, sans-serif;\">Top 10 thương hiệu rượu nổi tiếng và được ưa chuộng nhất thế giới</h1>', '/storage/photos/33/Product_Category/to.png', '', 11, NULL, 33, 'active', '2023-05-18 23:07:44', '2023-05-18 23:15:39'),
(13, 'RƯỢU JOHN WALKER & SONS XR 21', 'ruou-john-walker-sons-xr-21', '<p><span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Johnie Walker &amp; Sons XR 21 năm tuổi ẩn chứa những lớp hương đậm đà quyến rũ đem đến những sự ngạc nhiên dễ chịu. Vị ngọt cùng với chút cay nồng đã được làm</span><br></p>', '<h2 style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 1240px; line-height: 1.3; font-size: 1.6em; font-family: Roboto, sans-serif; font-weight: 700;\">Giới thiệu rượu John Walker &amp; Sons XR 21 – Hộp quà tết 2023</h2><h1 class=\"product-title product_title entry-title\" style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 605px; font-size: 1.5rem; line-height: 1.3; font-family: Roboto, sans-serif; text-transform: uppercase;\"><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-size: 16px; text-transform: none;\">Johnie Walker &amp; Sons XR 21 năm tuổi ẩn chứa những lớp hương đậm đà quyến rũ đem đến những sự ngạc nhiên dễ chịu. Vị ngọt cùng với chút cay nồng đã được làm dịu đi được giấu đi sau hương khói nồng ấm. Hương tươi mới của họ cam quýt, hương trái cây nhiệt đới chín mùi và hương caramel quyện trong hương củalá thuốc lá và nho khô. Hậu vị êm mượt kéo dài đầy đam mê quyến rũ.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-size: 16px; text-transform: none;\">Hộp quà tết 2023 bao gồm rượu John Walker &amp; Sons XR 21 và 1 ly whisky cao cấp đã có mặt tại shop Trung Tâm.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-size: 16px; text-transform: none; text-align: center;\"><img decoding=\"async\" class=\"alignnone size-medium wp-image-9487\" src=\"https://ruoutrungtam.com/wp-content/uploads/2022/11/ruou-john-walker-sons-xr-21-hop-qua-tet-2023-600x400.jpg\" alt=\"rượu John Walker &amp; Sons XR 21 - Hộp quà tết 2023\" width=\"600\" height=\"400\" srcset=\"https://ruoutrungtam.com/wp-content/uploads/2022/11/ruou-john-walker-sons-xr-21-hop-qua-tet-2023-600x400.jpg 600w, https://ruoutrungtam.com/wp-content/uploads/2022/11/ruou-john-walker-sons-xr-21-hop-qua-tet-2023-768x512.jpg 768w, https://ruoutrungtam.com/wp-content/uploads/2022/11/ruou-john-walker-sons-xr-21-hop-qua-tet-2023.jpg 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"height: auto; max-width: 100%; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;\"></p></h1>', '<p>xxx</p>', '/storage/photos/33/Product_Category/khung-6787.jpg', '', 11, NULL, 33, 'active', '2023-05-18 23:10:07', '2023-05-18 23:11:08'),
(14, 'Điểm danh tên các loại rượu làm quà tặng', 'diem-danh-ten-cac-loai-ruou-lam-qua-tang', '<p>Điểm danh tên các loại rượu làm quà tặng<br></p>', '<p>Điểm danh tên các loại rượu làm quà tặng<br></p>', '<p>Điểm danh tên các loại rượu làm quà tặng<br></p>', '/storage/photos/33/Product_Category/Rượu Macallan.jpg', '', 11, NULL, 33, 'active', '2023-05-18 23:12:57', '2023-05-18 23:12:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Giới thiệu rượu', 'gioi-thieu-ruou', 'active', '2023-05-18 23:03:44', '2023-05-18 23:03:44'),
(12, 'Giới thiệu bia', 'gioi-thieu-bia', 'active', '2023-05-18 23:03:54', '2023-05-18 23:03:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `replied_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_comments`
--

INSERT INTO `post_comments` (`id`, `user_id`, `post_id`, `comment`, `status`, `replied_comment`, `parent_id`, `created_at`, `updated_at`) VALUES
(8, 33, NULL, 'Có khả năng', 'active', NULL, NULL, '2022-04-25 11:32:08', '2022-04-27 01:59:30'),
(9, 33, NULL, 'Tớ tự rep comment của tớ nè', 'inactive', NULL, 8, '2022-04-25 11:32:29', '2022-04-27 01:59:34'),
(10, 43, NULL, 'bài viết hay (Đã sửa) (Admin sửa)', 'active', NULL, NULL, '2022-07-03 07:34:44', '2022-07-03 07:46:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_tags`
--

INSERT INTO `post_tags` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Rượu châu âu', 'ruou-chau-au', 'active', '2023-05-18 22:59:47', '2023-05-18 22:59:47'),
(10, 'Rượu châu á', 'ruou-chau-a', 'active', '2023-05-18 22:59:58', '2023-05-18 22:59:58'),
(11, 'rượu mỹ', 'ruou-my', 'active', '2023-05-18 23:00:09', '2023-05-18 23:00:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 1,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `condition` enum('default','new','hot') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` double(20,2) NOT NULL,
  `discount` double(10,2) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(30, 'JACOB’S CREEK SHIRAZ CABERNET', 'jacobs-creek-shiraz-cabernet', '<p><span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Rượu Jacob’s Creek Shiraz Cabernet có màu đỏ lựu. Mùi hương rất nổi bật hương cây trái của mận chín, quả mâm xôi; kèm hương nồng của sô-cô-la và tiêu đen, phảng phất hương gỗ. Hương vị tròn đầy vị quả chín mọng, phức hợp mềm mại và chất chát dễ cảm nhận. Dòng vang này là sự kết hợp, phối trộn hài hòa giữa dòng vang mềm mại, tròn đều Shiraz với dòng vang đầy phức hợp Cabernet Sauvignon, tạo nên sản phẩm vang đậm đà nhiều tầng cảm nhận và dư vị kéo dài, sâu</span><br></p>', '<h2 style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 1240px; line-height: 1.3; font-size: 1.6em; font-family: Roboto, sans-serif; font-weight: 700;\">Giới thiệu rượu Jacob’s Creek Shiraz Cabernet</h2><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Rượu Jacob’s Creek Shiraz Cabernet có màu đỏ lựu. Mùi hương rất nổi bật hương cây trái của mận chín, quả mâm xôi; kèm hương nồng của sô-cô-la và tiêu đen, phảng phất hương gỗ. Hương vị tròn đầy vị quả chín mọng, phức hợp mềm mại và chất chát dễ cảm nhận. Dòng vang này là sự kết hợp, phối trộn hài hòa giữa dòng vang mềm mại, tròn đều Shiraz với dòng vang đầy phức hợp Cabernet Sauvignon, tạo nên sản phẩm vang đậm đà nhiều tầng cảm nhận và dư vị kéo dài, sâu lắng.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif; text-align: center;\"><img decoding=\"async\" class=\"alignnone size-medium wp-image-7145\" src=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-jacobs-creek-shiraz-cabernet-600x400.jpg\" alt=\"rượu Jacob\'s Creek Shiraz Cabernet\" width=\"600\" height=\"400\" srcset=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-jacobs-creek-shiraz-cabernet-600x400.jpg 600w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-jacobs-creek-shiraz-cabernet-768x512.jpg 768w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-jacobs-creek-shiraz-cabernet.jpg 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"height: auto; max-width: 100%; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;\"></p>', '/storage/photos/33/Product/download.jpg', 33, '', 'new', 'active', 450000.00, 4.00, 1, 32, NULL, 10, '2023-05-18 23:21:46', '2023-05-19 00:40:29'),
(31, 'RƯỢU VANG JACOB’S CREEK CHARDONNAY', 'ruou-vang-jacobs-creek-chardonnay', '<p><span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Vang trắng Jacob’s Creek Chardonnay có diện mạo xinh đẹp với màu rượu vàng nhạt, tươi sáng. Được tạo nên từ những trái nho Chardonnay hảo hạng, rượu mang đậm đà hương vị đặc trưng nhất của thiên nhiên nước Úc. Hương thơm tươi mát của rượu vang</span><br></p>', '<h2 style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 1240px; line-height: 1.3; font-size: 1.6em; font-family: Roboto, sans-serif; font-weight: 700;\">Giới thiệu rượu vang Jacob’s Creek Chardonnay</h2><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Vang trắng Jacob’s Creek Chardonnay có diện mạo xinh đẹp với màu rượu vàng nhạt, tươi sáng. Được tạo nên từ những trái nho Chardonnay hảo hạng, rượu mang đậm đà hương vị đặc trưng nhất của thiên nhiên nước Úc. Hương thơm tươi mát của rượu vang Jacob’s Creek Chardonnay đến từ những đóa hoa chanh, cam. Hương thơm càng hấp dẫn hơn với hương gỗ sồi sang trọng. Vị rượu tròn trịa và êm mượt, thể hiện sự cân bằng hoàn hảo giữa hương vị hoa quả ngọt ngào và men rượu đậm đà. Thưởng thức thêm vang trắng Jacob’s Creek Chardonnay, thực khách sẽ còn cảm nhận được gia vị gỗ sồi tinh tế.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif; text-align: center;\"><img decoding=\"async\" class=\"alignnone size-medium wp-image-7244\" src=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-vang-Jacobs-Creek-Chardonnay-600x400.jpg\" alt=\"rượu vang Jacob\'s Creek Chardonnay\" width=\"600\" height=\"400\" srcset=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-vang-Jacobs-Creek-Chardonnay-600x400.jpg 600w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-vang-Jacobs-Creek-Chardonnay-768x512.jpg 768w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-vang-Jacobs-Creek-Chardonnay.jpg 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"height: auto; max-width: 100%; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;\"></p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Hậu vị sảng khoái và tươi mát mà vang trắng Úc Jacob’s Creek Chardonnay đem lại là vô cùng độc đáo. Thưởng thức cùng các món cá, hải sản tươi ngon, thực khách sẽ thực sự trải nghiệm sự thăng hoa. Ngoài ra các món mì ống sốt kem cũng rất thích hợp với một ly vang Jacob’s Creek Classic Chardonnay. Rượu nên được ướp lạnh trước khi dùng để hương vị thêm ngon lành hơn.</p>', '/storage/photos/33/Product/ruou-vang-Jacobs-Creek-Chardonnay-ava-768x768.jpg', 66, '850ml', 'hot', 'active', 780000.00, 23.00, 1, 32, NULL, 10, '2023-05-18 23:31:09', '2023-05-19 00:39:15'),
(32, 'RƯỢU ZUBROWKA VODKA', 'ruou-zubrowka-vodka', '<p><span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Rượu Vodka Zubrowka Bison Grass hay còn gọi Vodka cỏ Bison (Bison Grass Vodka)</span><br></p>', '<h2 style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 1240px; line-height: 1.3; font-size: 1.6em; font-family: Roboto, sans-serif; font-weight: 700;\">Giới thiệu rượu Zubrowka Vodka</h2><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Rượu Vodka Zubrowka Bison Grass hay còn gọi Vodka cỏ Bison (Bison Grass Vodka) là loại Vodka lâu đời của Ba Lan. Rượu được chưng cất từ lúa mạch đen và được lựa chọn kỉ lưỡng từ các nhà nông nơi xa khu dân cư, khu vực Đông Bắc. Nơi được xem như “lá phổi của Balan”, vùng đất trù phú, không bị ô nhiễm, nơi có nhiều mùn, giàu khoán chất và màu mỡ.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif; text-align: center;\"><img decoding=\"async\" class=\"alignnone size-medium wp-image-7688\" src=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-zubrowka-vodka-600x400.jpg\" alt=\"rượu Zubrowka Vodka\" width=\"600\" height=\"400\" srcset=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-zubrowka-vodka-600x400.jpg 600w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-zubrowka-vodka-768x512.jpg 768w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-zubrowka-vodka.jpg 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"height: auto; max-width: 100%; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;\"></p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Cỏ Bison Grass được thu hoạch bằng tay và phơi khô tự nhiên. Tại nhà chưng cất, cỏ được trải rộng và pha rượu một vài ngày để tạo ra tinh chất hương thơm. Tinh chất độc đáo và khác lạ này với màu vàng xanh đến từ cỏ Bison. Có thể dùng ướp lạnh uống trực tiếp, hoặc kết hợp với bước Táo ép, Pha chế Cocktail.</p>', '/storage/photos/33/Product/ruou-zubrowka-vodka-ava-768x768.jpg', 55, '1000ml', 'new', 'active', 670000.00, 30.00, 1, 36, NULL, 11, '2023-05-18 23:33:41', '2023-05-19 00:45:24'),
(33, 'RƯỢU STOLICHNAYA RUSSIAN VODKA', 'ruou-stolichnaya-russian-vodka', '<p><span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Stolichnaya Vodka được làm từ lúa mì và lúa mạch đen chất lượng tốt nhất của Nga kết hợp với nước chưa qua xử lý của Nga. Nó được chưng cất hai lần và sau đó lọc bốn lần: qua thạch anh,</span><br></p>', '<h2 style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 1240px; line-height: 1.3; font-size: 1.6em; font-family: Roboto, sans-serif; font-weight: 700;\">Giới thiệu rượu Stolichnaya Russian Vodka</h2><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Stolichnaya Vodka được làm từ lúa mì và lúa mạch đen chất lượng tốt nhất của Nga kết hợp với nước chưa qua xử lý của Nga. Nó được chưng cất hai lần và sau đó lọc bốn lần: qua thạch anh, than bạch dương Siberia, thạch anh lần thứ hai, sau đó qua vải dệt chặt chẽ để tăng thêm độ phức tạp. Quy trình sản xuất độc đáo được sử dụng cho Stolichnaya làm cho nó trở nên thú vị khi uống. Không có gì nhầm lẫn Stolion là bàn hoặc thetongue. Nhãn màu đỏ mang tính biểu tượng đó nổi bật với quần chúng. Các lớp hương vị phức tạp và chất lượng không thể nhầm lẫn cho bạn biết bạn đang uống Stolithe thứ hai bạn nâng ly lên miệng.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif; text-align: center;\"><img decoding=\"async\" class=\"alignnone size-medium wp-image-7674\" src=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-stolichnaya-russian-vodka-600x400.jpg\" alt=\"rượu Stolichnaya Russian Vodka\" width=\"600\" height=\"400\" srcset=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-stolichnaya-russian-vodka-600x400.jpg 600w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-stolichnaya-russian-vodka-768x512.jpg 768w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-stolichnaya-russian-vodka.jpg 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"height: auto; max-width: 100%; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;\"></p>', '/storage/photos/33/Product/ruou-stolichnaya-russian-vodka-ava-768x768.jpg', 77, '1000ml', 'new', 'active', 890000.00, 15.00, 1, 36, NULL, 13, '2023-05-18 23:35:24', '2023-05-19 00:45:36'),
(34, 'RƯỢU SHERIDAN’S', 'ruou-sheridans', '<p><span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Rượu Sữa Sheridan’s là sản phẩm phân phối chủ yếu ở kênh miễn thuế (duty free shop) và các cửa hàng bán lẻ du lịch trọng điểm (Key Travel Retail), tại Mỹ, Châu Âu và đặc biệt là Châu Á. Rượu Sheridan’s Sữa&nbsp;</span><br></p>', '<h2 style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 1240px; line-height: 1.3; font-size: 1.6em; font-family: Roboto, sans-serif; font-weight: 700;\">Giới thiệu rượu Sheridan’s</h2><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Rượu Sữa Sheridan’s là sản phẩm phân phối chủ yếu ở kênh miễn thuế (duty free shop) và các cửa hàng bán lẻ du lịch trọng điểm (Key Travel Retail), tại Mỹ, Châu Âu và đặc biệt là Châu Á. Rượu Sheridan’s Sữa 1 Lít được thiết kế rất độc đáo: Với độ cồn chung của cả hai ngăn dính liền nhau là 15,5 %. Ngăn lớn màu nâu có dung tích 670 ml chứa rượu whisky cafe và chocolate. Ngăn nhỏ màu trắng có dung tích 330 ml chứa rượu whisky kem sữa hương vanilla.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif; text-align: center;\"><img decoding=\"async\" class=\"alignnone size-medium wp-image-7960\" src=\"https://ruoutrungtam.com/wp-content/uploads/2021/08/ruou-Sheridans-600x400.jpg\" alt=\"rượu Sheridan\'s\" width=\"600\" height=\"400\" srcset=\"https://ruoutrungtam.com/wp-content/uploads/2021/08/ruou-Sheridans-600x400.jpg 600w, https://ruoutrungtam.com/wp-content/uploads/2021/08/ruou-Sheridans-768x512.jpg 768w, https://ruoutrungtam.com/wp-content/uploads/2021/08/ruou-Sheridans.jpg 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"height: auto; max-width: 100%; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;\"></p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Hai Vòi của chai rượu Sheridan’s có thể điều chỉnh được để bạn muốn dùng nhiều rượu whisky cafe chocolate hoặc nhiều rượu whisky kem sữa đều được. khi rót 2 dòng rượu này chảy ra hòa quyện vào nhau tạo ra một hương vị đặc sắc của chocolate, cafe và Kem sữa nhưng vẫn mang đặc trưng mùi vị của rượu whisky.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Rượu Sheridan’s là loại rượu phù hợp với người có tửu lượng thấp, và là loại rượu cho phái nữ vì rượu có độ cồn chỉ là dưới 15,5 %. Hiện nay, rượu Sheridan’s Sữa là dòng rượu cao cấp nhất dành cho phái nữ tại thị trường Việt Nam.</p>', '/storage/photos/33/Product/ruou-Sheridans-ava-768x768.jpg', 66, '1000ml', 'new', 'active', 560000.00, 12.00, 1, 35, NULL, 11, '2023-05-18 23:36:51', '2023-05-19 00:45:09'),
(35, 'RƯỢU PIMM’S', 'ruou-pimms', '<p><span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Rượu Pimm’s là thương hiệu rượu gin kết hợp rượu mùi điển hình cho sự sống động, trẻ trung, đại diện cho một phần không thể thiếu của mùa hè tại Anh Quốc. Với 150 năm hiện hữu, sản phẩm vẫn tiếp tục không ngừng trẻ hóa.</span><br></p>', '<h2 style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 1240px; line-height: 1.3; font-size: 1.6em; font-family: Roboto, sans-serif; font-weight: 700;\">Giới thiệu rượu Pimm’s</h2><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Rượu Pimm’s là thương hiệu rượu gin kết hợp rượu mùi điển hình cho sự sống động, trẻ trung, đại diện cho một phần không thể thiếu của mùa hè tại Anh Quốc. Với 150 năm hiện hữu, sản phẩm vẫn tiếp tục không ngừng trẻ hóa. Đặc biệt khi pha chế với chanh, trái cây sẽ mang lại thức uống sảng khoái và tươi mát đặc sắc.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif; text-align: center;\"><img decoding=\"async\" class=\"alignnone size-medium wp-image-7942\" src=\"https://ruoutrungtam.com/wp-content/uploads/2021/08/ruou-pimms-600x400.jpg\" alt=\"rượu Pimm\'s\" width=\"600\" height=\"400\" srcset=\"https://ruoutrungtam.com/wp-content/uploads/2021/08/ruou-pimms-600x400.jpg 600w, https://ruoutrungtam.com/wp-content/uploads/2021/08/ruou-pimms-768x512.jpg 768w, https://ruoutrungtam.com/wp-content/uploads/2021/08/ruou-pimms.jpg 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"height: auto; max-width: 100%; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;\"></p>', '/storage/photos/33/Product/ruou-pimms-ava-768x768 (1).jpg', 55, '850ml', 'hot', 'active', 70000.00, 2.00, 1, 35, NULL, 11, '2023-05-18 23:38:37', '2023-05-19 00:44:57'),
(36, 'BIA DINKELACKER CD PILS LON', 'bia-dinkelacker-cd-pils-lon', '<p><span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Dinkelacker CD Pils 4.9% – Lon 500ml là một trong những loại bia thuộc dòng bia Pilsner rất nổi tiếng tại Đức. Loại bia này được sản xuất lần đầu tiên vào năm 1888 theo công thức truyền thống đặc trưng riêng</span><br></p>', '<h2 style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 1240px; line-height: 1.3; font-size: 1.6em; font-family: Roboto, sans-serif; font-weight: 700;\">Giới thiệu bia Dinkelacker CD Pils</h2><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Dinkelacker CD Pils 4.9% – Lon 500ml là một trong những loại bia thuộc dòng bia Pilsner rất nổi tiếng tại Đức. Loại bia này được sản xuất lần đầu tiên vào năm 1888 theo công thức truyền thống đặc trưng riêng. Dòng bia Dinkelacker CD Pils 4.9% nổi tiếng với chất lượng thơm ngon và hảo hạng nhất từ Tenttnanger, với hương thơm cỏ nhẹ thoang thoảng mà ít loại bia nào có được.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif; text-align: center;\"><img decoding=\"async\" class=\"alignnone size-medium wp-image-8577\" src=\"https://ruoutrungtam.com/wp-content/uploads/2021/09/bia-Dinkelacker-CD-Pils-600x400.jpg\" alt=\"bia Dinkelacker CD Pils\" width=\"600\" height=\"400\" srcset=\"https://ruoutrungtam.com/wp-content/uploads/2021/09/bia-Dinkelacker-CD-Pils-600x400.jpg 600w, https://ruoutrungtam.com/wp-content/uploads/2021/09/bia-Dinkelacker-CD-Pils-768x512.jpg 768w, https://ruoutrungtam.com/wp-content/uploads/2021/09/bia-Dinkelacker-CD-Pils.jpg 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"height: auto; max-width: 100%; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;\"></p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Đặc biệt, bia Dinkelacker CD Pils có vị đắng đặc trưng của hoa bia và đây cũng là điểm độc đáo, hấp dẫn riêng của dòng bia Pilsner từ khi sản xuất tới hiện nay. Bia Dinkelacker CD Pils 4.9% được làm từ những nguyên liệu tinh chế và chất lượng nhất, đảm bảo hương vị bia ngon nhất. Trong đó, phải kể tới hoa bia, lúa mạch, malt cùng nước tinh khiết.</p>', '/storage/photos/33/Product/bia-Dinkelacker-CD-Pils-ava-768x768.jpg', 66, '1000ml', 'hot', 'active', 34000.00, 4.00, 1, 34, NULL, 11, '2023-05-18 23:41:05', '2023-05-19 00:44:40'),
(37, 'RƯỢU MEUKOW VSOP', 'ruou-meukow-vsop', '<p><span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Meukow VSOP Superior là một sự pha trộn cân bằng và dễ uống. Hương vị đặc trưng một số loại trái cây trưởng thành, nho khô và các loại hạt, một chút vani, và các loại gia vị là cũng có mặt.</span><br></p>', '<h2 style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 1240px; line-height: 1.3; font-size: 1.6em; font-family: Roboto, sans-serif; font-weight: 700;\">Giới thiệu rượu Meukow VSOP</h2><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Meukow VSOP Superior là một sự pha trộn cân bằng và dễ uống. Hương vị đặc trưng một số loại trái cây trưởng thành, nho khô và các loại hạt, một chút vani, và các loại gia vị là cũng có mặt. Kết thúc là dài, với một chút vỏ cam. Rượu có màu vàng hổ phách, hương thơm tinh tế của gia vị, caramel và hương liệu hoa khô; một liên lạc của khô vỏ cam, gỗ và ca cao trên vòm miệng; thanh lịch mịn và ấm áp trên kết thúc.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif; text-align: center;\"><img decoding=\"async\" class=\"alignnone size-medium wp-image-6922\" src=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-meukow-vsop-600x400.jpg\" alt=\"rượu Meukow VSOP\" width=\"600\" height=\"400\" srcset=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-meukow-vsop-600x400.jpg 600w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-meukow-vsop-768x512.jpg 768w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-meukow-vsop.jpg 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"height: auto; max-width: 100%; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;\"></p>', '/storage/photos/33/Product/ruou-meukow-vsop-ava.jpg', 29, '850ml', 'new', 'active', 890000.00, 5.00, 1, 32, NULL, 11, '2023-05-18 23:43:37', '2023-05-19 01:10:22'),
(38, 'GEORGE WYNDHAM SHIRAZ CABERNET – BIN 989', 'george-wyndham-shiraz-cabernet-bin-989', '<p>xx</p>', '<p>xx</p>', '/storage/photos/33/Product/George-Wyndham-Shiraz-Cabernet-Bin-989-ava-768x768.jpg', 66, '850ml', 'hot', 'active', 1500000.00, 4.00, 1, 33, NULL, 11, '2023-05-18 23:44:47', '2023-05-19 00:41:34'),
(40, 'demo sửa sp', 'demo-them-sp', '<p><span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Vang Graffigna Pinot Grigio mang hương thơm hấp dẫn của hoa nhài, xen lẫn hương thơm trái cây nhiệt đới như đào và mơ. Rượu có nồng độ trung bình, với vị chua acid cân bằng và vị cam quýt, táo, lê, chanh nổi bật.</span><br></p>', '<h2 style=\"text-rendering: optimizespeed; color: rgb(33, 33, 33); margin-bottom: 0.5em; width: 1240px; line-height: 1.3; font-size: 1.6em; font-family: Roboto, sans-serif; font-weight: 700;\">Giới thiệu rượu vang Graffigna Pinot Grigio</h2><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">Vang Graffigna Pinot Grigio mang hương thơm hấp dẫn của hoa nhài, xen lẫn hương thơm trái cây nhiệt đới như đào và mơ. Rượu có nồng độ trung bình, với vị chua acid cân bằng và vị cam quýt, táo, lê, chanh nổi bật. Dư vị tươi mát và thanh lịch mang lại cảm giác vô cùng sảng khoái, đọng lại lâu sau khi thưởng thức. Vang trắng Graffigna Pinot Grigio có thể dùng làm rượu khai vị hoặc dùng chung với cá, hải sản và các món ăn Á châu.</p><p style=\"margin-bottom: 1.3em; color: rgb(97, 97, 97); font-family: Roboto, sans-serif; text-align: center;\"><img decoding=\"async\" class=\"alignnone size-medium wp-image-7240\" src=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-vang-Graffigna-Pinot-Grigio-600x400.jpg\" alt=\"rượu vang Graffigna Pinot Grigio\" width=\"600\" height=\"400\" srcset=\"https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-vang-Graffigna-Pinot-Grigio-600x400.jpg 600w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-vang-Graffigna-Pinot-Grigio-768x512.jpg 768w, https://ruoutrungtam.com/wp-content/uploads/2021/07/ruou-vang-Graffigna-Pinot-Grigio.jpg 900w\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"height: auto; max-width: 100%; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;\"></p>', '/storage/photos/33/Product/ruou-vang-Graffigna-Pinot-Grigio-ava-768x768.jpg', 77, '1000ml', 'new', 'active', 890000.00, 5.00, 1, 32, NULL, 11, '2023-05-19 01:08:59', '2023-05-19 01:09:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` tinyint(4) NOT NULL DEFAULT 0,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rate`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, 35, NULL, 5, 'Đánh giá ngày 27/4', 'active', '2022-04-27 00:59:36', '2022-04-27 00:59:36'),
(2, 35, NULL, 5, 'Đánh giá tiếp theo', 'active', '2022-04-27 01:02:12', '2022-04-27 01:02:12'),
(3, 35, NULL, 5, 'Đánh giá thử lại 2 lần', 'active', '2022-04-28 09:59:52', '2022-07-03 07:43:36'),
(4, 44, NULL, 5, 'Đẹp ghê ak', 'active', '2023-04-19 08:40:41', '2023-04-19 08:40:41'),
(5, 44, NULL, 5, 'Quá đẹp', 'active', '2023-04-19 08:41:27', '2023-04-19 08:41:27'),
(6, 44, NULL, 5, 'Quá đẹp', 'active', '2023-04-19 08:42:07', '2023-04-19 08:42:07'),
(7, 45, NULL, 4, 'Đẹp quá', 'active', '2023-04-19 08:49:43', '2023-04-19 08:49:43'),
(8, 46, NULL, 4, 'Đẹp quá', 'active', '2023-04-19 09:00:23', '2023-04-19 09:00:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Mong muốn đáp ứng nhu cầu của khách hàng.', 'Mong muốn đáp ứng nhu cầu của khách hàng.', '/storage/photos/33/LOGO_1.jpg', '/storage/photos/1/LOGO_1.jpg', 'Phố Nhổn - Hà Nội', '09999999999999', 'codedoan.com@gmail.com', NULL, '2023-04-19 09:10:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hà Nội', '40000.00', 'active', '2020-08-14 04:22:17', '2022-04-25 11:14:54'),
(2, 'Phú Thọ', '30000.00', 'active', '2020-08-14 04:22:41', '2022-04-25 11:15:11'),
(3, 'Vĩnh Phúc', '40000.00', 'active', '2020-08-15 06:54:04', '2022-04-25 11:15:27'),
(4, 'Ninh Bình', '35000.00', 'active', '2020-08-17 20:50:48', '2022-04-25 11:15:47'),
(5, 'Long An', '34000.00', 'active', '2023-04-19 09:07:28', '2023-04-19 09:07:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(33, 'Admin', 'admin@gmail.com', NULL, '$2y$10$An0KdWoqcI1JK8Fj7Db2burUfxtf2xbNSnLDr.4mbsUqvlR7E954.', '/storage/photos/31/User/42195889_2218845655070033_5061281232172613632_n.jpg', 'admin', NULL, NULL, 'active', 'llV6MBslbcL4LgcoARjhukYfOQbrIdDSGxy4vgr8v7MbWcYtuv2CEiLwFHDC', NULL, NULL),
(34, 'Linh', 'user@gmail.com', NULL, '$2y$10$An0KdWoqcI1JK8Fj7Db2burUfxtf2xbNSnLDr.4mbsUqvlR7E954.', '/storage/photos/33/User/4-ceo-viet-tuoi-suu-tai-gioi-dang-dieu-hanh-doanh-nghiep-nao.jpg', 'user', NULL, NULL, 'active', NULL, '2022-04-25 09:04:15', '2022-04-25 09:05:00'),
(35, 'Thịnh', 'thinhphuongxa1@gmail.com', NULL, '$2y$10$W8jNnJgUSG5zfXjWPW6KTeaM9uI2U0jOxozG/N0Ody6rf1.X/bssO', '/storage/photos/33/User/logo-comics-food-bar-hd-png.png', 'user', NULL, NULL, 'active', NULL, '2022-04-25 09:04:15', '2022-04-25 09:04:15'),
(36, 'Minh', 'minh@gmail.com', NULL, '$2y$10$AtPfHsxPzg7P8vooZEQBPeIc1mEpWh.sIOG1LNoAWBf9MytBDp5Dm', '/storage/photos/33/User/4-ceo-viet-tuoi-suu-tai-gioi-dang-dieu-hanh-doanh-nghiep-nao.jpg', 'user', NULL, NULL, 'active', NULL, '2022-04-27 02:05:54', '2022-04-28 11:11:36'),
(37, 'user1', 'user1@gmail.com', NULL, '$2y$10$kxkc4NscWvCxh0t/7nYIqOCOSJPwfrMLmawfwmxnJlCAFcbLvZWfC', NULL, 'user', NULL, NULL, 'active', NULL, '2022-05-11 10:04:16', '2022-05-11 10:04:16'),
(38, 'user2', 'user2@gmail.com', NULL, '$2y$10$RwduGWnyr96mK.DqvYi5Cex7ZujywKNJQ9lTfR9tuds36mUvc7Jie', NULL, 'user', NULL, NULL, 'active', NULL, '2022-05-19 08:11:39', '2022-05-19 08:11:39'),
(41, 'Cthinh', 'user123@gmail.com', NULL, '$2y$10$Ck/1ty46AupHTwcjJjRV1OFRhvLiueFWhFzZazs62K6y/GNkG39Ey', NULL, 'user', NULL, NULL, 'inactive', NULL, '2022-06-28 20:33:16', '2023-04-19 09:09:58'),
(42, 'Linh 2', 'linh2@gmail.com', NULL, '$2y$10$YprolQJNhqtXz1zBkwWjWues3yTuuNjpmb2Vk0p7EcUAoeAKSKiIO', NULL, 'user', NULL, NULL, 'active', NULL, '2022-07-03 07:29:33', '2022-07-03 07:29:33'),
(43, 'linh 3', 'linh3@gmail.com', NULL, '$2y$10$A/Sb7.II/R5.Bmc2PxPO7OKl505Vcsps7jxRHVSZpLjTQuEMss/yq', NULL, 'user', NULL, NULL, 'active', NULL, '2022-07-03 07:31:20', '2022-07-03 07:31:20'),
(44, 'chau', 'chau@gmail.com', NULL, '$2y$10$Pr0uqXgv4roe0SBsx2.Sre1QImgEpw96QiRB1RkNUo9sh8LlNUOIy', NULL, 'user', NULL, NULL, 'active', NULL, '2023-04-19 08:36:03', '2023-04-19 08:36:03'),
(45, 'chaux', 'chaux@gmail.com', NULL, '$2y$10$M7uHFvIGLnMlx7Uck70hjuwhEwsTusZVWR70zAQHaOI9al8A9PqPu', NULL, 'user', NULL, NULL, 'active', NULL, '2023-04-19 08:49:00', '2023-04-19 08:49:00'),
(46, 'demo', 'demo@gmail.com', NULL, '$2y$10$VFuILvS92XL4euTl5HP13.ZyVKR7m4ngxHsb8JKPsItxdtcu7Fxla', NULL, 'user', NULL, NULL, 'active', NULL, '2023-04-19 08:59:41', '2023-04-19 08:59:41'),
(47, 'demoweb', 'demoweb@gmail.com', NULL, '$2y$10$4yiJhHup/OIs9Jik7lReA.NxFeVcue9dqf8IqvuCy2755Qlx1y0sy', NULL, 'user', NULL, NULL, 'active', NULL, '2023-05-19 00:30:00', '2023-05-19 00:30:00'),
(48, 'demo', 'demo1@gmail.com', NULL, '$2y$10$OfG.WRhwVC/KdlsJYOlvqOjOkZq5rLIDQRZ69Z7rQR5AIQV0GRHMm', NULL, 'user', NULL, NULL, 'active', NULL, '2023-05-19 00:53:12', '2023-05-19 00:53:12'),
(49, 'codedoan', 'codedoan@gmail.com', NULL, '$2y$10$zjl0dNINvo4x778cMXQO/uqsGLjcobsgLNmZ8wV3Fwit1k0SBORoi', NULL, 'user', NULL, NULL, 'active', NULL, '2023-05-19 01:02:44', '2023-05-19 01:02:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `cart_id`, `user_id`, `price`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(12, 32, NULL, 33, 469000.00, 1, 469000.00, '2023-05-19 00:47:16', '2023-05-19 00:47:16'),
(13, 36, NULL, 48, 32640.00, 1, 32640.00, '2023-05-19 00:54:20', '2023-05-19 00:54:20'),
(14, 37, NULL, 49, 845500.00, 1, 845500.00, '2023-05-19 01:03:10', '2023-05-19 01:03:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Chỉ mục cho bảng `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Chỉ mục cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
