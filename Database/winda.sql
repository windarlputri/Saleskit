/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : perkon

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-02-27 11:10:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kode_cabang
-- ----------------------------
DROP TABLE IF EXISTS `kode_cabang`;
CREATE TABLE `kode_cabang` (
  `Branch` char(5) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Parent` char(5) DEFAULT NULL,
  `ParentName` varchar(40) DEFAULT NULL,
  `Address1` varchar(40) DEFAULT NULL,
  `Address2` varchar(40) DEFAULT NULL,
  `City` varchar(29) DEFAULT NULL,
  `State` varchar(15) DEFAULT NULL,
  `Alias` char(3) DEFAULT NULL,
  `usersave` char(9) DEFAULT NULL,
  `tglsave` date DEFAULT NULL,
  `JenisBank` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Branch`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kode_cabang
-- ----------------------------
INSERT INTO `kode_cabang` VALUES ('100', 'Kantor Pusat', '100', 'Kantor Pusat', 'JL. Jend Sudirman No.462                ', '                                        ', 'Pekanbaru                    ', '               ', 'KPS', 'KPS011234', '2015-09-29', null);
INSERT INTO `kode_cabang` VALUES ('101', 'Cabang Utama Pekanbaru', '101', 'Cabang Utama Pekanbaru', 'Jl. Jend Sudirman No.377                ', '                                        ', 'Pekanbaru                    ', '               ', 'UTM', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('102', 'Cabang Tembilahan', '102', 'Cabang Tembilahan', 'Jl. Hang Tuah No.1                      ', '                                        ', 'Tembilahan                   ', '               ', 'TBH', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('103', 'Cabang Tanjung Pinang', '103', 'Cabang Tanjung Pinang', 'Jl. Teuku Umar No.21                    ', '                                        ', 'Tanjung Pinang               ', '               ', 'TPI', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('104', 'Cabang Dumai', '104', 'Cabang Dumai', 'Jl. Sutan Syarif Qasyim No.111-112      ', '                                        ', 'Dumai                        ', '               ', 'DMI', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('105', 'Cabang Selat Panjang', '105', 'Cabang Selat Panjang', 'Jl. Diponegoro No.58                    ', '                                        ', 'Selat Panjang                ', '               ', 'SLP', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('106', 'Cabang Batam', '106', 'Cabang Batam', 'Jl. Laksamana Bintan Sungai Panas       ', 'Komp.Tanamas Blk.C No.14                ', 'Batam                        ', '               ', 'BTM', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('107', 'Cabang Pekanbaru', '107', 'Cabang Pekanbaru', 'Jl. Jend Sudirman No. 377', 'Blok TA 04                              ', 'Pekanbaru                    ', '               ', 'PSP', '010604', '2017-12-11', 'BUK');
INSERT INTO `kode_cabang` VALUES ('108', 'Cabang Bengkalis', '108', 'Cabang Bengkalis', 'Jl. Pahlawan No.15A                     ', '                                        ', 'Bengkalis                    ', '               ', 'BKS', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('109', 'Cabang Bangkinang', '109', 'Cabang Bangkinang', 'Jl. Prof M Yamin. SH No.291             ', '                                        ', 'Bangkinang                   ', '               ', 'BKN', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('110', 'Cabang Airmolek', '110', 'Cabang Airmolek', 'Jl. Jend Sudirman                       ', '                                        ', 'Air Molek                    ', '               ', 'AMK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('111', 'Cabang Tanjung Balai Karimun', '111', 'Cabang Tanjung Balai Karimun', 'Jl. Pertambangan No.23A                 ', '                                        ', 'Tanjung Balai karimun        ', '               ', 'TBK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('112', 'Cabang Pangkalan Kerinci', '112', 'Cabang Pangkalan Kerinci', 'Jl. Raya Lintas Timur                   ', '                                        ', 'Pangkalan Kerinci            ', '               ', 'PGK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('113', 'Cabang Bagan Siapi-api', '113', 'Cabang Bagan Siapi-api', 'Jl. Perniagaan                          ', '                                        ', 'Bagan Siapi api              ', '               ', 'BAA', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('114', 'Cabang Teluk Kuantan', '114', 'Cabang Teluk Kuantan', 'Jl. Jend Sudirman No.114                ', '                                        ', 'Teluk Kuantan                ', '               ', 'TLK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('115', 'Cabang Pasir Pangaraian', '115', 'Cabang Pasir Pangaraian', 'Jl. Pasar Senen                         ', '                                        ', 'Pasir Pangaraian             ', '               ', 'PPN', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('116', 'Cabang Siak Sri Indrapura', '116', 'Cabang Siak Sri Indrapura', 'Jl. Sultan Ismail No.75                 ', '                                        ', 'Siak Sri Indrapura           ', '               ', 'SSI', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('117', 'Cabang Ranai', '117', 'Cabang Ranai', 'JL. Datuk Kaya Wan Muhammad Benteng     ', '                                        ', 'Ranai                        ', '               ', 'RNI', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('118', 'Capem Tangkerang', '107', 'Cabang Pekanbaru', 'Jl. H. Imam Munandar No.162             ', '                                        ', 'Pekanbaru                    ', '               ', 'TKR', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('119', 'Capem Rumbai', '107', 'Cabang Pekanbaru', 'Jl. Sekolah No.78                       ', '                                        ', 'Pekanbaru                    ', '               ', 'RBI', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('120', 'Capem Senapelan', '107', 'Cabang Pekanbaru', 'Jl. Senapelan No.19                     ', '                                        ', 'Pekanbaru                    ', '               ', 'SNP', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('121', 'Capem Perawang', '116', 'Cabang Siak Sri Indrapura', 'Jl. Raya Perawang KM.5                  ', '                                        ', 'Perawang                     ', '               ', 'PRW', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('122', 'Capem Duri', '108', 'Cabang Bengkalis', 'Jl. Hang Tuah No.448E                   ', '                                        ', 'Duri                         ', '               ', 'DRI', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('123', 'Capem Tanjung Batu', '111', 'Cabang Tanjung Balai Karimun', 'Jl. Merdeka No.14                       ', '                                        ', 'Tanjung Batu                 ', '               ', 'TBT', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('124', 'Capem Sei Pakning', '108', 'Cabang Bengkalis', 'Jl. Jend Sudirman No.149                ', '                                        ', 'Sungai Pakning               ', '               ', 'SPK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('125', 'Capem Dabo Singkep', '103', 'Cabang Tanjung Pinang', 'Jl. Perusahaan                          ', '                                        ', 'Dabo Singkep                 ', '               ', 'DBS', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('128', 'Capem Ujung Batu', '115', 'Cabang Pasir Pangaraian', 'Jl. Jend Sudirman No.86                 ', '                                        ', 'Ujung Batu                   ', '               ', 'UBT', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('129', 'Capem Bagan Batu', '113', 'Cabang Bagan Siapi-api', 'Jl. Jend Sudirman Bagan Sinembah        ', '                                        ', 'Bagan Batu                   ', '               ', 'BBT', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('130', 'Capem Sorek', '112', 'Cabang Pangkalan Kerinci', 'Jl. Raya Lintas Timur No.100            ', '                                        ', 'Pangkalan Kuras              ', '               ', 'SRK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('132', 'Capem Lubuk Baja Batam', '106', 'Cabang Batam', 'Jl. Pembangunan No.1 Nagoya Batam       ', '                                        ', 'Batam                        ', '               ', 'LBB', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('133', 'Capem Belilas', '110', 'Cabang Airmolek', 'Jl. Lintas Timur Simpang 4 Belilas      ', '                                        ', 'Belilas                      ', '               ', 'BLS', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('134', 'Capem Panam', '107', 'Cabang Pekanbaru', 'Jl. H R Subrantas                       ', 'Kompl Metropolitan III Blok A No.26     ', 'Pekanbaru                    ', 'Riau           ', 'PNM', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('135', 'Capem Kijang', '103', 'Cabang Tanjung Pinang', 'Jl. Kuala Lumpur                        ', '                                        ', 'Tanjung Pinang               ', 'Kepri          ', 'KJG', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('136', 'Capem/Kedai Marpoyan', '101', 'Cabang Utama Pekanbaru', 'Jl. Kaharudin Nasution No.56 B          ', '                                        ', 'Pekanbaru                    ', 'Riau           ', 'MRP', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('137', 'Capem Kandis', '116', 'Cabang Siak Sri Indrapura', 'Jl. Lintas Pekanbaru-Duri               ', '                                        ', 'Kandis                       ', 'Riau           ', 'KDS', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('138', 'Capem Lipat Kain', '109', 'Cabang Bangkinang', 'Jl. Raya Pekanbaru-Teluk Kuantan        ', 'Kampar Kiri-Kab Kampar                  ', 'Lipat Kain                   ', 'Riau           ', 'LPK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('139', 'Capem Petapahan', '109', 'Cabang Bangkinang', 'Jl. Raya Petapahan                      ', 'Kecamatan Tapung-Kab.Kampar             ', 'Petapahan                    ', 'Kampar         ', 'PTP', '010604', '2016-09-26', 'BUK');
INSERT INTO `kode_cabang` VALUES ('140', 'Capem/Kedai Pasar Sail', '101', 'Cabang Utama Pekanbaru', 'Jl. Hang Tuah No.89 B                   ', '                                        ', 'Pekanbaru                    ', 'Riau           ', 'PSL', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('141', 'Capem/Kedai Sungai Apit', '116', 'Cabang Siak Sri Indrapura', 'Jl. Hang Tuah Pasar Sungai Apit         ', '                                        ', 'Sungai Apit                  ', 'Riau           ', 'SAP', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('142', 'Kedai Pasar Air Tiris', '109', 'Cabang Bangkinang', 'Jl. Raya Pekanbaru-Bangkinang           ', '                                        ', 'Air Tiris                    ', 'Riau           ', 'ATS', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('143', 'Kedai Pasar Kuok', '109', 'Cabang Bangkinang', 'Jl. Raya Bangkinang-Padang              ', '                                        ', 'Kuok                         ', 'Riau           ', 'KWK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('144', 'Capem Tuanku Tambusai', '107', 'Cabang Pekanbaru', 'Jl. Tuanku Tambusai No. 135 B           ', '                                        ', 'Pekanbaru                    ', 'Riau           ', 'TTB', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('145', 'Kedai Jalan Durian', '101', 'Cabang Utama Pekanbaru', 'Jl. Durian No.34 A                      ', 'Kec Payung Sekaki                       ', 'Pekanbaru                    ', 'Riau           ', 'DRN', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('146', 'Capem Tanjung Uban', '103', 'Cabang Tanjung Pinang', 'Jl. Permaisuri Blok A No.2              ', '                                        ', 'Tanjung Uban                 ', 'Kepri          ', 'TUB', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('147', 'Kedai Pasar Minas', '116', 'Cabang Siak Sri Indrapura', 'Jl. Yos Sudarso                         ', '                                        ', 'Minas                        ', 'Riau           ', 'MNS', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('148', 'Capem Sungai Guntung', '102', 'Cabang Tembilahan', 'Jl. Yos Sudarso                         ', '                                        ', 'Sungai Guntung               ', 'Riau           ', 'SGT', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('149', 'Capem Jalan Riau', '107', 'Cabang Pekanbaru', 'Jl. Riau NO. 129 B                      ', '                                        ', 'Pekanbaru                    ', 'Riau           ', 'JRI', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('150', 'Kedai Pasar Ukui', '112', 'Cabang Pangkalan Kerinci', 'Jl. Lintas Timur Pasar Ukui             ', '                                        ', 'Ukui                         ', 'Riau           ', 'UKY', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('151', 'Kedai Pasar Bukit Kapur', '104', 'Cabang Dumai', 'Jl. Sukarno Hatta                       ', '                                        ', 'Dumai                        ', 'Riau           ', 'KPR', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('152', 'Kedai Sedanau Ranai', '117', 'Cabang Ranai', 'jl. Pelantar II (NATO)                  ', '                                        ', 'Sedanau                      ', 'Kepri          ', 'SDN', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('153', 'Capem Dalu-Dalu', '115', 'Cabang Pasir Pangaraian', 'Jl. Raya Lintas Propinsi Riau-Sumut     ', '                                        ', 'Dalu-Dalu                    ', 'Riau           ', 'DLU', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('154', 'Capem Koto Tengah', '115', 'Cabang Pasir Pangaraian', 'Pasar Koto Tengah                       ', '                                        ', 'Koto Tengah                  ', 'Riau           ', 'KTH', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('155', 'Capem Baserah', '114', 'Cabang Teluk Kuantan', 'Jl. Jend Sudirman                       ', '                                        ', 'Baserah                      ', 'Riau           ', 'BSH', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('156', 'Kedai Pasar Pangkalan Kerinci', '112', 'Cabang Pangkalan Kerinci', 'Jl. Setia Maha Raja Lintas Timur        ', '                                        ', 'Pangkalan Kerinci            ', 'Riau           ', 'PPK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('157', 'Kedai Pasar Peranap', '110', 'Cabang Airmolek', 'Pasar Peranap                           ', '                                        ', 'Peranap                      ', 'Riau           ', 'PRP', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('158', 'Kedai Pasar Pinggir', '108', 'Cabang Bengkalis', 'Jl. Lintas Duri Pekanbaru Pinggir       ', '                                        ', 'Duri                         ', 'Riau           ', 'PGR', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('159', 'Kedai Pasar Sukaramai', '109', 'Cabang Bangkinang', 'Pasar Sukaramai                         ', '                                        ', 'Sukaramai                    ', 'Riau           ', 'SKR', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('160', 'Capem Lubuk Dalam', '116', 'Cabang Siak Sri Indrapura', 'Jl. Pertamina Desa Rawang Kao           ', '                                        ', 'Lubuk Dalam                  ', 'Riau           ', 'LBD', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('161', 'Capem Batu Aji Batam', '106', 'Cabang Batam', 'Kompl Pertokoan Fanindo Blok E No.3     ', 'Batu Aji                                ', 'Batam                        ', 'Kepulauan Riau ', 'BAJ', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('162', 'Kedai Pasar Tanjung Pinang', '103', 'Cabang Tanjung Pinang', 'Jl. Lorong Pasar II                     ', '                                        ', 'Tanjung Pinang               ', 'Kepri          ', 'KPI', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('163', 'Kedai Dayun', '116', 'Cabang Siak Sri Indrapura', 'Jl. Perawang-Siak                       ', '                                        ', 'Dayun                        ', 'Riau           ', 'DYN', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('164', 'Kedai Kabun', '115', 'Cabang Pasir Pangaraian', 'Jl. Lintas Pekanbaru Pasir-Pengarayan   ', '                                        ', 'Pasir Pengarayan             ', 'Riau           ', 'KBN', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('165', 'Capem Ahmad Yani Pekanbaru', '107', 'Cabang Pekanbaru', 'Jl. Ahmad Yani No.60                    ', '                                        ', 'Pekanbaru                    ', 'Riau           ', 'AYN', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('166', 'Kedai Pasar Pagi Arengka', '101', 'Cabang Utama Pekanbaru', 'Jl. Soekarno Hatta                      ', '                                        ', 'Pekanbaru                    ', 'Riau           ', 'ARK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('167', 'Kedai Tanjung Samak', '105', 'Cabang Selat Panjang', 'Jl. Ahmad Yani                          ', '                                        ', 'Tanjung Samak                ', 'Riau           ', 'TSM', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('168', 'Kedai Pasar Lubuk Jambi', '114', 'Cabang Teluk Kuantan', 'Jl. Lintas Timur                        ', '                                        ', 'Lubuk Jambi                  ', 'Riau           ', 'LBJ', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('169', 'Capem Ujung Tanjung', '113', 'Cabang Bagan Siapi-api', 'Jl. Riau                                ', 'Kec.Tanah Putih, Rokan Hilir            ', 'Ujung Tanjung                ', 'Riau           ', 'UTG', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('170', 'Capem Tarempa', '103', 'Cabang Tanjung Pinang', 'Jl. Hangtuah Pasar Tarempa              ', 'Kab. Anambas                            ', 'Tarempa                      ', 'KEPRI          ', 'TRP', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('171', 'Kedai Pasar Rengat', '110', 'Cabang Airmolek', 'Jl. Yos Sudarso                         ', 'Kecamatan Rengat Kabupaten Inhu         ', 'Rengat                       ', 'Riau           ', 'RGT', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('172', 'Kedai Sungai Lala', '110', 'Cabang Airmolek', 'Jl. Lintas Air Molek-Teluk Kuantan,     ', 'Desa Sei. Lala Perkebunan, Kec. Sei Lala', 'Sungai Lala                  ', 'Riau           ', 'LLA', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('173', 'Kedai Pasar Muara Lembu', '114', 'Cabang Teluk Kuantan', 'Jl. Jenderal Sudirman                   ', 'Kec Muara Lembu Kecamatan Singingi      ', 'Muara Lembu                  ', 'Riau           ', 'MLU', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('174', 'Capem Daik Lingga', '103', 'Cabang Tanjung Pinang', 'JL. Istana Robat Daik, Kec Lingga       ', 'Kabupaten Lingga                        ', 'Daik Lingga                  ', 'Kepri          ', 'LGA', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('175', 'Capem Kota Baru', '102', 'Cabang Tembilahan', 'JL. Ahmad Yani Kecamatan Keritang       ', 'Kabupaten Indragiri Hilir               ', 'Kota Baru                    ', 'Riau           ', 'KBR', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('176', 'Kedai Kuala Kilan', '110', 'Cabang Airmolek', 'Jl.Lintas Selatan No.60 Desa Kuala Kilan', 'Kec.Batang Cenaku                       ', 'Indragiri Hulu               ', 'Riau           ', 'KLN', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('177', 'Kedai Pasar Tandun', '115', 'Cabang Pasir Pangaraian', 'Jl. Raya Tandun - Ujung Batu,Desa Tandun', 'Kecamatan Tandun                        ', 'Tandun                       ', 'Riau           ', 'TDN', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('178', 'Capem Flamboyan', '109', 'Cabang Bangkinang', 'Jl. Raya Petapahan- Kota Garo           ', 'Desa Tanjung Sawit Kecamatan Tapung     ', '                             ', 'Riau           ', 'FLB', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('179', 'Kedai Rantau Kasai', '115', 'Cabang Pasir Pangaraian', 'Jl. Sultan Zainal Abidin-Rantau Kasai   ', 'Kabupaten Rokan Hulu                    ', 'Pasir Pangaraian             ', 'Riau           ', 'RTK', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('180', 'Capem Bintan Center', '103', 'Cabang Tanjung Pinang', 'Jl. D.I. Panjaitan KM 9                 ', '                                        ', 'Tanjung Pinang               ', 'Kepulauan Riau ', 'BTC', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('181', 'Kedai Batupanjang Rupat', '108', 'Cabang Bengkalis', 'Jl. Pelajar RT 02 RW 12                 ', 'Kecamatan Batupanjang Rupat             ', 'Rupat                        ', 'Riau           ', 'BPR', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('182', 'Kedai Meral', '111', 'Cabang Tanjung Balai Karimun', 'Jl. Ahmad Yani No. 12 RT 3 RW 8         ', 'Kelu. Sungai Pasir Kec. Meral           ', 'Tanjung Balai Karimun        ', 'Kepri          ', 'MRL', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('183', 'Kedai Midai', '117', 'Cabang Ranai', 'Jl. Merdeka RT 3 RW 1 Kel. Sabang Barat ', 'Kecamatan Midai                         ', 'Midai                        ', 'Kepulauan Riau ', 'MID', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('184', 'Kedai Serasan', '117', 'Cabang Ranai', 'Jl. Kampung Pelimpak RT 3 RW 1          ', 'Kecamatan Serasan                       ', '                             ', 'Kepulauan Riau ', 'SRS', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('185', 'Kedai Teluk Belitung Merbau', '105', 'Cabang Selat Panjang', 'Jl. Jenderal Sudirman RT/RW 03/01       ', 'Kel. Teluk Belitung Kec. Merbau         ', 'Belitung                     ', 'Riau           ', 'TLB', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('186', 'Capem Botania', '106', 'Cabang Batam', 'Komplek Graha Nusa Permai Blok C1', null, 'Batam', null, 'BOT', '010604', '2016-09-26', 'BUK');
INSERT INTO `kode_cabang` VALUES ('187', 'Kedai Bandar Sei Kijang', '112', 'Cabang Pangkalan Kerinci', 'Jl. Lintas Timur KM 34 Sei Kijang', null, 'Kab. Pelalawan', null, 'BSK', '010604', '2016-09-26', 'BUK');
INSERT INTO `kode_cabang` VALUES ('188', 'Kedai Pujud', '113', 'Cabang Bagan Siapi-api', 'Jl. Lintas Pujud - Mahato Pujud', null, 'Rokan Hilir', null, 'PJD', '010604', '2016-09-26', 'BUK');
INSERT INTO `kode_cabang` VALUES ('189', 'Kedai Sabak Auh', '116', 'Cabang Siak Sri Indrapura', 'Jl. Lintas Siak - Sei. Pakning', null, 'Kab. Siak Sri Indrapura', null, 'SAU', '010604', '2016-09-26', 'BUK');
INSERT INTO `kode_cabang` VALUES ('190', 'Kedai Sungai Sembilan', '104', 'Cabang Dumai', 'Kecamatan Sungai Sembilan', null, 'Dumai', null, 'SSL', '010604', '2016-09-26', 'BUK');
INSERT INTO `kode_cabang` VALUES ('191', 'Cabang Jakarta', '191', 'Cabang Jakarta', 'Jl Panglima Polim Raya No 97', 'Jakarta Selatan', 'Jakarta', 'Jakarta', 'JKT', null, null, 'BUK');
INSERT INTO `kode_cabang` VALUES ('800', 'Unit Usaha Syariah', '820', 'KCS Pekanbaru', 'JL. Jend Sudirman No.628                ', '                                        ', 'Pekanbaru                    ', 'Riau           ', 'UUS', null, null, 'BUS');
INSERT INTO `kode_cabang` VALUES ('820', 'KCS Pekanbaru', '820', 'KCS Pekanbaru', 'Jl. Jend Sudirman No.628                ', '                                        ', 'Pekanbaru                    ', 'Riau           ', 'PBS', null, null, 'BUS');
INSERT INTO `kode_cabang` VALUES ('821', 'KCS Tanjung Pinang', '821', 'KCS Tanjung Pinang', 'Jl. Gatot Subroto KM.5                  ', '                                        ', 'Tanjung Pinang               ', 'Kepri          ', 'TPS', null, null, 'BUS');
INSERT INTO `kode_cabang` VALUES ('822', 'Capem Syariah Tembilahan', '820', 'KCS Pekanbaru', 'Jl. Jend. Sudirman No. 583 B Pasar Baru ', '                                        ', 'Tembilahan                   ', 'Riau           ', 'TBS', null, null, 'BUS');
INSERT INTO `kode_cabang` VALUES ('823', 'Capem Syariah Duri', '820', 'KCS Pekanbaru', 'Jl. Jend. Sudirman Kelurahan Air Jamban ', 'Kecamatan Mandau                        ', 'Duri                         ', 'Riau           ', 'DRS', null, null, 'BUS');
INSERT INTO `kode_cabang` VALUES ('824', 'Capem Syariah Batam', '821', 'KCS Tanjung Pinang', 'Jl. Gajah Mada Komp. Ruko Tiban Impian  ', 'Blok A2 No. 1 Sekupang                  ', 'Batam                        ', 'Kepri          ', 'BTS', null, null, 'BUS');
INSERT INTO `kode_cabang` VALUES ('825', 'Capem Syariah Teluk Kuantan', '820', 'KCS Pekanbaru', 'Jl. Jenderal Sudirman no. 114           ', '                                        ', 'Teluk Kuantan                ', 'Riau           ', 'TLS', null, null, 'BUS');
INSERT INTO `kode_cabang` VALUES ('826', 'Capem Syariah Panam', '820', 'KCS Pekanbaru', 'Jl. HR. Soebrantas Blok III A no. 5     ', '                                        ', 'Pekanbaru                    ', 'Riau           ', 'PNS', null, null, 'BUS');
INSERT INTO `kode_cabang` VALUES ('827', 'Capem Syariah Tanjung Balai', '821', 'KCS Tanjung Pinang', 'JL. Tanjung Balai', null, 'Karimun', null, 'TBS', '010604', '2016-09-26', 'BUS');
INSERT INTO `kode_cabang` VALUES ('828', 'Capem Syariah Pasir Pangaraian', '820', 'KCS Pekanbaru', 'Jl Pasar Senen', null, 'Pasir Pangaraian', null, 'PPS', '010892', '2017-04-27', 'BUS');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `menu_code` varchar(20) NOT NULL,
  `menu_title` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'T2Hag1d5UC9FkPoOxL36', 'No Registrasi');
INSERT INTO `menu` VALUES ('2', 't2K80rCUkHzMQmX4voId', 'Nasabah');
INSERT INTO `menu` VALUES ('5', 'aS4zEuXxlTRw95Fgdvit', 'Winda');

-- ----------------------------
-- Table structure for menu_access
-- ----------------------------
DROP TABLE IF EXISTS `menu_access`;
CREATE TABLE `menu_access` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_role_id` int(11) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_access
-- ----------------------------
INSERT INTO `menu_access` VALUES ('3', '4', '2');
INSERT INTO `menu_access` VALUES ('4', '6', '2');
INSERT INTO `menu_access` VALUES ('5', '5', '2');
INSERT INTO `menu_access` VALUES ('6', '1', '2');
INSERT INTO `menu_access` VALUES ('7', '4', '0');
INSERT INTO `menu_access` VALUES ('8', '1', '0');
INSERT INTO `menu_access` VALUES ('9', '5', '1');
INSERT INTO `menu_access` VALUES ('10', '1', '1');
INSERT INTO `menu_access` VALUES ('14', '4', '5');
INSERT INTO `menu_access` VALUES ('15', '1', '5');

-- ----------------------------
-- Table structure for menu_detail
-- ----------------------------
DROP TABLE IF EXISTS `menu_detail`;
CREATE TABLE `menu_detail` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(50) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `s1` varchar(20) NOT NULL,
  `s2` varchar(20) DEFAULT NULL,
  `s3` varchar(20) DEFAULT NULL,
  `menu_order` int(11) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  `menu_parent` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_detail
-- ----------------------------
INSERT INTO `menu_detail` VALUES ('3', '2', 'Nasabah', 'fa fa-users', 'nasabah', '', '', '1', null, null);
INSERT INTO `menu_detail` VALUES ('5', '2', 'Data Nasabah', 'fa fa-user', '', '', '', '2', 'nasabah/index', '3');
INSERT INTO `menu_detail` VALUES ('6', '1', 'No Registrasi', 'fa fa-book', 'noregister', '', '', '1', null, null);
INSERT INTO `menu_detail` VALUES ('7', '1', 'Daftar No Registrasi', 'fa fa-book', '', '', '', '1', 'noregister/index', '6');
INSERT INTO `menu_detail` VALUES ('10', '5', 'Winda', 'fa fa-anchor', 'winda', '', '', '1', '', null);
INSERT INTO `menu_detail` VALUES ('11', '5', 'Anak Winda', 'fa fa-circle-o', '', '', '', '1', 'winda/anakwinda', '10');

-- ----------------------------
-- Table structure for no_registrasi
-- ----------------------------
DROP TABLE IF EXISTS `no_registrasi`;
CREATE TABLE `no_registrasi` (
  `no_reg` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_create` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`no_reg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of no_registrasi
-- ----------------------------
INSERT INTO `no_registrasi` VALUES ('BRKS.0.000.001', '2020-02-21 11:51:24', 'super');
INSERT INTO `no_registrasi` VALUES ('BRKS.0.000.002', '2020-02-21 11:51:30', 'super');
INSERT INTO `no_registrasi` VALUES ('BRKS.0.000.003', '2020-02-21 11:51:37', 'super');
INSERT INTO `no_registrasi` VALUES ('BRKS.0.000.004', '2020-02-21 12:00:27', 'super');
INSERT INTO `no_registrasi` VALUES ('BRKS.0.000.005', '2020-02-21 15:13:14', '011902');
INSERT INTO `no_registrasi` VALUES ('BRKS.0.000.006', '2020-02-21 15:13:20', '011902');
INSERT INTO `no_registrasi` VALUES ('BRKS.0.000.007', '2020-02-21 15:13:28', '011902');
INSERT INTO `no_registrasi` VALUES ('BRKS.0.000.008', '2020-02-21 15:24:52', '011902');

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(50) NOT NULL,
  `meta_value` longtext,
  `is_sistem` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES ('1', 'app_theme', 'adminlte', '1');
INSERT INTO `options` VALUES ('2', 'rb_logo', 'logo.png', '1');
INSERT INTO `options` VALUES ('3', 'rb_favicon', 'favicon.png', '1');
INSERT INTO `options` VALUES ('4', 'app_name', 'CAS', '1');
INSERT INTO `options` VALUES ('5', 'app_version', 'BETA1', '1');
INSERT INTO `options` VALUES ('6', 'app_year', '2020', '1');
INSERT INTO `options` VALUES ('7', 'app_footer_custom', 'Teknologi & Sistem Informasi', '1');
INSERT INTO `options` VALUES ('8', 'company_name', 'PT. Bank Riau Kepri', '1');
INSERT INTO `options` VALUES ('9', 'company_address', 'Jl. Jend. Sudirman No. 462', '1');
INSERT INTO `options` VALUES ('10', 'company_phone', '082284925982', '1');
INSERT INTO `options` VALUES ('11', 'company_email', 'rabbai.arif@bankriaukepri.co.id', '1');
INSERT INTO `options` VALUES ('12', 'company_fax', '-', '1');
INSERT INTO `options` VALUES ('13', 'company_web', 'www.bankriaukepri.co.id', '1');

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `time` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `log_data` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_log
-- ----------------------------
INSERT INTO `user_log` VALUES ('1', '1', '1581405308', 'Berhasil mengubah user Rabbai San Arif', '{\"user_id\":\"1\",\"tanggal\":\"14:15:08\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('2', '1', '1581405374', 'Gagal menambahkan user. Username dan Email sudah ada', '{\"user_id\":\"1\",\"tanggal\":\"14:16:14\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('3', '1', '1581405392', 'Gagal menambahkan user. Username dan Email sudah ada', '{\"user_id\":\"1\",\"tanggal\":\"14:16:32\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('4', '1', '1581405403', 'Gagal menambahkan user. Username dan Email sudah ada', '{\"user_id\":\"1\",\"tanggal\":\"14:16:43\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('5', '1', '1581405418', 'Gagal menambahkan user. Username dan Email sudah ada', '{\"user_id\":\"1\",\"tanggal\":\"14:16:58\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('6', '1', '1581405432', 'Gagal menambahkan user. Username dan Email sudah ada', '{\"user_id\":\"1\",\"tanggal\":\"14:17:12\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('7', '1', '1581477020', 'Berhasil menambahkan user Coba', '{\"user_id\":\"1\",\"tanggal\":\"10:10:20\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('8', '1', '1581478945', 'Berhasil mengubah user Cobas', '{\"user_id\":\"1\",\"tanggal\":\"10:42:25\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('9', '1', '1581487771', 'Berhasil mengubah user 19', '{\"user_id\":\"1\",\"tanggal\":\"13:09:31\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('10', '2', '1581488082', 'Berhasil mengubah user 19', '{\"user_id\":\"2\",\"tanggal\":\"13:14:42\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('11', '2', '1581488823', 'Berhasil mengubah user 19', '{\"user_id\":\"2\",\"tanggal\":\"13:27:03\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('12', '1', '1581495411', 'Role has been Deleted', '{\"user_id\":\"1\",\"tanggal\":\"15:16:51\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('13', '1', '1581495414', 'Role has been Deleted', '{\"user_id\":\"1\",\"tanggal\":\"15:16:54\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('14', '1', '1581496710', 'Berhasil menambahkan user Sandra', '{\"user_id\":\"1\",\"tanggal\":\"15:38:30\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('15', '1', '1581501257', 'Berhasil mengubah user Cobas', '{\"user_id\":\"1\",\"tanggal\":\"16:54:17\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('16', '1', '1581501852', 'Berhasil mengubah user Cobas', '{\"user_id\":\"1\",\"tanggal\":\"17:04:12\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('17', '2', '1581586038', 'Berhasil mengubah user 171018103414000', '{\"user_id\":\"2\",\"tanggal\":\"16:27:18\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('18', '4', '1581924666', 'Berhasil mengubah user 305988', '{\"user_id\":\"4\",\"tanggal\":\"14:31:06\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.106 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('19', '4', '1581924842', 'Berhasil mengubah user 305988', '{\"user_id\":\"4\",\"tanggal\":\"14:34:02\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.106 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('20', '2', '1581925952', 'Berhasil mengubah user 171018103414000', '{\"user_id\":\"2\",\"tanggal\":\"14:52:32\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.106 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('21', '2', '1582077725', 'Berhasil mengubah user 171018103414000', '{\"user_id\":\"2\",\"tanggal\":\"09:02:05\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('22', '1', '1582258763', 'Gagal mengubah user. Username dan Email sudah ada', '{\"user_id\":\"1\",\"tanggal\":\"11:19:23\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('23', '1', '1582258850', 'Berhasil mengubah user Rabbai San Arif', '{\"user_id\":\"1\",\"tanggal\":\"11:20:50\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('24', '1', '1582258949', 'Berhasil mengubah user Rabbai San Arif', '{\"user_id\":\"1\",\"tanggal\":\"11:22:29\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('25', '1', '1582260684', 'No Registrasi Berhasil Ditambahkan', '{\"user_id\":\"1\",\"tanggal\":\"11:51:24\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('26', '1', '1582260690', 'No Registrasi Berhasil Ditambahkan', '{\"user_id\":\"1\",\"tanggal\":\"11:51:30\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('27', '1', '1582260697', 'No Registrasi Berhasil Ditambahkan', '{\"user_id\":\"1\",\"tanggal\":\"11:51:37\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('28', '1', '1582260702', 'No Registrasi Berhasil Ditambahkan', '{\"user_id\":\"1\",\"tanggal\":\"11:51:42\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('29', '1', '1582261063', 'No Registrasi has been deleted', '{\"user_id\":\"1\",\"tanggal\":\"11:57:43\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('30', '1', '1582261227', 'No Registrasi Berhasil Ditambahkan', '{\"user_id\":\"1\",\"tanggal\":\"12:00:27\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('31', '2', '1582261851', 'Berhasil mengubah user 160223100928000', '{\"user_id\":\"2\",\"tanggal\":\"12:10:51\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko\\/20100101 Firefox\\/72.0\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('32', '1', '1582269983', 'Berhasil mengubah user 130628075520000', '{\"user_id\":\"1\",\"tanggal\":\"14:26:23\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('33', '1', '1582270194', 'Berhasil mengubah user 130628075520000', '{\"user_id\":\"1\",\"tanggal\":\"14:29:54\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('34', '1', '1582271555', 'Gagal menambahkan user. Username dan Email sudah ada', '{\"user_id\":\"1\",\"tanggal\":\"14:52:35\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko\\/20100101 Firefox\\/72.0\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('35', '1', '1582271566', 'Berhasil menambahkan user Rabbai Cabang', '{\"user_id\":\"1\",\"tanggal\":\"14:52:46\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko\\/20100101 Firefox\\/72.0\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('36', '1', '1582271582', 'Berhasil mengubah user Rabbai Cabang', '{\"user_id\":\"1\",\"tanggal\":\"14:53:02\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:72.0) Gecko\\/20100101 Firefox\\/72.0\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('37', '2', '1582272644', 'Berhasil mengubah user 100719181824000', '{\"user_id\":\"2\",\"tanggal\":\"15:10:44\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('38', '2', '1582272794', 'No Registrasi Berhasil Ditambahkan', '{\"user_id\":\"2\",\"tanggal\":\"15:13:14\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('39', '2', '1582272800', 'No Registrasi Berhasil Ditambahkan', '{\"user_id\":\"2\",\"tanggal\":\"15:13:20\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('40', '2', '1582272808', 'No Registrasi Berhasil Ditambahkan', '{\"user_id\":\"2\",\"tanggal\":\"15:13:28\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('41', '2', '1582272942', 'Berhasil mengubah user 140722102713000', '{\"user_id\":\"2\",\"tanggal\":\"15:15:42\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('42', '2', '1582273492', 'No Registrasi Berhasil Ditambahkan', '{\"user_id\":\"2\",\"tanggal\":\"15:24:52\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.116 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('43', '1', '1582773435', 'Berhasil mengubah user 140923135630000', '{\"user_id\":\"1\",\"tanggal\":\"10:17:15\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');
INSERT INTO `user_log` VALUES ('44', '1', '1582776346', 'Berhasil menambahkan user winda rizki', '{\"user_id\":\"1\",\"tanggal\":\"11:05:46\",\"ip\":\"::1\",\"agen\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.122 Safari\\/537.36\",\"host\":\"NB-TSI-011902\"}');

-- ----------------------------
-- Table structure for user_meta
-- ----------------------------
DROP TABLE IF EXISTS `user_meta`;
CREATE TABLE `user_meta` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `meta_key` varchar(50) NOT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`ID`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_meta
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `role_key` varchar(20) NOT NULL,
  `role_value` varchar(50) NOT NULL,
  `is_enable` tinyint(4) NOT NULL,
  `is_add` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `role_key` (`role_key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', 'admin', 'Super Administrator', '1', '0');
INSERT INTO `user_role` VALUES ('4', 'admin_cab', 'Admin Cabang', '1', '1');
INSERT INTO `user_role` VALUES ('5', 'admin_kps', 'Admin KPS', '1', '1');

-- ----------------------------
-- Table structure for user_role_meta
-- ----------------------------
DROP TABLE IF EXISTS `user_role_meta`;
CREATE TABLE `user_role_meta` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_role_id` int(11) NOT NULL,
  `meta_key` varchar(50) NOT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`ID`),
  KEY `user_role_id` (`user_role_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_role_meta
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_token` varchar(40) NOT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `username` varchar(60) NOT NULL,
  `password` longtext NOT NULL,
  `email` varchar(60) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `nick_name` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `cabang` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_role_id` (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '7YebsuCKDS', '1', 'super', '$2a$08$8K2RmcdEqK2gcn7SGJtuveX6oBJhwr3YJp4EbyZTENh3lhNfcUq4y', 'rabbai.arif@bankriaukepri.co.id', 'Rabbai San Arif', 'cubebon', 'ava-c4ca4238a0b923820dcc509a6f75849b.jpg', '1', '100');
INSERT INTO `users` VALUES ('2', 'sQoGkt3yna6PI81VMhif5gNXUeECwH2Fv40RWqSu', '5', '011902', '$2a$08$uVZrZLf6HgWKkxOOxCj97.4vL4nJVO6W41vDxmWAK1dZIPnxgwC4y', 'cubebon@gmail.com', 'Rabbai San Arif', 'Rabbai', '', '1', '100');
INSERT INTO `users` VALUES ('3', 'GN4mp7ZehHK3c5Cj9r2fX0sDd16OJqltQALEMVTk', '4', 'cubebon', '$2a$08$zOo8DwYsc9IKOJzlw6L51.KmKaELZDBIJ2ruYfdJ.YS4sCT5mNEH6', 'test@gmail.com', 'Cobas', 'Cubebon', 'avatar-1581477020.jpeg', '1', '103');
INSERT INTO `users` VALUES ('4', 'ChmURWac8SM2yxju5NibpIgLB91qrktsOKoHfAQJ', '4', '011899', '$2a$08$hmpH6Z/GXARksOiC0eoz0OExkJG6hcB3F/VKGsZbIyC9fWUjz6ZP2', 'sandra.putri@bankriaukepri.co.id', 'Sandra', 'sandra', null, '1', '101');
INSERT INTO `users` VALUES ('5', 'p1GljaifVDPSYsTroX5FOJdEUbQz4RCq3wcxhL7u', '4', '020330', '$2a$08$5maViWQeGYYM0OL4jG.Rxe2Jui.CicN0oThr2UAbm4zGmgGQGt1wC', 'rabbaiarif@bankriaukepri.co.id', 'Rabbai Cabang', 'Rabbai', '', '1', '102');
INSERT INTO `users` VALUES ('6', 'k7iAQcufLZ8JqvgoyWBG1NbtjEz6lRHrd9pmVYD3', '4', 'winda', '$2a$08$12cDI07d9WZS.E.XpoUqReLB1UOSAhUaJLwHG0ts/si1w9J5Kygna', 'winda@winda.com', 'winda rizki', 'winda', '', '1', '100');
