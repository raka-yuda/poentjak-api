-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2020 pada 10.32
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name_author` varchar(255) NOT NULL,
  `img_author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `author`
--

INSERT INTO `author` (`id`, `name_author`, `img_author`) VALUES
(1, 'Yuda', 'https://images.pexels.com/photos/594610/pexels-photo-594610.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
(3, 'Sarah', 'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `img_article` varchar(255) NOT NULL,
  `title_article` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog`
--

INSERT INTO `blog` (`id`, `img_article`, `title_article`, `article`, `post_date`, `id_author`) VALUES
(1, 'https://images.pexels.com/photos/1680140/pexels-photo-1680140.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'Happiest At The Beach', 'Water, as an element, has a calming effect and gives you a sense of clarity. The best vacation spots across the world are surrounded by incredible water bodies. From Maldives to Barbados, countless people visit these regions to let their worries drift away.\r\nUnderstandably so. Because beaches have a way of instilling tranquility with leisure -allowing us to let go of our worries and problems. For ages, the beach has been the place to take a break from reality, triggering contentment and bringing out our inner child.\r\n', '2020-03-24 04:52:52', 1),
(2, 'https://images.pexels.com/photos/391522/pexels-photo-391522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 'Painting the sky', 'I always enjoy painting the sky.\r\nI imagine a magic pencil on the tip of my finger or in the line of my vision, with which I put blue around here, green over there and purple on the other side.\r\nThe sky really improves when you paint it the way you like it.\r\nSometimes I run out of ideas, then I blow a few soap bubbles and get inspired by the wonderful colors of the sky reflected in them, it’s like charging my imagination to the fullest.\r\nThen I take the pencil again and give free rein to the passion that drives me to rethink the sky. Because the sky is mine and I don’t understand why it has to be the color everyone says it is. I want my sky with large portions of cobalt blue, but full of small bright yellow pints. And just under the blue ones, green ones like those of my uncle Cholo’s pasture; and among the green, some beautiful white, black, brown and yellow balls, like the cattle that graze happily in that beautiful land.\r\nBecause the sky encompasses my life, my memories and my desires and if I want it to be black with a light blue jasper and white as the night of rain or white with celestial flashes like the sunrises on the mountain, then that color will be, because it is mine.\r\nBut if you want, I can share it with you. You can enter wherever you want, in my sky there is no gravity. You can also take out your own pencil and put the colors you want, my sky is open to all colors and all strokes, because it is mine and mine is yours.', '2020-03-21 17:00:00', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `place` varchar(3) DEFAULT NULL,
  `booked_name` varchar(255) DEFAULT NULL,
  `booked_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ticket`
--

INSERT INTO `ticket` (`id`, `place`, `booked_name`, `booked_date`) VALUES
(1, 'J1', 'Yuda', '2020-02-04 20:00:00'),
(2, 'E1', 'Yuda', '2020-02-05 00:00:00'),
(3, 'A1', 'Yuda', '2020-02-11 00:00:00'),
(4, 'G1', 'Yuda', '2020-02-12 00:00:00'),
(5, 'A2', 'Yuda', '2020-02-15 00:00:00'),
(6, 'B3', 'Yuda', '2020-02-19 00:00:00'),
(7, 'C6', 'Yuda', '2020-02-28 00:00:00'),
(8, 'E1', 'Yuda', '2020-02-10 00:00:00'),
(9, 'F1', 'Yuda', '2020-02-05 22:00:00'),
(10, 'G5', 'Yuda', '2020-02-03 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_author` (`id_author`);

--
-- Indeks untuk tabel `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `fk_author` FOREIGN KEY (`id_author`) REFERENCES `author` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
