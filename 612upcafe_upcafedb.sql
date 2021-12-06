-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 06, 2021 lúc 08:03 AM
-- Phiên bản máy phục vụ: 5.7.36-log
-- Phiên bản PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `upcafe_upcafedb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `name`, `title`, `page`, `created_at`, `updated_at`) VALUES
(11, '1630214667-501.jpg', NULL, '6', '2021-08-29 05:24:27', '2021-08-29 05:24:27'),
(12, '1630214675-354.jpg', NULL, '6', '2021-08-29 05:24:35', '2021-08-29 05:24:35'),
(13, '1630214685-780.jpg', NULL, '6', '2021-08-29 05:24:45', '2021-08-29 05:24:45'),
(14, '1630214695-348.jpg', NULL, '6', '2021-08-29 05:24:55', '2021-08-29 05:24:55'),
(15, '1630214702-242.jpg', NULL, '6', '2021-08-29 05:25:02', '2021-08-29 05:25:02'),
(16, '1630214710-804.jpg', NULL, '6', '2021-08-29 05:25:10', '2021-08-29 05:25:10'),
(17, '1630214718-399.jpg', NULL, '6', '2021-08-29 05:25:18', '2021-08-29 05:25:18'),
(18, '1630214729-375.jpg', NULL, '6', '2021-08-29 05:25:29', '2021-08-29 05:25:29'),
(23, '1633329062-177.png', NULL, '4', '2021-10-04 06:31:03', '2021-10-04 06:31:03'),
(34, '1633333573-877.png', 'Best Catering Service', '5', '2021-10-04 07:46:15', '2021-10-04 07:46:15'),
(35, '1633333589-371.png', NULL, '5', '2021-10-04 07:46:31', '2021-10-04 07:46:31'),
(36, '1633333625-238.png', NULL, '5', '2021-10-04 07:47:06', '2021-10-04 07:47:06'),
(39, '1633337124-275.jpg', 'Memorable menu for any occasion', '3', '2021-10-04 08:45:24', '2021-10-04 08:45:24'),
(41, '1633418242-625.png', 'Breakfast | Lunch | Dinner', '2', '2021-10-05 07:17:24', '2021-10-05 07:17:24'),
(43, '1637157513-81.jpg', 'Welcome to Up Cafe', '1', '2021-11-17 13:58:33', '2021-11-17 13:58:33'),
(48, '1638092474-317.png', 'Welcome to Up Cafe', '1', '2021-11-28 22:41:15', '2021-11-28 22:41:15'),
(49, '1638092487-229.png', 'Welcome to Up Cafe', '1', '2021-11-28 22:41:27', '2021-11-28 22:41:27'),
(50, '1638092497-87.png', 'Welcome to Up Cafe', '1', '2021-11-28 22:41:38', '2021-11-28 22:41:38'),
(51, '1638092510-937.png', 'Welcome to Up Cafe', '1', '2021-11-28 22:41:51', '2021-11-28 22:41:51'),
(52, '1638093279-514.png', 'Welcome to Up Cafe', '1', '2021-11-28 22:54:40', '2021-11-28 22:54:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cafe`
--

CREATE TABLE `cafe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cafe`
--

