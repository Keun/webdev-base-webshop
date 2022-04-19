-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 21 apr 2021 om 14:07
-- Serverversie: 5.7.25
-- PHP-versie: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`category_id`, `name`, `description`, `active`) VALUES
(1, 'tafellamp', 'Tafellampen zijn binnenlampen voor op tafel.', 1),
(2, 'buitenlamp', 'Buitenlampen zijn lampen voor buiten en in de tuin.', 1),
(3, 'designlamp', 'Designlampen zijn voor binnen en zijn ontworpen door een designer.', 1),
(4, 'bureaulamp', 'Bureaulampen zijn lampen voor binnen die speciaal geschikt zijn voor op een bureau of werkplek.', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `color` varchar(255) NOT NULL,
  `weight` decimal(6,2) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `category_id`, `price`, `color`, `weight`, `active`) VALUES
(1, 'arstid_voorbeeld', 'Een prachtige designlamp van de welbekende designer Wolle-bulle. Deze lamp geeft licht aan uw interieur.', 3, '29.99', 'yellow', '1.20', 1),
(2, 'buitenlamp', 'Een degelijke buitenlamp van ons eigenmerk. Deze lamp geeft warm licht en is spatwaterdicht volgens de IPX3 norm. Een aanrader voor iedere tuin of garage.', 2, '39.95', 'green', '3.40', 1),
(3, 'gans-lamp', 'Een leuke schattige lamp voor op de babykamer.', 3, '12.90', 'pink', '1.60', 1),
(4, 'giraf-lamp', 'Een lieve giraffe mag niet ontbreken in de kamer van je kind. Deze lamp brengt sfeer en geborgenheid in de kamer van uw kleine dreumes.', 3, '17.90', 'yellow', '5.00', 1),
(5, 'hektar', 'De hektar lamp is een vaste lamp uit ons assortiment. Het is de lamp die uw uren achter het bureau comfortabeler maakt en uw bureau van licht voorziet.', 4, '20.95', 'grey', '2.45', 1),
(6, 'jesse', 'Jesse is een fijne tafellamp die in de kamer van iedere tiener niet mag ontbreken!', 1, '10.95', 'white', '1.80', 1),
(7, 'lampje', 'Lampje lampje, wat schijn je mooi. De standaard en eenvoud maakt dit product een juweeltje.', 2, '16.00', 'grey', '2.50', 1),
(8, 'llahra', 'De oriental uitvoering van de Slutte-Gette designlampen zijn een lust voor het oog.', 3, '49.95', 'red', '4.10', 1),
(9, 'struisvogel-lamp', 'Deze struisvogel lamp biedt zelfs licht voor mensen die hun kop in het zand steken. Laat het schijnen! Een prachtige tafellamp', 1, '14.95', 'orange', '4.20', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_image`
--

CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `product_image`
--

INSERT INTO `product_image` (`product_image_id`, `product_id`, `image`, `active`) VALUES
(1, 1, 'arstid.jpg', 1),
(2, 2, 'buitenlamp.jpg', 1),
(3, 2, 'buitenlamp2.jpg', 1),
(4, 3, 'gans.jpg', 1),
(5, 4, 'giraf.jpg', 1),
(6, 4, 'giraf2.jpg', 1),
(7, 5, 'hektar.jpg', 1),
(8, 6, 'jesse.png', 1),
(9, 7, 'lampje.jpg', 1),
(10, 8, 'llahra.png', 1),
(11, 9, 'struisvogel.jpg', 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
