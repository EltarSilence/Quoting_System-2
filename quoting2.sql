-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Dic 06, 2018 alle 16:32
-- Versione del server: 10.1.37-MariaDB
-- Versione PHP: 7.2.12

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
(5, 'SN_2', '{\r\n\r\n	\"0\":{\r\n\r\n		\"SI\" : 1.27,\r\n\r\n		\"NO\" : 15.00\r\n\r\n	}\r\n\r\n}', '2018-11-17', '2019-05-31', 'TUTTA LA CLASSE AMMESSA AGLI ESAMI DI STATO'),
(6, 'SN_3', '{ \r\n	\"0\":{\r\n		\"SI\" : 1.05,\r\n		\"NO\" : 20.00\r\n	},\r\n	\"1\":{\r\n		\"SI\" : 1.05,\r\n		\"NO\" : 17.00\r\n	},\r\n	\"2\":{\r\n		\"SI\" : 1.05,\r\n		\"NO\" : 20.00\r\n	},\r\n	\"3\":{\r\n		\"SI\" : 1.05,\r\n		\"NO\" : 20.00\r\n	},\r\n	\"4\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 275.00\r\n	},\r\n	\"5\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 175.00\r\n	},\r\n	\"6\":{\r\n		\"SI\" : 1.01,\r\n		\"NO\" : 50.00\r\n	},\r\n	\"7\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 4000.00\r\n	},\r\n	\"8\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 80.00\r\n	},\r\n	\"9\":{\r\n		\"SI\" : 1.01,\r\n		\"NO\" : 55.00\r\n	},\r\n	\"10\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 4501.00\r\n	},\r\n	\"11\":{\r\n		\"SI\" : 1.06,\r\n		\"NO\" : 23.00\r\n	},\r\n	\"12\":{\r\n		\"SI\" : 1,\r\n		\"NO\" : 50.00\r\n	}\r\n}', '2018-11-17', '2019-05-31', 'ANDREOLI L AMMESSO AGLI ESAMI|BACCHETTI N AMMESSO AGLI ESAMI|BARA O AMMESSO AGLI ESAMI|CANIPARI A AMMESSO AGLI ESAMI|CONZADORI F AMMESSO AGLI ESAMI|CAVEDAGHI A AMMESSO AGLI ESAMI|DEAMBROSIS D AMMESSO AGLI ESAMI|GALLINA R AMMESSO AGLI ESAMI|MARCHI A AMMESSO AGLI ESAMI|OTTOLINI A AMMESSO AGLI ESAMI|RAVASI I AMMESSO AGLI ESAMI|RIZZA G AMMESSO AGLI ESAMI|SILIQUA R AMMESSO AGLI ESAMI\r\n'),
(7, 'SN_4', '{\r\n	\"0\":{\r\n		\"SI\" : 25.00,\r\n		\"NO\" : 1\r\n	}\r\n}', '2018-11-17', '2019-04-15', 'ESTEMPORANEA ENTRO PASQUA'),
(8, 'SN_5', '{\r\n	\"0\":{\r\n		\"SI\" : 100.00,\r\n		\"NO\" : 1\r\n	}\r\n}', '2018-11-17', '2019-05-31', 'MOLINARI SMETTE DI FUMARE ENTRO IL 01/06/2019'),
(9, 'SN_6', '{\r\n	\"0\":{\r\n		\"SI\" : 4.00,\r\n		\"NO\" : 1\r\n	},\r\n\r\n	\"1\":{\r\n		\"SI\" : 4.50,\r\n		\"NO\" : 1\r\n	},\r\n\r\n	\"2\":{\r\n		\"SI\" : 6.20,\r\n		\"NO\" : 1\r\n	}\r\n}', '2018-11-17', '2019-05-31', 'CANIPARI A PRENDE 10 IN MATEMATICA | CONZADORI F PRENDE 10 IN MATEMATICA | SILIQUA R PRENDE 10 IN MATEMATICA\r\n'),
(10, 'MT_7', '{\r\n	\"0\" : {\r\n		\"titolo\": \"BACCHETTI N\",\r\n		\"quota\" : 4.45\r\n	},\r\n	\"1\" : {\r\n		\"titolo\": \"ANDREOLI L\",\r\n		\"quota\" : 6.60\r\n	},\r\n	\"2\" : {\r\n		\"titolo\": \"RIZZA G\",\r\n		\"quota\" : 5.75\r\n	},\r\n	\"3\" : {\r\n		\"titolo\": \"GALLINA R\",\r\n		\"quota\" : 5.50\r\n	},\r\n	\"4\" : {\r\n		\"titolo\": \"CANIPARI A\",\r\n		\"quota\" : 7.25\r\n	},\r\n	\"5\" : {\r\n		\"titolo\": \"OTTOLINI A\",\r\n		\"quota\" : 5.25\r\n	},\r\n	\"6\" : {\r\n		\"titolo\": \"BARA O\",\r\n		\"quota\" : 6.95\r\n	},\r\n	\"7\" : {\r\n		\"titolo\": \"CAVEDAGHI A\",\r\n		\"quota\" : 15.50\r\n	},\r\n	\"8\" : {\r\n		\"titolo\": \"MARCHI A\",\r\n		\"quota\" : 23.00\r\n	},\r\n	\"9\" : {\r\n		\"titolo\": \"CONZADORI F\",\r\n		\"quota\" : 75.00\r\n	},\r\n	\"10\" : {\r\n		\"titolo\": \"DEAMBROSIS D\",\r\n		\"quota\" : 75.00\r\n	},\r\n	\"11\" : {\r\n		\"titolo\": \"RAVASI I\",\r\n		\"quota\" : 250.00\r\n	},\r\n	\"12\" : {\r\n		\"titolo\": \"NESSUNA NOTA\",\r\n		\"quota\" : 1.85\r\n	}\r\n\r\n}', '2018-11-17', '2019-06-05', 'PRIMO A RICEVERE NOTA DISCIPLINARE'),
(11, 'MT_8', '{\r\n	\"0\" : {\r\n		\"titolo\": \"BACCHETTI N\",\r\n		\"quota\" : 12\r\n	},\r\n	\"1\" : {\r\n		\"titolo\": \"ANDREOLI L\",\r\n		\"quota\" : 12\r\n	},\r\n	\"2\" : {\r\n		\"titolo\": \"RIZZA G\",\r\n		\"quota\" : 4\r\n	},\r\n	\"3\" : {\r\n		\"titolo\": \"GALLINA R\",\r\n		\"quota\" : 4.4\r\n	},\r\n	\"4\" : {\r\n		\"titolo\": \"CANIPARI A\",\r\n		\"quota\" : 6\r\n	},\r\n	\"5\" : {\r\n		\"titolo\": \"OTTOLINI A\",\r\n		\"quota\" : 8.50\r\n	},\r\n	\"6\" : {\r\n		\"titolo\": \"BARA O\",\r\n		\"quota\" : 4.5\r\n	},\r\n	\"7\" : {\r\n		\"titolo\": \"CAVEDAGHI A\",\r\n		\"quota\" : 2.5\r\n	},\r\n	\"8\" : {\r\n		\"titolo\": \"MARCHI A\",\r\n		\"quota\" : 6\r\n	},\r\n	\"9\" : {\r\n		\"titolo\": \"CONZADORI F\",\r\n		\"quota\" : 2.1\r\n	},\r\n	\"10\" : {\r\n		\"titolo\": \"DEAMBROSIS D\",\r\n		\"quota\" : 9\r\n	},\r\n	\"11\" : {\r\n		\"titolo\": \"RAVASI I\",\r\n		\"quota\" : 1.85\r\n	},\r\n	\"12\" : {\r\n		\"titolo\": \"ALTRO\",\r\n		\"quota\" : 3.11\r\n	}\r\n\r\n}', '2018-11-17', '2018-11-30', 'VINCENTE PROSSIMO KAHOOT'),
(12, 'MT_9', '{\r\n	\"0\" : {\r\n		\"titolo\": \"BACCHETTI N\",\r\n		\"quota\" : 150\r\n	},\r\n	\"1\" : {\r\n		\"titolo\": \"ANDREOLI L\",\r\n		\"quota\" : 150\r\n	},\r\n	\"2\" : {\r\n		\"titolo\": \"RIZZA G\",\r\n		\"quota\" : 100\r\n	},\r\n	\"3\" : {\r\n		\"titolo\": \"GALLINA R\",\r\n		\"quota\" : 6\r\n	},\r\n	\"4\" : {\r\n		\"titolo\": \"CANIPARI A\",\r\n		\"quota\" : 50\r\n	},\r\n	\"5\" : {\r\n		\"titolo\": \"OTTOLINI A\",\r\n		\"quota\" : 35\r\n	},\r\n	\"6\" : {\r\n		\"titolo\": \"BARA O\",\r\n		\"quota\" : 30\r\n	},\r\n	\"7\" : {\r\n		\"titolo\": \"CAVEDAGHI A\",\r\n		\"quota\" : 16\r\n	},\r\n	\"8\" : {\r\n		\"titolo\": \"MARCHI A\",\r\n		\"quota\" : 6.55\r\n	},\r\n	\"9\" : {\r\n		\"titolo\": \"CONZADORI F\",\r\n		\"quota\" : 6\r\n	},\r\n	\"10\" : {\r\n		\"titolo\": \"DEAMBROSIS D\",\r\n		\"quota\" : 45\r\n	},\r\n	\"11\" : {\r\n		\"titolo\": \"RAVASI I\",\r\n		\"quota\" : 1.25\r\n	}\r\n\r\n}', '2018-11-17', '2019-05-31', 'MIGLIOR VOTO IN CENTESIMI OTTENUTO ALL\'ESAME DI STATO'),
(13, 'SN_10', '{\r\n	\"0\":{\r\n		\"SI\" : 1500,\r\n		\"NO\" : 1\r\n	},\r\n\r\n	\"1\":{\r\n		\"SI\" : 3.5,\r\n		\"NO\" : 1\r\n	}\r\n}', '2018-11-17', '2019-04-10', 'CAMBIO PROF ZOLA ENTRO PASQUA| CAMBIO PROF LICENZIATO ENTRO PASQUA|'),
(14, 'MT_11', '{\r\n	\"0\" : {\r\n		\"titolo\": \"BARCELLONA\",\r\n		\"quota\" : 1.05\r\n	},\r\n	\"1\" : {\r\n		\"titolo\": \"SARAJEVO\",\r\n		\"quota\" : 50\r\n	},\r\n	\"2\" : {\r\n		\"titolo\": \"ALTRA\",\r\n		\"quota\" : 200\r\n	}\r\n\r\n}', '2018-11-17', '2019-03-20', 'META DELLA GITA 2019'),
(15, 'EUO_12', '{\"Andreoli\":{\"ESATTO\":{\"10\":275.00, \"9.5\":275.00, \"9\":238.48, \"8.5\":135.71, \"8\":79.40, \"7.5\":47.84, \"7\":29.73, \"6.5\":19.10, \"6\":12.72, \"5.5\":8.80, \"5\":6.34, \"4.5\":2.73, \"4\":1.98, \"3.5\":3.17, \"3\":2.82, \"2\":2.78, \"1\":2.07}, \"UNDER\":{\"9.25\":1.11, \"8.75\":1.12, \"8.25\":1.12, \"7.75\":1.13, \"7.25\":1.13, \"6.75\":1.15, \"6.25\":1.15, \"5.75\":1.22, \"5.25\":1.22, \"4.75\":1.40, \"4.25\":1.40, \"3.75\":1.83, \"3.25\":1.83, \"3\":1.83, \"2\":3.09}, \"OVER\":{\"9.25\":10.09, \"8.75\":9.33, \"8.25\":9.33, \"7.75\":8.69, \"7.25\":8.69, \"6.75\":7.67, \"6.25\":7.67, \"5.75\":5.55, \"5.25\":5.55, \"4.75\":3.50, \"4.25\":3.50, \"3.75\":2.20, \"3.25\":2.20, \"3\":2.20, \"2\":1.48}},\"Bacchetti\":{\"ESATTO\":{\"10\":121.80, \"9.5\":76.04, \"9\":48.67, \"8.5\":31.98, \"8\":21.61, \"7.5\":15.03, \"7\":10.79, \"6.5\":8.00, \"6\":6.15, \"5.5\":2.79, \"5\":2.10, \"4.5\":1.88, \"4\":3.26, \"3.5\":3.15, \"3\":3.24, \"2\":2.37, \"1\":8.18}, \"UNDER\":{\"9.25\":1.06, \"8.75\":1.07, \"8.25\":1.07, \"7.75\":1.11, \"7.25\":1.11, \"6.75\":1.19, \"6.25\":1.19, \"5.75\":1.35, \"5.25\":1.35, \"4.75\":1.72, \"4.25\":1.72, \"3.75\":2.58, \"3.25\":2.58, \"3\":2.58, \"2\":5.20}, \"OVER\":{\"9.25\":17.67, \"8.75\":15.29, \"8.25\":15.29, \"7.75\":10.09, \"7.25\":10.09, \"6.75\":6.26, \"6.25\":6.26, \"5.75\":3.86, \"5.25\":3.86, \"4.75\":2.39, \"4.25\":2.39, \"3.75\":1.63, \"3.25\":1.63, \"3\":1.63, \"2\":1.24}},\"Bara\":{\"ESATTO\":{\"10\":6.49, \"9.5\":5.73, \"9\":3.10, \"8.5\":2.75, \"8\":2.65, \"7.5\":2.61, \"7\":2.64, \"6.5\":2.75, \"6\":3.12, \"5.5\":5.93, \"5\":6.98, \"4.5\":8.59, \"4\":11.12, \"3.5\":15.20, \"3\":22.09, \"2\":58.10, \"1\":223.34}, \"UNDER\":{\"9.25\":1.40, \"8.75\":1.69, \"8.25\":1.69, \"7.75\":2.22, \"7.25\":2.22, \"6.75\":3.21, \"6.25\":3.21, \"5.75\":5.27, \"5.25\":5.27, \"4.75\":10.19, \"4.25\":10.19, \"3.75\":24.47, \"3.25\":24.47, \"3\":24.47, \"2\":81.67}, \"OVER\":{\"9.25\":3.50, \"8.75\":2.45, \"8.25\":2.45, \"7.75\":1.82, \"7.25\":1.82, \"6.75\":1.45, \"6.25\":1.45, \"5.75\":1.23, \"5.25\":1.23, \"4.75\":1.11, \"4.25\":1.11, \"3.75\":1.04, \"3.25\":1.04, \"3\":1.04, \"2\":1.01}},\"Canipari\":{\"ESATTO\":{\"10\":121.80, \"9.5\":76.04, \"9\":48.67, \"8.5\":31.98, \"8\":21.61, \"7.5\":15.03, \"7\":10.79, \"6.5\":8.00, \"6\":6.15, \"5.5\":2.79, \"5\":2.10, \"4.5\":1.88, \"4\":3.26, \"3.5\":3.15, \"3\":3.24, \"2\":2.37, \"1\":8.18}, \"UNDER\":{\"9.25\":1.06, \"8.75\":1.07, \"8.25\":1.07, \"7.75\":1.11, \"7.25\":1.11, \"6.75\":1.19, \"6.25\":1.19, \"5.75\":1.35, \"5.25\":1.35, \"4.75\":1.72, \"4.25\":1.72, \"3.75\":2.58, \"3.25\":2.58, \"3\":2.58, \"2\":5.20}, \"OVER\":{\"9.25\":17.67, \"8.75\":15.29, \"8.25\":15.29, \"7.75\":10.09, \"7.25\":10.09, \"6.75\":6.26, \"6.25\":6.26, \"5.75\":3.86, \"5.25\":3.86, \"4.75\":2.39, \"4.25\":2.39, \"3.75\":1.63, \"3.25\":1.63, \"3\":1.63, \"2\":1.24}},\"Cavedaghi\":{\"ESATTO\":{\"10\":9.08, \"9.5\":7.50, \"9\":6.35, \"8.5\":3.26, \"8\":2.80, \"7.5\":2.61, \"7\":2.39, \"6.5\":2.36, \"6\":2.39, \"5.5\":2.62, \"5\":3.00, \"4.5\":5.77, \"4\":6.98, \"3.5\":8.92, \"3\":12.13, \"2\":27.92, \"1\":93.90}, \"UNDER\":{\"9.25\":1.21, \"8.75\":1.38, \"8.25\":1.38, \"7.75\":1.68, \"7.25\":1.68, \"6.75\":2.24, \"6.25\":2.24, \"5.75\":3.37, \"5.25\":3.37, \"4.75\":5.91, \"4.25\":5.91, \"3.75\":12.80, \"3.25\":12.80, \"3\":12.80, \"2\":38.48}, \"OVER\":{\"9.25\":5.76, \"8.75\":3.63, \"8.25\":3.63, \"7.75\":2.47, \"7.25\":2.47, \"6.75\":1.81, \"6.25\":1.81, \"5.75\":1.42, \"5.25\":1.42, \"4.75\":1.20, \"4.25\":1.20, \"3.75\":1.08, \"3.25\":1.08, \"3\":1.08, \"2\":1.03}},\"Conzadori\":{\"ESATTO\":{\"10\":3.22, \"9.5\":3.05, \"9\":2.78, \"8.5\":2.74, \"8\":2.77, \"7.5\":3.05, \"7\":3.24, \"6.5\":6.10, \"6\":7.04, \"5.5\":8.43, \"5\":10.53, \"4.5\":13.75, \"4\":18.87, \"3.5\":27.36, \"3\":42.17, \"2\":124.78, \"1\":275.00}, \"UNDER\":{\"9.25\":1.70, \"8.75\":2.20, \"8.25\":2.20, \"7.75\":3.09, \"7.25\":3.09, \"6.75\":4.85, \"6.25\":4.85, \"5.75\":8.69, \"5.25\":8.69, \"4.75\":18.40, \"4.25\":18.40, \"3.75\":48.52, \"3.25\":48.52, \"3\":48.52, \"2\":178.09}, \"OVER\":{\"9.25\":2.43, \"8.75\":1.83, \"8.25\":1.83, \"7.75\":1.48, \"7.25\":1.48, \"6.75\":1.26, \"6.25\":1.26, \"5.75\":1.13, \"5.25\":1.13, \"4.75\":1.06, \"4.25\":1.06, \"3.75\":1.02, \"3.25\":1.02, \"3\":1.02, \"2\":1.01}},\"Deambrosis\":{\"ESATTO\":{\"10\":15.61, \"9.5\":11.93, \"9\":9.36, \"8.5\":7.53, \"8\":6.23, \"7.5\":3.15, \"7\":2.67, \"6.5\":2.36, \"6\":2.06, \"5.5\":2.03, \"5\":2.06, \"4.5\":2.36, \"4\":2.72, \"3.5\":5.63, \"3\":7.09, \"2\":13.98, \"1\":40.30}, \"UNDER\":{\"9.25\":1.10, \"8.75\":1.19, \"8.25\":1.19, \"7.75\":1.36, \"7.25\":1.36, \"6.75\":1.67, \"6.25\":1.67, \"5.75\":2.29, \"5.25\":2.29, \"4.75\":3.62, \"4.25\":3.62, \"3.75\":7.02, \"3.25\":7.02, \"3\":7.02, \"2\":18.76}, \"OVER\":{\"9.25\":11.00, \"8.75\":6.26, \"8.25\":6.26, \"7.75\":3.78, \"7.25\":3.78, \"6.75\":2.49, \"6.25\":2.49, \"5.75\":1.78, \"5.25\":1.78, \"4.75\":1.38, \"4.25\":1.38, \"3.75\":1.17, \"3.25\":1.17, \"3\":1.17, \"2\":1.06}},\"Gallina\":{\"ESATTO\":{\"10\":12.21, \"9.5\":9.64, \"9\":7.81, \"8.5\":6.49, \"8\":3.27, \"7.5\":2.77, \"7\":2.45, \"6.5\":2.32, \"6\":2.08, \"5.5\":2.10, \"5\":2.39, \"4.5\":2.71, \"4\":3.24, \"3.5\":6.70, \"3\":8.71, \"2\":18.33, \"1\":56.37}, \"UNDER\":{\"9.25\":1.14, \"8.75\":1.25, \"8.25\":1.25, \"7.75\":1.47, \"7.25\":1.47, \"6.75\":1.87, \"6.25\":1.87, \"5.75\":2.65, \"5.25\":2.65, \"4.75\":4.37, \"4.25\":4.37, \"3.75\":8.87, \"3.25\":8.87, \"3\":8.87, \"2\":24.89}, \"OVER\":{\"9.25\":8.14, \"8.75\":5.00, \"8.25\":5.00, \"7.75\":3.13, \"7.25\":3.13, \"6.75\":2.15, \"6.25\":2.15, \"5.75\":1.61, \"5.25\":1.61, \"4.75\":1.30, \"4.25\":1.30, \"3.75\":1.13, \"3.25\":1.13, \"3\":1.13, \"2\":1.04}},\"Marchi\":{\"ESATTO\":{\"10\":6.49, \"9.5\":5.73, \"9\":3.10, \"8.5\":2.75, \"8\":2.65, \"7.5\":2.61, \"7\":2.64, \"6.5\":2.75, \"6\":3.12, \"5.5\":5.93, \"5\":6.98, \"4.5\":8.59, \"4\":11.12, \"3.5\":15.20, \"3\":22.09, \"2\":58.10, \"1\":223.34}, \"UNDER\":{\"9.25\":1.40, \"8.75\":1.69, \"8.25\":1.69, \"7.75\":2.22, \"7.25\":2.22, \"6.75\":3.21, \"6.25\":3.21, \"5.75\":5.27, \"5.25\":5.27, \"4.75\":10.19, \"4.25\":10.19, \"3.75\":24.47, \"3.25\":24.47, \"3\":24.47, \"2\":81.67}, \"OVER\":{\"9.25\":3.50, \"8.75\":2.45, \"8.25\":2.45, \"7.75\":1.82, \"7.25\":1.82, \"6.75\":1.45, \"6.25\":1.45, \"5.75\":1.23, \"5.25\":1.23, \"4.75\":1.11, \"4.25\":1.11, \"3.75\":1.04, \"3.25\":1.04, \"3\":1.04, \"2\":1.01}},\"Ottolini\":{\"ESATTO\":{\"10\":275.00, \"9.5\":195.43, \"9\":115.33, \"8.5\":69.87, \"8\":43.52, \"7.5\":27.91, \"7\":18.47, \"6.5\":12.63, \"6\":8.95, \"5.5\":6.59, \"5\":3.03, \"4.5\":2.09, \"4\":3.43, \"3.5\":3.05, \"3\":2.89, \"2\":3.23, \"1\":3.14}, \"UNDER\":{\"9.25\":1.08, \"8.75\":1.09, \"8.25\":1.09, \"7.75\":1.11, \"7.25\":1.11, \"6.75\":1.15, \"6.25\":1.15, \"5.75\":1.25, \"5.25\":1.25, \"4.75\":1.49, \"4.25\":1.49, \"3.75\":2.06, \"3.25\":2.06, \"3\":2.06, \"2\":3.75}, \"OVER\":{\"9.25\":13.50, \"8.75\":12.11, \"8.25\":12.11, \"7.75\":10.09, \"7.25\":10.09, \"6.75\":7.67, \"6.25\":7.67, \"5.75\":5.00, \"5.25\":5.00, \"4.75\":3.04, \"4.25\":3.04, \"3.75\":1.94, \"3.25\":1.94, \"3\":1.94, \"2\":1.36}},\"Ravasi\":{\"ESATTO\":{\"10\":3.08, \"9.5\":3.04, \"9\":3.07, \"8.5\":3.17, \"8\":5.71, \"7.5\":6.28, \"7\":7.13, \"6.5\":8.36, \"6\":10.17, \"5.5\":12.84, \"5\":16.90, \"4.5\":23.26, \"4\":33.65, \"3.5\":51.43, \"3\":83.56, \"2\":274.75, \"1\":275.00}, \"UNDER\":{\"9.25\":2.18, \"8.75\":3.01, \"8.25\":3.01, \"7.75\":4.55, \"7.25\":4.55, \"6.75\":7.70, \"6.25\":7.70, \"5.75\":14.96, \"5.25\":14.96, \"4.75\":34.48, \"4.25\":34.48, \"3.75\":99.14, \"3.25\":99.14, \"3\":99.14, \"2\":396.87}, \"OVER\":{\"9.25\":1.85, \"8.75\":1.50, \"8.25\":1.50, \"7.75\":1.28, \"7.25\":1.28, \"6.75\":1.15, \"6.25\":1.15, \"5.75\":1.07, \"5.25\":1.07, \"4.75\":1.03, \"4.25\":1.03, \"3.75\":1.01, \"3.25\":1.01, \"3\":1.01, \"2\":1.00}},\"Rizza\":{\"ESATTO\":{\"10\":6.49, \"9.5\":5.73, \"9\":3.10, \"8.5\":2.75, \"8\":2.65, \"7.5\":2.61, \"7\":2.64, \"6.5\":2.75, \"6\":3.12, \"5.5\":5.93, \"5\":6.98, \"4.5\":8.59, \"4\":11.12, \"3.5\":15.20, \"3\":22.09, \"2\":58.10, \"1\":223.34}, \"UNDER\":{\"9.25\":1.40, \"8.75\":1.69, \"8.25\":1.69, \"7.75\":2.22, \"7.25\":2.22, \"6.75\":3.21, \"6.25\":3.21, \"5.75\":5.27, \"5.25\":5.27, \"4.75\":10.19, \"4.25\":10.19, \"3.75\":24.47, \"3.25\":24.47, \"3\":24.47, \"2\":81.67}, \"OVER\":{\"9.25\":3.50, \"8.75\":2.45, \"8.25\":2.45, \"7.75\":1.82, \"7.25\":1.82, \"6.75\":1.45, \"6.25\":1.45, \"5.75\":1.23, \"5.25\":1.23, \"4.75\":1.11, \"4.25\":1.11, \"3.75\":1.04, \"3.25\":1.04, \"3\":1.04, \"2\":1.01}},\"Siliqua\":{\"ESATTO\":{\"10\":6.66, \"9.5\":5.85, \"9\":3.13, \"8.5\":2.76, \"8\":2.65, \"7.5\":2.60, \"7\":2.62, \"6.5\":2.71, \"6\":3.06, \"5.5\":5.75, \"5\":6.72, \"4.5\":8.23, \"4\":10.58, \"3.5\":14.37, \"3\":20.75, \"2\":53.91, \"1\":204.65}, \"UNDER\":{\"9.25\":1.37, \"8.75\":1.65, \"8.25\":1.65, \"7.75\":2.15, \"7.25\":2.15, \"6.75\":3.09, \"6.25\":3.09, \"5.75\":5.03, \"5.25\":5.03, \"4.75\":9.63, \"4.25\":9.63, \"3.75\":22.89, \"3.25\":22.89, \"3\":22.89, \"2\":75.65}, \"OVER\":{\"9.25\":3.70, \"8.75\":2.54, \"8.25\":2.54, \"7.75\":1.87, \"7.25\":1.87, \"6.75\":1.48, \"6.25\":1.48, \"5.75\":1.25, \"5.25\":1.25, \"4.75\":1.12, \"4.25\":1.12, \"3.75\":1.05, \"3.25\":1.05, \"3\":1.05, \"2\":1.01}}}', '2018-11-06', '2018-12-09', '10/12/2018|Verifica di Inglese');

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
  `idM` int(10) UNSIGNED NOT NULL,
  `idScommessaM` int(11) NOT NULL,
  `chiaveM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valueM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotaM` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `multiplas`
