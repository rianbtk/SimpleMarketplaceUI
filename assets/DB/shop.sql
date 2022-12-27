/*
 Navicat Premium Data Transfer

 Source Server         : btk
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 07/11/2021 14:58:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shop_bank
-- ----------------------------
DROP TABLE IF EXISTS `shop_bank`;
CREATE TABLE `shop_bank`  (
  `id_bank` int(11) NOT NULL AUTO_INCREMENT,
  `name_bank` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logo_bank` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state_bank` int(1) NOT NULL,
  PRIMARY KEY (`id_bank`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_bank
-- ----------------------------
INSERT INTO `shop_bank` VALUES (1, 'Bank BCA', 'bca.png', 1);
INSERT INTO `shop_bank` VALUES (2, 'Bank BRI', 'bri.png', 1);
INSERT INTO `shop_bank` VALUES (3, 'Bank BNI', 'bni.png', 1);
INSERT INTO `shop_bank` VALUES (4, 'Bank Mandiri', 'mandiri.jpg', 1);
INSERT INTO `shop_bank` VALUES (5, 'Bank Mega', 'mega.png', 1);
INSERT INTO `shop_bank` VALUES (6, 'Bank Jatim', 'jatim.png', 1);

-- ----------------------------
-- Table structure for shop_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE `shop_category`  (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state` int(1) NOT NULL,
  PRIMARY KEY (`id_category`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_category
-- ----------------------------
INSERT INTO `shop_category` VALUES (1, 'Hewan Peliharaan', 1);
INSERT INTO `shop_category` VALUES (8, 'Makanan Hewan', 1);
INSERT INTO `shop_category` VALUES (6, 'Hewan Laga', 1);
INSERT INTO `shop_category` VALUES (7, 'Kesehatan Hewan', 1);

-- ----------------------------
-- Table structure for shop_image_product
-- ----------------------------
DROP TABLE IF EXISTS `shop_image_product`;
CREATE TABLE `shop_image_product`  (
  `id_image_product` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL DEFAULT 0,
  `image` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
  `token` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_image_product`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_image_product
-- ----------------------------

-- ----------------------------
-- Table structure for shop_options
-- ----------------------------
DROP TABLE IF EXISTS `shop_options`;
CREATE TABLE `shop_options`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_provinsi` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id_kab` int(11) NULL DEFAULT NULL,
  `state` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_options
-- ----------------------------

-- ----------------------------
-- Table structure for shop_page
-- ----------------------------
DROP TABLE IF EXISTS `shop_page`;
CREATE TABLE `shop_page`  (
  `how_to_buy` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `about_us` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_page
-- ----------------------------
INSERT INTO `shop_page` VALUES ('<h3 style=\"text-align: center;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\"><strong>Beli Lewat Toko Online</strong></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\">Pelanggan dapat melakukan pembelian dengan cara memilih produk lalu menambahkan kekeranjang. Setelah selesai pelanggan dapat melakukan pemesanan dengan cara memasukkan biodata diri pelanggan serta memilih kurir dan metode apa yang digunakan. Setelah selesai, pelanggan dapat melakukan pemesanan dengan klik tombol lakukan pemesanan. Setelah itu pelanggan akan mendapatkan kode pembelian anda melalui konfirmasi email. Anda dapat memantau pesanan anda di menu<strong> Cek Pesanan</strong>. Halaman ini juga digunakan untuk upload bukti transaksi yang dilakukan pelanggan (Bila melakukan pembayaran dari bank). Bila bukti transaksi bank telah benar maka pihak toko akan segera mengirim pesanan anda, anda dapat melihatnya melalui menu<strong> Cek Pesanan</strong>, setelah barang sampai pelanggan harus melakukan konfirmasi barang yang pihak toko kirim sudah sampai. Silahkan berbelanja.....</span></span></p>\r\n\r\n<h3 style=\"text-align: center;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\"><strong>Beli Lewat Kontak Tersedia</strong></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\">Selain menggunakan toko online kami juga melayani pembelian melewati kontak. Pelanggan perlu menyebutkan produk apa saja yang mau di beli, keterngannya apa, jumlah berapa, pembayarannya lewat apa. Dan setelah pelanggan selesai. Pelanggan harus melakukan konfirmasi bukti transfer melalui kontak kami. Bila sudah fix maka pihak toko akan segera mengirim pesanan pelanggan. Namun segala &nbsp;transaksi ini tidak bisa pelanggan cek dari toko online kami. Karena toko online hanya khusus untuk pelanggan dengan cara pembelian ke toko online kami. Berbelanja yuk</span></span><span style=\"font-family: arial, helvetica, sans-serif;\">.....</span></p>\r\n', '');

-- ----------------------------
-- Table structure for shop_payment
-- ----------------------------
DROP TABLE IF EXISTS `shop_payment`;
CREATE TABLE `shop_payment`  (
  `id_payment` int(11) NOT NULL AUTO_INCREMENT,
  `id_bank` int(11) NOT NULL,
  `number` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state` int(1) NOT NULL,
  PRIMARY KEY (`id_payment`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_payment
-- ----------------------------
INSERT INTO `shop_payment` VALUES (1, 1, '11002299', 'ANGGIT AGUNG', 1);
INSERT INTO `shop_payment` VALUES (2, 2, '33774466', 'PANDU DWI LAKSONO', 1);
INSERT INTO `shop_payment` VALUES (3, 3, '22993366', 'FERRY JULYO', 1);
INSERT INTO `shop_payment` VALUES (4, 4, '55229966', 'AGUS SALIM H', 1);
INSERT INTO `shop_payment` VALUES (5, 6, '0887654776543', 'JOKO SASONGKO', 1);

-- ----------------------------
-- Table structure for shop_product
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product`  (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name_product` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `information_product` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price_product` int(11) NOT NULL,
  `discount_product` int(11) NOT NULL,
  `weight_product` int(11) NOT NULL,
  `category_product` int(11) NOT NULL,
  `stock_product` int(11) NOT NULL,
  `image_product` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `slug_product` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state_product` int(1) NOT NULL,
  `state_discount` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id_product`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 71 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES (70, 'Ferr', 'Tukang PHP Kucing', 10000, 0, 234444, 1, 1, 'Produk2021-11-07-14-49-43.png', 'ferr', 1, 0);

-- ----------------------------
-- Table structure for shop_session
-- ----------------------------
DROP TABLE IF EXISTS `shop_session`;
CREATE TABLE `shop_session`  (
  `id` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ip_address` varchar(18) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `timestamp` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_session
-- ----------------------------
INSERT INTO `shop_session` VALUES ('hse9ppoj64825091t2a969i39q2jrd3c', '::1', '__ci_last_regenerate|i:1632405058;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632405058');
INSERT INTO `shop_session` VALUES ('gh47vejoibit3sgq68qnm3srceob50i8', '::1', '__ci_last_regenerate|i:1632405377;KCFINDER|a:0:{}CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:2:\"10\";', '1632405377');
INSERT INTO `shop_session` VALUES ('dh75bk72hc3b53gchvvs0kkqf5al2365', '::1', '__ci_last_regenerate|i:1632406452;KCFINDER|a:0:{}CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:2:\"10\";', '1632406452');
INSERT INTO `shop_session` VALUES ('vv6rn2c9bnclikhe25blvoicpc7av82j', '::1', '__ci_last_regenerate|i:1632406780;KCFINDER|a:0:{}CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"2\";', '1632406780');
INSERT INTO `shop_session` VALUES ('307n0g6qtevssmqfeoltq51dpo3n515r', '::1', '__ci_last_regenerate|i:1632406780;KCFINDER|a:0:{}CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"2\";', '1632406873');
INSERT INTO `shop_session` VALUES ('fmip1fqb69n7ojpm31cf4l02srj77d3p', '::1', '__ci_last_regenerate|i:1632454949;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632455115');
INSERT INTO `shop_session` VALUES ('7ohnca75ib4hr4gr52bh2reh8l8g0fkt', '::1', '__ci_last_regenerate|i:1632478282;KCFINDER|a:0:{}CIPTAshop|a:0:{}', '1632478561');
INSERT INTO `shop_session` VALUES ('nr501l5pi91q6c6hfkirmvq5nm6n4lt3', '::1', '__ci_last_regenerate|i:1632545377;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632545377');
INSERT INTO `shop_session` VALUES ('h8c7hr93gn76ic2p446oo6ea1smhl318', '::1', '__ci_last_regenerate|i:1632545377;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTAshop|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632545396');
INSERT INTO `shop_session` VALUES ('1gp8sqtr3enupmd6n7c0oh5ptftub0gc', '::1', '__ci_last_regenerate|i:1632616223;error|s:53:\"Maaf Login Gagal Dilakukan Silahkan Cek Kembali admin\";__ci_vars|a:2:{s:5:\"error\";s:3:\"old\";s:7:\"success\";s:3:\"old\";}KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";myAqua|s:1:\"2\";', '1632616223');
INSERT INTO `shop_session` VALUES ('uhbkphiebm3afn2v7554835v5ghbd4s2', '::1', '__ci_last_regenerate|i:1632618789;error|s:53:\"Maaf Login Gagal Dilakukan Silahkan Cek Kembali admin\";__ci_vars|a:2:{s:5:\"error\";s:3:\"old\";s:7:\"success\";s:3:\"old\";}KCFINDER|a:0:{}CIPTASHOP|a:0:{}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";', '1632618789');
INSERT INTO `shop_session` VALUES ('ovnipspagadprnj169fo33msr7orjjgt', '::1', '__ci_last_regenerate|i:1632618789;error|s:53:\"Maaf Login Gagal Dilakukan Silahkan Cek Kembali admin\";__ci_vars|a:2:{s:5:\"error\";s:3:\"old\";s:7:\"success\";s:3:\"old\";}KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";myAqua|s:1:\"2\";', '1632619015');
INSERT INTO `shop_session` VALUES ('5abebda94or5ai67k91fob91h61fuqpo', '::1', '__ci_last_regenerate|i:1632643574;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}', '1632643574');
INSERT INTO `shop_session` VALUES ('2p22u6st9nfkrsiieji1u9ugftusbiug', '::1', '__ci_last_regenerate|i:1632643938;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:30:\"Data Toko Berhasil Di Perbarui\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}', '1632643938');
INSERT INTO `shop_session` VALUES ('kjp290rcvpul2inm5ub83lfr7skd2rd7', '::1', '__ci_last_regenerate|i:1632644324;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:30:\"Data Toko Berhasil Di Perbarui\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}', '1632644324');
INSERT INTO `shop_session` VALUES ('6df5e2tjn258m7crh9tpiess3bps3369', '::1', '__ci_last_regenerate|i:1632644324;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:30:\"Data Toko Berhasil Di Perbarui\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}', '1632644407');
INSERT INTO `shop_session` VALUES ('0vor9koe0g14vgohpc1bcm15lhq3d34u', '::1', '__ci_last_regenerate|i:1632664641;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:39:\"Data Data Pembayaran Berhasil Di Simpan\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}', '1632664641');
INSERT INTO `shop_session` VALUES ('s53plb8feoqn9fjd3mr50jromia7aa2i', '::1', '__ci_last_regenerate|i:1632665758;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:39:\"Data Data Pembayaran Berhasil Di Simpan\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}', '1632665758');
INSERT INTO `shop_session` VALUES ('a2l0136ohf78kh4rq4fa6ndi19vd9puf', '::1', '__ci_last_regenerate|i:1632666276;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> AGUS </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:2:\"13\";', '1632666276');
INSERT INTO `shop_session` VALUES ('ebhumrlmrp1h0dcgci7vdu7l3u2cs8ob', '::1', '__ci_last_regenerate|i:1632666820;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632666820');
INSERT INTO `shop_session` VALUES ('6e5vnaggl0jd5t2k49i27td8v0bh3uva', '::1', '__ci_last_regenerate|i:1632667123;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632667123');
INSERT INTO `shop_session` VALUES ('2butk9e1oacn5vm126c7tvt2v4o6d91q', '::1', '__ci_last_regenerate|i:1632667506;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632667506');
INSERT INTO `shop_session` VALUES ('3s9bp7pci2918ogr2qbuejd1cvl4qf40', '::1', '__ci_last_regenerate|i:1632667909;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632667909');
INSERT INTO `shop_session` VALUES ('lubuli79a9pan4mngj2gtiogd40mbfg5', '::1', '__ci_last_regenerate|i:1632669847;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632669847');
INSERT INTO `shop_session` VALUES ('ffc4aq8bc3sdfl72oq3jbj79g561hvtl', '::1', '__ci_last_regenerate|i:1632669847;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}success|s:38:\"Selamat Datang <strong> RIAN </strong>\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";a:11:{s:2:\"id\";s:14:\"20210926195301\";s:10:\"id_product\";s:2:\"66\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:2000;s:4:\"name\";s:6:\"Kucing\";s:11:\"information\";s:35:\"[Jumlah : 1] &rarr; <b>Baby</b><br>\";s:7:\"picture\";s:29:\"Produk2021-09-18-18-22-50.png\";s:5:\"rowid\";s:32:\"2d871d97e64c20c2d2c0fae5328d0dd7\";s:8:\"subtotal\";d:280000;}}myAqua|s:1:\"2\";', '1632669847');
INSERT INTO `shop_session` VALUES ('1ie9m3q2q8po38l3k4e4tipgih2tm05p', '::1', '__ci_last_regenerate|i:1632682758;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632682758');
INSERT INTO `shop_session` VALUES ('uebdpqcfrsneu8pfg0m8d248dcdn5dqi', '::1', '__ci_last_regenerate|i:1632682758;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632682794');
INSERT INTO `shop_session` VALUES ('nlakgof1ak39ibn5lnse45c4h43e6mb1', '::1', '__ci_last_regenerate|i:1632711393;', '1632711461');
INSERT INTO `shop_session` VALUES ('vi7222ob3qkg1lepvfrpdpe01jcdfiaa', '::1', '__ci_last_regenerate|i:1632762222;', '1632762226');
INSERT INTO `shop_session` VALUES ('k568o26taqapn4ndkq983uoev46kg6v0', '::1', '__ci_last_regenerate|i:1632914885;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1632914885');
INSERT INTO `shop_session` VALUES ('8lfjk7q4u4tj9fug8r2a311f6m9bo9na', '::1', '__ci_last_regenerate|i:1632914885;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:2:\"15\";', '1632915176');
INSERT INTO `shop_session` VALUES ('stui959fh5p5irjjv1g9jqsfrp0h7hku', '::1', '__ci_last_regenerate|i:1632979042;', '1632979042');
INSERT INTO `shop_session` VALUES ('qtes1qajdqgi2fk1q94pa3ekl6ihnu7u', '::1', '__ci_last_regenerate|i:1632979582;', '1632979582');
INSERT INTO `shop_session` VALUES ('9opuvigqdi5rt4n7v2pamn12e484ikn4', '::1', '__ci_last_regenerate|i:1632980300;', '1632980300');
INSERT INTO `shop_session` VALUES ('ef2j6fnk0cv5e86nd4ggeelm6dfs88fi', '::1', '__ci_last_regenerate|i:1632980693;', '1632980693');
INSERT INTO `shop_session` VALUES ('45t9ii27u77c7rmauqs239bb6vlff7ns', '::1', '__ci_last_regenerate|i:1632980693;', '1632980716');
INSERT INTO `shop_session` VALUES ('jn45tkk2vo36sfscrlvspfp07ckv6d80', '::1', '__ci_last_regenerate|i:1633016261;', '1633016261');
INSERT INTO `shop_session` VALUES ('m0at12bioatu6uc1vjvv49dfa4km2vdh', '::1', '__ci_last_regenerate|i:1633016261;', '1633016399');
INSERT INTO `shop_session` VALUES ('1knoqfesdmiuurja1et1a5314its53m2', '::1', '__ci_last_regenerate|i:1633069377;', '1633069387');
INSERT INTO `shop_session` VALUES ('d7ri572q15cun03juoo0fe081r8s9kl3', '::1', '__ci_last_regenerate|i:1633082108;', '1633082108');
INSERT INTO `shop_session` VALUES ('2l3qhb82e8vkn7cfeg5sr1idr99300t4', '::1', '__ci_last_regenerate|i:1633082108;', '1633082160');
INSERT INTO `shop_session` VALUES ('2btm6qa6o7prr7o058hf4tgkdskln2o0', '::1', '__ci_last_regenerate|i:1633158731;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633158731');
INSERT INTO `shop_session` VALUES ('riqmktg72pnon0chhmh42g20ahd79tir', '::1', '__ci_last_regenerate|i:1633159149;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:3200000;s:11:\"total_items\";d:2;s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";a:11:{s:2:\"id\";s:14:\"20211002141250\";s:10:\"id_product\";s:2:\"67\";s:3:\"qty\";d:2;s:4:\"slug\";s:5:\"manuk\";s:5:\"price\";d:1600000;s:5:\"berat\";i:600;s:4:\"name\";s:5:\"Manuk\";s:11:\"information\";s:37:\"[Jumlah : 2] &rarr; <b>kontol</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-02-14-08-29.png\";s:5:\"rowid\";s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";s:8:\"subtotal\";d:3200000;}}', '1633159149');
INSERT INTO `shop_session` VALUES ('r65udq4jed65m703g6p9rlehqfajmivg', '::1', '__ci_last_regenerate|i:1633159457;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:3200000;s:11:\"total_items\";d:2;s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";a:11:{s:2:\"id\";s:14:\"20211002141250\";s:10:\"id_product\";s:2:\"67\";s:3:\"qty\";d:2;s:4:\"slug\";s:5:\"manuk\";s:5:\"price\";d:1600000;s:5:\"berat\";i:600;s:4:\"name\";s:5:\"Manuk\";s:11:\"information\";s:37:\"[Jumlah : 2] &rarr; <b>kontol</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-02-14-08-29.png\";s:5:\"rowid\";s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";s:8:\"subtotal\";d:3200000;}}', '1633159457');
INSERT INTO `shop_session` VALUES ('72mg84bb4kfj2hcanj574kq09i2gednn', '::1', '__ci_last_regenerate|i:1633159938;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:3200000;s:11:\"total_items\";d:2;s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";a:11:{s:2:\"id\";s:14:\"20211002141250\";s:10:\"id_product\";s:2:\"67\";s:3:\"qty\";d:2;s:4:\"slug\";s:5:\"manuk\";s:5:\"price\";d:1600000;s:5:\"berat\";i:600;s:4:\"name\";s:5:\"Manuk\";s:11:\"information\";s:37:\"[Jumlah : 2] &rarr; <b>kontol</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-02-14-08-29.png\";s:5:\"rowid\";s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";s:8:\"subtotal\";d:3200000;}}', '1633159938');
INSERT INTO `shop_session` VALUES ('6o91sofirgroi2dbckun1qhrhgacanqv', '::1', '__ci_last_regenerate|i:1633160521;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:3200000;s:11:\"total_items\";d:2;s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";a:11:{s:2:\"id\";s:14:\"20211002141250\";s:10:\"id_product\";s:2:\"67\";s:3:\"qty\";d:2;s:4:\"slug\";s:5:\"manuk\";s:5:\"price\";d:1600000;s:5:\"berat\";i:600;s:4:\"name\";s:5:\"Manuk\";s:11:\"information\";s:37:\"[Jumlah : 2] &rarr; <b>kontol</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-02-14-08-29.png\";s:5:\"rowid\";s:32:\"e80ef414cb6f1a69e8f6002da33b1357\";s:8:\"subtotal\";d:3200000;}}', '1633160521');
INSERT INTO `shop_session` VALUES ('gm4p7vfiqop1mc7io1b9orth245ce9sn', '::1', '__ci_last_regenerate|i:1633160521;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633160619');
INSERT INTO `shop_session` VALUES ('8da8924bqbjh9trafsall00qq9d5k992', '::1', '__ci_last_regenerate|i:1633325836;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633325836');
INSERT INTO `shop_session` VALUES ('6tn4s747aobrig4lhbua8scukk5kp68a', '::1', '__ci_last_regenerate|i:1633326304;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633326304');
INSERT INTO `shop_session` VALUES ('s06a9i16su4kkr6i4dsqb8t6icgjvosa', '::1', '__ci_last_regenerate|i:1633326688;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"5d6c0153b2b77854be76e8d510770c40\";a:11:{s:2:\"id\";s:14:\"20211004124707\";s:10:\"id_product\";s:2:\"68\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:400;s:4:\"name\";s:6:\"kucing\";s:11:\"information\";s:33:\"[Jumlah : 1] &rarr; <b>A1</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-04-12-45-54.png\";s:5:\"rowid\";s:32:\"5d6c0153b2b77854be76e8d510770c40\";s:8:\"subtotal\";d:280000;}}', '1633326688');
INSERT INTO `shop_session` VALUES ('al229v97d4qi9tu70ocvv62bcj6qlelh', '::1', '__ci_last_regenerate|i:1633326688;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:3:{s:10:\"cart_total\";d:280000;s:11:\"total_items\";d:1;s:32:\"5d6c0153b2b77854be76e8d510770c40\";a:11:{s:2:\"id\";s:14:\"20211004124707\";s:10:\"id_product\";s:2:\"68\";s:3:\"qty\";d:1;s:4:\"slug\";s:6:\"kucing\";s:5:\"price\";d:280000;s:5:\"berat\";i:400;s:4:\"name\";s:6:\"kucing\";s:11:\"information\";s:33:\"[Jumlah : 1] &rarr; <b>A1</b><br>\";s:7:\"picture\";s:29:\"Produk2021-10-04-12-45-54.png\";s:5:\"rowid\";s:32:\"5d6c0153b2b77854be76e8d510770c40\";s:8:\"subtotal\";d:280000;}}', '1633326962');
INSERT INTO `shop_session` VALUES ('56lejdduol0bhv2iht6nv0vs9a8ubt64', '::1', '__ci_last_regenerate|i:1633329542;', '1633329542');
INSERT INTO `shop_session` VALUES ('o5fbmdphncepip997fd56n20h62jl1i5', '::1', '__ci_last_regenerate|i:1633330812;', '1633330812');
INSERT INTO `shop_session` VALUES ('oj2n28872gsm3hkr2makiag0opcaa3df', '::1', '__ci_last_regenerate|i:1633330812;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633330818');
INSERT INTO `shop_session` VALUES ('1hvrfgqpknh3odh3h3l3qhma335seaip', '::1', '__ci_last_regenerate|i:1633582599;', '1633582599');
INSERT INTO `shop_session` VALUES ('sgl2j56l1gmj3lmh81qaegucco8rt7ru', '::1', '__ci_last_regenerate|i:1633582989;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633582989');
INSERT INTO `shop_session` VALUES ('qll4sli81kbd6etvu1b1l4kij6fknibc', '::1', '__ci_last_regenerate|i:1633586111;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633586111');
INSERT INTO `shop_session` VALUES ('vnsv1gmlo39lsf42bdik1re405nishfl', '::1', '__ci_last_regenerate|i:1633586111;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1633586111');
INSERT INTO `shop_session` VALUES ('9a6i1kii5s2j2q533k9c5fdja1on6683', '::1', '__ci_last_regenerate|i:1633692120;', '1633692126');
INSERT INTO `shop_session` VALUES ('r7mj9pi63624qb0t6dsjk2t8b48q749v', '::1', '__ci_last_regenerate|i:1634030475;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634030621');
INSERT INTO `shop_session` VALUES ('2s62rv1nhi7dri8pfhnl8f2rns2uh51v', '::1', '__ci_last_regenerate|i:1634193451;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1634193451');
INSERT INTO `shop_session` VALUES ('nq2kgnlaivoedloq40k7jcf30eu3rkgq', '::1', '__ci_last_regenerate|i:1634193970;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"1\";', '1634193970');
INSERT INTO `shop_session` VALUES ('bpmgvh845e6ne96078shvp9j4vove6ei', '::1', '__ci_last_regenerate|i:1634193970;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}myAqua|s:1:\"1\";', '1634193973');
INSERT INTO `shop_session` VALUES ('licsd29rje0cf28682fe3e3flms96tu2', '::1', '__ci_last_regenerate|i:1636271315;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1636271315');
INSERT INTO `shop_session` VALUES ('jcharv1vmnvouapk5t76geruol434505', '::1', '__ci_last_regenerate|i:1636271315;KCFINDER|a:0:{}myAqua|s:1:\"1\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1636271490');

-- ----------------------------
-- Table structure for shop_setting
-- ----------------------------
DROP TABLE IF EXISTS `shop_setting`;
CREATE TABLE `shop_setting`  (
  `shortname_shop` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `longname_shop` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `motto_shop` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `location_shop` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name_manage` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wa_contact` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone_contact` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_shop` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `propinsi_shop` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kabupaten_shop` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logo_shop` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `facebook` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `twitter` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `google` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `instagram` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `youtube` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pos` int(1) NULL DEFAULT NULL,
  `jne` int(1) NULL DEFAULT NULL,
  `tiki` int(1) NULL DEFAULT NULL,
  `gratis_ongkir_wilayah` int(1) NULL DEFAULT NULL,
  `cod_wilayah` int(1) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_setting
-- ----------------------------
INSERT INTO `shop_setting` VALUES ('ANET', 'ANIMALS PLANET', 'KHUALITAS TERJAMIN', 'Bojonegoro', 'PYOYEK III', '08515654007', '08515654007', 'gusalim04@gmail.com', '11', '80', 'Logo2021-09-13-00-01-05.png', 'https://www.facebook.com/RianP01/', 'https://twitter.com/Rian', '', 'https://instagram.com/Rian', '', 1, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for shop_skin
-- ----------------------------
DROP TABLE IF EXISTS `shop_skin`;
CREATE TABLE `shop_skin`  (
  `id_skin` int(3) NOT NULL AUTO_INCREMENT,
  `skin` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `example` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `skin_status` int(2) NOT NULL,
  `ket` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_skin`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_skin
-- ----------------------------
INSERT INTO `shop_skin` VALUES (1, 'style-1', 'style-1.png', 0, 'tema 1');
INSERT INTO `shop_skin` VALUES (2, 'style-2', 'style-2.png', 0, 'tema 2');
INSERT INTO `shop_skin` VALUES (3, 'style-3', 'style-3.png', 0, 'tema 3');
INSERT INTO `shop_skin` VALUES (4, 'style-4', 'style-4.png', 1, 'tema 4');
INSERT INTO `shop_skin` VALUES (5, 'style-5', 'style-5.png', 0, 'tema 5');
INSERT INTO `shop_skin` VALUES (6, 'style-6', 'style-6.png', 0, 'tema 6');

-- ----------------------------
-- Table structure for shop_slider
-- ----------------------------
DROP TABLE IF EXISTS `shop_slider`;
CREATE TABLE `shop_slider`  (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `slider` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_slider`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_slider
-- ----------------------------
INSERT INTO `shop_slider` VALUES (7, 'Slider2021-09-13-03-28-24.png');
INSERT INTO `shop_slider` VALUES (8, 'Slider2021-09-13-03-29-01.png');
INSERT INTO `shop_slider` VALUES (9, 'Slider2021-09-13-03-31-43.png');

-- ----------------------------
-- Table structure for shop_testimoni
-- ----------------------------
DROP TABLE IF EXISTS `shop_testimoni`;
CREATE TABLE `shop_testimoni`  (
  `id_testimony` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `testimony` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `state` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id_testimony`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_testimoni
-- ----------------------------
INSERT INTO `shop_testimoni` VALUES (1, 'RianBtk@gmail.com', 'RianBtk', '2020-03-26 16:22:30', 'BTK', 1);
INSERT INTO `shop_testimoni` VALUES (2, 'pandu@gmail.com', 'PANDU', '2021-09-17 14:52:26', 'Good', 1);

-- ----------------------------
-- Table structure for shop_transaction
-- ----------------------------
DROP TABLE IF EXISTS `shop_transaction`;
CREATE TABLE `shop_transaction`  (
  `id_transaction` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_invoice` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_pembelian` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name_customer` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `province` int(11) NULL DEFAULT NULL,
  `city` int(11) NULL DEFAULT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `courier` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `packet` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `to_customer` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price_ongkir` int(11) NOT NULL,
  `time_transaction` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_transaction` int(11) NOT NULL,
  `bank` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `payment_transaction` int(11) NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bukti` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_resi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `state` int(1) NOT NULL,
  PRIMARY KEY (`id_transaction`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for shop_transaction_details
-- ----------------------------
DROP TABLE IF EXISTS `shop_transaction_details`;
CREATE TABLE `shop_transaction_details`  (
  `id_transaction` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_transaction` int(11) NOT NULL,
  `information` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_transaction_details
-- ----------------------------
INSERT INTO `shop_transaction_details` VALUES ('20210923212055', 66, 1, '[Jumlah : 1] &rarr; <b>asa</b><br>');

-- ----------------------------
-- Table structure for shop_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username_user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_user` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `access_user` int(1) NOT NULL,
  `state_user` int(1) NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES (1, 'RIAN', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1);
INSERT INTO `shop_user` VALUES (2, 'AGUS', 'admin1', '827ccb0eea8a706c4c34a16891f84e7b', 2, 1);
INSERT INTO `shop_user` VALUES (3, 'EKO', 'admin2', '827ccb0eea8a706c4c34a16891f84e7b', 3, 1);
INSERT INTO `shop_user` VALUES (15, 'FERRY', 'bigboss', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
