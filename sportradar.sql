-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 11:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportradar`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `age`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Patrick Okuneva MD', 60, '275 Ondricka Trail\nPort Alexandrohaven, ND 79515-5446', '2019-11-14 21:29:15', '2019-11-14 21:29:15'),
(2, 'Ephraim Upton', 72, '1113 Carrie Turnpike\nLornachester, CO 78154-1505', '2019-11-14 21:29:15', '2019-11-14 21:29:15'),
(3, 'Columbus Kohler', 95, '90097 Jacobs Islands\nHillsview, KY 53702-0372', '2019-11-14 21:29:15', '2019-11-14 21:29:15'),
(4, 'Dr. Kyra Wilderman', 67, '8860 Padberg Flat\nPort Adityachester, TN 17096-3646', '2019-11-14 21:29:15', '2019-11-14 21:29:15'),
(5, 'Hazel Hane', 49, '445 Clint Falls\nKuhlmanhaven, WY 17665', '2019-11-14 21:29:15', '2019-11-14 21:29:15'),
(6, 'Autumn Bergnaum Sr.', 90, '1121 Boehm Drives\nPort Domenic, LA 22423', '2019-11-14 21:29:15', '2019-11-14 21:29:15'),
(7, 'Dock Dooley DDS', 74, '2921 Zieme Flat\nThaddeusport, ID 52633', '2019-11-14 21:29:15', '2019-11-14 21:29:15'),
(8, 'Flavio Donnelly', 26, '9172 Tromp Ridges\nSelmertown, VT 87296', '2019-11-14 21:29:15', '2019-11-14 21:29:15'),
(9, 'Earlene McClure', 61, '13930 Mills Road Apt. 516\nLarkinborough, IA 00586', '2019-11-14 21:29:15', '2019-11-14 21:29:15'),
(10, 'Delmer Hoeger', 51, '8260 Jacobson Camp\nNew Dejaville, NJ 16343', '2019-11-14 21:29:15', '2019-11-14 21:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author_id`, `name`, `release_date`, `created_at`, `updated_at`) VALUES
(1, 6, 'Id quia voluptatem.', '1972-05-11', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(2, 7, 'Magnam excepturi.', '1996-02-28', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(3, 3, 'Excepturi et ipsam.', '1982-07-24', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(4, 5, 'Sed neque facilis.', '1976-11-22', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(5, 8, 'Autem quibusdam et.', '1994-05-04', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(6, 2, 'Tenetur officia.', '2019-07-20', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(7, 5, 'Maxime officiis.', '1987-06-27', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(8, 8, 'Aut pariatur.', '1995-06-26', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(9, 1, 'Molestiae molestiae.', '1976-01-24', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(10, 1, 'Alias optio.', '1998-01-05', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(11, 2, 'Nisi fugit quaerat.', '2002-09-24', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(12, 5, 'Earum cupiditate.', '1986-04-26', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(13, 7, 'Aliquid dolor.', '2007-04-29', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(14, 4, 'Iusto quis ab sint.', '1981-01-23', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(15, 8, 'Nihil velit non et.', '1998-01-28', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(16, 4, 'Tempora esse.', '1971-02-13', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(17, 5, 'Qui et dignissimos.', '2018-01-28', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(18, 8, 'Quam tempore ut.', '2012-08-21', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(19, 3, 'Qui architecto.', '1994-01-13', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(20, 9, 'Debitis dolor.', '1999-06-02', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(21, 10, 'Voluptas quasi esse.', '1992-07-07', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(22, 1, 'Et quia doloremque.', '1974-09-23', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(23, 8, 'Sed tenetur placeat.', '1998-01-24', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(24, 1, 'Et sed veniam.', '1977-08-26', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(25, 9, 'Et dolores sint.', '2015-03-16', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(26, 10, 'Autem neque.', '1988-05-15', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(27, 4, 'Et eos ratione.', '2015-11-16', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(28, 7, 'Tempora dolor.', '1991-08-22', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(29, 8, 'Distinctio.', '1984-10-13', '2019-11-14 21:29:28', '2019-11-14 21:29:28'),
(30, 7, 'Ullam corrupti.', '1978-09-24', '2019-11-14 21:29:28', '2019-11-14 21:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_11_14_091109_create_authors_table', 1),
(2, '2019_11_14_092335_create_books_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_author_id_foreign` (`author_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
