-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2017 at 04:54 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-digikala`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_ename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `cat_ename`, `parent_id`, `img`) VALUES
(6, 'موبایل', 'Mobile', 5, '1507301607.png'),
(5, 'کالای دیجیتال', 'Electronic-Devices', 0, NULL),
(7, 'گوشی موبایل', 'mobile-phone', 6, NULL),
(8, 'تبلت و کتابخوان', 'Tablet-EBook-Reader', 5, '1507300239.png'),
(9, 'تبلت', 'tablet', 8, ''),
(11, 'لوازم خانگی', 'Home-and-Kitchen', 0, NULL),
(12, 'زیبایی و سلامت', 'Personal-Appliance', 0, NULL),
(13, 'فرهنگ و هنر', 'Book-And-Media', 0, NULL),
(14, 'ورزش و سرگرمی', 'Sport-Entertainment', 0, NULL),
(15, 'مادر و کودک', 'Mother-and-Child', 0, NULL),
(16, 'ابزار و الکتریک', 'Tools', 0, NULL),
(17, 'وسایل نقلیه و لوازم', 'Vehicles', 0, NULL),
(18, 'Apple', 'tablet_Apple', 9, NULL),
(19, 'Samsung', 'tablet_Samsung', 9, NULL),
(20, 'Microsoft', 'tablet_Microsoft', 9, NULL),
(21, 'Asus', 'tablet_Asus', 9, NULL),
(22, 'Lenovo', 'tablet_Lenovo', 9, NULL),
(23, 'Huawei', 'tablet_Huawei', 9, NULL),
(24, 'Amazon', 'tablet_Amazon', 9, NULL),
(25, 'Acer', 'tablet_Acer', 9, NULL),
(26, 'Dell', 'tablet_Dell', 9, NULL),
(27, 'LG', 'tablet_LG', 9, NULL),
(28, 'iLife', 'tablet_iLife', 9, NULL),
(29, 'nokia', 'tablet_nokia', 9, NULL),
(30, 'HTC', 'tablet_HTC', 9, NULL),
(31, 'براساس سایز', 'tablet', 8, NULL),
(32, 'لوازم آرایشی', 'Beauty', 12, NULL),
(33, 'Apple', 'filter_brand_17', 7, NULL),
(34, 'Samsung', 'filter_brand_18', 7, NULL),
(60, 'بر اساس سیستم عامل', 'mobile-phone', 6, NULL),
(61, 'اندروید', 'filter_type_23', 60, NULL),
(62, 'iOS', 'filter_type_22', 60, NULL),
(63, 'ویندوز فون', 'filter_type_24', 60, NULL),
(64, 'سایر سیستم عامل ها', 'filter_type_21', 60, NULL),
(65, 'LG', 'filter_brand_19', 7, NULL),
(66, 'Huawei', 'filter_brand_52', 7, NULL),
(67, 'HTC', 'filter_brand_53', 7, NULL),
(68, 'Sony', 'filter_brand_47', 7, NULL),
(69, 'Microsoft', 'filter_brand_55', 7, NULL),
(70, 'ASUS', 'filter_brand_50', 7, NULL),
(71, 'Lenovo', 'filter_brand_57', 7, NULL),
(72, 'Motorola', 'filter_brand_59', 7, NULL),
(73, 'SonyEricsson', 'filter_brand_58', 7, NULL),
(74, 'Nokia', 'filter_brand_56', 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cat_product`
--

CREATE TABLE `cat_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cat_product`
--

