-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 23, 2023 at 08:05 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grarpg`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `edytor`
--

CREATE TABLE `edytor` (
  `id` int(11) NOT NULL,
  `lokacja` text NOT NULL,
  `opis` tinytext NOT NULL,
  `wybór1` tinytext NOT NULL,
  `wybór2` tinytext NOT NULL,
  `zdjecie` tinytext NOT NULL,
  `dzwiek` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `edytor`
--

INSERT INTO `edytor` (`id`, `lokacja`, `opis`, `wybór1`, `wybór2`, `zdjecie`, `dzwiek`) VALUES
(1, 'Wioska Amara', 'Przybywasz do spokojnej wioski Amara, otoczonej malowniczymi lasami. W oddali słychać śpiew ptaków i szum strumyka.', 'Udaj się do sklepu z magicznymi ziołami', 'Rozmów z mieszkańcami wioski', '1.jpg', '1.mp3'),
(2, 'Sklep z magicznymi ziołami', 'Wchodzisz do starożytnego sklepu pełnego słoików z tajemniczymi ziołami. W powietrzu unosi się zapach przypraw i magii.', 'Kup miksturę zdrowia', 'Przeczytaj zakazane zwoje', '2.jpg', '2.mp3'),
(3, 'Zabłąkane ruiny', 'Stajesz przed zrujnowanymi murami starożytnych ruin. Ciemność otacza cię, ale w oddali widać tajemniczą poświatę.', 'Wejdź do środka', 'Kontynuuj podróż', '3.jpg', '3.mp3'),
(4, 'Złowieszczy Mroczny Las', 'Wkraczasz w przerażający las, pełen czarnych drzew i cieni. W powietrzu panuje niepokojąca cisza, a chłód przenika do szpiku kości.', 'Idź ścieżką na wprost', 'Omin potężne drzewo i skręć w lewo', '4.jpg', '4.mp3');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `edytor`
--
ALTER TABLE `edytor`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `edytor`
--
ALTER TABLE `edytor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