INSERT INTO `cafe` (`id`, `file`, `created_at`, `updated_at`) VALUES
(7, '1633418879-405.png', '2021-10-05 07:27:59', '2021-10-05 07:27:59'),
(8, '1633418888-352.png', '2021-10-05 07:28:08', '2021-10-05 07:28:08'),
(9, '1633418896-91.png', '2021-10-05 07:28:16', '2021-10-05 07:28:16'),
(10, '1633418966-526.png', '2021-10-05 07:29:26', '2021-10-05 07:29:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catering`
--

CREATE TABLE `catering` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `grandparent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` tinyint(4) NOT NULL,
  `max_option` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vegetarian` tinyint(1) DEFAULT NULL,
  `gluten` tinyint(1) DEFAULT NULL,
  `vegan` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catering`
--

INSERT INTO `catering` (`id`, `name`, `content`, `group`, `price`, `grandparent`, `parent`, `max_option`, `created_at`, `updated_at`, `vegetarian`, `gluten`, `vegan`) VALUES
(4, 'Finger Food Style | Option 1', '<ul><li>Assorted fruit danishes</li><li>Petite filled croissants w/ cheese omelette &amp; tomato relish</li><li>Nutty granola, fresh fruit &amp; yoghurt portions</li></ul>', 10, 15.5, 'breakfast', 1, NULL, '2021-08-29 03:20:46', '2021-11-28 23:57:37', 0, 0, 0),
(5, 'Finger Food Style | Option 2', '<ul><li>Medium croissants w/ bacon &amp; cheese omelette</li><li>Nutty granola &amp; yoghurt portions</li><li>Bagel w/ cream cheese &amp; strawberry jam</li><li>Kumara hash w/ salmon &amp; hollandaise </li><li>Fresh fruit platter</li></ul>', 10, 19.5, 'breakfast', 1, NULL, '2021-08-29 03:22:16', '2021-11-28 23:58:31', 0, 0, 0),
(6, 'BUFFET', '<ul><li>Fruit danishes</li><li>Lightly toasted croissants</li><li>Seasonal fruit platter</li><li>Sauteed mushrooms &amp; tomatoes</li><li>Pork sausages &amp; bacon</li><li>French toast</li></ul>', 20, 0, 'breakfast', 2, NULL, '2021-08-29 03:25:46', '2021-11-28 23:59:05', 0, 0, 0),
(7, 'Full Buffet On-site Setup only (p/person)', NULL, 20, 30, 'breakfast', 3, NULL, '2021-08-29 03:26:29', '2021-11-29 00:00:55', 0, 0, 0),
(8, 'Serves In Disposable Foil Tray only (p/person)', NULL, 20, 25, 'breakfast', 3, NULL, '2021-08-29 03:27:04', '2021-11-29 00:01:16', 0, 0, 0),
(9, 'Tea / Coffee / Sugar / Milk', NULL, 20, 6.5, 'breakfast', 4, NULL, '2021-08-29 03:28:01', '2021-09-09 01:54:35', 0, 0, 0),
(10, 'Apple / Orange Juice / Water', NULL, 20, 5.5, 'breakfast', 4, NULL, '2021-08-29 03:28:26', '2021-11-29 00:02:12', 0, 0, 0),
(11, 'Petite eggs benedict w/ salmon or bacon (p/person)', NULL, 0, 6.5, 'breakfast', 5, NULL, '2021-08-29 03:28:56', '2021-11-29 00:03:56', 0, 0, 0),
(12, 'Banana & walnut loaf (p/person)', NULL, 0, 2.5, 'breakfast', 5, NULL, '2021-08-29 03:29:10', '2021-11-29 00:05:25', 0, 0, 0),
(13, 'Medium savoury muffins (p/person)', NULL, 0, 3.5, 'breakfast', 5, NULL, '2021-08-29 03:29:22', '2021-11-29 00:06:04', 0, 0, 0),
(14, 'Medium sweet muffins (p/person)', NULL, 0, 3.5, 'breakfast', 5, NULL, '2021-08-29 03:29:34', '2021-11-29 00:06:35', 0, 0, 0),
(15, 'Waffles portions w/ maple syrup on the side (p/person)', NULL, 0, 4.5, 'breakfast', 5, NULL, '2021-08-29 03:29:45', '2021-11-29 00:06:59', 0, 0, 0),
(16, 'AM/PM Tea | Option 1', '<ul><li>Sweet muffins w/ banana, bran &amp; cinnamon </li></ul><p>Or</p><ul><li>Savoury muffins w/ tomato, spinach, onion &amp; feta </li><li>Seasonal fruit platter<br> </li></ul>', 10, 8.5, 'tea', 1, NULL, '2021-08-29 03:54:43', '2021-11-29 00:11:19', 0, 0, 0),
(17, 'AM/PM Tea | Option 2', '<ul><li>Vegetarian quiches w/ feta, olives, tomato &amp; spinach</li><li>Banana &amp; walnut loaf</li><li>Seasonal fruit platter</li></ul>', 10, 10.5, 'tea', 1, NULL, '2021-08-29 03:58:51', '2021-10-05 07:43:18', 0, 0, 0),
(18, 'AM/PM Tea | Option 3', '<ul><li>Smoke chicken, brie &amp; cranberry quiches</li><li>Pork &amp; thyme sausage rolls</li><li>Cinnamon rolls </li></ul>', 10, 12.5, 'tea', 1, NULL, '2021-08-29 03:59:05', '2021-11-29 00:14:42', 0, 0, 0),
(20, 'Tea / Coffee / Sugar / Milk', NULL, NULL, 5.99, 'tea', 2, NULL, '2021-08-29 03:59:50', '2021-08-29 03:59:50', 0, 0, 0),
(21, 'Apple / Orange Juice / Water', NULL, NULL, 3.99, 'tea', 2, NULL, '2021-08-29 04:00:09', '2021-08-29 04:00:09', 0, 0, 0),
(23, 'Filled croissants (vegan)', NULL, 1, 0, 'tea', 3, NULL, '2021-08-29 04:04:06', '2021-09-09 02:02:55', 1, 0, 0),
(24, 'Savoury pies (vegan)', NULL, 1, 0, 'tea', 3, NULL, '2021-08-29 04:04:18', '2021-09-09 02:03:40', 0, 0, 1),
(25, 'Sausage rolls (vegan)', NULL, 1, 0, 'tea', 3, NULL, '2021-08-29 04:04:25', '2021-09-09 02:04:06', 1, 0, 0),
(26, 'Feta, parmesan & cheese scones w/ butter', NULL, 0, 0, 'tea', 3, NULL, '2021-08-29 04:04:32', '2021-09-09 02:04:28', 0, 0, 0),
(28, 'Beef meatballs on skewers (GF)', NULL, NULL, NULL, 'tea', 3, NULL, '2021-08-29 04:05:00', '2021-09-09 02:05:21', 0, 1, 0),
(33, 'Fruit danishes (vegan)', NULL, NULL, NULL, 'tea', 4, NULL, '2021-08-29 04:06:10', '2021-09-09 02:10:35', 0, 0, 1),
(34, 'Orange & almond loaf (GF)', NULL, NULL, NULL, 'tea', 4, NULL, '2021-08-29 04:06:17', '2021-10-05 07:51:17', 0, 1, 0),
(35, 'Lemon cake', NULL, NULL, NULL, 'tea', 4, NULL, '2021-08-29 04:06:24', '2021-09-09 02:09:13', 0, 0, 0),
(36, 'Coconut cream donut (vegan)', NULL, NULL, NULL, 'tea', 4, NULL, '2021-08-29 04:06:31', '2021-09-09 02:10:18', 0, 0, 1),
(37, 'Lunch | Option 1', '<ul><li>Filled croissants w/ chicken, salad, brie &amp; cranberry</li><li>Vegetarian quiches w/ feta, spinach &amp; tomato</li><li>Chocolate brownies</li><li>Seasonal fruit platter</li></ul>', 10, 15.5, 'lunch', 1, NULL, '2021-08-29 04:12:48', '2021-10-05 07:53:26', 0, 0, 0),
(38, 'Lunch | Option 2', '<ul><li>Whole sandwich w/ mam, salad, cheese &amp; beetroot relish</li><li>Mince &amp; cheese pies</li><li>Smoked chicken, brie &amp; cranberry quiches</li><li>Lemon cake</li><li>Seasonal fruit platter</li></ul>', 10, 17.5, 'lunch', 1, NULL, '2021-08-29 04:13:06', '2021-10-05 07:53:36', 0, 0, 0),
(39, 'Lunch | Option 3', '<ul><li>Cajun chicken, spinach, brie, tomato &amp; aioli panini’s</li><li>Mushroom cases</li><li>Salmon &amp; cream cheese quiches</li><li>Marinated beef meatballs on skewers</li><li>Caramel oat slice</li><li>Seasonal fruit platter</li></ul>', 10, 19.5, 'lunch', 1, NULL, '2021-08-29 04:13:22', '2021-10-05 07:53:46', 0, 0, 0),
(41, 'Caesar salad w/ aioli, croutons, cos, bacon, poached egg, parmesan & aioli', NULL, NULL, 4.5, 'lunch', 2, '{\"carvery\":null,\"seafood\":null,\"sweet\":null,\"hot\":null,\"salad\":null}', '2021-08-29 04:14:04', '2021-12-06 00:08:21', 0, 0, 0),
(42, 'Sesame beef salad w/ cucumber, capsicum,  carrot, daikon, cherry tomatoes & sesame  dressing', NULL, NULL, 4.5, 'lunch', 2, NULL, '2021-08-29 04:14:14', '2021-09-09 02:17:47', 0, 0, 0),
(43, 'Israeli couscous salad w/ roast pumpkin,  eggplant, courgette, capsicum & halloumi  w/tomato relish', NULL, NULL, 4.5, 'lunch', 2, NULL, '2021-08-29 04:14:36', '2021-09-09 02:17:40', 0, 0, 0),
(44, 'Tuna pasta salad – penne pasta, tuna,  spring onion, tomato & aioli', NULL, NULL, 4.5, 'lunch', 2, NULL, '2021-08-29 04:14:48', '2021-09-09 02:18:05', 0, 0, 0),
(45, 'Ham filled croissants', NULL, NULL, NULL, 'lunch', 3, NULL, '2021-08-29 04:15:14', '2021-10-05 07:54:57', 0, 0, 0),
(46, 'Vegetarian fold over', NULL, NULL, NULL, 'lunch', 3, NULL, '2021-08-29 04:15:24', '2021-10-05 07:55:09', 0, 0, 1),
(47, 'B.L.T whole grain sandwich', NULL, NULL, NULL, 'lunch', 3, NULL, '2021-08-29 04:15:32', '2021-10-05 07:55:30', 0, 1, 0),
(48, 'Beef filled rolls', NULL, NULL, NULL, 'lunch', 3, NULL, '2021-08-29 04:15:41', '2021-10-05 07:55:44', 0, 1, 1),
(49, 'Mushroom & bacon cases', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-08-29 04:15:56', '2021-09-09 02:20:44', 0, 0, 0),
(50, 'Beef meatballs on skewers', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-08-29 04:16:10', '2021-10-05 07:56:49', 0, 1, 0),
(51, 'Chicken kebabs (GF)', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-08-29 04:16:18', '2021-09-09 02:21:45', 0, 1, 0),
(52, 'Feta, spinach, red onion & tomato quiche (V)', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-08-29 04:16:24', '2021-09-09 02:21:57', 0, 0, 1),
(53, 'Lemon cake', NULL, NULL, NULL, 'lunch', 5, NULL, '2021-08-29 04:16:34', '2021-10-05 07:58:30', 0, 0, 0),
(54, 'Chocolate & raspberry brownie', NULL, NULL, NULL, 'lunch', 5, NULL, '2021-08-29 04:16:42', '2021-09-09 02:24:46', 0, 0, 0),
(55, 'Cinnamon rolls', NULL, NULL, NULL, 'lunch', 5, NULL, '2021-08-29 04:16:50', '2021-09-09 02:24:54', 0, 0, 0),
(56, 'Caramel slice', NULL, NULL, NULL, 'lunch', 5, NULL, '2021-08-29 04:16:57', '2021-09-09 02:25:03', 0, 0, 0),
(57, 'Dinner  Option 1', '<ul><li>Gourmet bread rolls &amp; condiments</li><li>Butter &amp; herbed roasted potatoes</li><li>Seasonal fruit salad or platter</li></ul><p><strong>Select from the menu below:</strong></p><ul><li>1x Carvery item</li><li>1x Hot dish</li><li>2x Salads</li><li>1x Sweet item</li></ul>', 20, 29.5, 'dinner', 1, '{\"carvery\":\"1\",\"seafood\":\"0\",\"sweet\":\"1\",\"hot\":\"1\",\"salad\":\"2\"}', '2021-08-29 04:35:57', '2021-12-05 23:50:51', 0, 0, 0),
(58, 'Dinner  Option 2', '<ul><li>Marinated chicken nibbles</li><li>Butter &amp; herbed roasted potatoes</li><li>Gourmet bread rolls &amp; condiments</li><li>Seasonal fruit salad or platter</li></ul><p><strong>Select from the menu below:</strong></p><ul><li>2x Carvery items</li><li>1x Hot dish</li><li>2x Salads</li><li>1x Sweet item</li></ul>', 20, 39.5, 'dinner', 1, '{\"carvery\":\"2\",\"seafood\":\"0\",\"sweet\":\"1\",\"hot\":\"1\",\"salad\":\"2\"}', '2021-08-29 04:36:15', '2021-12-05 23:52:54', 0, 0, 0),
(59, 'Dinner Option 3', '<ul><li>Marinated chicken nibbles</li><li>Butter &amp; herbed roasted potatoes</li><li>Gourmet bread rolls &amp; condiments</li><li>Seasonal fruit salad or platter</li></ul><p><strong>Select from the menu below:</strong></p><ul><li>2x Carvery items</li><li>2x Hot dishes</li><li>3x Salads</li><li>1x Sweet item</li></ul>', 20, 49.5, 'dinner', 1, '{\"carvery\":\"2\",\"seafood\":\"0\",\"sweet\":\"1\",\"hot\":\"2\",\"salad\":\"3\"}', '2021-08-29 04:36:32', '2021-12-05 23:54:22', 0, 0, 0),
(60, 'Dinner Option 4', '<ul><li>Marinated chicken nibbles</li><li>Butter &amp; herbed roasted potatoes</li><li>Seafood dish</li><li>Gourmet bread rolls &amp; condiments</li></ul><p><strong>Seasonal fruit salad or platter</strong></p><ul><li>2 carvery items</li><li>2 hot dish</li><li>3 salad</li><li>2 sweet items</li></ul>', 20, 59.5, 'dinner', 1, '{\"carvery\":\"2\",\"seafood\":\"0\",\"sweet\":\"2\",\"hot\":\"2\",\"salad\":\"3\"}', '2021-08-29 04:36:47', '2021-12-05 23:56:09', 0, 0, 0),
(63, '1. FULL BUFFET SETUP P/Person', NULL, 20, 35, 'dinner', 3, NULL, '2021-08-29 04:37:42', '2021-11-25 11:34:01', 0, 0, 0),
(64, '1. SERVES IN DISPOSABLE FOIL TRAY P/Person', NULL, 20, 29.5, 'dinner', 3, NULL, '2021-08-29 04:38:07', '2021-11-25 11:34:08', 0, 0, 0),
(65, 'Roast Pork w/apple sauce', NULL, NULL, NULL, 'dinner', 4, NULL, '2021-08-29 04:38:23', '2021-09-09 02:53:10', 0, 0, 0),
(66, 'Roast Beef w/ gravy', NULL, NULL, NULL, 'dinner', 4, NULL, '2021-08-29 04:38:30', '2021-09-09 02:53:30', 0, 0, 0),
(67, 'Roast Lamb w/ mint sauce', NULL, NULL, NULL, 'dinner', 4, NULL, '2021-08-29 04:38:36', '2021-09-09 02:53:39', 0, 0, 0),
(68, 'Roast chicken w/honey + herb', NULL, NULL, NULL, 'dinner', 4, NULL, '2021-08-29 04:38:43', '2021-10-05 08:06:54', 0, 0, 0),
(69, 'Chicken fried rice', NULL, NULL, NULL, 'dinner', 5, NULL, '2021-08-29 04:38:54', '2021-10-05 08:06:15', 0, 0, 0),
(70, 'Vegetarian lasagne', NULL, NULL, NULL, 'dinner', 5, NULL, '2021-08-29 04:39:00', '2021-09-09 02:54:24', 0, 0, 0),
(71, 'Marinated beef meatballs', NULL, NULL, NULL, 'dinner', 5, NULL, '2021-08-29 04:39:06', '2021-09-09 02:54:31', 0, 0, 0),
(72, 'Creamy chicken, bacon & dijon mustard', NULL, NULL, NULL, 'dinner', 5, NULL, '2021-08-29 04:39:13', '2021-09-09 02:54:40', 0, 0, 0),
(73, 'Sesame glazed salmon fillet', NULL, NULL, NULL, 'dinner', 6, NULL, '2021-08-29 04:39:22', '2021-09-09 02:55:57', 0, 0, 0),
(74, 'Raw fish', NULL, NULL, NULL, 'dinner', 6, NULL, '2021-08-29 04:39:31', '2021-09-09 02:56:05', 0, 0, 0),
(75, 'Seafood chowder', NULL, NULL, NULL, 'dinner', 6, NULL, '2021-08-29 04:39:37', '2021-09-09 02:56:17', 0, 0, 0),
(76, 'Garlic king prawns', NULL, NULL, NULL, 'dinner', 6, NULL, '2021-08-29 04:39:45', '2021-09-09 02:56:24', 0, 0, 0),
(77, 'Traditional green salad', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-08-29 04:39:54', '2021-09-09 02:57:49', 0, 0, 0),
(78, 'Greek salad', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-08-29 04:40:01', '2021-09-09 02:57:56', 0, 0, 0),
(79, 'Tuna pasta salad', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-08-29 04:40:07', '2021-09-09 02:58:13', 0, 0, 0),
(80, 'Potato salad', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-08-29 04:40:13', '2021-09-09 02:58:21', 0, 0, 0),
(82, 'Sweet Option 2', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-08-29 04:40:31', '2021-08-29 04:40:31', 0, 0, 0),
(83, 'Sweet Option 3', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-08-29 04:40:37', '2021-08-29 04:40:37', 0, 0, 0),
(84, 'Sweet Option 4', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-08-29 04:40:42', '2021-08-29 04:40:42', 0, 0, 0),
(85, 'AM/PM Tea | Option 4', '<ul><li>Assorted club sandwiches</li><li>Caramelised onion tart w/feta</li><li>Mince &amp; cheese pies</li><li>Assortment fruit danishes </li></ul>', 10, 14.5, 'tea', 1, NULL, '2021-09-09 02:01:06', '2021-11-29 00:15:52', 0, 0, 0),
(86, 'Salmon, spinach & cream cheese quiches', NULL, NULL, NULL, 'tea', 3, NULL, '2021-09-09 02:06:01', '2021-09-09 02:06:01', 0, 0, 0),
(87, 'Vegetarian frittata', NULL, NULL, NULL, 'tea', 3, NULL, '2021-09-09 02:06:23', '2021-10-06 12:46:19', 0, 1, 1),
(88, 'Mince & cheese pies', NULL, NULL, NULL, 'tea', 3, NULL, '2021-09-09 02:06:51', '2021-09-09 02:06:51', 0, 0, 0),
(89, 'Chicken pies', NULL, NULL, NULL, 'tea', 3, NULL, '2021-09-09 02:07:00', '2021-09-09 02:07:00', 0, 0, 0),
(90, 'Beef curry pies', NULL, NULL, NULL, 'tea', 3, NULL, '2021-09-09 02:07:08', '2021-09-09 02:07:08', 0, 0, 0),
(91, 'Palusami pies', NULL, NULL, NULL, 'tea', 3, NULL, '2021-09-09 02:07:16', '2021-10-05 07:49:38', 0, 0, 1),
(92, 'Spring rolls & samosas (V/HALAL)', '<p>Spring rolls &amp; samosas (V/HALAL)</p>', NULL, NULL, 'tea', 3, NULL, '2021-09-09 02:07:30', '2021-09-09 02:07:30', 0, 0, 0),
(93, 'Assortment of club sandwiches', NULL, NULL, NULL, 'tea', 3, NULL, '2021-09-09 02:07:40', '2021-09-09 02:07:40', 0, 0, 0),
(95, 'Mushroom cases (V)', NULL, NULL, NULL, 'tea', 3, NULL, '2021-09-09 02:08:05', '2021-09-09 02:08:05', 0, 0, 1),
(97, 'Cinnamon rolls', NULL, NULL, NULL, 'tea', 4, NULL, '2021-09-09 02:09:43', '2021-09-09 02:09:43', 0, 0, 0),
(98, 'Sweet slice (vegan)', NULL, NULL, NULL, 'tea', 4, NULL, '2021-09-09 02:09:51', '2021-09-09 02:09:58', 0, 0, 1),
(100, 'Date scones w/ butter', NULL, NULL, NULL, 'tea', 4, NULL, '2021-09-09 02:10:51', '2021-09-09 02:10:51', 0, 0, 0),
(101, 'Traditional afghans', NULL, NULL, NULL, 'tea', 4, NULL, '2021-09-09 02:11:00', '2021-09-09 02:11:00', 0, 0, 0),
(103, 'Ginger slice', NULL, NULL, NULL, 'tea', 4, NULL, '2021-09-09 02:11:15', '2021-09-09 02:11:15', 0, 0, 0),
(104, 'Caramel oat slice', NULL, NULL, NULL, 'tea', 4, NULL, '2021-09-09 02:11:26', '2021-09-09 02:11:26', 0, 0, 0),
(105, 'Raw vegetable salad w/ broccoli, green  beans, carrots, cherry tomatoes, cucumber,  toasted almonds, feta & citrus dressing.', NULL, NULL, 4.5, 'lunch', 2, NULL, '2021-09-09 02:18:18', '2021-09-09 02:18:18', 0, 0, 0),
(106, 'Salmon bagel', NULL, NULL, NULL, 'lunch', 3, NULL, '2021-09-09 02:20:00', '2021-10-05 07:55:58', 0, 0, 0),
(107, 'Chicken caesar wrap', NULL, NULL, NULL, 'lunch', 3, NULL, '2021-09-09 02:20:13', '2021-10-05 07:56:10', 0, 0, 0),
(108, 'Gluten free sandwich w/ ham, cheddar  cheese, tomato, cucumber, beetroot relish &  aioli', NULL, NULL, NULL, 'lunch', 3, NULL, '2021-09-09 02:20:28', '2021-09-09 02:20:28', 0, 0, 0),
(109, 'Smoke chicken, brie & cranberry quiche', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-09-09 02:20:52', '2021-09-09 02:22:13', 0, 0, 0),
(110, 'Salmon, spinach & cream cheese quiches', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-09-09 02:22:30', '2021-09-09 02:22:30', 0, 0, 0),
(111, 'Vegetarian frittata - Roast pumpkin, olive,  spinach, cheese, capsicum & carrots (GF/V)', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-09-09 02:22:44', '2021-09-09 02:22:44', 0, 1, 1),
(112, 'Bacon & eggs pies', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-09-09 02:22:55', '2021-09-09 02:22:55', 0, 0, 0),
(113, 'Mince & cheese pies', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-09-09 02:23:13', '2021-09-09 02:23:13', 0, 0, 0),
(114, 'Chicken pies', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-09-09 02:23:20', '2021-09-09 02:23:20', 0, 0, 0),
(115, 'Beef curry pies', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-09-09 02:23:27', '2021-09-09 02:23:27', 0, 0, 0),
(116, 'Palusami pies', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-09-09 02:23:34', '2021-09-09 02:23:34', 0, 0, 0),
(117, 'Zucchini fritters (GF/V', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-09-09 02:23:44', '2021-09-09 02:23:44', 0, 1, 1),
(118, 'Spring rolls & samosas (V/HALAL)', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-09-09 02:23:56', '2021-10-05 07:58:10', 0, 0, 1),
(119, 'Ginger slice', NULL, NULL, NULL, 'lunch', 5, NULL, '2021-09-09 02:25:16', '2021-09-09 02:25:16', 0, 0, 0),
(120, 'Afghans', NULL, NULL, NULL, 'lunch', 5, NULL, '2021-09-09 02:25:23', '2021-09-09 02:25:23', 0, 0, 0),
(121, 'Orange + almond loaf', NULL, NULL, NULL, 'lunch', 5, NULL, '2021-09-09 02:25:30', '2021-10-05 07:58:58', 0, 0, 0),
(122, 'Seasonal Fruit kebabs', NULL, NULL, NULL, 'lunch', 5, NULL, '2021-09-09 02:25:36', '2021-10-05 07:59:12', 0, 1, 0),
(124, 'Glazed ham off the bone w/ honey, ginger &  mustard', NULL, NULL, NULL, 'dinner', 4, NULL, '2021-09-09 02:53:55', '2021-09-09 02:53:55', 0, 0, 0),
(125, 'Beef masala curry', NULL, NULL, NULL, 'dinner', 5, NULL, '2021-09-09 02:54:53', '2021-09-09 02:54:53', 0, 0, 0),
(126, 'Seafood chowder', NULL, NULL, NULL, 'dinner', 5, NULL, '2021-09-09 02:55:01', '2021-09-09 02:55:01', 0, 0, 0),
(127, 'Israeli couscous with roast vegetables &  halloumi', NULL, NULL, NULL, 'dinner', 5, NULL, '2021-09-09 02:55:13', '2021-09-09 02:55:13', 0, 0, 0),
(128, 'Butter chicken curry & rice', NULL, NULL, NULL, 'dinner', 5, NULL, '2021-09-09 02:55:20', '2021-09-09 02:55:20', 0, 0, 0),
(130, 'Chick peat tomato curry', NULL, NULL, NULL, 'dinner', 5, NULL, '2021-09-09 02:55:38', '2021-10-05 08:07:57', 0, 0, 1),
(131, 'Fresh oysters', NULL, NULL, NULL, 'dinner', 6, NULL, '2021-09-09 02:56:33', '2021-09-09 02:56:33', 0, 0, 0),
(132, 'Hawaiian Style Poke', NULL, NULL, NULL, 'dinner', 6, NULL, '2021-09-09 02:56:39', '2021-09-09 02:56:39', 0, 0, 0),
(133, 'Marinated calamari', NULL, NULL, NULL, 'dinner', 6, NULL, '2021-09-09 02:56:47', '2021-09-09 02:56:47', 0, 0, 0),
(134, 'Steamed mussels', NULL, NULL, NULL, 'dinner', 6, NULL, '2021-09-09 02:57:12', '2021-09-09 02:57:12', 0, 0, 0),
(135, 'Panko crumbed fish', NULL, NULL, NULL, 'dinner', 6, NULL, '2021-09-09 02:57:19', '2021-09-09 02:57:19', 0, 0, 0),
(136, 'Shrimp in seafood sauce', NULL, NULL, NULL, 'dinner', 6, NULL, '2021-09-09 02:57:26', '2021-09-09 02:57:26', 0, 0, 0),
(137, 'Apple coleslaw', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-09-09 02:58:30', '2021-10-05 08:09:22', 0, 0, 0),
(138, 'Caesar salad', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-09-09 02:58:36', '2021-09-09 02:58:36', 0, 0, 0),
(139, 'Pumpkin, beetroot, spinach +onion salad w/hollandaise', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-09-09 02:58:42', '2021-10-05 08:10:20', 0, 0, 0),
(140, 'Orzo pasta salad', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-09-09 02:58:48', '2021-09-09 02:58:48', 0, 0, 0),
(143, 'Turkey, quinoa & kale Salad', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-09-09 02:59:05', '2021-09-09 02:59:05', 0, 0, 0),
(144, 'Pea, mango & avocado Salad', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-09-09 02:59:11', '2021-09-09 02:59:11', 0, 0, 0),
(145, 'Almond mushroom + bean salad w/balsamic dressing', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-09-09 02:59:17', '2021-10-05 08:11:54', 0, 0, 0),
(146, 'Beetroot & feta salad', NULL, NULL, NULL, 'dinner', 7, NULL, '2021-09-09 02:59:25', '2021-09-09 02:59:25', 0, 0, 0),
(147, 'Strawberry cheese cake', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-09-09 02:59:51', '2021-09-09 02:59:51', 0, 0, 0),
(148, 'Pineapple pie', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-09-09 02:59:57', '2021-09-09 02:59:57', 0, 0, 0),
(149, 'Carrot cake', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-09-09 03:00:03', '2021-09-09 03:00:03', 0, 0, 0),
(150, 'Chocolate mud cake', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-09-09 03:00:10', '2021-09-09 03:00:10', 0, 0, 0),
(151, 'Banoffee pie', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-09-09 03:00:15', '2021-09-09 03:00:15', 0, 0, 0),
(152, 'Tropical trifle', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-09-09 03:00:21', '2021-09-09 03:00:21', 0, 0, 0),
(153, 'Tiramisu', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-09-09 03:00:29', '2021-09-09 03:00:29', 0, 0, 0),
(154, 'Apple crumble & cream', NULL, NULL, NULL, 'dinner', 8, NULL, '2021-09-09 03:00:35', '2021-09-09 03:00:35', 0, 0, 0),
(156, 'OPTION 1', '<ul><li>Beef chop suey (Sapasui)</li><li>Rice</li><li>Raw fish (Oka)</li><li>Chicken curry (Kalemoa)</li><li>Green bananas w/coconut cream (Fa’alifu fa’i)</li><li>Taro leaves &amp; coconut cream (Palusami)</li></ul>', 35, NULL, 'more', 1, NULL, '2021-09-29 09:19:48', '2021-10-06 12:03:01', 0, 0, 0),
(157, 'OPTION 2', '<ul><li>Beef chop suey (Sapasui)</li><li>Rice</li><li>Raw fish (Oka)</li><li>Chicken curry (Kalemoa)</li><li>Green bananas w/coconut cream (Fa’alifu fa’i)</li></ul>', 20, NULL, 'more', 1, NULL, '2021-09-29 21:27:48', '2021-10-06 12:03:11', 0, 0, 0),
(158, 'Served In Disposable Foil Trays Only OR', NULL, 35, 29.5, 'more', 2, NULL, '2021-09-29 21:29:16', '2021-10-06 05:26:15', 0, 0, 0),
(159, 'Full Buffet Onsite Setup Only', NULL, 35, 35, 'more', 2, NULL, '2021-09-29 21:29:39', '2021-10-06 05:26:22', 0, 0, 0),
(160, 'Takeaway Only, Individual Packaging Available', NULL, NULL, 29.5, 'more', 3, NULL, '2021-09-29 21:30:10', '2021-09-29 21:30:10', 0, 0, 0),
(161, 'Roast Pork', NULL, NULL, 6, 'more', 4, NULL, '2021-09-29 21:31:41', '2021-09-29 21:32:05', 0, 0, 0),
(162, 'Taro w/coconut cream (Fa’alifu kalo)', NULL, NULL, 6, 'more', 4, NULL, '2021-09-29 21:33:17', '2021-09-30 00:15:08', 0, 0, 0),
(163, 'Pork Bun (Keke Pua)', NULL, NULL, 6, 'more', 4, NULL, '2021-09-29 21:33:39', '2021-09-29 21:33:39', 0, 0, 0),
(164, 'Half Moon Pineapple Pie (Pailfala)', NULL, NULL, 6, 'more', 4, NULL, '2021-09-29 21:33:52', '2021-09-29 21:33:52', 0, 0, 0),
(165, 'LISA’S GRAZE', '<ul><li>An assortment of 4 crackers<br>Kumara &amp; pumpkin hummus, beetroot relish, basil pesto<br>Brie, feta, apricot cream cheese<br>Pickle onions, olives, gherkins<br>Cherry tomatoes, celery, carrots, cucumber<br>Salami, beef, ham, smoke chicken<br>Fresh fruit to garnish</li></ul>', NULL, -1, 'more', 5, NULL, '2021-09-30 00:10:12', '2021-09-30 00:10:12', 0, 0, 0),
(166, 'ATAHUA GRAZE', '<ul><li>Fried Bread <br>Creamed Paua Vol au vents<br>Raw fish<br>Mussell fritters <br>Chicken pies <br>Kumara rostis w/salmon <br>Steamed pudding cakes<br>Fresh fruit to garnish</li></ul>', NULL, -1, 'more', 5, NULL, '2021-09-30 00:23:52', '2021-09-30 00:23:52', 0, 0, 0),
(167, 'AULELI GRAZE', '<ul><li>Panikeke<br>Seafood Vol au vents<br>Oka<br>Palusami fritters w/salmon<br>Palusami pies<br>Crispy Taro &amp; salmon<br>Koko cakes<br>Fresh fruit to garnish</li></ul>', NULL, -1, 'more', 5, NULL, '2021-09-30 00:24:51', '2021-09-30 00:24:51', 0, 0, 0),
(168, 'FUNERAL OPTION 1', '<ul><li>Assorted club sandwiches</li><li>Assorted quiches</li><li>Sweet</li></ul><p> </p><p>4 Items per person</p>', 25, 10.5, 'more', 6, NULL, '2021-09-30 01:12:31', '2021-11-29 04:06:53', 0, 0, 0),
(169, 'FUNERAL OPTION 2', '<ul><li>Assorted club sandwiches</li><li>Assortment of quiches/savories</li><li>Sweet</li></ul><p> </p><p>6 Items per person</p>', 25, 12.5, 'more', 6, NULL, '2021-09-30 01:13:06', '2021-11-29 04:07:08', 0, 0, 0),
(170, 'FUNERAL OPTION 3', '<ul><li>Assorted club sandwiches</li><li>Assortment of quiches/savories</li><li>Sweet</li></ul><p> </p><p>8 Items per person</p>', 25, 14.5, 'more', 6, NULL, '2021-09-30 01:13:41', '2021-11-29 04:07:18', 0, 0, 0),
(171, 'HIGH TEA', '<ul><li>1 bottle 200ml of Veuve Du Vernay Brut (France)<br>1 of our selected tea range<br>Pork &amp; pumpkin croquette<br>Hot smoked salmon tartlet<br>Venetian tea sandwich<br>Egg &amp; caper sandwich<br>Coconut &amp; lime cupcakes<br>Raspberry mascarpone profito roles<br>Peanut &amp; chocolate cream praline<br>White chocolate truffles<br>Cheddar &amp; chive scones</li></ul>', 15, 55, 'more', 10, NULL, '2021-09-30 01:19:42', '2021-10-01 15:59:48', 0, 0, 0),
(172, 'Veuve Du Vernay (200ml bottle)', NULL, NULL, 12, 'more', 11, NULL, '2021-09-30 01:21:10', '2021-09-30 01:21:10', 0, 0, 0),
(173, 'Prosecco Bottle', NULL, NULL, 37, 'more', 11, NULL, '2021-09-30 01:22:40', '2021-09-30 01:22:40', 0, 0, 0),
(174, 'Moet Bottle', NULL, NULL, 95, 'more', 11, NULL, '2021-09-30 01:22:55', '2021-09-30 01:22:55', 0, 0, 0),
(175, 'Tea', NULL, NULL, 5, 'more', 11, NULL, '2021-09-30 01:23:11', '2021-09-30 01:23:11', 0, 0, 0),
(176, 'SWEET PLATTER', '<ul><li>Lemon Meringue Tarts <br>Chocolate brownie cheese cake<br>Strawberry tarts<br>Assorted truffles <br>Mango parcels</li></ul>', 10, 14.5, 'more', 12, NULL, '2021-09-30 01:30:37', '2021-09-30 01:30:37', 0, 0, 0),
(177, 'SAVOURY PLATTER', '<ul><li>Vegetarian Quiches <br>Smoke chicken brie and cranberry quiches <br>Mince &amp; Cheese pies <br>Thyme &amp; pork sausage rolls <br>Mushroom &amp; Bacon cases</li></ul>', 10, 15.5, 'more', 12, NULL, '2021-09-30 01:31:16', '2021-09-30 01:31:16', 0, 0, 0),
(178, 'ASIAN PLATTER', '<ul><li>Sushi (Assorted)<br>Wontons<br>Spring rolls/Samosas<br>Sesame beef sliders<br>Fresh spring rolls</li></ul>', 10, 17, 'more', 12, NULL, '2021-09-30 01:31:46', '2021-09-30 01:31:46', 0, 0, 0),
(179, 'COLD SAVOURY PLATTER', '<ul><li>Salmon tartate<br>Assorted club sandwiches<br>Caramelised onion tart <br>Chicken/mango &amp; avocado parcels<br>Filo parcels with feta, spinach &amp; mushrooms</li></ul>', 10, 16, 'more', 12, NULL, '2021-09-30 01:32:15', '2021-09-30 01:32:15', 0, 0, 0),
(180, 'SEAFOOD PLATTER', '<ul><li>Seafood cases<br>Crispy calamari &amp; smoke paprika mayo sliders<br>Salmon &amp; cream cheese quiches <br>Panko crumbed fish bites<br>Petite Tuna &amp; avocado Sushi</li></ul>', 10, 18.5, 'more', 12, NULL, '2021-09-30 01:32:58', '2021-09-30 01:32:58', 0, 0, 0),
(181, 'Crumbed chicken nibbles', NULL, 10, 8, 'more', 13, NULL, '2021-09-30 01:34:08', '2021-09-30 01:34:08', 0, 0, 0),
(182, 'Seafood mix', NULL, 10, 12, 'more', 13, NULL, '2021-09-30 01:34:30', '2021-09-30 01:34:30', 0, 0, 0),
(183, 'Caesar Salad', NULL, 10, 9, 'more', 13, NULL, '2021-09-30 01:34:46', '2021-09-30 01:34:46', 0, 0, 0),
(184, 'Sesame beef  salad', NULL, 10, 9.5, 'more', 13, NULL, '2021-09-30 01:35:20', '2021-09-30 01:35:20', 0, 0, 0),
(185, 'Raw veggie salad', NULL, 10, 7.5, 'more', 13, NULL, '2021-09-30 01:35:38', '2021-09-30 01:35:38', 0, 0, 0),
(186, 'Chicken salad', NULL, 10, 9, 'more', 13, NULL, '2021-09-30 01:35:54', '2021-09-30 01:35:54', 0, 0, 0),
(190, 'FINGER FOOD STYLE', '<ul><li>Medium Ham, brie &amp; cranberry filled croissants<br>Cinnamon Rolls<br>Granola portions with yoghurt &amp; berry compote<br>Fruit kebabs (kiwifruit, grapes, rockmelon, strawberry &amp; watermelon)</li></ul>', 10, 17.5, 'more', 14, NULL, '2021-09-30 08:53:09', '2021-09-30 08:53:09', 0, 0, 0),
(191, 'SWEET PLATTER', '<ul><li>Afghans<br>Xmas tarts<br>Chocolate dipped strawberries<br>Cherries<br>Brownies<br>Christmas themed cupcakes</li></ul>', 10, 15.5, 'more', 14, NULL, '2021-09-30 08:54:14', '2021-09-30 08:54:14', 0, 0, 0),
(192, 'MORNING TEA', '<ul><li>Feta, spinach, onion scones<br>Sultana Pinwheels<br>Fruit kebabs (kiwifruit, grapes, rockmelon, strawberry &amp; watermelon)</li></ul>', 10, 12.5, 'more', 14, NULL, '2021-09-30 08:54:43', '2021-09-30 08:54:43', 0, 0, 0),
(193, 'AFTERNOON TEA', '<ul><li>Smoke chicken, cranberry &amp; brie tarts<br>Caramelised onion, feta &amp; mushroom cases<br>Salmon bilinis w/cucumber, cream cheese &amp; dill<br>Asparagus wrap</li></ul>', 10, 14, 'more', 14, NULL, '2021-09-30 08:55:14', '2021-09-30 08:55:14', 0, 0, 0),
(194, 'LUNCH', '<ul><li>Ham off the bone, brie, cos, tomato, gherkin &amp; beetroot relish whole grain sandwiches.<br>Smoke chicken, brie &amp; cranberry quiche<br>Marinated beef meatballs<br>Christmas themed sweet platter (brownies, tarts, strawberries &amp; shortbread)</li></ul>', 10, 16.5, 'more', 14, NULL, '2021-09-30 08:56:05', '2021-09-30 08:56:05', 0, 0, 0),
(195, 'Pettie Bagels W/ Cream Cheese, Tomato Pesto & Spinach', NULL, NULL, 5.5, 'more', 15, NULL, '2021-09-30 08:56:29', '2021-09-30 08:56:29', 0, 0, 0),
(196, 'Specialty cookies', NULL, NULL, 5.5, 'more', 16, NULL, '2021-09-30 08:57:18', '2021-09-30 08:57:18', 0, 0, 0),
(197, 'Petite bagels w/cream cheese & salmon (p/person)', NULL, 0, 4.5, 'breakfast', 5, NULL, '2021-10-05 07:36:56', '2021-11-29 00:07:32', 0, 0, 0),
(198, 'Chocolate brownie', NULL, NULL, NULL, 'tea', 4, NULL, '2021-10-05 07:52:11', '2021-10-05 07:52:11', 0, 0, 0),
(199, 'Vega sandwiches', NULL, NULL, NULL, 'lunch', 3, NULL, '2021-10-05 07:56:28', '2021-10-05 07:56:28', 0, 0, 1),
(200, 'Sausage rolls', NULL, NULL, NULL, 'lunch', 4, NULL, '2021-10-05 07:57:30', '2021-10-05 07:57:30', 0, 0, 1),
(201, 'Vegan slice', NULL, NULL, NULL, 'lunch', 5, NULL, '2021-10-05 07:59:29', '2021-10-05 07:59:29', 0, 0, 1),
(202, 'Berry shotcake', NULL, NULL, NULL, 'lunch', 5, NULL, '2021-10-05 07:59:39', '2021-10-05 07:59:39', 0, 0, 0),
(203, '2. FULL BUFFET SETUP P/Person', NULL, 20, 45, 'dinner', 3, NULL, '2021-11-25 11:34:56', '2021-11-25 11:34:56', 0, 0, 0),
(204, '2. SERVES IN DISPOSABLE FOIL TRAY P/Person', NULL, 20, 39.5, 'dinner', 3, NULL, '2021-11-25 11:35:15', '2021-11-25 11:35:15', 0, 0, 0),
(205, '3. FULL BUFFET SETUP P/Person', NULL, 20, 55, 'dinner', 3, NULL, '2021-11-25 11:35:41', '2021-11-25 11:35:41', 0, 0, 0),
(206, '3. SERVES IN DISPOSABLE FOIL TRAY P/Person', NULL, 20, 49.5, 'dinner', 3, NULL, '2021-11-25 11:35:59', '2021-11-25 11:35:59', 0, 0, 0),
(207, '4. FULL BUFFET SETUP P/Person', NULL, 20, 65, 'dinner', 3, NULL, '2021-11-25 11:36:20', '2021-11-25 11:36:20', 0, 0, 0),
(208, '4. SERVES IN DISPOSABLE FOIL TRAY P/Person', NULL, 20, 59.5, 'dinner', 3, NULL, '2021-11-25 11:36:40', '2021-11-25 11:36:40', 0, 0, 0);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2021_08_28_021818_create_banner_table', 2),
(6, '2021_08_28_043759_create_testimonial_table', 3),
(7, '2021_08_28_080435_create_cafe_table', 4),
(8, '2021_08_29_010933_create_site_table', 5),
(9, '2021_08_29_014632_create_catering_table', 6),
(10, '2021_08_29_033158_add_icons_to_catering_table', 7),
(17, '2021_09_22_025153_create_orders_table', 8),
(18, '2021_09_22_025210_create_order_details_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` enum('delivery','pick up') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `apartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_value` decimal(8,2) UNSIGNED DEFAULT NULL,
  `status` enum('pending','complete','declined','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `contact`, `order_type`, `date_time`, `apartment`, `street`, `city`, `postal_code`, `order_value`, `status`, `created_at`, `updated_at`) VALUES
(91, 'Mathew', 'mathew.fesili@gmail.com', '021572353', 'pick up', '2021-11-25 01:13:56', NULL, NULL, NULL, NULL, 15.50, 'pending', '2021-11-25 14:13:56', '2021-11-25 14:13:56'),
(92, 'Mathew Fesili', 'mathew.fesili@gmail.com', '021572353', 'pick up', '2021-11-25 02:02:17', NULL, NULL, NULL, NULL, 23.50, 'pending', '2021-11-25 15:02:17', '2021-11-25 15:02:17'),
(93, 'thanh', 'sgfd@sdfg.com', '089345687', 'pick up', '2021-11-25 02:48:47', NULL, NULL, NULL, NULL, 21.00, 'pending', '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(94, 'thanh', 'sgfd@sdfg.com', '089345687', 'pick up', '2021-11-25 02:48:47', NULL, NULL, NULL, NULL, 21.00, 'pending', '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(95, 'thanh', 'sgfd@sdfg.com', '089345687', 'pick up', '2021-11-25 02:48:47', NULL, NULL, NULL, NULL, 21.00, 'pending', '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(96, 'thanh', 'sgfd@sdfg.com', '089345687', 'pick up', '2021-11-25 02:48:47', NULL, NULL, NULL, NULL, 21.00, 'pending', '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(97, 'thanh', 'sgfd@sdfg.com', '089345687', 'pick up', '2021-11-25 02:48:47', NULL, NULL, NULL, NULL, 21.00, 'pending', '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(98, 'thanh', 'sgfd@sdfg.com', '089345687', 'pick up', '2021-11-25 02:48:47', NULL, NULL, NULL, NULL, 21.00, 'pending', '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(99, 'agsdas', 'abc@abc.com', '0123456789', 'pick up', '2021-11-25 02:49:31', NULL, NULL, NULL, NULL, 21.00, 'pending', '2021-11-25 15:49:31', '2021-11-25 15:49:31'),
(100, 'Mathew', 'matt@moanadigitalsolutions.com', '021572353', 'pick up', '2021-11-26 05:35:56', NULL, NULL, NULL, NULL, 15.50, 'pending', '2021-11-26 18:35:56', '2021-11-26 18:35:56'),
(101, 'Test', 'saka@gmail.com', '123456789', 'pick up', '2021-11-26 06:49:35', NULL, NULL, NULL, NULL, 12.50, 'pending', '2021-11-26 19:49:35', '2021-11-26 19:49:35'),
(102, 'asgd', 'dentist97.test@gmail.com', '4443949', 'pick up', '2021-11-29 09:26:52', NULL, NULL, NULL, NULL, 30.50, 'pending', '2021-11-29 22:26:52', '2021-11-29 22:26:52'),
(103, 'Mathew Fesili', 'matt@moanadigitalsolutions.com', '021572353', 'pick up', '2021-12-03 03:07:15', NULL, NULL, NULL, NULL, 64.50, 'pending', '2021-12-03 16:07:15', '2021-12-03 16:07:15'),
(104, 'Mathew Fesili', 'matt@moanadigitalsolutions.com', '021572353', 'pick up', '2021-12-03 09:11:12', NULL, NULL, NULL, NULL, 29.50, 'pending', '2021-12-03 22:11:12', '2021-12-03 22:11:12'),
(105, 'Mathew Fesili', 'matt@moanadigitalsolutions.com', '021572353', 'delivery', '2021-12-06 02:51:24', NULL, '8 Tangihua Road', NULL, '1011', 28.50, 'pending', '2021-12-06 15:51:24', '2021-12-06 15:51:24'),
(106, 'Mathew Fesili', 'matt@moanadigitalsolutions.com', '021572353', 'pick up', '2021-12-06 02:55:30', NULL, NULL, NULL, NULL, 20.00, 'pending', '2021-12-06 15:55:30', '2021-12-06 15:55:30'),
(107, 'Mathew Fesili', 'matt@moanadigitalsolutions.com', '021572353', 'pick up', '2021-12-06 06:49:37', NULL, NULL, NULL, NULL, 20.00, 'pending', '2021-12-06 19:49:37', '2021-12-06 19:49:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `catering_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `quantity` smallint(5) UNSIGNED DEFAULT NULL,
  `price` decimal(8,2) UNSIGNED DEFAULT NULL,
  `grandparent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL,
  `vegetarian` tinyint(3) UNSIGNED DEFAULT NULL,
  `gluten` tinyint(3) UNSIGNED DEFAULT NULL,
  `vegan` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `catering_id`, `name`, `content`, `quantity`, `price`, `grandparent`, `parent`, `vegetarian`, `gluten`, `vegan`, `created_at`, `updated_at`) VALUES
(186, 91, 4, 'Finger Food Style | Option 1', '<ul><li>Assorted fruit danishes</li><li>Petite filled croissants w/ cheese omelette &amp; tomato relish</li><li>Passionfruit topping &amp; yoghurt portions</li></ul>', 10, 15.50, 'breakfast', 1, 0, 0, 0, '2021-11-25 14:13:56', '2021-11-25 14:13:56'),
(187, 92, 4, 'Finger Food Style | Option 1', '<ul><li>Assorted fruit danishes</li><li>Petite filled croissants w/ cheese omelette &amp; tomato relish</li><li>Passionfruit topping &amp; yoghurt portions</li></ul>', 10, 15.50, 'breakfast', 1, 0, 0, 0, '2021-11-25 15:02:17', '2021-11-25 15:02:17'),
(188, 92, 197, 'Banana & Walnut loaf', NULL, NULL, 2.50, 'breakfast', 5, 0, 0, 0, '2021-11-25 15:02:17', '2021-11-25 15:02:17'),
(189, 92, 10, 'App / Orange Juice / Water', NULL, 20, 5.50, 'breakfast', 4, 0, 0, 0, '2021-11-25 15:02:17', '2021-11-25 15:02:17'),
(190, 93, 191, 'SWEET PLATTER', '<ul><li>Afghans<br>Xmas tarts<br>Chocolate dipped strawberries<br>Cherries<br>Brownies<br>Christmas themed cupcakes</li></ul>', 10, 15.50, 'more', 14, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(191, 95, 191, 'SWEET PLATTER', '<ul><li>Afghans<br>Xmas tarts<br>Chocolate dipped strawberries<br>Cherries<br>Brownies<br>Christmas themed cupcakes</li></ul>', 10, 15.50, 'more', 14, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(192, 93, 196, 'Specialty cookies', NULL, NULL, 5.50, 'more', 16, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(193, 95, 196, 'Specialty cookies', NULL, NULL, 5.50, 'more', 16, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(194, 94, 191, 'SWEET PLATTER', '<ul><li>Afghans<br>Xmas tarts<br>Chocolate dipped strawberries<br>Cherries<br>Brownies<br>Christmas themed cupcakes</li></ul>', 10, 15.50, 'more', 14, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(195, 94, 196, 'Specialty cookies', NULL, NULL, 5.50, 'more', 16, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(196, 96, 191, 'SWEET PLATTER', '<ul><li>Afghans<br>Xmas tarts<br>Chocolate dipped strawberries<br>Cherries<br>Brownies<br>Christmas themed cupcakes</li></ul>', 10, 15.50, 'more', 14, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(197, 96, 196, 'Specialty cookies', NULL, NULL, 5.50, 'more', 16, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(198, 97, 191, 'SWEET PLATTER', '<ul><li>Afghans<br>Xmas tarts<br>Chocolate dipped strawberries<br>Cherries<br>Brownies<br>Christmas themed cupcakes</li></ul>', 10, 15.50, 'more', 14, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(199, 97, 196, 'Specialty cookies', NULL, NULL, 5.50, 'more', 16, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(200, 98, 191, 'SWEET PLATTER', '<ul><li>Afghans<br>Xmas tarts<br>Chocolate dipped strawberries<br>Cherries<br>Brownies<br>Christmas themed cupcakes</li></ul>', 10, 15.50, 'more', 14, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(201, 98, 196, 'Specialty cookies', NULL, NULL, 5.50, 'more', 16, 0, 0, 0, '2021-11-25 15:48:47', '2021-11-25 15:48:47'),
(202, 99, 191, 'SWEET PLATTER', '<ul><li>Afghans<br>Xmas tarts<br>Chocolate dipped strawberries<br>Cherries<br>Brownies<br>Christmas themed cupcakes</li></ul>', 10, 15.50, 'more', 14, 0, 0, 0, '2021-11-25 15:49:31', '2021-11-25 15:49:31'),
(203, 99, 196, 'Specialty cookies', NULL, NULL, 5.50, 'more', 16, 0, 0, 0, '2021-11-25 15:49:31', '2021-11-25 15:49:31'),
(204, 100, 4, 'Finger Food Style | Option 1', '<ul><li>Assorted fruit danishes</li><li>Petite filled croissants w/ cheese omelette &amp; tomato relish</li><li>Passionfruit topping &amp; yoghurt portions</li></ul>', 10, 15.50, 'breakfast', 1, 0, 0, 0, '2021-11-26 18:35:56', '2021-11-26 18:35:56'),
(205, 101, 192, 'MORNING TEA', '<ul><li>Feta, spinach, onion scones<br>Sultana Pinwheels<br>Fruit kebabs (kiwifruit, grapes, rockmelon, strawberry &amp; watermelon)</li></ul>', 10, 12.50, 'more', 14, 0, 0, 0, '2021-11-26 19:49:35', '2021-11-26 19:49:35'),
(206, 102, 193, 'AFTERNOON TEA', '<ul><li>Smoke chicken, cranberry &amp; brie tarts<br>Caramelised onion, feta &amp; mushroom cases<br>Salmon bilinis w/cucumber, cream cheese &amp; dill<br>Asparagus wrap</li></ul>', 10, 14.00, 'more', 14, 0, 0, 0, '2021-11-29 22:26:52', '2021-11-29 22:26:52'),
(207, 102, 194, 'LUNCH', '<ul><li>Ham off the bone, brie, cos, tomato, gherkin &amp; beetroot relish whole grain sandwiches.<br>Smoke chicken, brie &amp; cranberry quiche<br>Marinated beef meatballs<br>Christmas themed sweet platter (brownies, tarts, strawberries &amp; shortbread)</li></ul>', 10, 16.50, 'more', 14, 0, 0, 0, '2021-11-29 22:26:52', '2021-11-29 22:26:52'),
(208, 103, 57, 'Dinner | Option 1', '<ul><li>1 carvery item</li><li>Butter &amp; herbed roasted potatoes</li><li>1 hot dish</li><li>2 salads</li><li>Gourmet bread rolls &amp; condiments</li><li>1 sweet item</li><li>Seasonal fruit salad or platter</li></ul>', 1, 29.50, 'dinner', 1, 0, 0, 0, '2021-12-03 16:07:15', '2021-12-03 16:07:15'),
(209, 103, 65, 'Roast Pork w/apple sauce', NULL, NULL, NULL, 'dinner', 4, 0, 0, 0, '2021-12-03 16:07:15', '2021-12-03 16:07:15'),
(210, 103, 73, 'Sesame glazed salmon fillet', NULL, NULL, NULL, 'dinner', 6, 0, 0, 0, '2021-12-03 16:07:15', '2021-12-03 16:07:15'),
(211, 103, 69, 'Chicken fried rice', NULL, NULL, NULL, 'dinner', 5, 0, 0, 0, '2021-12-03 16:07:15', '2021-12-03 16:07:15'),
(212, 103, 77, 'Traditional green salad', NULL, NULL, NULL, 'dinner', 7, 0, 0, 0, '2021-12-03 16:07:15', '2021-12-03 16:07:15'),
(213, 103, 77, 'Traditional green salad', NULL, NULL, NULL, 'dinner', 7, 0, 0, 0, '2021-12-03 16:07:15', '2021-12-03 16:07:15'),
(214, 103, 63, '1. FULL BUFFET SETUP P/Person', NULL, 20, 35.00, 'dinner', 3, 0, 0, 0, '2021-12-03 16:07:15', '2021-12-03 16:07:15'),
(215, 104, 57, 'Dinner | Option 1', '<ul><li>1 carvery item</li><li>Butter &amp; herbed roasted potatoes</li><li>1 hot dish</li><li>2 salads</li><li>Gourmet bread rolls &amp; condiments</li><li>1 sweet item</li><li>Seasonal fruit salad or platter</li></ul>', 1, 29.50, 'dinner', 1, 0, 0, 0, '2021-12-03 22:11:12', '2021-12-03 22:11:12'),
(216, 104, 68, 'Roast chicken w/honey + herb', NULL, NULL, NULL, 'dinner', 4, 0, 0, 0, '2021-12-03 22:11:12', '2021-12-03 22:11:12'),
(217, 104, 75, 'Seafood chowder', NULL, NULL, NULL, 'dinner', 6, 0, 0, 0, '2021-12-03 22:11:12', '2021-12-03 22:11:12'),
(218, 104, 127, 'Israeli couscous with roast vegetables &  halloumi', NULL, NULL, NULL, 'dinner', 5, 0, 0, 0, '2021-12-03 22:11:12', '2021-12-03 22:11:12'),
(219, 104, 138, 'Caesar salad', NULL, NULL, NULL, 'dinner', 7, 0, 0, 0, '2021-12-03 22:11:12', '2021-12-03 22:11:12'),
(220, 104, 143, 'Turkey, quinoa & kale Salad', NULL, NULL, NULL, 'dinner', 7, 0, 0, 0, '2021-12-03 22:11:12', '2021-12-03 22:11:12'),
(221, 105, 39, 'Lunch | Option 3', '<ul><li>Cajun chicken, spinach, brie, tomato &amp; aioli panini’s</li><li>Mushroom cases</li><li>Salmon &amp; cream cheese quiches</li><li>Marinated beef meatballs on skewers</li><li>Caramel oat slice</li><li>Seasonal fruit platter</li></ul>', 10, 19.50, 'lunch', 1, 0, 0, 0, '2021-12-06 15:51:24', '2021-12-06 15:51:24'),
(222, 105, 41, 'Caesar salad w/ aioli, croutons, cos, bacon, poached egg, parmesan & aioli', NULL, NULL, 4.50, 'lunch', 2, 0, 0, 0, '2021-12-06 15:51:24', '2021-12-06 15:51:24'),
(223, 105, 42, 'Sesame beef salad w/ cucumber, capsicum,  carrot, daikon, cherry tomatoes & sesame  dressing', NULL, NULL, 4.50, 'lunch', 2, 0, 0, 0, '2021-12-06 15:51:24', '2021-12-06 15:51:24'),
(224, 106, 37, 'Lunch | Option 1', '<ul><li>Filled croissants w/ chicken, salad, brie &amp; cranberry</li><li>Vegetarian quiches w/ feta, spinach &amp; tomato</li><li>Chocolate brownies</li><li>Seasonal fruit platter</li></ul>', 15, 15.50, 'lunch', 1, 0, 0, 0, '2021-12-06 15:55:30', '2021-12-06 15:55:30'),
(225, 106, 41, 'Caesar salad w/ aioli, croutons, cos, bacon, poached egg, parmesan & aioli', NULL, NULL, 4.50, 'lunch', 2, 0, 0, 0, '2021-12-06 15:55:30', '2021-12-06 15:55:30'),
(226, 107, 37, 'Lunch | Option 1', '<ul><li>Filled croissants w/ chicken, salad, brie &amp; cranberry</li><li>Vegetarian quiches w/ feta, spinach &amp; tomato</li><li>Chocolate brownies</li><li>Seasonal fruit platter</li></ul>', 10, 15.50, 'lunch', 1, 0, 0, 0, '2021-12-06 19:49:37', '2021-12-06 19:49:37'),
(227, 107, 41, 'Caesar salad w/ aioli, croutons, cos, bacon, poached egg, parmesan & aioli', NULL, NULL, 4.50, 'lunch', 2, 0, 0, 0, '2021-12-06 19:49:37', '2021-12-06 19:49:37');

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
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site`
--

CREATE TABLE `site` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortinfo` varchar(2555) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `site`
--

INSERT INTO `site` (`id`, `contact`, `email`, `address`, `shortinfo`, `facebook`, `instagram`, `logo`, `created_at`, `updated_at`) VALUES
(1, '09-973 5231', 'info@upcafe.co.nz', 'Level 1/8 Albert Street, Auckland CBD, Auckland 1010', 'Cafe providing breakfast, lunch and dinner. Fully licenced bar with catering and private functions services. Takeaway available, delivery or pickup', 'https://www.facebook.com/upcafeakl', 'https://www.instagram.com/up_cafe/?hl=en', 'logo.png', NULL, '2021-12-03 11:59:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `testimonial`
--

CREATE TABLE `testimonial` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'M Owen', 'Great service and food will be going back before I go home to  Perth', '2021-08-28 07:41:58', '2021-10-04 08:12:52'),
(3, 'M Horn', 'Thanks Up Cafe. The food we ordered was so tasty and delicious. Highly recommend for Buffet Catering. Food was hot and reasonably priced. Received nothing but 10Star feedback from our guests who loved the food. Highly highly Recommend', '2021-08-29 05:15:53', '2021-10-04 08:13:21'),
(4, 'A Papa', 'Awesome kai, great company and bubbles. Lovely start to this year\'s Mother\'s Day 😉', '2021-08-29 05:16:39', '2021-10-04 08:13:41'),
(5, 'A Komiti', 'Thank you so much Up Cafe for catering my husbands graduation dinner. So many good things, the location, people but most importantly, the Food was scrumptious and in abundance.', '2021-08-29 05:17:07', '2021-10-04 08:14:21');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Upcafe Admin', 'admin@upcafe.com', '2021-08-28 01:33:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6q5x4n0QfdmcJ9kc20Zo8wuTNB8Jd7LNf2Bc7kTxSMkr0zCxJNIvVdVoFm3H', '2021-08-28 01:33:20', '2021-08-28 01:33:20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cafe`
--
ALTER TABLE `cafe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_catering_id_foreign` (`catering_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `testimonial`
--
ALTER TABLE `testimonial`
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
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `cafe`
--
ALTER TABLE `cafe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `catering`
--
ALTER TABLE `catering`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `site`
--
ALTER TABLE `site`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_catering_id_foreign` FOREIGN KEY (`catering_id`) REFERENCES `catering` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