--

INSERT INTO `multiplas` (`idM`, `idScommessaM`, `chiaveM`, `tipoM`, `valueM`, `quotaM`) VALUES
(1, 1, 'MT_3', '', '1-Colucci', 1.60),
(2, 1, 'SN_2_0', '', 'NO', 1.56),
(3, 1, 'EUO_1_Andreoli', 'ESATTO', '10.0', 8.08);

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
  `idR` int(10) UNSIGNED NOT NULL,
  `chiaveR` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `risultatoR` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `scommessas`
--

CREATE TABLE `scommessas` (
  `idS` int(10) UNSIGNED NOT NULL,
  `idUtenteS` int(11) NOT NULL,
  `coinS` int(11) NOT NULL,
  `dataS` date NOT NULL,
  `pagataS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `scommessas`
--

INSERT INTO `scommessas` (`idS`, `idUtenteS`, `coinS`, `dataS`, `pagataS`) VALUES
(1, 1, 100, '2018-11-17', 0);

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
  ADD PRIMARY KEY (`idM`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `risultatis`
--
ALTER TABLE `risultatis`
  ADD PRIMARY KEY (`idR`);

--
-- Indici per le tabelle `scommessas`
--
ALTER TABLE `scommessas`
  ADD PRIMARY KEY (`idS`);

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
  MODIFY `idD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `multiplas`
--
ALTER TABLE `multiplas`
  MODIFY `idM` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `risultatis`
--
ALTER TABLE `risultatis`
  MODIFY `idR` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `scommessas`
--
ALTER TABLE `scommessas`
  MODIFY `idS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
