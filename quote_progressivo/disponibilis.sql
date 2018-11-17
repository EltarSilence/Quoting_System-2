-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Nov 17, 2018 alle 17:21
-- Versione del server: 10.1.30-MariaDB
-- Versione PHP: 7.2.1

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
  `typeD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileD` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dalD` date NOT NULL,
  `alD` date NOT NULL,
  `descrizioneD` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `disponibilis`
--

INSERT INTO `disponibilis` (`idD`, `typeD`, `fileD`, `dalD`, `alD`, `descrizioneD`) VALUES
(4, 'MT_1', '{\r\n	\"0\" : {\r\n		\"titolo\": \"CREATIVEITIS\",\r\n		\"quota\" : 2.25\r\n	},\r\n\r\n	\"1\" : {\r\n		\"titolo\": \"LISTA ALIEN\",\r\n		\"quota\" : 2.25\r\n	},\r\n\r\n	\"2\" : {\r\n		\"titolo\": \"LISTA PERITIS\",\r\n		\"quota\" : 5.75\r\n	},\r\n\r\n	\"3\" : {\r\n		\"titolo\": \"LISTA UNITIS\",\r\n		\"quota\" : 9.00\r\n	}\r\n}', '2018-11-17', '2018-11-20', 'LISTA VINCENTE ELEZIONI RAPPRESENTANTI D\'ISTITUTO'),
(5, 'SN_1', '{\r\n\r\n	\"0\":{\r\n\r\n		\"SI\" : 1.27,\r\n\r\n		\"NO\" : 15.00\r\n\r\n	}\r\n\r\n}', '2018-11-17', '2019-05-31', 'TUTTA LA CLASSE AMMESSA AGLI ESAMI DI STATO'),
(6, 'SN_2', '{ \r\n	\"0\":{\r\n		\"SI\" : 1.05,\r\n		\"NO\" : 20.00\r\n	},\r\n	\"1\":{\r\n		\"SI\" : 1.05,\r\n		\"NO\" : 17.00\r\n	},\r\n	\"2\":{\r\n		\"SI\" : 1.05,\r\n		\"NO\" : 20.00\r\n	},\r\n	\"3\":{\r\n		\"SI\" : 1.05,\r\n		\"NO\" : 20.00\r\n	},\r\n	\"4\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 275.00\r\n	},\r\n	\"5\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 175.00\r\n	},\r\n	\"6\":{\r\n		\"SI\" : 1.01,\r\n		\"NO\" : 50.00\r\n	},\r\n	\"7\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 4000.00\r\n	},\r\n	\"8\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 80.00\r\n	},\r\n	\"9\":{\r\n		\"SI\" : 1.01,\r\n		\"NO\" : 55.00\r\n	},\r\n	\"10\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 4501.00\r\n	},\r\n	\"11\":{\r\n		\"SI\" : 1.06,\r\n		\"NO\" : 23.00\r\n	},\r\n	\"12\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 50.00\r\n	}\r\n}', '2018-11-17', '2019-05-31', 'ANDREOLI L AMMESSO AGLI ESAMI|BACCHETTI N AMMESSO AGLI ESAMI|BARA O AMMESSO AGLI ESAMI|CANIPARI A AMMESSO AGLI ESAMI|CONZADORI F AMMESSO AGLI ESAMI|CAVEDAGHI A AMMESSO AGLI ESAMI|DEAMBROSIS D AMMESSO AGLI ESAMI|GALLINA R AMMESSO AGLI ESAMI|MARCHI A AMMESSO AGLI ESAMI|OTTOLINI A AMMESSO AGLI ESAMI|RAVASI I AMMESSO AGLI ESAMI|RIZZA G AMMESSO AGLI ESAMI|SILIQUA R AMMESSO AGLI ESAMI\r\n'),
(7, 'SN_3', '{\r\n	\"0\":{\r\n		\"SI\" : 25.00,\r\n		\"NO\" : 1\r\n	}\r\n}', '2018-11-17', '2019-04-15', 'ESTEMPORANEA ENTRO PASQUA'),
(8, 'SN_4', '{\r\n	\"0\":{\r\n		\"SI\" : 100.00,\r\n		\"NO\" : 1\r\n	}\r\n}', '2018-11-17', '2019-05-31', 'MOLINARI SMETTE DI FUMARE ENTRO IL 01/06/2019'),
(9, 'SN_5', '{\r\n	\"0\":{\r\n		\"SI\" : 4.00,\r\n		\"NO\" : 1\r\n	},\r\n\r\n	\"1\":{\r\n		\"SI\" : 4.50,\r\n		\"NO\" : 1\r\n	},\r\n\r\n	\"2\":{\r\n		\"SI\" : 6.20,\r\n		\"NO\" : 1\r\n	}\r\n}', '2018-11-17', '2019-05-31', 'CANIPARI A PRENDE 10 IN MATEMATICA | CONZADORI F PRENDE 10 IN MATEMATICA | SILIQUA R PRENDE 10 IN MATEMATICA\r\n'),
(10, 'MT_2', '{\r\n	\"0\" : {\r\n		\"titolo\": \"BACCHETTI N\",\r\n		\"quota\" : 4.45\r\n	},\r\n	\"1\" : {\r\n		\"titolo\": \"ANDREOLI L\",\r\n		\"quota\" : 6.60\r\n	},\r\n	\"2\" : {\r\n		\"titolo\": \"RIZZA G\",\r\n		\"quota\" : 5.75\r\n	},\r\n	\"3\" : {\r\n		\"titolo\": \"GALLINA R\",\r\n		\"quota\" : 5.50\r\n	},\r\n	\"4\" : {\r\n		\"titolo\": \"CANIPARI A\",\r\n		\"quota\" : 7.25\r\n	},\r\n	\"5\" : {\r\n		\"titolo\": \"OTTOLINI A\",\r\n		\"quota\" : 5.25\r\n	},\r\n	\"6\" : {\r\n		\"titolo\": \"BARA O\",\r\n		\"quota\" : 6.95\r\n	},\r\n	\"7\" : {\r\n		\"titolo\": \"CAVEDAGHI A\",\r\n		\"quota\" : 15.50\r\n	},\r\n	\"8\" : {\r\n		\"titolo\": \"MARCHI A\",\r\n		\"quota\" : 23.00\r\n	},\r\n	\"9\" : {\r\n		\"titolo\": \"CONZADORI F\",\r\n		\"quota\" : 75.00\r\n	},\r\n	\"10\" : {\r\n		\"titolo\": \"DEAMBROSIS D\",\r\n		\"quota\" : 75.00\r\n	},\r\n	\"11\" : {\r\n		\"titolo\": \"RAVASI I\",\r\n		\"quota\" : 250.00\r\n	},\r\n	\"12\" : {\r\n		\"titolo\": \"NESSUNA NOTA\",\r\n		\"quota\" : 1.85\r\n	}\r\n\r\n}', '2018-11-17', '2019-06-05', 'PRIMO A RICEVERE NOTA DISCIPLINARE'),
(11, 'MT_3', '{\r\n	\"0\" : {\r\n		\"titolo\": \"BACCHETTI N\",\r\n		\"quota\" : 12\r\n	},\r\n	\"1\" : {\r\n		\"titolo\": \"ANDREOLI L\",\r\n		\"quota\" : 12\r\n	},\r\n	\"2\" : {\r\n		\"titolo\": \"RIZZA G\",\r\n		\"quota\" : 4\r\n	},\r\n	\"3\" : {\r\n		\"titolo\": \"GALLINA R\",\r\n		\"quota\" : 4.4\r\n	},\r\n	\"4\" : {\r\n		\"titolo\": \"CANIPARI A\",\r\n		\"quota\" : 6\r\n	},\r\n	\"5\" : {\r\n		\"titolo\": \"OTTOLINI A\",\r\n		\"quota\" : 8.50\r\n	},\r\n	\"6\" : {\r\n		\"titolo\": \"BARA O\",\r\n		\"quota\" : 4.5\r\n	},\r\n	\"7\" : {\r\n		\"titolo\": \"CAVEDAGHI A\",\r\n		\"quota\" : 2.5\r\n	},\r\n	\"8\" : {\r\n		\"titolo\": \"MARCHI A\",\r\n		\"quota\" : 6\r\n	},\r\n	\"9\" : {\r\n		\"titolo\": \"CONZADORI F\",\r\n		\"quota\" : 2.1\r\n	},\r\n	\"10\" : {\r\n		\"titolo\": \"DEAMBROSIS D\",\r\n		\"quota\" : 9\r\n	},\r\n	\"11\" : {\r\n		\"titolo\": \"RAVASI I\",\r\n		\"quota\" : 1.85\r\n	}\r\n\r\n}', '2018-11-17', '2018-11-30', 'VINCENTE PROSSIMO KAHOOT'),
(12, 'MT_4', '{\r\n	\"0\" : {\r\n		\"titolo\": \"BACCHETTI N\",\r\n		\"quota\" : 150\r\n	},\r\n	\"1\" : {\r\n		\"titolo\": \"ANDREOLI L\",\r\n		\"quota\" : 150\r\n	},\r\n	\"2\" : {\r\n		\"titolo\": \"RIZZA G\",\r\n		\"quota\" : 100\r\n	},\r\n	\"3\" : {\r\n		\"titolo\": \"GALLINA R\",\r\n		\"quota\" : 6\r\n	},\r\n	\"4\" : {\r\n		\"titolo\": \"CANIPARI A\",\r\n		\"quota\" : 50\r\n	},\r\n	\"5\" : {\r\n		\"titolo\": \"OTTOLINI A\",\r\n		\"quota\" : 35\r\n	},\r\n	\"6\" : {\r\n		\"titolo\": \"BARA O\",\r\n		\"quota\" : 30\r\n	},\r\n	\"7\" : {\r\n		\"titolo\": \"CAVEDAGHI A\",\r\n		\"quota\" : 16\r\n	},\r\n	\"8\" : {\r\n		\"titolo\": \"MARCHI A\",\r\n		\"quota\" : 6.55\r\n	},\r\n	\"9\" : {\r\n		\"titolo\": \"CONZADORI F\",\r\n		\"quota\" : 6\r\n	},\r\n	\"10\" : {\r\n		\"titolo\": \"DEAMBROSIS D\",\r\n		\"quota\" : 45\r\n	},\r\n	\"11\" : {\r\n		\"titolo\": \"RAVASI I\",\r\n		\"quota\" : 1.25\r\n	}\r\n\r\n}', '2018-11-17', '2019-05-31', 'MIGLIOR VOTO IN CENTESIMI OTTENUTO ALL\'ESAME DI STATO'),
(13, 'SN_6', '{\r\n	\"0\":{\r\n		\"SI\" : 1500,\r\n		\"NO\" : 1\r\n	},\r\n\r\n	\"1\":{\r\n		\"SI\" : 3.5,\r\n		\"NO\" : 1\r\n	}\r\n}', '2018-11-17', '2019-04-10', 'CAMBIO PROF ZOLA ENTRO PASQUA| CAMBIO PROF LICENZIATO ENTRO PASQUA|');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `disponibilis`
--
ALTER TABLE `disponibilis`
  ADD PRIMARY KEY (`idD`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `disponibilis`
--
ALTER TABLE `disponibilis`
  MODIFY `idD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
