-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Mar 2023 pada 07.48
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `simsurat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip_keluar`
--

CREATE TABLE IF NOT EXISTS `arsip_keluar` (
  `ID` int(11) NOT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `ID_SURAT` int(11) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL,
  `KETERANGAN` text,
  PRIMARY KEY (`ID`),
  KEY `FK_REFERENCE_13` (`ID_SURAT`),
  KEY `FK_REFERENCE_26` (`NIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `arsip_keluar`
--

INSERT INTO `arsip_keluar` (`ID`, `NIP`, `ID_SURAT`, `TANGGAL`, `KETERANGAN`) VALUES
(1, '199308312014061001', 4, '2015-11-19', 'nyoba'),
(2, '199308312014061001', 8, '2023-02-25', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip_masuk`
--

CREATE TABLE IF NOT EXISTS `arsip_masuk` (
  `ID` int(11) NOT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `ID_SURAT` int(11) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL,
  `KETERANGAN` text,
  PRIMARY KEY (`ID`),
  KEY `FK_REFERENCE_11` (`ID_SURAT`),
  KEY `FK_REFERENCE_25` (`NIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `arsip_masuk`
--

INSERT INTO `arsip_masuk` (`ID`, `NIP`, `ID_SURAT`, `TANGGAL`, `KETERANGAN`) VALUES
(0, '199209012015041001', NULL, '2015-11-15', 'Apa seh... cuman nyoba kok...'),
(1, '199209012015041001', 1, '2015-11-15', 'Apa seh...'),
(3, '199308312014061001', 3, '2015-11-18', 'hancurkan'),
(4, '199209012015041001', 5, '2015-11-23', 'Oppo...?'),
(5, '199308312014061001', 6, '2022-02-09', 'dijaga ya'),
(6, '199308312014061001', 7, '2021-01-01', 'none');

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE IF NOT EXISTS `disposisi` (
  `ID` int(11) NOT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `ID_SURAT` int(11) DEFAULT NULL,
  `KEPADA` varchar(255) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_REFERENCE_15` (`ID_SURAT`),
  KEY `FK_REFERENCE_27` (`NIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `disposisi`
--

INSERT INTO `disposisi` (`ID`, `NIP`, `ID_SURAT`, `KEPADA`, `TANGGAL`) VALUES
(1, '199209012015041001', 5, 'Oby', '2015-11-23'),
(2, '199308312014061001', 7, 'karyawan', '2021-01-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inaktif`
--

CREATE TABLE IF NOT EXISTS `inaktif` (
  `ID_INAKTIF` int(11) NOT NULL,
  `ID_JENIS` int(11) DEFAULT NULL,
  `MASA_AKTIF` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_INAKTIF`),
  KEY `FK_REFERENCE_8` (`ID_JENIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `inaktif`
--

INSERT INTO `inaktif` (`ID_INAKTIF`, `ID_JENIS`, `MASA_AKTIF`) VALUES
(1, 1, 5),
(2, 2, 1),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `ID_JABATAN` int(11) NOT NULL,
  `NAMA` varchar(100) DEFAULT NULL,
  `ID_KEPALA` int(11) DEFAULT NULL,
  `STATUS_DISPOSISI` int(1) DEFAULT '0',
  PRIMARY KEY (`ID_JABATAN`),
  KEY `FK_JABATAN1` (`ID_KEPALA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`ID_JABATAN`, `NAMA`, `ID_KEPALA`, `STATUS_DISPOSISI`) VALUES
(1, 'Administrator', 2, 1),
(2, 'Kepala Kantor', 2, 1),
(3, 'Bagian Umum', 2, 1),
(4, 'Kepala Seksi Administrasi', 2, 1),
(5, 'Seksi Administrasi', 4, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_retensi`
--

CREATE TABLE IF NOT EXISTS `jadwal_retensi` (
  `ID_JADWAL` int(11) NOT NULL,
  `ID_JENIS` int(11) DEFAULT NULL,
  `MASA_RETENSI` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_JADWAL`),
  KEY `FK_REFERENCE_9` (`ID_JENIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_retensi`
--

INSERT INTO `jadwal_retensi` (`ID_JADWAL`, `ID_JENIS`, `MASA_RETENSI`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_surat`
--

CREATE TABLE IF NOT EXISTS `jenis_surat` (
  `ID_JENIS` int(11) NOT NULL,
  `NAMA` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_JENIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_surat`
--

INSERT INTO `jenis_surat` (`ID_JENIS`, `NAMA`) VALUES
(1, 'Surat Keluar'),
(2, 'Surat Masuk'),
(3, 'Lain-lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_surat`
--

CREATE TABLE IF NOT EXISTS `kategori_surat` (
  `id_kategori` int(10) NOT NULL,
  `kategori_surat` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_surat`
--

INSERT INTO `kategori_surat` (`id_kategori`, `kategori_surat`) VALUES
(1, 'Surat Kontrak'),
(2, 'Surat Tugas'),
(3, 'Surat Jalan'),
(4, 'Surat Sakit'),
(5, 'Surat Permohonan'),
(9, 'Lain-lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE IF NOT EXISTS `lokasi` (
  `ID_LOKASI` int(11) NOT NULL,
  `NAMA` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_LOKASI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`ID_LOKASI`, `NAMA`) VALUES
(1, 'Resepsionis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `ID_MEDIA` int(11) NOT NULL,
  `NAMA` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_MEDIA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `media`
--

INSERT INTO `media` (`ID_MEDIA`, `NAMA`) VALUES
(1, 'Hardcopy'),
(2, 'Flashdisk'),
(3, 'Softfile'),
(4, '.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `NIP` varchar(20) NOT NULL,
  `ID_UNIT` int(11) DEFAULT NULL,
  `ID_JABATAN` int(11) DEFAULT NULL,
  `NAMA` varchar(100) DEFAULT NULL,
  `TANGGAL_LAHIR` date DEFAULT NULL,
  `JENIS_KELAMIN` char(1) DEFAULT NULL,
  `ALAMAT` varchar(255) DEFAULT NULL,
  `TANGGAL_PENGANGKATAN` date DEFAULT NULL,
  PRIMARY KEY (`NIP`),
  KEY `FK_REFERENCE_3` (`ID_JABATAN`),
  KEY `FK_REFERENCE_2` (`ID_UNIT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`NIP`, `ID_UNIT`, `ID_JABATAN`, `NAMA`, `TANGGAL_LAHIR`, `JENIS_KELAMIN`, `ALAMAT`, `TANGGAL_PENGANGKATAN`) VALUES
('12345', 1, 1, 'Apa aja', '1998-03-03', 'L', 'Apa aja', '2022-10-10'),
('199002012022121001', 2, 2, 'Nasril', '1990-02-01', 'L', 'jl. kramat', '2022-12-01'),
('199209012015041001', 1, 1, 'Admin', '1992-09-01', 'L', 'Manukan Peni II', '2015-04-01'),
('199304012015111001', 1, 5, 'User1', '1993-04-01', 'L', 'Waru, Sidoarja', '2015-11-29'),
('199306142015111001', 2, 4, 'User2', '1993-06-14', 'L', 'Waru Sidoarjo', '2015-11-29'),
('199306282015111001', 3, 3, 'User3', '1993-06-28', 'L', 'Moyokerto', '2015-11-18'),
('199308312014061001', 1, 2, 'Rizky', '1993-08-31', 'L', 'Krian City Indonesia', '2014-06-17'),
('200005022022012001', 1, 3, 'indi', '2000-05-02', 'P', 'Jakarta', '2022-01-04'),
('200101012022090901', 1, 1, 'Rizky', '2001-09-01', 'L', 'jl. Cinta', '2023-02-01'),
('202207012023021001', 1, 4, 'roy', '2022-07-01', 'L', 'jl. waru', '2023-02-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `ID` int(11) NOT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `ID_SURAT` int(11) DEFAULT NULL,
  `KEPERLUAN` varchar(255) DEFAULT NULL,
  `TANGGAL_PINJAM` date DEFAULT NULL,
  `LAMA_PINJAM` int(11) DEFAULT NULL,
  `TANGGAL_KEMBALI` date DEFAULT NULL,
  `STATUS_PINJAM` enum('telat','kembali','menunggu','pinjam') DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_REFERENCE_17` (`ID_SURAT`),
  KEY `FK_REFERENCE_28` (`NIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`ID`, `NIP`, `ID_SURAT`, `KEPERLUAN`, `TANGGAL_PINJAM`, `LAMA_PINJAM`, `TANGGAL_KEMBALI`, `STATUS_PINJAM`) VALUES
(1, '199209012015041001', 1, 'Nyoba nyeleh, oleh gak seh...???', '2015-11-17', 4, '2015-11-21', 'menunggu'),
(2, '199308312014061001', 3, 'Nyoba', '2015-11-16', 4, '2015-11-20', 'telat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggandaan`
--

CREATE TABLE IF NOT EXISTS `penggandaan` (
  `ID` int(11) NOT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `ID_SURAT` int(11) DEFAULT NULL,
  `TUJUAN` varchar(255) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_REFERENCE_22` (`ID_SURAT`),
  KEY `FK_REFERENCE_24` (`NIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `ID_PENGGUNA` int(11) NOT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `PREVILAGE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PENGGUNA`),
  KEY `FK_REFERENCE_23` (`NIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`ID_PENGGUNA`, `NIP`, `EMAIL`, `PASSWORD`, `PREVILAGE`) VALUES
(1, '199209012015041001', 'varkawill@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 1),
(2, '199308312014061001', 'user@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 0),
(3, '12345', 'apaaja@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 1),
(4, '200101012022090901', 'Kiky@yahoo.com', '1234567', 0),
(5, '199209012015041001', 'yangasik@gmail.com', '1234567', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_inaktif`
--

CREATE TABLE IF NOT EXISTS `riwayat_inaktif` (
  `ID` int(11) NOT NULL,
  `ID_SURAT` int(11) DEFAULT NULL,
  `ID_INAKTIF` int(11) DEFAULT NULL,
  `TANGGAL_INAKTIF` date DEFAULT NULL,
  `TANGGAL_AKTIF_KEMBALI` date DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_REFERENCE_18` (`ID_SURAT`),
  KEY `FK_REFERENCE_19` (`ID_INAKTIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `riwayat_inaktif`
--

INSERT INTO `riwayat_inaktif` (`ID`, `ID_SURAT`, `ID_INAKTIF`, `TANGGAL_INAKTIF`, `TANGGAL_AKTIF_KEMBALI`, `status`) VALUES
(1, 1, 2, '2016-11-16', '0000-00-00', '1'),
(3, 3, 1, '2017-11-19', '0000-00-00', '1'),
(4, 4, 2, '2016-11-19', '0000-00-00', '2'),
(5, 5, 1, '2017-11-23', '0000-00-00', '0'),
(6, 7, 2, '2022-01-04', NULL, '0'),
(7, 8, 1, '2028-02-25', NULL, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_retensi`
--

CREATE TABLE IF NOT EXISTS `riwayat_retensi` (
  `ID` int(11) NOT NULL,
  `ID_SURAT` int(11) DEFAULT NULL,
  `ID_JADWAL` int(11) DEFAULT NULL,
  `TANGGAL_RETENSI` date DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_REFERENCE_20` (`ID_SURAT`),
  KEY `FK_REFERENCE_21` (`ID_JADWAL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `riwayat_retensi`
--

INSERT INTO `riwayat_retensi` (`ID`, `ID_SURAT`, `ID_JADWAL`, `TANGGAL_RETENSI`, `status`) VALUES
(1, 1, 2, '2017-11-16', '1'),
(3, 3, 1, '2018-11-19', '0'),
(4, 4, 2, '2017-11-19', '1'),
(5, 5, 1, '2018-11-23', ''),
(6, 7, 2, '2023-01-04', '0'),
(7, 8, 1, '2029-02-25', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

CREATE TABLE IF NOT EXISTS `surat` (
  `ID_SURAT` int(11) NOT NULL,
  `ID_LOKASI` int(11) DEFAULT NULL,
  `ID_JENIS` int(11) DEFAULT NULL,
  `ID_MEDIA` int(11) DEFAULT NULL,
  `JUDUL_KOP` varchar(255) DEFAULT NULL,
  `NOMOR` varchar(50) DEFAULT NULL,
  `TANGGAL` date DEFAULT NULL,
  `PERIHAL` varchar(255) DEFAULT NULL,
  `DARI` varchar(100) DEFAULT NULL,
  `KEPADA` varchar(100) DEFAULT NULL,
  `ASAL_INSTANSI` varchar(100) DEFAULT NULL,
  `TANGGAL_MASUK` date DEFAULT NULL,
  PRIMARY KEY (`ID_SURAT`),
  KEY `FK_REFERENCE_5` (`ID_LOKASI`),
  KEY `FK_REFERENCE_7` (`ID_JENIS`),
  KEY `FK_REFERENCE_51` (`ID_MEDIA`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat`
--

INSERT INTO `surat` (`ID_SURAT`, `ID_LOKASI`, `ID_JENIS`, `ID_MEDIA`, `JUDUL_KOP`, `NOMOR`, `TANGGAL`, `PERIHAL`, `DARI`, `KEPADA`, `ASAL_INSTANSI`, `TANGGAL_MASUK`) VALUES
(1, 1, 2, 2, 'Nyoba Ubah Surat', 'KPKNL-XII/23/2015', '2015-11-15', 'Nyoba Ngubah Surat', 'Septyan', 'Oby Hermawan', 'Kupucorp', '2015-11-16'),
(3, 1, 1, 1, 'surat talak tilu', 'sl-1234', '2015-11-18', 'sangat rahasia', 'panitera', 'kasi PBB', 'Pengadilan agama', '2015-11-19'),
(4, 1, 2, 1, 'keluar 1', 'KPKNL-1/11/2015', '2015-11-19', 'keluar', 'dalam', 'keluar', 'kpknl', '1970-01-01'),
(5, 1, 1, 1, 'Nyoba', '323-KJAS-2015', '2015-11-23', 'Emboh', 'Septyan', 'Oby', 'Kupucorp', '2015-11-23'),
(6, 1, 1, 1, 'Selamat datang', '1234567', '2022-02-09', 'bantuan', 'pt tri murti', 'bpk . setiawa', 'keuangan', '2022-02-09'),
(7, 1, 2, 1, 'surat peringatan', '01', '2021-01-01', 'peringatan', 'admin', 'karyawan', 'politeknik lp3i', '2021-01-04'),
(8, 1, 1, 1, 'surat peringatan', 'S-2/WKN.8/KNL.01/2023', '2023-02-25', 'peringatan', 'admin', 'karyawan', 'politeknik lp3i', '1970-01-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_kerja`
--

CREATE TABLE IF NOT EXISTS `unit_kerja` (
  `ID_UNIT` int(11) NOT NULL,
  `NAMA` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_UNIT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `unit_kerja`
--

INSERT INTO `unit_kerja` (`ID_UNIT`, `NAMA`) VALUES
(1, 'Unit Kerja 1'),
(2, 'Unit Kerja 2'),
(3, 'Unit Kerja 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `ID_UPLOAD` int(11) NOT NULL,
  `ID_SURAT` int(11) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_UPLOAD`),
  KEY `FK_REFERENCE_4` (`ID_SURAT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload`
--

INSERT INTO `upload` (`ID_UPLOAD`, `ID_SURAT`, `PATH`) VALUES
(1, 1, 'http://localhost/simsurat/uploads/surat/SyntaxJScript.pdf'),
(2, 1, 'http://localhost/simsurat/uploads/surat/Berita_Acara.docx'),
(3, 1, 'http://localhost/simsurat/uploads/surat/berita_acara_sidang_proposal.png'),
(7, 3, 'http://localhost/simsurat/uploads/surat/Curiculum_Vitae_(CV)_-_NEW.pdf'),
(8, 5, 'http://localhost/simsurat/uploads/surat/Curiculum_Vitae_(CV)_-_NEW1.pdf'),
(9, 7, 'http://localhost/efilling/uploads/surat/CV_Magang_White.pdf');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `arsip_keluar`
--
ALTER TABLE `arsip_keluar`
  ADD CONSTRAINT `FK_REFERENCE_13` FOREIGN KEY (`ID_SURAT`) REFERENCES `surat` (`ID_SURAT`),
  ADD CONSTRAINT `FK_REFERENCE_26` FOREIGN KEY (`NIP`) REFERENCES `pegawai` (`NIP`);

--
-- Ketidakleluasaan untuk tabel `arsip_masuk`
--
ALTER TABLE `arsip_masuk`
  ADD CONSTRAINT `FK_REFERENCE_11` FOREIGN KEY (`ID_SURAT`) REFERENCES `surat` (`ID_SURAT`),
  ADD CONSTRAINT `FK_REFERENCE_25` FOREIGN KEY (`NIP`) REFERENCES `pegawai` (`NIP`);

--
-- Ketidakleluasaan untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD CONSTRAINT `FK_REFERENCE_15` FOREIGN KEY (`ID_SURAT`) REFERENCES `surat` (`ID_SURAT`),
  ADD CONSTRAINT `FK_REFERENCE_27` FOREIGN KEY (`NIP`) REFERENCES `pegawai` (`NIP`);

--
-- Ketidakleluasaan untuk tabel `inaktif`
--
ALTER TABLE `inaktif`
  ADD CONSTRAINT `FK_REFERENCE_8` FOREIGN KEY (`ID_JENIS`) REFERENCES `jenis_surat` (`ID_JENIS`);

--
-- Ketidakleluasaan untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD CONSTRAINT `FK_JABATAN1` FOREIGN KEY (`ID_KEPALA`) REFERENCES `jabatan` (`ID_JABATAN`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `jadwal_retensi`
--
ALTER TABLE `jadwal_retensi`
  ADD CONSTRAINT `FK_REFERENCE_9` FOREIGN KEY (`ID_JENIS`) REFERENCES `jenis_surat` (`ID_JENIS`);

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `FK_REFERENCE_2` FOREIGN KEY (`ID_UNIT`) REFERENCES `unit_kerja` (`ID_UNIT`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_REFERENCE_3` FOREIGN KEY (`ID_JABATAN`) REFERENCES `jabatan` (`ID_JABATAN`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK_REFERENCE_17` FOREIGN KEY (`ID_SURAT`) REFERENCES `surat` (`ID_SURAT`),
  ADD CONSTRAINT `FK_REFERENCE_28` FOREIGN KEY (`NIP`) REFERENCES `pegawai` (`NIP`);

--
-- Ketidakleluasaan untuk tabel `penggandaan`
--
ALTER TABLE `penggandaan`
  ADD CONSTRAINT `FK_REFERENCE_22` FOREIGN KEY (`ID_SURAT`) REFERENCES `surat` (`ID_SURAT`),
  ADD CONSTRAINT `FK_REFERENCE_24` FOREIGN KEY (`NIP`) REFERENCES `pegawai` (`NIP`);

--
-- Ketidakleluasaan untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `FK_REFERENCE_23` FOREIGN KEY (`NIP`) REFERENCES `pegawai` (`NIP`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `riwayat_inaktif`
--
ALTER TABLE `riwayat_inaktif`
  ADD CONSTRAINT `FK_REFERENCE_18` FOREIGN KEY (`ID_SURAT`) REFERENCES `surat` (`ID_SURAT`),
  ADD CONSTRAINT `FK_REFERENCE_19` FOREIGN KEY (`ID_INAKTIF`) REFERENCES `inaktif` (`ID_INAKTIF`);

--
-- Ketidakleluasaan untuk tabel `riwayat_retensi`
--
ALTER TABLE `riwayat_retensi`
  ADD CONSTRAINT `FK_REFERENCE_20` FOREIGN KEY (`ID_SURAT`) REFERENCES `surat` (`ID_SURAT`),
  ADD CONSTRAINT `FK_REFERENCE_21` FOREIGN KEY (`ID_JADWAL`) REFERENCES `jadwal_retensi` (`ID_JADWAL`);

--
-- Ketidakleluasaan untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `FK_REFERENCE_5` FOREIGN KEY (`ID_LOKASI`) REFERENCES `lokasi` (`ID_LOKASI`),
  ADD CONSTRAINT `FK_REFERENCE_51` FOREIGN KEY (`ID_MEDIA`) REFERENCES `media` (`ID_MEDIA`),
  ADD CONSTRAINT `FK_REFERENCE_7` FOREIGN KEY (`ID_JENIS`) REFERENCES `jenis_surat` (`ID_JENIS`);

--
-- Ketidakleluasaan untuk tabel `upload`
--
ALTER TABLE `upload`
  ADD CONSTRAINT `FK_REFERENCE_4` FOREIGN KEY (`ID_SURAT`) REFERENCES `surat` (`ID_SURAT`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
