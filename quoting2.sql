-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Nov 06, 2018 alle 09:08
-- Versione del server: 10.1.36-MariaDB
-- Versione PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quoting2`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `disponibilis`
--

CREATE TABLE `disponibilis` (
  `idD` int(10) UNSIGNED NOT NULL,
  `fileD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dalD` date NOT NULL,
  `alD` date NOT NULL,
  `descrizioneD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `disponibilis`
--

INSERT INTO `disponibilis` (`idD`, `fileD`, `dalD`, `alD`, `descrizioneD`) VALUES
(1, 'pippo.txt', '2018-11-06', '2018-11-15', 'aaa');

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_28_084621_create_multiplas_table', 2),
(4, '2018_10_29_115439_create_scommessas_table', 2),
(5, '2018_10_30_072606_create_risultatis_table', 3),
(6, '2018_11_06_070350_create_disponibilis_table', 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `multiplas`
--

CREATE TABLE `multiplas` (
  `id` int(10) UNSIGNED NOT NULL,
  `idScommessa` int(11) NOT NULL,
  `chiave` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quota` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `multiplas`
--

INSERT INTO `multiplas` (`id`, `idScommessa`, `chiave`, `tipo`, `value`, `quota`) VALUES
(1, 1, 'Informatica_20181031_Gallina', 'ESATTO', '9', 1.65);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `risultatis`
--

CREATE TABLE `risultatis` (
  `id` int(10) UNSIGNED NOT NULL,
  `chiave` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `risultato` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `risultatis`
--

INSERT INTO `risultatis` (`id`, `chiave`, `risultato`) VALUES
(1, 'Informatica_20181031_Gallina', '9');

-- --------------------------------------------------------

--
-- Struttura della tabella `scommessas`
--

CREATE TABLE `scommessas` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUtente` int(11) NOT NULL,
  `betCoin` int(11) NOT NULL,
  `data` date NOT NULL,
  `pagata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `scommessas`
--

INSERT INTO `scommessas` (`id`, `idUtente`, `betCoin`, `data`, `pagata`) VALUES
(1, 1, 100, '2018-10-28', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coin` int(11) NOT NULL DEFAULT '5000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `coin`) VALUES
(1, 'Zexal0807', 'Gallinar00@gmail.com', NULL, '$2y$10$hZZK5QtT/QoWGh4/uWsP9efN.5K3wsnctg4wQMGUT71tZOWn6.Swu', NULL, '2018-10-29 10:36:46', '2018-10-29 10:36:46', 5000);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `disponibilis`
--
ALTER TABLE `disponibilis`
  ADD PRIMARY KEY (`idD`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `multiplas`
--
ALTER TABLE `multiplas`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `risultatis`
--
ALTER TABLE `risultatis`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `scommessas`
--
ALTER TABLE `scommessas`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `disponibilis`
--
ALTER TABLE `disponibilis`
  MODIFY `idD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `multiplas`
--
ALTER TABLE `multiplas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `risultatis`
--
ALTER TABLE `risultatis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `scommessas`
--
ALTER TABLE `scommessas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
