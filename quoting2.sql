SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `disponibilis` (
  `idD` int(10) UNSIGNED NOT NULL,
  `typeD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dalD` date NOT NULL,
  `alD` date NOT NULL,
  `descrizioneD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `disponibilis` (`idD`, `typeD`, `fileD`, `dalD`, `alD`, `descrizioneD`) VALUES
(1, 'EUO_1', '{"Andreoli":{"Esatto":{"10.0":8.08,"9.5":2.0931263274277,"9.0":5.4179231640202,"8.5":1.558216265974,"8.0":4.0333427998817,"7.5":1.3050061227532,"7.0":3.3779245949009,"6.5":1.2490772889209,"6.0":3.2331563979766,"5.5":1.3948029726284,"5.0":3.6103579777405,"4.5":1.869035983322,"4.0":4.8378796901723,"3.5":3.1306352720644,"3.0":8.1034484810387,"2.0":18.097701607653,"1.0":60.627300385638},"Under":{"10.0":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3.0":10.120641548659,"2.0":26.949936147538},"Over":{"10.0":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3.0":1,"2.0":1}},"Bacchetti":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Bara":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Canipari":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Cavedaghi":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Conzadori":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Deambrosis":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Gallina":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Marchi":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Ottolini":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Ravasi":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Rizza":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}},"Siliqua":{"Esatto":{"10":8.0864524836123,"9.5":2.0931263274277,"9":5.4179231640202,"8.5":1.558216265974,"8":4.0333427998817,"7.5":1.3050061227532,"7":3.3779245949009,"6.5":1.2490772889209,"6":3.2331563979766,"5.5":1.3948029726284,"5":3.6103579777405,"4.5":1.869035983322,"4":4.8378796901723,"3.5":3.1306352720644,"3":8.1034484810387,"2":18.097701607653,"1":60.627300385638},"Under":{"10":1,"9.75":1.1633725130506,"9.25":1.1633725130506,"8.75":1.303299033402,"8.25":1.303299033402,"7.75":1.5544436861289,"7.25":1.5544436861289,"6.75":2.0189902729389,"6.25":2.0189902729389,"5.75":2.9355691136071,"5.25":2.9355691136071,"4.75":4.9466007862103,"4.25":4.9466007862103,"3.75":10.120641548659,"3.25":10.120641548659,"3":10.120641548659,"2":26.949936147538},"Over":{"10":"-","9.75":"-","9.25":5.1271061071148,"8.75":3.0938948058092,"8.25":3.0938948058092,"7.75":2.018598970487,"7.25":2.018598970487,"6.75":1.4265818184146,"6.25":1.4265818184146,"5.75":1.0919836170863,"5.25":1.0919836170863,"4.75":1,"4.25":1,"3.75":1,"3.25":1,"3":1,"2":1}}}', '2018-11-06', '2018-11-15', '2018-10-31|Verifica di sistemi');

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_28_084621_create_multiplas_table', 2),
(4, '2018_10_29_115439_create_scommessas_table', 2),
(5, '2018_10_30_072606_create_risultatis_table', 3),
(6, '2018_11_06_070350_create_disponibilis_table', 4);

CREATE TABLE `multiplas` (
  `idM` int(10) UNSIGNED NOT NULL,
  `idScommessaM` int(11) NOT NULL,
  `chiaveM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valueM` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotaM` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `multiplas` (`idM`, `idScommessaM`, `chiaveM`, `tipoM`, `valueM`, `quotaM`) VALUES
(1, 1, 'EUO_1_Andreoli', 'ESATTO', '10.0', 1.65);

CREATE TABLE `password_resets` (
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `risultatis` (
  `idR` int(10) UNSIGNED NOT NULL,
  `chiaveR` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `risultatoR` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `risultatis` (`idR`, `chiaveR`, `risultatoR`) VALUES
(1, 'EUO_1_Gallina', '9');

CREATE TABLE `scommessas` (
  `idS` int(10) UNSIGNED NOT NULL,
  `idUtenteS` int(11) NOT NULL,
  `coinS` int(11) NOT NULL,
  `dataS` date NOT NULL,
  `pagataS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `scommessas` (`idS`, `idUtenteS`, `coinS`, `dataS`, `pagataS`) VALUES
(1, 1, 100, '2018-10-28', 1),
(2, 1, 800, '2018-10-28', 1);

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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `coin`) VALUES
(1, 'Zexal0807', 'Gallinar00@gmail.com', NULL, '$2y$10$hZZK5QtT/QoWGh4/uWsP9efN.5K3wsnctg4wQMGUT71tZOWn6.Swu', NULL, '2018-10-29 10:36:46', '2018-10-29 10:36:46', 5000);

ALTER TABLE `disponibilis`
  ADD PRIMARY KEY (`idD`);

ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `multiplas`
  ADD PRIMARY KEY (`idM`);

ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

ALTER TABLE `risultatis`
  ADD PRIMARY KEY (`idR`);

ALTER TABLE `scommessas`
  ADD PRIMARY KEY (`idS`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

ALTER TABLE `disponibilis`
  MODIFY `idD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `multiplas`
  MODIFY `idM` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `risultatis`
  MODIFY `idR` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `scommessas`
  MODIFY `idS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;
