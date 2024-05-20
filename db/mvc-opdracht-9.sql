-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 20 mei 2024 om 19:33
-- Serverversie: 8.3.0
-- PHP-versie: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc-opdracht-9`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `allergeens`
--

DROP TABLE IF EXISTS `allergeens`;
CREATE TABLE IF NOT EXISTS `allergeens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naam` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Omschrijving` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `allergeens`
--

INSERT INTO `allergeens` (`id`, `Naam`, `Omschrijving`, `created_at`, `updated_at`) VALUES
(1, 'Gluten', 'Dit product bevat gluten', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(2, 'Gelatine', 'Dit product bevat gelatine', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(3, 'AZO-Kleurstof', 'Dit product bevat AZO-kleurstoffen', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(4, 'Lactose', 'Dit product bevat lactose', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(5, 'Soja', 'Dit product bevat soja', '2024-05-20 17:23:51', '2024-05-20 17:23:51');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Straat` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Huisnummer` int NOT NULL,
  `Postcode` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Stad` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `contacts`
--

INSERT INTO `contacts` (`id`, `Straat`, `Huisnummer`, `Postcode`, `Stad`, `created_at`, `updated_at`) VALUES
(1, 'Van Gilslaan', 34, '1045CB', 'Hilvarenbeek', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(2, 'Den Dolderpad', 2, '1067RC', 'Utrecht', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(3, 'Fredo Raalteweg', 257, '1236OP', 'Nijmegen', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(4, 'Bertrand Russellhof', 21, '2034AP', 'Den Haag', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(5, 'Leon van Bonstraat', 213, '145XC', 'Lunteren', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(6, 'Bea van Lingenlaan', 234, '2197FG', 'Sint Pancras', '2024-05-20 17:23:51', '2024-05-20 17:23:51');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb3_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `leveranciers`
--

DROP TABLE IF EXISTS `leveranciers`;
CREATE TABLE IF NOT EXISTS `leveranciers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naam` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ContactPersoon` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `LeverancierNummer` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Mobiel` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `contact_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `leveranciers`
--

INSERT INTO `leveranciers` (`id`, `Naam`, `ContactPersoon`, `LeverancierNummer`, `Mobiel`, `contact_id`, `created_at`, `updated_at`) VALUES
(1, 'Venco', 'Bert van Linge', 'L1029384719', '06-28493827', 1, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(2, 'Astra Sweets', 'Jasper del Monte', 'L1029284315', '06-39398734', 2, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(3, 'Haribo', 'Sven Stalman', 'L1029324748', '06-24383291', 3, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(4, 'Basset', 'Joyce Stelterberg', 'L1023845773', '06-48293823', 4, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(5, 'De Bron', 'Remco Veenstra', 'L1023857736', '06-34291234', 5, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(6, 'Quality Street', 'Johan Nooij', 'L1029234586', '06-23458456', 6, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(7, 'Hom Ken Food', 'Hom Ken', 'L1029234599', '06-23458477', NULL, '2024-05-20 17:23:51', '2024-05-20 17:23:51');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `magazijns`
--

DROP TABLE IF EXISTS `magazijns`;
CREATE TABLE IF NOT EXISTS `magazijns` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `VerpakkingsEenheid` double NOT NULL,
  `AantalAanwezig` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `magazijns`
--

INSERT INTO `magazijns` (`id`, `product_id`, `VerpakkingsEenheid`, `AantalAanwezig`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 453, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(2, 2, 2.5, 400, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(3, 3, 5, 1, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(4, 4, 1, 800, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(5, 5, 3, 234, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(6, 6, 2, 345, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(7, 7, 1, 795, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(8, 8, 10, 233, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(9, 9, 2.5, 123, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(10, 10, 3, NULL, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(11, 11, 2, 367, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(12, 12, 1, 467, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(13, 13, 5, 20, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(14, 14, 7, 35, '2024-05-20 17:23:51', '2024-05-20 17:23:51');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_31_131906_create_magazijns_table', 1),
(5, '2024_03_31_132151_create_products_table', 1),
(6, '2024_03_31_132304_create_product_per_allergeens_table', 1),
(7, '2024_03_31_132418_create_allergeens_table', 1),
(8, '2024_03_31_132624_create_product_per_leveranciers_table', 1),
(9, '2024_03_31_132822_create_leveranciers_table', 1),
(10, '2024_03_31_133030_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naam` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Barcode` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `Naam`, `Barcode`, `created_at`, `updated_at`) VALUES
(1, 'Mintnopjes', '8719587231278', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(2, 'Schoolkrijt', '8719587326713', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(3, 'Honingdrop', '8719587327836', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(4, 'Zure Beren', '8719587321441', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(5, 'Cola Flesjes', '8719587321237', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(6, 'Turtles', '8719587322245', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(7, 'Witte Muizen', '8719587328256', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(8, 'Reuzen Slangen', '8719587325641', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(9, 'Zoute Rijen', '8719587322739', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(10, 'Winegums', '8719587327527', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(11, 'Drop Munten', '8719587322345', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(12, 'Kruis Drop', '8719587322265', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(13, 'Zoute Ruitjes', '8719587323256', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(14, 'Drop ninja\'s', '8719587323277', '2024-05-20 17:23:51', '2024-05-20 17:23:51');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_per_allergeens`
--

DROP TABLE IF EXISTS `product_per_allergeens`;
CREATE TABLE IF NOT EXISTS `product_per_allergeens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `allergeen_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `product_per_allergeens`
--

INSERT INTO `product_per_allergeens` (`id`, `product_id`, `allergeen_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(2, 1, 1, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(3, 1, 3, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(4, 3, 4, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(5, 6, 5, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(6, 9, 2, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(7, 9, 5, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(8, 10, 2, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(9, 12, 4, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(10, 13, 1, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(11, 13, 4, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(12, 13, 5, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(13, 14, 5, '2024-05-20 17:23:51', '2024-05-20 17:23:51');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_per_leveranciers`
--

DROP TABLE IF EXISTS `product_per_leveranciers`;
CREATE TABLE IF NOT EXISTS `product_per_leveranciers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `leverancier_id` int NOT NULL,
  `product_id` int NOT NULL,
  `DatumLevering` date NOT NULL,
  `Aantal` int NOT NULL,
  `DatumEerstVolgendeLevering` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `product_per_leveranciers`
--

INSERT INTO `product_per_leveranciers` (`id`, `leverancier_id`, `product_id`, `DatumLevering`, `Aantal`, `DatumEerstVolgendeLevering`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-04-09', 23, '2023-04-16', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(2, 1, 1, '2023-04-18', 21, '2023-04-25', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(3, 1, 2, '2023-04-09', 12, '2023-04-16', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(4, 1, 3, '2023-04-10', 11, '2023-04-17', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(5, 2, 4, '2023-04-14', 16, '2023-04-21', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(6, 2, 4, '2023-04-21', 23, '2023-04-28', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(7, 2, 5, '2023-04-14', 45, '2023-04-21', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(8, 2, 6, '2023-04-14', 30, '2023-04-21', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(9, 3, 7, '2023-04-12', 12, '2023-04-19', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(10, 3, 7, '2023-04-19', 23, '2023-04-26', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(11, 3, 8, '2023-04-10', 12, '2023-04-17', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(12, 3, 9, '2023-04-11', 1, '2023-04-18', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(13, 4, 10, '2023-04-16', 24, '2023-04-30', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(14, 5, 11, '2023-04-10', 47, '2023-04-17', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(15, 5, 11, '2023-04-19', 60, '2023-04-26', '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(16, 5, 12, '2023-04-11', 45, NULL, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(17, 5, 13, '2023-04-12', 23, NULL, '2024-05-20 17:23:51', '2024-05-20 17:23:51'),
(18, 7, 14, '2023-04-14', 20, NULL, '2024-05-20 17:23:51', '2024-05-20 17:23:51');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb3_unicode_ci,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oz94O2Lg2Qt7EmkM9XAQkAn6sW8AS6rCdsEYxSDe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUdYSVdhMU9uMmlzVGVCUDlDU3o0V3JxVkJEU09wNEpVcVJTbjgzYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zcGVjaWZpY2F0aWUvaW5kZXgvMS8yMDIzLTA0LTA4LzIwMjMtMDQtMTkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1716233150);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
