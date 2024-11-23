/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : perbandingan_rs

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 23/11/2024 17:33:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id_activity` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  `delete` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_activity`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2016 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1865, 5, 'User membuka Manage Menu', '2024-11-22 10:22:38', NULL);
INSERT INTO `activity` VALUES (1866, 5, 'User membuka Manage Menu', '2024-11-22 10:23:17', NULL);
INSERT INTO `activity` VALUES (1867, 5, 'User membuka Manage Menu', '2024-11-22 10:29:41', NULL);
INSERT INTO `activity` VALUES (1868, 5, 'User membuka Setting Website', '2024-11-22 10:29:44', NULL);
INSERT INTO `activity` VALUES (1869, 5, 'User membuka Setting Website', '2024-11-22 10:30:11', NULL);
INSERT INTO `activity` VALUES (1870, 5, 'User membuka Setting Website', '2024-11-22 10:30:49', NULL);
INSERT INTO `activity` VALUES (1871, 5, 'User membuka Setting Website', '2024-11-22 10:31:02', NULL);
INSERT INTO `activity` VALUES (1872, 5, 'User membuka Setting Website', '2024-11-22 10:34:24', NULL);
INSERT INTO `activity` VALUES (1873, 5, 'User membuka Setting Website', '2024-11-22 10:34:26', NULL);
INSERT INTO `activity` VALUES (1874, 5, 'User membuka Setting Website', '2024-11-22 10:34:41', NULL);
INSERT INTO `activity` VALUES (1875, 5, 'User membuka Setting Website', '2024-11-22 10:39:07', NULL);
INSERT INTO `activity` VALUES (1876, 5, 'User membuka Setting Website', '2024-11-22 10:39:15', NULL);
INSERT INTO `activity` VALUES (1877, 5, 'User membuka Setting Website', '2024-11-22 10:39:18', NULL);
INSERT INTO `activity` VALUES (1878, 5, 'User membuka Setting Website', '2024-11-22 10:40:05', NULL);
INSERT INTO `activity` VALUES (1879, 5, 'User membuka Setting Website', '2024-11-22 10:40:34', NULL);
INSERT INTO `activity` VALUES (1880, 5, 'User membuka Setting Website', '2024-11-22 10:40:43', NULL);
INSERT INTO `activity` VALUES (1881, 5, 'User membuka Setting Website', '2024-11-22 10:40:57', NULL);
INSERT INTO `activity` VALUES (1882, 5, 'User membuka Setting Website', '2024-11-22 10:41:53', NULL);
INSERT INTO `activity` VALUES (1883, 5, 'User membuka Setting Website', '2024-11-22 10:41:55', NULL);
INSERT INTO `activity` VALUES (1884, 5, 'User membuka Setting Website', '2024-11-22 10:41:57', NULL);
INSERT INTO `activity` VALUES (1885, 5, 'User membuka Setting Website', '2024-11-22 10:42:41', NULL);
INSERT INTO `activity` VALUES (1886, 5, 'User membuka Setting Website', '2024-11-22 10:43:16', NULL);
INSERT INTO `activity` VALUES (1887, 5, 'User membuka Setting Website', '2024-11-22 10:43:17', NULL);
INSERT INTO `activity` VALUES (1888, 5, 'User membuka Setting Website', '2024-11-22 10:43:19', NULL);
INSERT INTO `activity` VALUES (1889, 5, 'User membuka Setting Website', '2024-11-22 10:43:20', NULL);
INSERT INTO `activity` VALUES (1890, 5, 'User membuka Setting Website', '2024-11-22 10:46:26', NULL);
INSERT INTO `activity` VALUES (1891, 5, 'User membuka Setting Website', '2024-11-22 10:46:28', NULL);
INSERT INTO `activity` VALUES (1892, 5, 'User membuka Setting Website', '2024-11-22 10:47:54', NULL);
INSERT INTO `activity` VALUES (1893, 5, 'User membuka Setting Website', '2024-11-22 10:48:14', NULL);
INSERT INTO `activity` VALUES (1894, NULL, 'User membuka Setting Website', '2024-11-22 23:19:22', NULL);
INSERT INTO `activity` VALUES (1895, 5, 'User membuka Setting Website', '2024-11-22 23:21:36', NULL);
INSERT INTO `activity` VALUES (1896, 5, 'User membuka Setting Website', '2024-11-22 23:21:40', NULL);
INSERT INTO `activity` VALUES (1897, 5, 'User membuka Setting Website', '2024-11-22 23:24:32', NULL);
INSERT INTO `activity` VALUES (1898, 5, 'User membuka Setting Website', '2024-11-22 23:29:58', NULL);
INSERT INTO `activity` VALUES (1899, 5, 'User membuka Setting Website', '2024-11-22 23:33:29', NULL);
INSERT INTO `activity` VALUES (1900, 5, 'User membuka Setting Website', '2024-11-22 23:34:07', NULL);
INSERT INTO `activity` VALUES (1901, 5, 'User membuka Setting Website', '2024-11-22 23:35:25', NULL);
INSERT INTO `activity` VALUES (1902, 5, 'User membuka Setting Website', '2024-11-22 23:35:40', NULL);
INSERT INTO `activity` VALUES (1903, 5, 'User membuka Setting Website', '2024-11-22 23:35:54', NULL);
INSERT INTO `activity` VALUES (1904, 5, 'User membuka Setting Website', '2024-11-22 23:35:58', NULL);
INSERT INTO `activity` VALUES (1905, 5, 'User membuka Setting Website', '2024-11-23 00:15:23', NULL);
INSERT INTO `activity` VALUES (1906, 5, 'User membuka Setting Website', '2024-11-23 00:15:52', NULL);
INSERT INTO `activity` VALUES (1907, 5, 'User membuka Setting Website', '2024-11-23 02:10:53', NULL);
INSERT INTO `activity` VALUES (1908, 5, 'User membuka Setting Website', '2024-11-23 02:10:59', NULL);
INSERT INTO `activity` VALUES (1909, 5, 'User membuka Setting Website', '2024-11-23 02:11:18', NULL);
INSERT INTO `activity` VALUES (1910, 5, 'User membuka Setting Website', '2024-11-23 02:13:39', NULL);
INSERT INTO `activity` VALUES (1911, 5, 'User membuka Setting Website', '2024-11-23 02:14:00', NULL);
INSERT INTO `activity` VALUES (1912, 5, 'User membuka Setting Website', '2024-11-23 02:15:05', NULL);
INSERT INTO `activity` VALUES (1913, 5, 'User membuka Setting Website', '2024-11-23 02:15:17', NULL);
INSERT INTO `activity` VALUES (1914, 5, 'User membuka Setting Website', '2024-11-23 02:16:29', NULL);
INSERT INTO `activity` VALUES (1915, 5, 'User membuka Setting Website', '2024-11-23 02:20:38', NULL);
INSERT INTO `activity` VALUES (1916, 5, 'User membuka Setting Website', '2024-11-23 02:20:40', NULL);
INSERT INTO `activity` VALUES (1917, 5, 'User membuka Setting Website', '2024-11-23 02:20:50', NULL);
INSERT INTO `activity` VALUES (1918, 5, 'User membuka Setting Website', '2024-11-23 02:23:49', NULL);
INSERT INTO `activity` VALUES (1919, 5, 'User membuka Setting Website', '2024-11-23 02:23:53', NULL);
INSERT INTO `activity` VALUES (1920, 5, 'User membuka Setting Website', '2024-11-23 02:23:56', NULL);
INSERT INTO `activity` VALUES (1921, 5, 'User membuka Setting Website', '2024-11-23 02:23:57', NULL);
INSERT INTO `activity` VALUES (1922, 5, 'User membuka Setting Website', '2024-11-23 02:25:09', NULL);
INSERT INTO `activity` VALUES (1923, 5, 'User membuka Setting Website', '2024-11-23 02:25:12', NULL);
INSERT INTO `activity` VALUES (1924, 5, 'User membuka Setting Website', '2024-11-23 02:25:58', NULL);
INSERT INTO `activity` VALUES (1925, 5, 'User membuka Setting Website', '2024-11-23 02:26:01', NULL);
INSERT INTO `activity` VALUES (1926, 5, 'User membuka Setting Website', '2024-11-23 02:26:07', NULL);
INSERT INTO `activity` VALUES (1927, 5, 'User membuka Setting Website', '2024-11-23 02:26:17', NULL);
INSERT INTO `activity` VALUES (1928, 5, 'User membuka Setting Website', '2024-11-23 02:26:23', NULL);
INSERT INTO `activity` VALUES (1929, 5, 'User membuka Setting Website', '2024-11-23 02:31:20', NULL);
INSERT INTO `activity` VALUES (1930, 5, 'User membuka Setting Website', '2024-11-23 02:31:24', NULL);
INSERT INTO `activity` VALUES (1931, 5, 'User membuka Setting Website', '2024-11-23 02:31:58', NULL);
INSERT INTO `activity` VALUES (1932, 5, 'User membuka Setting Website', '2024-11-23 02:32:33', NULL);
INSERT INTO `activity` VALUES (1933, 5, 'User membuka Setting Website', '2024-11-23 02:32:38', NULL);
INSERT INTO `activity` VALUES (1934, 5, 'User membuka Setting Website', '2024-11-23 02:33:22', NULL);
INSERT INTO `activity` VALUES (1935, 5, 'User membuka Setting Website', '2024-11-23 02:33:38', NULL);
INSERT INTO `activity` VALUES (1936, 5, 'User membuka Setting Website', '2024-11-23 02:33:47', NULL);
INSERT INTO `activity` VALUES (1937, 5, 'User membuka Setting Website', '2024-11-23 02:36:24', NULL);
INSERT INTO `activity` VALUES (1938, 5, 'User membuka Setting Website', '2024-11-23 02:36:38', NULL);
INSERT INTO `activity` VALUES (1939, 5, 'User membuka Setting Website', '2024-11-23 02:36:39', NULL);
INSERT INTO `activity` VALUES (1940, 5, 'User Restore Update User', '2024-11-23 02:36:41', NULL);
INSERT INTO `activity` VALUES (1941, 5, 'User membuka Setting Website', '2024-11-23 02:36:41', NULL);
INSERT INTO `activity` VALUES (1942, 5, 'User Restore Update User', '2024-11-23 02:36:47', NULL);
INSERT INTO `activity` VALUES (1943, 5, 'User membuka Setting Website', '2024-11-23 02:36:48', NULL);
INSERT INTO `activity` VALUES (1944, 5, 'User membuka Setting Website', '2024-11-23 02:36:50', NULL);
INSERT INTO `activity` VALUES (1945, 5, 'User membuka Setting Website', '2024-11-23 02:36:55', NULL);
INSERT INTO `activity` VALUES (1946, 5, 'User membuka Setting Website', '2024-11-23 02:37:03', NULL);
INSERT INTO `activity` VALUES (1947, 5, 'User membuka Setting Website', '2024-11-23 02:37:07', NULL);
INSERT INTO `activity` VALUES (1948, 5, 'User membuka Setting Website', '2024-11-23 02:39:14', NULL);
INSERT INTO `activity` VALUES (1949, 5, 'User membuka Setting Website', '2024-11-23 02:39:16', NULL);
INSERT INTO `activity` VALUES (1950, 5, 'User membuka Setting Website', '2024-11-23 02:39:18', NULL);
INSERT INTO `activity` VALUES (1951, 5, 'User Restore Update User', '2024-11-23 02:39:28', NULL);
INSERT INTO `activity` VALUES (1952, 5, 'User membuka Setting Website', '2024-11-23 02:39:29', NULL);
INSERT INTO `activity` VALUES (1953, 5, 'User membuka Setting Website', '2024-11-23 02:39:31', NULL);
INSERT INTO `activity` VALUES (1954, 5, 'User membuka Setting Website', '2024-11-23 02:39:34', NULL);
INSERT INTO `activity` VALUES (1955, 5, 'User membuka Setting Website', '2024-11-23 02:40:02', NULL);
INSERT INTO `activity` VALUES (1956, 5, 'User membuka Setting Website', '2024-11-23 02:41:08', NULL);
INSERT INTO `activity` VALUES (1957, 5, 'User membuka Setting Website', '2024-11-23 02:41:12', NULL);
INSERT INTO `activity` VALUES (1958, 5, 'User membuka Setting Website', '2024-11-23 02:42:17', NULL);
INSERT INTO `activity` VALUES (1959, 5, 'User membuka Setting Website', '2024-11-23 02:42:19', NULL);
INSERT INTO `activity` VALUES (1960, 5, 'User membuka Setting Website', '2024-11-23 02:44:03', NULL);
INSERT INTO `activity` VALUES (1961, 5, 'User membuka Setting Website', '2024-11-23 02:45:08', NULL);
INSERT INTO `activity` VALUES (1962, 5, 'User membuka Setting Website', '2024-11-23 02:47:03', NULL);
INSERT INTO `activity` VALUES (1963, 5, 'User membuka Setting Website', '2024-11-23 02:47:08', NULL);
INSERT INTO `activity` VALUES (1964, 5, 'User membuka Setting Website', '2024-11-23 02:48:16', NULL);
INSERT INTO `activity` VALUES (1965, 5, 'User membuka Setting Website', '2024-11-23 02:48:18', NULL);
INSERT INTO `activity` VALUES (1966, 5, 'User membuka Setting Website', '2024-11-23 02:48:23', NULL);
INSERT INTO `activity` VALUES (1967, 5, 'User Restore Update User', '2024-11-23 02:49:07', NULL);
INSERT INTO `activity` VALUES (1968, 5, 'User membuka Setting Website', '2024-11-23 02:49:07', NULL);
INSERT INTO `activity` VALUES (1969, 5, 'User membuka Setting Website', '2024-11-23 02:49:13', NULL);
INSERT INTO `activity` VALUES (1970, 5, 'User membuka Setting Website', '2024-11-23 02:49:16', NULL);
INSERT INTO `activity` VALUES (1971, 5, 'User membuka Setting Website', '2024-11-23 02:49:55', NULL);
INSERT INTO `activity` VALUES (1972, 5, 'User membuka Setting Website', '2024-11-23 02:49:58', NULL);
INSERT INTO `activity` VALUES (1973, 5, 'User membuka Setting Website', '2024-11-23 02:53:33', NULL);
INSERT INTO `activity` VALUES (1974, 5, 'User membuka Setting Website', '2024-11-23 02:53:36', NULL);
INSERT INTO `activity` VALUES (1975, 5, 'User membuka Setting Website', '2024-11-23 02:53:58', NULL);
INSERT INTO `activity` VALUES (1976, 5, 'User membuka Setting Website', '2024-11-23 02:54:24', NULL);
INSERT INTO `activity` VALUES (1977, 5, 'User membuka Setting Website', '2024-11-23 02:57:40', NULL);
INSERT INTO `activity` VALUES (1978, 5, 'User membuka Setting Website', '2024-11-23 02:59:26', NULL);
INSERT INTO `activity` VALUES (1979, 5, 'User membuka Setting Website', '2024-11-23 02:59:56', NULL);
INSERT INTO `activity` VALUES (1980, 5, 'User membuka Setting Website', '2024-11-23 03:00:24', NULL);
INSERT INTO `activity` VALUES (1981, 5, 'User membuka Setting Website', '2024-11-23 03:00:31', NULL);
INSERT INTO `activity` VALUES (1982, 5, 'User membuka Setting Website', '2024-11-23 03:01:23', NULL);
INSERT INTO `activity` VALUES (1983, 5, 'User membuka Manage Menu', '2024-11-23 03:03:17', NULL);
INSERT INTO `activity` VALUES (1984, 5, 'User membuka Manage Menu', '2024-11-23 03:03:22', NULL);
INSERT INTO `activity` VALUES (1985, 5, 'User membuka Setting Website', '2024-11-23 03:03:47', NULL);
INSERT INTO `activity` VALUES (1986, 5, 'User membuka Form User', '2024-11-23 03:04:36', NULL);
INSERT INTO `activity` VALUES (1987, 5, 'User membuka Form User', '2024-11-23 03:05:36', NULL);
INSERT INTO `activity` VALUES (1988, 5, 'User membuka Setting Website', '2024-11-23 03:05:50', NULL);
INSERT INTO `activity` VALUES (1989, 5, 'User membuka Setting Website', '2024-11-23 03:55:39', NULL);
INSERT INTO `activity` VALUES (1990, 5, 'User membuka Setting Website', '2024-11-23 03:56:10', NULL);
INSERT INTO `activity` VALUES (1991, 5, 'User membuka Manage Menu', '2024-11-23 03:58:45', NULL);
INSERT INTO `activity` VALUES (1992, 5, 'User membuka Setting Website', '2024-11-23 04:00:38', NULL);
INSERT INTO `activity` VALUES (1993, 5, 'User membuka Setting Website', '2024-11-23 04:00:43', NULL);
INSERT INTO `activity` VALUES (1994, 5, 'User membuka Setting Website', '2024-11-23 04:04:21', NULL);
INSERT INTO `activity` VALUES (1995, 5, 'User membuka Setting Website', '2024-11-23 04:04:43', NULL);
INSERT INTO `activity` VALUES (1996, 5, 'User membuka Setting Website', '2024-11-23 04:04:51', NULL);
INSERT INTO `activity` VALUES (1997, 5, 'User membuka Setting Website', '2024-11-23 04:06:04', NULL);
INSERT INTO `activity` VALUES (1998, 5, 'User membuka Setting Website', '2024-11-23 04:10:53', NULL);
INSERT INTO `activity` VALUES (1999, 5, 'User membuka Setting Website', '2024-11-23 04:11:08', NULL);
INSERT INTO `activity` VALUES (2000, 5, 'User membuka Setting Website', '2024-11-23 04:11:12', NULL);
INSERT INTO `activity` VALUES (2001, 5, 'User membuka Setting Website', '2024-11-23 04:13:29', NULL);
INSERT INTO `activity` VALUES (2002, 5, 'User membuka Setting Website', '2024-11-23 04:13:33', NULL);
INSERT INTO `activity` VALUES (2003, 5, 'User membuka Setting Website', '2024-11-23 04:14:19', NULL);
INSERT INTO `activity` VALUES (2004, 5, 'User membuka Setting Website', '2024-11-23 04:14:50', NULL);
INSERT INTO `activity` VALUES (2005, 5, 'User membuka Setting Website', '2024-11-23 04:14:55', NULL);
INSERT INTO `activity` VALUES (2006, 5, 'User membuka Setting Website', '2024-11-23 04:15:07', NULL);
INSERT INTO `activity` VALUES (2007, 5, 'User membuka Setting Website', '2024-11-23 04:19:24', NULL);
INSERT INTO `activity` VALUES (2008, 5, 'User membuka Setting Website', '2024-11-23 04:19:33', NULL);
INSERT INTO `activity` VALUES (2009, 5, 'User membuka Setting Website', '2024-11-23 04:19:48', NULL);
INSERT INTO `activity` VALUES (2010, 5, 'User membuka Setting Website', '2024-11-23 04:20:43', NULL);
INSERT INTO `activity` VALUES (2011, 5, 'User membuka Setting Website', '2024-11-23 04:20:48', NULL);
INSERT INTO `activity` VALUES (2012, 5, 'User membuka Setting Website', '2024-11-23 04:21:44', NULL);
INSERT INTO `activity` VALUES (2013, 5, 'User membuka Setting Website', '2024-11-23 04:21:58', NULL);
INSERT INTO `activity` VALUES (2014, 5, 'User membuka Setting Website', '2024-11-23 04:24:11', NULL);
INSERT INTO `activity` VALUES (2015, 5, 'User membuka Setting Website', '2024-11-23 04:24:18', NULL);

