-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.5.9-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных eshop
CREATE DATABASE IF NOT EXISTS `eshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci */;
USE `eshop`;

-- Дамп структуры для таблица eshop.country
CREATE TABLE IF NOT EXISTS `country` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- Дамп данных таблицы eshop.country: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`id`, `code`, `name`, `image`) VALUES
	(1, 'RU', 'Россия', 'assets/images/country/Russia.png'),
	(2, 'BLR', 'Беларусь', 'assets/images/country/Belarus.png'),
	(3, 'KZ', 'Казахстан', 'assets/images/country/Kazakhstan.png'),
	(4, 'MD', 'Молдавия', 'assets/images/country/Moldova.png'),
	(5, 'UA', 'Украина', 'assets/images/country/Ukraine.png');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Дамп структуры для таблица eshop.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- Дамп данных таблицы eshop.hibernate_sequence: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Дамп структуры для таблица eshop.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5cypb0k23bovo3rn1a5jqs6j4` (`category_id`),
  CONSTRAINT `FK5cypb0k23bovo3rn1a5jqs6j4` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- Дамп данных таблицы eshop.product: ~30 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `date_created`, `description`, `image_url`, `name`, `price`, `category_id`) VALUES
	(1, '2021-02-24 10:19:45.000000', 'Модель:BlackBerry KEYone Платформа:Android Операционная система:Android 7.1 Кол-во SIM-карт:2 шт. Тип SIM-карты:Nano-SIM Тип дисплея:IPS Диагональ дисплея:4.5 " Разрешение дисплея:1620x1080 Пикс. ', 'assets/images/products/smartphones/blackberry_keyone.jpg', 'BlackBerry Key One', 21499.00, 1),
	(2, '2021-02-24 10:19:45.000000', 'Модель:Motorola Moto G8 Платформа:Android Операционная система:Android 10.0 Кол-во SIM-карт:2 шт. Тип SIM-карты:Nano-SIM Тип дисплея:IPS Диагональ дисплея:6.4 " Разрешение дисплея:1560х720 Пикс. ', 'assets/images/products/smartphones/motorolla_moto_g8.png', 'Motorola Moto G8', 24500.00, 1),
	(3, '2021-02-24 10:19:45.000000', 'Модель:Xiaomi Poco X3 Платформа:Android Операционная система:Android 10.0 Кол-во SIM-карт:2 шт. Тип SIM-карты:Nano-SIM Тип дисплея:IPS Диагональ дисплея:6.67 " Разрешение дисплея:2400х1080 Пикс. ', 'assets/images/products/smartphones/poco_x3_nfc.png', 'POCO X3 NFC', 22000.00, 1),
	(4, '2021-02-24 10:19:45.000000', 'Модель:Samsung Galaxy A01 Core Платформа:Android Операционная система:Android 10.0 Кол-во SIM-карт:2 шт. Тип SIM-карты:Nano-SIM Тип дисплея:TFT Диагональ дисплея:5.3 " Разрешение дисплея:1480x720 Пикс. ', 'assets/images/products/smartphones/samsung_galaxy_a01.png', 'Samsung Galaxy A01', 18000.00, 1),
	(5, '2021-02-24 10:19:45.000000', 'Модель:Xiaomi Redmi 9 Платформа:Android Операционная система:Android 10.0 Кол-во SIM-карт:2 шт. Тип SIM-карты:Nano-SIM Тип дисплея:IPS Диагональ дисплея:6.53 " Разрешение дисплея:2340x1080 Пикс. ', 'assets/images/products/smartphones/xiaomi_redmi_9.png', 'Xiaomi Redmi 9', 23000.00, 1),
	(6, '2021-02-24 10:19:45.000000', 'Модель:Xiaomi Redmi 9A Платформа:Android Операционная система:Android 10.0 Кол-во SIM-карт:2 шт. Тип SIM-карты:Nano-SIM Тип дисплея:HD+ Диагональ дисплея:6.53 " Разрешение дисплея:720x1600 Пикс. ', 'assets/images/products/smartphones/xiaomi_redmi_9a.png', 'Xiaomi Redmi 9A', 24000.00, 1),
	(7, '2021-02-24 10:19:45.000000', 'Модель:Xiaomi Redmi 9C Платформа:Android Операционная система:Android 10.0 Кол-во SIM-карт:2 шт. Тип SIM-карты:Nano-SIM Тип дисплея:IPS Диагональ дисплея:6.53 " Разрешение дисплея:1600x720 Пикс. ', 'assets/images/products/smartphones/xiaomi_redmi_9c.png', 'Xiaomi Redmi 9C', 25000.00, 1),
	(8, '2021-02-24 10:19:45.000000', 'Платформа:iOS Тип экрана:IPS Размер экрана:10,2 " Разрешение экрана:2160x1620 пикс. Количество ядер процессора:6 Процессор:A12 Bionic Размер оперативной памяти:3 Гб Размер встроенной памяти:128 Гб ', 'assets/images/products/tablets/apple_ipad_10_2.jpg', 'Apple iPad', 48990.00, 2),
	(9, '2021-02-24 10:19:45.000000', 'Платформа:Android Тип экрана:TFT Размер экрана:10,4 " Разрешение экрана:2000 x 1200 пикс. Количество ядер процессора:8 Процессор:Qualcomm SM6115 Snapdragon 662 Видеопроцессор:Adreno 610 Размер оперативной памяти:3 Гб ', 'assets/images/products/tablets/galaxy_tab_a7.jpg', 'Galaxy Tab A7', 22000.00, 2),
	(10, '2021-02-24 10:19:45.000000', 'Платформа:Android Тип экрана:IPS Размер экрана:8.0 " Разрешение экрана:1920x1200 пикс. Количество ядер процессора:8 Процессор:Hisilicon Kirin 710 Видеопроцессор:Mali-G51 MP4 Размер оперативной памяти:3 Гб ', 'assets/images/products/tablets/huawei_mediapad_m5_lite8.png', 'Huawei MediaPad M5 Lite 8', 18000.00, 2),
	(11, '2021-02-24 10:19:45.000000', 'Платформа:Android Тип экрана:IPS Размер экрана:10.1 " Разрешение экрана:1280x800 пикс. Количество ядер процессора:8 Частота процессора:1600 МГц Размер оперативной памяти:2 Гб Размер встроенной памяти:16 Гб ', 'assets/images/products/tablets/prestigio_grace.png', 'Prestigio Grace 4791 4G', 12000.00, 2),
	(12, '2021-02-24 10:19:45.000000', 'Платформа:Android Тип экрана:TFT Размер экрана:8.0 " Разрешение экрана:1200x800 пикс. Количество ядер процессора:4 Процессор:ARM Cortex-A53 Частота процессора:2000 МГц Размер оперативной памяти:2 Гб', 'assets/images/products/tablets/samsung_galaxy_tab_a8.jpg', 'Samsung Galaxy Tab A 8', 24000.00, 2),
	(13, '2021-02-24 10:19:45.000000', 'Тип корпуса:ноутбук Игровой ноутбук:нет Серия (модель):Apple MacBook Air 13 Размер экрана:13.3 " Разрешение экрана:2560x1600 Тип матрицы:IPS Сенсорный экран:нет Поверхность экрана:глянцевая', 'assets/images/products/laptops/apple_mackbook_air_13.jpg', 'Apple MacBook Air 13', 99000.00, 3),
	(14, '2021-02-24 10:19:45.000000', 'Тип корпуса:ноутбук Игровой ноутбук:нет Серия (модель):Asus PRO P2540FA Размер экрана:15.6 " Разрешение экрана:1920x1080 Тип матрицы:н/д Сенсорный экран:нет Поверхность экрана:матовая ', 'assets/images/products/laptops/asus_pro.jpg', 'Asus Pro P2540FA', 70000.00, 3),
	(15, '2021-02-24 10:19:45.000000', 'Тип корпуса:ноутбук, трансформер Игровой ноутбук:нет Размер экрана:14.0 " Разрешение экрана:1366x768 Тип матрицы:н/д Сенсорный экран:есть Поверхность экрана:глянцевая Процессор:Intel Celeron ', 'assets/images/products/laptops/asus_tp401ma.jpg', 'Asus TP401MA', 65000.00, 3),
	(16, '2021-02-24 10:19:45.000000', 'Тип корпуса:ноутбук Игровой ноутбук:нет Серия (модель):Asus X509 Размер экрана:15.6 " Разрешение экрана:1920x1080 Тип матрицы:IPS Сенсорный экран:нет Поверхность экрана:матовая ', 'assets/images/products/laptops/asus_x509fa.jpg', 'Asus X509FA', 32000.00, 3),
	(17, '2021-02-24 10:19:45.000000', 'Тип корпуса:ноутбук Игровой ноутбук:нет Серия (модель):Dell G3 15 Размер экрана:15.6 " Разрешение экрана:1920x1080 Тип матрицы:WVA Сенсорный экран:нет Поверхность экрана:матовая ', 'assets/images/products/laptops/dell_g3_3500.jpg', 'Dell G3 3500', 44000.00, 3),
	(18, '2021-02-24 10:19:45.000000', 'Тип корпуса:ноутбук Игровой ноутбук:нет Серия (модель):Lenovo IdeaPad 15IML05 Размер экрана:15.6 " Разрешение экрана:1920x1080 Тип матрицы:TN Сенсорный экран:нет Поверхность экрана:матовая', 'assets/images/products/laptops/lenovo_ideapad_l3.jpg', 'Lenovo IdeaPad L3', 67000.00, 3),
	(19, '2021-02-24 10:19:45.000000', 'Тип корпуса:ноутбук Игровой ноутбук:нет Размер экрана:15.6 " Разрешение экрана:1920x1080 Тип матрицы:IPS Сенсорный экран:нет Поверхность экрана:матовая Процессор:Intel Core i5 ', 'assets/images/products/laptops/lenovo_thinkbook.jpg', 'Lenovo ThinkBook 15-IIL', 50000.00, 3),
	(20, '2021-02-24 10:19:45.000000', 'Диагональ:6.0 " Тип дисплея:E-Ink, Carta Разрешение:800x600 пикс. Сенсорный дисплей:нет Цветной экран:нет Кол-во градаций серого:16 ', 'assets/images/products/ebooks/digma_e63s.jpg', 'Digma E63S', 8000.00, 4),
	(21, '2021-02-24 10:19:45.000000', 'Диагональ:6.0 " Тип дисплея:E-Ink, Carta Разрешение:800x600 пикс. Сенсорный дисплей:нет Цветной экран:нет Кол-во градаций серого:16 Подсветка:нет Текстовые форматы:TXT, PDF, EPUB, DJVU, HTML, RTF, HTM, CHM, ZIP, MOBI, DOC, FB2, PDB  ', 'assets/images/products/ebooks/digma_e63w.jpg', 'Digma E63W', 11000.00, 4),
	(22, '2021-02-24 10:19:45.000000', 'Диагональ:6.0 " Тип дисплея:E-Ink, Carta Разрешение:800x600 пикс. Сенсорный дисплей:нет Цветной экран:нет Кол-во градаций серого:16 Подсветка:нет Текстовые форматы:TXT, PDF, EPUB, DJVU, HTML, RTF, HTM, CHM, ZIP, MOBI, DOC, FB2, PD', 'assets/images/products/ebooks/digma_e654.png', 'Digma  E654', 12000.00, 4),
	(23, '2021-02-24 10:19:45.000000', 'Диагональ:6.0 " Тип дисплея:E-Ink, Carta Разрешение:758x1024 пикс. Сенсорный дисплей:есть Цветной экран:нет Подсветка:есть Автоповорот экрана:нет Текстовые форматы:TXT, PDF, EPUB, DJVU, HTML, RTF, HTM, CHM, ZIP, MOBI, DOC, FB2, PDB', 'assets/images/products/ebooks/digma_s683g.jpg', 'Digma S683G', 13000.00, 4),
	(24, '2021-02-24 10:19:45.000000', 'Диагональ:6.0 " Тип дисплея:E-Ink, Carta Разрешение:1024x758 пикс. Сенсорный дисплей:есть Цветной экран:нет Кол-во градаций серого:16 Подсветка:есть Текстовые форматы:TXT, HTML, RTF, FB2, FB2.zip, FB3, MOBI, CHM, PDB', 'assets/images/products/ebooks/onyx_boox_monte_cristo_5.jpg', 'Onyx Boox Monte Cristo 5', 16000.00, 4),
	(25, '2021-02-24 10:19:45.000000', 'Диагональ:6.0 " Тип дисплея:E-Ink, Carta Разрешение:1024x758 пикс. Сенсорный дисплей:нет Цветной экран:нет Кол-во градаций серого:16 Подсветка:нет Текстовые форматы:ACSM, CHM, DJVU, DOC, DOCX, EPUB, EPUB(DRM), FB2', 'assets/images/products/ebooks/pocketbook_696_black.jpg', 'PocketBook 606 Black', 10000.00, 4),
	(26, '2021-02-24 10:19:45.000000', 'иагональ:6.0 " Тип дисплея:E-Ink, Carta Разрешение:1024x758 пикс. Сенсорный дисплей:нет Цветной экран:нет Подсветка:есть FM-тюнер:нет Частота процессора:1000 МГц ', 'assets/images/products/ebooks/pocketbook_616_matte_silver.jpg', 'PocketBook 616 Matte Silver', 14000.00, 4),
	(27, '2021-02-24 10:19:45.000000', 'Диагональ:6.0 " Тип дисплея:E-Ink, Pearl Разрешение:1024x758 пикс. Сенсорный дисплей:нет Цветной экран:нет Кол-во градаций серого:16 Подсветка:есть Текстовые форматы:CHM, DOC, EPUB, FB2, HTML, MOBI, PDB, PDF, RTF, TXT ', 'assets/images/products/ebooks/ritmix_rbk_677.jpg', 'Ritmix RBK-677FL', 15000.00, 4),
	(28, '2021-03-03 12:58:23.000000', 'Модель:Samsung Galaxy A12 Платформа:Android Операционная система:Android 10.0 Кол-во SIM-карт:2 шт. Тип SIM-карты:Nano-SIM Тип дисплея:TFT Диагональ дисплея:6.5 " Разрешение дисплея:1600x720 Пикс. ', 'assets/images/products/smartphones/samsung_galaxy_a12.jpg', 'Samsung Galaxy A12', 11990.00, 1),
	(29, '2021-03-03 12:58:23.000000', 'Модель:POCO M3 Платформа:Android Операционная система:Android 10.0 Кол-во SIM-карт:2 шт. Тип SIM-карты:Nano-SIM Тип дисплея:FHD+ Диагональ дисплея:6.53 " Разрешение дисплея:2340x1080 Пикс. Процессор:Qualcomm Snapdragon 662 Частота процессора:2000 МГц ', 'assets/images/products/smartphones/poco_m3_4_128gb.png', 'POCO M3 4/128GB', 14290.00, 1),
	(30, '2021-03-03 12:58:23.000000', 'Смартфон Wigor V2 c 5-дюймовым экраном оснащён 8 ГБ встроенной и 1 ГБ оперативной памяти, что вкупе с процессором MediaTek MTK6737T обеспечивает быструю и стабильную работу телефона.', 'assets/images/products/smartphones/wigor_v2_black.jpg', 'Wigor V2 Black', 4490.00, 1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Дамп структуры для таблица eshop.product_category
CREATE TABLE IF NOT EXISTS `product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- Дамп данных таблицы eshop.product_category: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` (`id`, `category_name`) VALUES
	(1, 'Смартфоны'),
	(2, 'Планшеты'),
	(3, 'Ноутбуки'),
	(4, 'Электронные книги');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;

-- Дамп структуры для таблица eshop.state
CREATE TABLE IF NOT EXISTS `state` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKghic7mqjt6qb9vq7up7awu0er` (`country_id`),
  CONSTRAINT `FKghic7mqjt6qb9vq7up7awu0er` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- Дамп данных таблицы eshop.state: ~19 rows (приблизительно)
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`id`, `name`, `country_id`) VALUES
	(1, 'Московская область', 1),
	(2, 'Белогородская область', 1),
	(3, 'Брянская область', 1),
	(4, 'Владимирская область', 1),
	(5, 'Республика Татарстан', 1),
	(6, 'Республика Башкорстан', 1),
	(7, 'Минская область', 2),
	(8, 'Гомельская область', 2),
	(9, 'Брестская область', 2),
	(10, 'Алматинская область', 3),
	(11, 'Акмолинская область', 3),
	(12, 'Актюбинская область', 3),
	(13, 'Кишинев', 4),
	(14, 'Калаширский район', 4),
	(15, 'Бричанский район', 4),
	(16, 'Киевская область', 5),
	(17, 'Черкасская область', 5),
	(18, 'Днепропетровская область', 5),
	(19, 'Москва', 1);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
