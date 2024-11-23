/*
 Navicat Premium Data Transfer

 Source Server         : Leonardo
 Source Server Type    : MySQL
 Source Server Version : 100424 (10.4.24-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : perbandingan_rs

 Target Server Type    : MySQL
 Target Server Version : 100424 (10.4.24-MariaDB)
 File Encoding         : 65001

 Date: 21/11/2024 10:06:09
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
) ENGINE = InnoDB AUTO_INCREMENT = 1852 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1728, 1, 'User membuka Dashboard', '2024-11-11 09:40:40', NULL);
INSERT INTO `activity` VALUES (1729, 1, 'User membuka Dashboard', '2024-11-11 20:00:01', NULL);
INSERT INTO `activity` VALUES (1730, 1, 'User membuka Folder Dokumen', '2024-11-11 20:00:31', NULL);
INSERT INTO `activity` VALUES (1731, 1, 'User membuka Folder Dokumen', '2024-11-11 20:02:00', NULL);
INSERT INTO `activity` VALUES (1732, 1, 'User membuka Folder Dokumen', '2024-11-11 20:02:10', NULL);
INSERT INTO `activity` VALUES (1733, 1, 'User membuka Folder Dokumen', '2024-11-11 20:02:23', NULL);
INSERT INTO `activity` VALUES (1734, 1, 'User membuka Folder Dokumen', '2024-11-11 20:06:48', NULL);
INSERT INTO `activity` VALUES (1735, 1, 'User membuka Folder', '2024-11-11 20:06:52', NULL);
INSERT INTO `activity` VALUES (1736, 1, 'User membuka Folder', '2024-11-11 20:08:09', NULL);
INSERT INTO `activity` VALUES (1737, 1, 'User membuka Folder', '2024-11-11 20:08:52', NULL);
INSERT INTO `activity` VALUES (1738, 1, 'User membuka Folder', '2024-11-11 20:09:10', NULL);
INSERT INTO `activity` VALUES (1739, 1, 'User membuka Folder', '2024-11-11 20:09:40', NULL);
INSERT INTO `activity` VALUES (1740, 1, 'User membuka Folder', '2024-11-11 20:09:52', NULL);
INSERT INTO `activity` VALUES (1741, 1, 'User membuka Folder Dokumen', '2024-11-11 20:10:17', NULL);
INSERT INTO `activity` VALUES (1742, 1, 'User membuka Form Folder', '2024-11-11 20:10:20', NULL);
INSERT INTO `activity` VALUES (1743, 1, 'User membuka Folder Dokumen', '2024-11-11 20:10:52', NULL);
INSERT INTO `activity` VALUES (1744, 1, 'User membuka Folder', '2024-11-11 20:10:59', NULL);
INSERT INTO `activity` VALUES (1745, 1, 'User membuka Folder Dokumen', '2024-11-11 20:11:43', NULL);
INSERT INTO `activity` VALUES (1746, 1, 'User membuka Form Folder', '2024-11-11 20:11:52', NULL);
INSERT INTO `activity` VALUES (1747, 1, 'User membuka Folder Dokumen', '2024-11-11 20:13:22', NULL);
INSERT INTO `activity` VALUES (1748, 1, 'User membuka Form Folder', '2024-11-11 20:15:34', NULL);
INSERT INTO `activity` VALUES (1749, 1, 'User membuka Form Folder', '2024-11-11 20:15:45', NULL);
INSERT INTO `activity` VALUES (1750, 1, 'User membuka Form Folder', '2024-11-11 20:15:59', NULL);
INSERT INTO `activity` VALUES (1751, 1, 'User membuka Form Folder', '2024-11-11 20:16:23', NULL);
INSERT INTO `activity` VALUES (1752, 1, 'User membuka Form Folder', '2024-11-11 20:17:47', NULL);
INSERT INTO `activity` VALUES (1753, 1, 'User membuka Form Folder', '2024-11-11 20:19:21', NULL);
INSERT INTO `activity` VALUES (1754, 1, 'User membuka Folder Dokumen', '2024-11-11 20:20:40', NULL);
INSERT INTO `activity` VALUES (1755, 1, 'User membuka Folder Dokumen', '2024-11-11 20:21:38', NULL);
INSERT INTO `activity` VALUES (1756, 1, 'User membuka Folder Dokumen', '2024-11-11 20:22:00', NULL);
INSERT INTO `activity` VALUES (1757, 1, 'User membuka Folder Dokumen', '2024-11-11 20:22:45', NULL);
INSERT INTO `activity` VALUES (1758, 1, 'User membuka Folder Dokumen', '2024-11-11 20:23:04', NULL);
INSERT INTO `activity` VALUES (1759, 1, 'User membuka Folder Dokumen', '2024-11-11 20:28:07', NULL);
INSERT INTO `activity` VALUES (1760, 1, 'User membuka Folder Dokumen', '2024-11-11 20:29:13', NULL);
INSERT INTO `activity` VALUES (1761, 1, 'User membuka Folder Dokumen', '2024-11-11 20:44:04', NULL);
INSERT INTO `activity` VALUES (1762, 1, 'User membuka Folder Dokumen', '2024-11-11 20:44:16', NULL);
INSERT INTO `activity` VALUES (1763, 1, 'User membuka Dokumen', '2024-11-11 20:44:52', NULL);
INSERT INTO `activity` VALUES (1764, 1, 'User membuka Folder Dokumen', '2024-11-11 20:44:57', NULL);
INSERT INTO `activity` VALUES (1765, 1, 'User membuka Folder Dokumen', '2024-11-11 20:46:03', NULL);
INSERT INTO `activity` VALUES (1766, 1, 'User membuka Folder Dokumen', '2024-11-11 20:47:30', NULL);
INSERT INTO `activity` VALUES (1767, 1, 'User membuka Folder Dokumen', '2024-11-11 20:47:40', NULL);
INSERT INTO `activity` VALUES (1768, 1, 'User membuka Folder', '2024-11-11 20:48:10', NULL);
INSERT INTO `activity` VALUES (1769, 1, 'User membuka Folder', '2024-11-11 20:49:05', NULL);
INSERT INTO `activity` VALUES (1770, 1, 'User membuka Folder', '2024-11-11 20:50:03', NULL);
INSERT INTO `activity` VALUES (1771, 1, 'User membuka Folder', '2024-11-11 20:50:17', NULL);
INSERT INTO `activity` VALUES (1772, 1, 'User membuka Folder', '2024-11-11 20:55:18', NULL);
INSERT INTO `activity` VALUES (1773, 1, 'User membuka Form Edit User', '2024-11-11 20:55:24', NULL);
INSERT INTO `activity` VALUES (1774, 1, 'User membuka Form Edit User', '2024-11-11 20:55:55', NULL);
INSERT INTO `activity` VALUES (1775, 1, 'User membuka Folder Dokumen', '2024-11-11 20:56:36', NULL);
INSERT INTO `activity` VALUES (1776, 1, 'User membuka Surat Masuk', '2024-11-11 20:56:37', NULL);
INSERT INTO `activity` VALUES (1777, 1, 'User membuka Surat Keluar', '2024-11-11 20:56:48', NULL);
INSERT INTO `activity` VALUES (1778, 1, 'User membuka Surat Masuk', '2024-11-11 20:56:59', NULL);
INSERT INTO `activity` VALUES (1779, 1, 'User membuka Surat Keluar', '2024-11-11 20:57:09', NULL);
INSERT INTO `activity` VALUES (1780, 1, 'User membuka Folder Dokumen', '2024-11-11 20:57:10', NULL);
INSERT INTO `activity` VALUES (1781, 1, 'User membuka Dokumen', '2024-11-11 20:57:55', NULL);
INSERT INTO `activity` VALUES (1782, 1, 'User membuka Folder Dokumen', '2024-11-11 20:58:05', NULL);
INSERT INTO `activity` VALUES (1783, 1, 'User membuka Folder', '2024-11-11 20:58:11', NULL);
INSERT INTO `activity` VALUES (1784, 1, 'User membuka Form Edit User', '2024-11-11 20:58:21', NULL);
INSERT INTO `activity` VALUES (1785, 1, 'User membuka Form Edit User', '2024-11-11 20:59:16', NULL);
INSERT INTO `activity` VALUES (1786, 1, 'User membuka Form Edit User', '2024-11-11 20:59:31', NULL);
INSERT INTO `activity` VALUES (1787, 1, 'User membuka Surat Keluar', '2024-11-11 21:01:55', NULL);
INSERT INTO `activity` VALUES (1788, 1, 'User membuka Surat Keluar', '2024-11-11 21:04:14', NULL);
INSERT INTO `activity` VALUES (1789, 1, 'User membuka Folder Dokumen', '2024-11-11 21:04:15', NULL);
INSERT INTO `activity` VALUES (1790, 1, 'User membuka Folder', '2024-11-11 21:04:19', NULL);
INSERT INTO `activity` VALUES (1791, 1, 'User membuka Form Edit User', '2024-11-11 21:04:27', NULL);
INSERT INTO `activity` VALUES (1792, 1, 'User membuka Form Edit User', '2024-11-11 21:04:48', NULL);
INSERT INTO `activity` VALUES (1793, 1, 'User membuka Form Edit User', '2024-11-11 21:05:08', NULL);
INSERT INTO `activity` VALUES (1794, 1, 'User membuka Form Edit User', '2024-11-11 21:05:50', NULL);
INSERT INTO `activity` VALUES (1795, 1, 'User membuka Dashboard', '2024-11-11 22:10:29', NULL);
INSERT INTO `activity` VALUES (1796, 1, 'User membuka PengajuanCuti', '2024-11-11 22:12:01', NULL);
INSERT INTO `activity` VALUES (1797, 1, 'User membuka PengajuanCuti', '2024-11-11 22:12:43', NULL);
INSERT INTO `activity` VALUES (1798, 1, 'User membuka PengajuanCuti', '2024-11-11 22:15:16', NULL);
INSERT INTO `activity` VALUES (1799, 1, 'User membuka Data Surat Masuk', '2024-11-11 22:15:27', NULL);
INSERT INTO `activity` VALUES (1800, 1, 'User membuka PengajuanCuti', '2024-11-11 22:15:40', NULL);
INSERT INTO `activity` VALUES (1801, 1, 'User membuka PengajuanCuti', '2024-11-11 22:29:44', NULL);
INSERT INTO `activity` VALUES (1802, 1, 'User membuka Data Keterlambatan', '2024-11-11 22:31:25', NULL);
INSERT INTO `activity` VALUES (1803, 1, 'User membuka Data Keterlambatan', '2024-11-11 22:34:16', NULL);
INSERT INTO `activity` VALUES (1804, 1, 'User membuka Data Keterlambatan', '2024-11-11 22:40:51', NULL);
INSERT INTO `activity` VALUES (1805, 1, 'User membuka Data Keterlambatan', '2024-11-11 22:41:46', NULL);
INSERT INTO `activity` VALUES (1806, 1, 'User membuka Data Keterlambatan', '2024-11-11 22:43:33', NULL);
INSERT INTO `activity` VALUES (1807, 1, 'User membuka Data Keterlambatan', '2024-11-11 22:44:03', NULL);
INSERT INTO `activity` VALUES (1808, 1, 'User membuka Data Keterlambatan', '2024-11-11 22:44:03', NULL);
INSERT INTO `activity` VALUES (1809, 1, 'User membuka Dashboard', '2024-11-11 22:44:14', NULL);
INSERT INTO `activity` VALUES (1810, 1, 'User membuka Dashboard', '2024-11-11 22:44:20', NULL);
INSERT INTO `activity` VALUES (1811, 1, 'User membuka Dashboard', '2024-11-11 22:45:48', NULL);
INSERT INTO `activity` VALUES (1812, 1, 'User membuka Data User', '2024-11-11 22:46:20', NULL);
INSERT INTO `activity` VALUES (1813, 1, 'User membuka Form User', '2024-11-11 22:46:23', NULL);
INSERT INTO `activity` VALUES (1814, 1, 'User membuka Data User', '2024-11-11 22:46:43', NULL);
INSERT INTO `activity` VALUES (1815, 1, 'User membuka Dashboard', '2024-11-11 22:46:45', NULL);
INSERT INTO `activity` VALUES (1816, 4, 'User membuka Dashboard', '2024-11-11 22:47:04', NULL);
INSERT INTO `activity` VALUES (1817, 4, 'User membuka Surat Keterlambatan', '2024-11-11 22:47:09', NULL);
INSERT INTO `activity` VALUES (1818, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:47:14', NULL);
INSERT INTO `activity` VALUES (1819, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:47:53', NULL);
INSERT INTO `activity` VALUES (1820, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:48:07', NULL);
INSERT INTO `activity` VALUES (1821, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:48:13', NULL);
INSERT INTO `activity` VALUES (1822, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:52:05', NULL);
INSERT INTO `activity` VALUES (1823, 4, 'User membuka Dashboard', '2024-11-11 22:52:08', NULL);
INSERT INTO `activity` VALUES (1824, 1, 'User membuka Dashboard', '2024-11-11 22:52:21', NULL);
INSERT INTO `activity` VALUES (1825, 1, 'User membuka Data User', '2024-11-11 22:52:26', NULL);
INSERT INTO `activity` VALUES (1826, 1, 'User membuka Form User', '2024-11-11 22:52:28', NULL);
INSERT INTO `activity` VALUES (1827, 2, 'User membuka Dashboard', '2024-11-11 22:52:59', NULL);
INSERT INTO `activity` VALUES (1828, 2, 'User membuka Data Keterlambatan', '2024-11-11 22:53:05', NULL);
INSERT INTO `activity` VALUES (1829, 2, 'User membuka Data Keterlambatan', '2024-11-11 22:53:33', NULL);
INSERT INTO `activity` VALUES (1830, 2, 'User membuka Dashboard', '2024-11-11 22:54:45', NULL);
INSERT INTO `activity` VALUES (1831, 4, 'User membuka Dashboard', '2024-11-11 22:54:57', NULL);
INSERT INTO `activity` VALUES (1832, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:55:03', NULL);
INSERT INTO `activity` VALUES (1833, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:55:44', NULL);
INSERT INTO `activity` VALUES (1834, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:56:15', NULL);
INSERT INTO `activity` VALUES (1835, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:56:25', NULL);
INSERT INTO `activity` VALUES (1836, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:56:50', NULL);
INSERT INTO `activity` VALUES (1837, 4, 'User membuka Dashboard', '2024-11-11 22:57:03', NULL);
INSERT INTO `activity` VALUES (1838, 2, 'User membuka Dashboard', '2024-11-11 22:57:15', NULL);
INSERT INTO `activity` VALUES (1839, 2, 'User membuka Data Keterlambatan', '2024-11-11 22:57:20', NULL);
INSERT INTO `activity` VALUES (1840, 2, 'User membuka Data Keterlambatan', '2024-11-11 22:57:44', NULL);
INSERT INTO `activity` VALUES (1841, 2, 'User membuka Data Keterlambatan', '2024-11-11 22:58:07', NULL);
INSERT INTO `activity` VALUES (1842, 2, 'User membuka Data Keterlambatan', '2024-11-11 22:58:22', NULL);
INSERT INTO `activity` VALUES (1843, 2, 'User membuka Dashboard', '2024-11-11 22:58:46', NULL);
INSERT INTO `activity` VALUES (1844, 4, 'User membuka Dashboard', '2024-11-11 22:58:58', NULL);
INSERT INTO `activity` VALUES (1845, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:59:03', NULL);
INSERT INTO `activity` VALUES (1846, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:59:19', NULL);
INSERT INTO `activity` VALUES (1847, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:59:25', NULL);
INSERT INTO `activity` VALUES (1848, 4, 'User membuka Data Keterlambatan', '2024-11-11 22:59:28', NULL);
INSERT INTO `activity` VALUES (1849, 4, 'User membuka Dashboard', '2024-11-11 22:59:45', NULL);
INSERT INTO `activity` VALUES (1850, 2, 'User membuka Dashboard', '2024-11-11 22:59:54', NULL);
INSERT INTO `activity` VALUES (1851, 2, 'User membuka Data Keterlambatan', '2024-11-11 22:59:59', NULL);

-- ----------------------------
-- Table structure for daftar_penyakit
-- ----------------------------
DROP TABLE IF EXISTS `daftar_penyakit`;
CREATE TABLE `daftar_penyakit`  (
  `id_penyakit` int NOT NULL AUTO_INCREMENT,
  `id_rs` int NOT NULL,
  `nama_penyakit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `biaya_penyakit` decimal(10, 2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_penyakit`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `surat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `datas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 1, '1', '1', '1', '1', '1');
INSERT INTO `menu` VALUES (2, 2, '1', '1', '1', '1', '1');
INSERT INTO `menu` VALUES (3, 3, '1', '1', '1', '1', '1');
INSERT INTO `menu` VALUES (4, 4, '1', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for rumah_sakit
-- ----------------------------
DROP TABLE IF EXISTS `rumah_sakit`;
CREATE TABLE `rumah_sakit`  (
  `id_rs` int NOT NULL AUTO_INCREMENT,
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rumah_sakit
-- ----------------------------
INSERT INTO `rumah_sakit` VALUES (1, 'rs_cinta_kasih.jpg', 'RS Cinta Kasih', 'Indonesia', 'Jakarta', '123456789', 'Surat Izin Operasional', '2024-11-19 11:30:00', '1', NULL);
INSERT INTO `rumah_sakit` VALUES (2, 'rs_harapan_kita.jpg', 'RS Harapan Kita', 'Indonesia', 'Bandung', '987654321', 'Surat Izin Operasional', '2024-11-19 11:30:00', '1', NULL);
INSERT INTO `rumah_sakit` VALUES (3, 'rs_siloam.jpg', 'RS Siloam', 'Indonesia', 'Surabaya', '1122334455', 'Surat Izin Operasional', '2024-11-19 11:30:00', '1', NULL);

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
INSERT INTO `setting` VALUES (1, 'E-OFFICE', 'logo.png', '1.png');

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