-- ----------------------------
-- Table structure for daftar_penyakit
-- ----------------------------
DROP TABLE IF EXISTS `daftar_penyakit`;
CREATE TABLE `daftar_penyakit`  (
  `id_penyakit` int NOT NULL AUTO_INCREMENT,
  `id_rs` int NOT NULL,
  `nama_penyakit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `biaya_penyakit` decimal(65, 2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_penyakit`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of daftar_penyakit
-- ----------------------------
INSERT INTO `daftar_penyakit` VALUES (1, 1, 'Demam Berdarah', 1500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (2, 1, 'Flu Singapura', 1000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (3, 1, 'Malaria', 2000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (4, 1, 'Pneumonia', 1800000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (5, 1, 'Tifus', 1200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (6, 1, 'Hepatitis A', 1700000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (7, 1, 'Diare', 900000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (8, 1, 'Gastritis', 1300000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (9, 1, 'Chikungunya', 1400000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (10, 1, 'Tuberkulosis', 2500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (11, 1, 'Stroke', 3000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (12, 1, 'Asma', 1600000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (13, 1, 'Infeksi Saluran Pernapasan', 1100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (14, 1, 'Kanker Paru-paru', 5000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (15, 1, 'Diabetes', 2000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (16, 1, 'Jantung Koroner', 4000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (17, 1, 'Sindrom Nefrotik', 3500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (18, 1, 'Arthritis', 2500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (19, 1, 'Gagal Ginjal', 4500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (20, 1, 'Penyakit Kelenjar Tiroid', 2200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (21, 1, 'Katarak', 1800000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (22, 1, 'Sakit Kepala Migrain', 900000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (23, 1, 'Sindrom Carpal Tunnel', 1200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (24, 1, 'Penyakit Jantung Rematik', 3000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (25, 1, 'HIV/AIDS', 6000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (26, 1, 'Penyakit Parkinson', 3500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (27, 1, 'Penyakit Alzheimer', 4000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (28, 1, 'Gondongan', 800000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (29, 1, 'Penyakit Gigi dan Mulut', 500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (30, 1, 'Cedera Otak Traumatik', 5000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (31, 1, 'Hernia', 2500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (32, 2, 'Kanker Paru-paru', 5500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (33, 2, 'Diabetes', 2100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (34, 2, 'Jantung Koroner', 4100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (35, 2, 'Stroke', 3100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (36, 2, 'Tuberkulosis', 2600000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (37, 2, 'Malaria', 2100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (38, 2, 'Asma', 1700000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (39, 2, 'Infeksi Saluran Pernapasan', 1200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (40, 2, 'Hepatitis B', 1900000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (41, 2, 'Tifus', 1250000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (42, 2, 'Gastritis', 1350000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (43, 2, 'Pneumonia', 1850000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (44, 2, 'Sindrom Nefrotik', 3600000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (45, 2, 'Gagal Ginjal', 4600000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (46, 2, 'Katarak', 1850000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (47, 2, 'Arthritis', 2600000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (48, 2, 'Sindrom Carpal Tunnel', 1300000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (49, 2, 'Penyakit Kelenjar Tiroid', 2300000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (50, 2, 'Penyakit Parkinson', 3600000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (51, 2, 'Penyakit Alzheimer', 4100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (52, 2, 'HIV/AIDS', 6200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (53, 2, 'Penyakit Gigi dan Mulut', 520000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (54, 2, 'Cedera Otak Traumatik', 5100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (55, 2, 'Hernia', 2600000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (56, 2, 'Flu Singapura', 1050000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (57, 2, 'Demam Berdarah', 1600000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (58, 2, 'Chikungunya', 1450000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (59, 2, 'Sakit Kepala Migrain', 950000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (60, 2, 'Gondongan', 850000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (61, 2, 'Jantung Rematik', 3100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (62, 2, 'Kanker Serviks', 5100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (63, 3, 'Kanker Payudara', 5600000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (64, 3, 'Tifus', 1300000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (65, 3, 'Diabetes', 2200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (66, 3, 'Stroke', 3200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (67, 3, 'Hepatitis C', 2100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (68, 3, 'Malaria', 2200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (69, 3, 'Tuberkulosis', 2700000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (70, 3, 'Arthritis', 2700000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (71, 3, 'Gastritis', 1400000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (72, 3, 'Pneumonia', 1900000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (73, 3, 'Gagal Ginjal', 4700000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (74, 3, 'Katarak', 1900000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (75, 3, 'Penyakit Parkinson', 3700000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (76, 3, 'Penyakit Alzheimer', 4200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (77, 3, 'Sindrom Nefrotik', 3700000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (78, 3, 'Penyakit Jantung Rematik', 3200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (79, 3, 'Sindrom Carpal Tunnel', 1350000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (80, 3, 'Gondongan', 880000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (81, 3, 'Flu Singapura', 1100000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (82, 3, 'Demam Berdarah', 1550000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (83, 3, 'HIV/AIDS', 6300000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (84, 3, 'Kanker Serviks', 5200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (85, 3, 'Sakit Kepala Migrain', 1000000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (86, 3, 'Cedera Otak Traumatik', 5200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (87, 3, 'Chikungunya', 1500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (88, 3, 'Penyakit Gigi dan Mulut', 550000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (89, 3, 'Jantung Koroner', 4200000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (90, 3, 'Hernia', 2700000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (91, 3, 'Kanker Paru-paru', 5500000.00, '2024-11-19 11:30:32', '1');
INSERT INTO `daftar_penyakit` VALUES (98, 4, 'Sindrom Cihuy', 120000000.00, '2024-11-23 15:15:29', '');
INSERT INTO `daftar_penyakit` VALUES (99, 5, 'Sindrom Cihuy', 120000.00, '2024-11-23 17:21:01', '');
INSERT INTO `daftar_penyakit` VALUES (100, 5, 'au ah', 1300000.00, '2024-11-23 17:21:54', '');

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level`  (
  `id_level` int NOT NULL AUTO_INCREMENT,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES (1, 'Admin');
INSERT INTO `level` VALUES (2, 'Admin Rumah Sakit');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `level` int NULL DEFAULT NULL,
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 1, '1', '1', '1');
INSERT INTO `menu` VALUES (2, 2, '1', '1', '1');
INSERT INTO `menu` VALUES (3, 3, '1', '1', '1');
INSERT INTO `menu` VALUES (4, 4, '1', '1', '1');
INSERT INTO `menu` VALUES (5, 0, '0', '0', '0');

-- ----------------------------
-- Table structure for rumah_sakit
-- ----------------------------
DROP TABLE IF EXISTS `rumah_sakit`;
CREATE TABLE `rumah_sakit`  (
  `id_rs` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_rs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `negara` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kota` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nomor_surat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_surat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_rs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rumah_sakit
-- ----------------------------
INSERT INTO `rumah_sakit` VALUES (1, 5, 'rs_cinta_kasih.jpg', 'RS Cinta Kasih', 'Indonesia', 'Jakarta', '123456789', 'Surat Izin Operasional', '2024-11-23 15:32:38', '', NULL);
INSERT INTO `rumah_sakit` VALUES (2, 5, 'rs_harapan_kita.jpg', 'RS Harapan Kita', 'Indonesia', 'Bandung', '987654321', 'Surat Izin Operasional', '2024-11-19 11:30:00', '1', NULL);
INSERT INTO `rumah_sakit` VALUES (3, 5, 'rs_siloam.jpg', 'RS Siloam', 'Indonesia', 'Surabaya', '1122334455', 'Surat Izin Operasional', '2024-11-19 11:30:00', '1', NULL);
INSERT INTO `rumah_sakit` VALUES (4, 5, 'download (1).jfif', 'awal mula', 'india', 'chana chana', '()(*(&^^&%', 'gtw', '2024-11-22 23:12:01', '5', NULL);
INSERT INTO `rumah_sakit` VALUES (5, 5, 'AESTHETIC WALLPAPERS FOR PC 4K.jfif', 'aaa', 'india', 'alalala', '123$#$%#$%^#@3456', 'gt', '2024-11-22 23:13:54', '5', NULL);

-- ----------------------------
-- Table structure for rumah_sakit_backup
-- ----------------------------
DROP TABLE IF EXISTS `rumah_sakit_backup`;
CREATE TABLE `rumah_sakit_backup`  (
  `id_rs` int NOT NULL AUTO_INCREMENT,
  `id_user` int NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_rs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `negara` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kota` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nomor_surat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_surat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deleted` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_rs`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rumah_sakit_backup
-- ----------------------------
INSERT INTO `rumah_sakit_backup` VALUES (1, NULL, 'rs_cinta_kasih.jpg', 'RS Cinta Kasih', 'Indonesiasda', 'Jakarta', '123456789', 'Surat Izin Operasional', '2024-11-23 15:32:38', '', NULL);

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, 'Info Rumah Sakit', 'logo.png', '2.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `id_rs` int NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (5, NULL, 1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'leonardo22@gmail.com', NULL, NULL);
INSERT INTO `user` VALUES (6, NULL, 2, 'leonardo', '5b7579069280fe8db6f7823769b1094c', 'leonardojaylenson28@gmail.com', NULL, '2024-11-23 03:05:50');

-- ----------------------------
-- Table structure for user_backup
-- ----------------------------
DROP TABLE IF EXISTS `user_backup`;
CREATE TABLE `user_backup`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `id_rs` int NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deleted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_backup
-- ----------------------------
INSERT INTO `user_backup` VALUES (5, NULL, 1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'leonardo22@gmail.com', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
