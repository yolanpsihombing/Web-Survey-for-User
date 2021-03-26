/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.4.13-MariaDB : Database - db_sikemas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_sikemas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_sikemas`;

/*Table structure for table `doctrine_migration_versions` */

DROP TABLE IF EXISTS `doctrine_migration_versions`;

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `doctrine_migration_versions` */

insert  into `doctrine_migration_versions`(`version`,`executed_at`,`execution_time`) values ('DoctrineMigrations\\Version20210319214548','2021-03-19 22:46:00',126),('DoctrineMigrations\\Version20210319215615','2021-03-19 22:56:36',224),('DoctrineMigrations\\Version20210319220530','2021-03-19 23:05:41',267),('DoctrineMigrations\\Version20210321092204','2021-03-21 10:25:18',288);

/*Table structure for table `instansi` */

DROP TABLE IF EXISTS `instansi`;

CREATE TABLE `instansi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_kontak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pimpinan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `instansi` */

insert  into `instansi`(`id`,`nama`,`alamat`,`nomor_kontak`,`nama_pimpinan`,`tingkat`) values (1,'Dinas Kesehatan','Jl. Sutomo Pagar Batu No. 1, Balige','0632322554',NULL,'Dinas');

/*Table structure for table `jawaban` */

DROP TABLE IF EXISTS `jawaban`;

CREATE TABLE `jawaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `responden_id` int(11) DEFAULT NULL,
  `pertanyaan_id` int(11) NOT NULL,
  `jawaban` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_24D5B5642DF6B2FC` (`responden_id`),
  KEY `IDX_24D5B5648E174348` (`pertanyaan_id`),
  CONSTRAINT `FK_24D5B5642DF6B2FC` FOREIGN KEY (`responden_id`) REFERENCES `responden` (`id`),
  CONSTRAINT `FK_24D5B5648E174348` FOREIGN KEY (`pertanyaan_id`) REFERENCES `pertanyaan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jawaban` */

/*Table structure for table `layanan` */

DROP TABLE IF EXISTS `layanan`;

CREATE TABLE `layanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instansi_id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F12FC75B10675A27` (`instansi_id`),
  CONSTRAINT `FK_F12FC75B10675A27` FOREIGN KEY (`instansi_id`) REFERENCES `instansi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `layanan` */

insert  into `layanan`(`id`,`instansi_id`,`nama`,`deskripsi`) values (1,1,'Layanan Rekomendasi Izin Klinik',NULL);

/*Table structure for table `pertanyaan` */

DROP TABLE IF EXISTS `pertanyaan`;

CREATE TABLE `pertanyaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pertanyaan` */

insert  into `pertanyaan`(`id`,`pertanyaan`,`deskripsi`) values (1,'Bagaimana pendapat saudara tentang kesesuaian persyaratan Pelayanan dengan jenis pelayanannya.','Persyaratan pelayanan'),(2,'Bagaimana pemahaman saudara tentang kemudahan prosedur pelayanan di unit ini.','Prosedur Pelayanan'),(3,'Bagaimana pendapat saudara tentang kecepatan waktu dalam memberikan pelayanan.','Waktu Pelayanan'),(4,'Bagaimana pendapat saudara tentang kewajaran biaya/tarif dalam pelayanan.','Biaya/Tarif Pelayanan'),(5,'Bagaimana pendapat saudara tentang produk pelayanan antara yang tercantum dalam standart pelayanan dengan hasil yang diberikan.','Produk Jenis Pelayanan'),(6,'Bagaimana pendapat saudara tentang kompetensi/kemampuan petugas dalam pelayanan','Kompetensi Pelaksana'),(7,'Bagaimana pendapat saudara tentang perilaku petugas dalam pelayanan terkait kesopanan dan keramahan.','Perilaku Pelaksana Pelayanan'),(8,'Bagaimana pendapat saudara tentang kualitas sarana dan prasarana.','Sarana dan prasarana'),(9,'Bagaimana pendapat saudara tentang penanganan pengaduan pengguna layanan.','Penanganan Pengaduan, saran');

/*Table structure for table `responden` */

DROP TABLE IF EXISTS `responden`;

CREATE TABLE `responden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layanan_id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `jk` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4B3046B829C27840` (`layanan_id`),
  CONSTRAINT `FK_4B3046B829C27840` FOREIGN KEY (`layanan_id`) REFERENCES `layanan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `responden` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