INSERT INTO `cat_product` (`id`, `product_id`, `cat_id`) VALUES
(34, 11, 6),
(33, 11, 5),
(32, 10, 7),
(31, 10, 6),
(30, 10, 5),
(35, 11, 7),
(36, 11, 33),
(37, 12, 5),
(38, 12, 6),
(39, 12, 7),
(40, 12, 33),
(41, 13, 5),
(42, 13, 6),
(43, 13, 7),
(44, 13, 33);

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `color_name`, `color_code`, `product_id`) VALUES
(9, 'مشکی', '000000', 10),
(8, 'سفید', 'FFFFFF', 10);

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `filed` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `cat_id`, `name`, `ename`, `parent_id`, `filed`) VALUES
(16, 7, 'برند و سازنده کالا', 'brand', 0, 1),
(17, 7, 'اپل', NULL, 16, 1),
(18, 7, 'سامسونگ', NULL, 16, 1),
(19, 7, 'ال جی', NULL, 16, 1),
(20, 7, 'بر اساس نوع', 'type', 0, 1),
(21, 7, 'ساير سيستم عامل ها', NULL, 20, 1),
(22, 7, 'سيستم عامل iOS', NULL, 20, 1),
(23, 7, 'سيستم عامل اندرويد', NULL, 20, 1),
(24, 7, 'سيستم عامل ويندوز فون', NULL, 20, 1),
(25, 7, 'تعداد سيم کارت', 'attribute', 0, 1),
(26, 7, 'تک', NULL, 25, 1),
(27, 7, 'دو', NULL, 25, 1),
(28, 7, 'سه', NULL, 25, 1),
(29, 7, 'حافظه داخلي', NULL, 0, 1),
(30, 7, '128 گيگابايت', NULL, 29, 1),
(31, 7, '128 مگابايت', NULL, 29, 1),
(32, 7, '16 گيگابايت', NULL, 29, 1),
(33, 7, '1 گيگابايت', NULL, 29, 1),
(38, 7, 'سفید', NULL, 37, 2),
(47, 7, 'سوني', NULL, 16, 1),
(45, 7, 'مشکی@000000', NULL, 43, 2),
(44, 7, 'سفید@FFFFFF', NULL, 43, 2),
(46, 7, 'زرد@FFD800', NULL, 43, 2),
(43, 7, 'بر اساس رنگ', 'attribute', 0, 2),
(48, 7, 'دل', NULL, 16, 1),
(49, 7, 'ايسر', NULL, 16, 1),
(50, 7, 'ایسوس', NULL, 16, 1),
(51, 7, 'نوکیا', NULL, 16, 1),
(52, 7, 'هوآوي', NULL, 16, 1),
(53, 7, 'اچ تی سی', NULL, 16, 1),
(54, 7, 'سوني', NULL, 16, 1),
(55, 7, 'مایکروسافت', NULL, 16, 1),
(56, 7, 'نوکیا', NULL, 16, 1),
(57, 7, 'لنوو', NULL, 16, 1),
(58, 7, 'سونی اریکسون', NULL, 16, 1),
(59, 7, 'موتورولا', NULL, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filed` smallint(6) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `cat_id`, `name`, `filed`, `parent_id`) VALUES
(13, 7, 'قطع سيم کارت', 1, 11),
(11, 7, 'مشخصات کلي', 0, 0),
(12, 7, 'تعداد سيم کارت', 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2017_10_06_052235_create_category_table', 2),
(5, '2017_10_06_174913_create_slider_tabel', 3),
(7, '2017_10_06_200125_create_product_tabel', 4),
(8, '2017_10_07_065303_create_cat_product_table', 5),
(9, '2017_10_07_072155_create_color_product_table', 6),
(10, '2017_10_08_093144_create_product_image', 7),
(12, '2017_10_16_145151_create_filter_table', 8),
(13, '2017_10_17_083557_create_item_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `discounts` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `product_status` smallint(6) NOT NULL,
  `bon` smallint(6) DEFAULT NULL,
  `show_product` smallint(6) DEFAULT NULL,
  `product_number` int(11) DEFAULT NULL,
  `order_product` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `special` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `code`, `title_url`, `code_url`, `price`, `discounts`, `view`, `text`, `product_status`, `bon`, `show_product`, `product_number`, `order_product`, `keywords`, `description`, `special`, `created_at`, `updated_at`) VALUES
(10, 'گوشي موبايل سامسونگ مدل Galaxy J7 Prime SM-G610FD دو سيم کارت', 'Samsung Galaxy J7 Prime SM-G610FD Dual SIM Mobile Phone', 'گوشي-موبايل-سامسونگ-مدل-Galaxy-J7-Prime-SMG610FD-دو-سيم-کارت', 'Samsung-Galaxy-J7-Prime-SMG610FD-Dual-SIM-Mobile-Phone', 949000, 31000, 0, NULL, 1, 4, 1, NULL, 0, NULL, NULL, 1, '2017-10-08 05:17:11', '2017-10-08 05:17:11'),
(11, 'گوشي موبايل اپل مدل iPhone 6s ظرفيت 64 گيگابايت', 'Apple iPhone 6s 64GB Mobile Phone', 'گوشي-موبايل-اپل-مدل-iPhone-6s-ظرفيت-64-گيگابايت', 'Apple-iPhone-6s-64GB-Mobile-Phone', 2449000, 11000, 0, NULL, 1, NULL, 1, NULL, 0, NULL, NULL, 0, '2017-10-21 11:38:07', '2017-10-21 11:38:07'),
(12, 'گوشي موبايل اپل مدل iPhone 7 Plus ظرفيت 32 گيگابايت', 'Apple iPhone 7 Plus 32GB Mobile Phone', 'گوشي-موبايل-اپل-مدل-iPhone-7-Plus-ظرفيت-32-گيگابايت', 'Apple-iPhone-7-Plus-32GB-Mobile-Phone', 3099000, NULL, 0, NULL, 1, NULL, 1, NULL, 0, NULL, NULL, 0, '2017-10-21 12:54:51', '2017-10-21 12:54:51'),
(13, 'گوشي موبايل اپل مدل iPhone 7 ظرفيت 128 گيگابايت', 'Apple iPhone 7 128GB Mobile Phone', 'گوشي-موبايل-اپل-مدل-iPhone-7-ظرفيت-128-گيگابايت', 'Apple-iPhone-7-128GB-Mobile-Phone', 3160000, 50000, 0, NULL, 1, NULL, 1, NULL, 0, NULL, NULL, 0, '2017-10-21 12:58:26', '2017-10-21 12:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `url`) VALUES
(1, 10, '2601744190892df297417f225fa4cad2.jpg'),
(2, 10, 'ea00c954654cc41c93b12b490aa55a1f.jpg'),
(8, 11, 'c17ab5a5d24eab5fe8f5b6df40f8b71b.jpg'),
(9, 12, '82011bd42ee3d9d3ef0d74e02a5c72c6.jpg'),
(10, 13, 'd11825f4d0c10ac8ccd01404b4ab3fc2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `url`, `img`) VALUES
(2, 'کفش ورزشی', 'http://localhost/laravel-digikala', '1507324089.jpg'),
(3, 'انواع کنسول', 'http://localhost/laravel-digikala', '1508510805.jpg'),
(4, 'دوربین و لوازم جانبی', 'http://localhost/laravel-digikala', '1508518806.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat_product`
--
ALTER TABLE `cat_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `cat_product`
--
ALTER TABLE `cat_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
