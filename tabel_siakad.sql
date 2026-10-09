SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Struktur dari tabel `m_ekstrakurikuler`
--

CREATE TABLE `m_ekstrakurikuler` (
  `id_ekskul` int(11) NOT NULL,
  `nama_ekskul` varchar(100) DEFAULT NULL,
  `id_guru_pembimbing` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kelas`
--

CREATE TABLE `m_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `tingkat` int(11) DEFAULT NULL,
  `id_wali_kelas` int(11) DEFAULT NULL,
  `id_tahun` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mapel`
--

CREATE TABLE `m_mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(10) DEFAULT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `kelompok_mapel` enum('Nasional','Kewilayahan','Peminatan','Kejuruan') DEFAULT NULL,
  `kkm` int(11) DEFAULT 75,
  `is_praktek` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_pegawai`
--

CREATE TABLE `m_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nuptk` char(16) DEFAULT NULL,
  `nik` char(16) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `id_wilayah` char(10) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `npwp` varchar(20) DEFAULT NULL,
  `pendidikan_terakhir` enum('D3','S1','S2','S3') DEFAULT NULL,
  `tmt_pangkat` date DEFAULT NULL,
  `status_sertifikasi` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_ruangan`
--

CREATE TABLE `m_ruangan` (
  `id_ruangan` int(11) NOT NULL,
  `kode_ruangan` varchar(20) DEFAULT NULL,
  `nama_ruangan` varchar(100) DEFAULT NULL,
  `tipe_ruangan` enum('Kelas','Laboratorium','Perpustakaan','Aula','Kantor') DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `id_gedung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_siswa`
--

CREATE TABLE `m_siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nisn` char(10) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat_jalan` text DEFAULT NULL,
  `id_wilayah` char(10) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nik_ayah` char(16) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `nik_ibu` char(16) DEFAULT NULL,
  `no_hp_ortu` varchar(20) DEFAULT NULL,
  `no_ijazah_smp` varchar(50) DEFAULT NULL,
  `penerima_kps_kip` tinyint(1) DEFAULT 0,
  `alat_transportasi` enum('Jalan Kaki','Motor','Mobil','Angkutan Umum','Jemputan') DEFAULT NULL,
  `jarak_ke_sekolah_km` decimal(5,2) DEFAULT NULL,
  `koordinat_rumah` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_tahun_ajaran`
--

CREATE TABLE `m_tahun_ajaran` (
  `id_tahun` int(11) NOT NULL,
  `nama_tahun` varchar(10) NOT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_users`
--

CREATE TABLE `m_users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('SuperAdmin','Kurikulum','Guru','Siswa','Orang_Tua','Keuangan') DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_wilayah`
--

CREATE TABLE `ref_wilayah` (
  `id_wilayah` char(10) NOT NULL,
  `nama_wilayah` varchar(100) NOT NULL,
  `parent_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_log_aktivitas`
--

CREATE TABLE `sys_log_aktivitas` (
  `id_log` bigint(20) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `aktivitas` text DEFAULT NULL,
  `endpoint_url` varchar(255) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_absensi`
--

CREATE TABLE `t_absensi` (
  `id_absensi` bigint(20) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status_hadir` enum('Hadir','Sakit','Izin','Alpa','Terlambat') DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_anggota_ekskul`
--

CREATE TABLE `t_anggota_ekskul` (
  `id_anggota` int(11) NOT NULL,
  `id_ekskul` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT 'Anggota'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jadwal`
--

CREATE TABLE `t_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu') DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_nilai`
--

CREATE TABLE `t_nilai` (
  `id_nilai` bigint(20) NOT NULL,
  `id_reg` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `nilai_tugas` decimal(5,2) DEFAULT NULL,
  `nilai_uts` decimal(5,2) DEFAULT NULL,
  `nilai_uas` decimal(5,2) DEFAULT NULL,
  `nilai_akhir` decimal(5,2) DEFAULT NULL,
  `predikat` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pelanggaran`
--

CREATE TABLE `t_pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_pelanggaran` varchar(255) DEFAULT NULL,
  `kategori_pelanggaran` enum('Ringan','Sedang','Berat') DEFAULT NULL,
  `poin_minus` int(11) DEFAULT 0,
  `tindakan_diambil` text DEFAULT NULL,
  `id_guru_pelapor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pembayaran_spp`
--

CREATE TABLE `t_pembayaran_spp` (
  `id_bayar` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `bulan_spp` int(11) DEFAULT NULL,
  `tahun_spp` int(11) DEFAULT NULL,
  `jumlah_bayar` decimal(15,2) DEFAULT NULL,
  `tgl_bayar` timestamp NOT NULL DEFAULT current_timestamp(),
  `metode` enum('Cash','Transfer') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_prestasi_siswa`
--

CREATE TABLE `t_prestasi_siswa` (
  `id_prestasi` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `nama_lomba` varchar(255) DEFAULT NULL,
  `jenis_prestasi` enum('Sains','Olahraga','Seni','Keagamaan') DEFAULT NULL,
  `tingkat` enum('Kecamatan','Kota','Provinsi','Nasional','Internasional') DEFAULT NULL,
  `juara_ke` varchar(10) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `sertifikat_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_registrasi_kelas`
--

CREATE TABLE `t_registrasi_kelas` (
  `id_reg` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_tahun` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `m_ekstrakurikuler`
--
ALTER TABLE `m_ekstrakurikuler`
  ADD PRIMARY KEY (`id_ekskul`),
  ADD KEY `id_guru_pembimbing` (`id_guru_pembimbing`);

--
-- Indeks untuk tabel `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_wali_kelas` (`id_wali_kelas`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- Indeks untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`id_mapel`),
  ADD UNIQUE KEY `kode_mapel` (`kode_mapel`);

--
-- Indeks untuk tabel `m_pegawai`
--
ALTER TABLE `m_pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `nuptk` (`nuptk`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_wilayah` (`id_wilayah`);

--
-- Indeks untuk tabel `m_ruangan`
--
ALTER TABLE `m_ruangan`
  ADD PRIMARY KEY (`id_ruangan`),
  ADD UNIQUE KEY `kode_ruangan` (`kode_ruangan`);

--
-- Indeks untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nisn` (`nisn`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_wilayah` (`id_wilayah`);

--
-- Indeks untuk tabel `m_tahun_ajaran`
--
ALTER TABLE `m_tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indeks untuk tabel `m_users`
--
ALTER TABLE `m_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `ref_wilayah`
--
ALTER TABLE `ref_wilayah`
  ADD PRIMARY KEY (`id_wilayah`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indeks untuk tabel `sys_log_aktivitas`
--
ALTER TABLE `sys_log_aktivitas`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `t_absensi`
--
ALTER TABLE `t_absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indeks untuk tabel `t_anggota_ekskul`
--
ALTER TABLE `t_anggota_ekskul`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `id_ekskul` (`id_ekskul`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `t_jadwal`
--
ALTER TABLE `t_jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `t_nilai`
--
ALTER TABLE `t_nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_reg` (`id_reg`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `t_pelanggaran`
--
ALTER TABLE `t_pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_guru_pelapor` (`id_guru_pelapor`);

--
-- Indeks untuk tabel `t_pembayaran_spp`
--
ALTER TABLE `t_pembayaran_spp`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `t_prestasi_siswa`
--
ALTER TABLE `t_prestasi_siswa`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `t_registrasi_kelas`
--
ALTER TABLE `t_registrasi_kelas`
  ADD PRIMARY KEY (`id_reg`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_tahun` (`id_tahun`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_ekstrakurikuler`
--
ALTER TABLE `m_ekstrakurikuler`
  MODIFY `id_ekskul` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `m_kelas`
--
ALTER TABLE `m_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `m_pegawai`
--
ALTER TABLE `m_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `m_ruangan`
--
ALTER TABLE `m_ruangan`
  MODIFY `id_ruangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `m_tahun_ajaran`
--
ALTER TABLE `m_tahun_ajaran`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `m_users`
--
ALTER TABLE `m_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sys_log_aktivitas`
--
ALTER TABLE `sys_log_aktivitas`
  MODIFY `id_log` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_absensi`
--
ALTER TABLE `t_absensi`
  MODIFY `id_absensi` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_anggota_ekskul`
--
ALTER TABLE `t_anggota_ekskul`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_jadwal`
--
ALTER TABLE `t_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_nilai`
--
ALTER TABLE `t_nilai`
  MODIFY `id_nilai` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_pelanggaran`
--
ALTER TABLE `t_pelanggaran`
  MODIFY `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_pembayaran_spp`
--
ALTER TABLE `t_pembayaran_spp`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_prestasi_siswa`
--
ALTER TABLE `t_prestasi_siswa`
  MODIFY `id_prestasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_registrasi_kelas`
--
ALTER TABLE `t_registrasi_kelas`
  MODIFY `id_reg` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `m_ekstrakurikuler`
--
ALTER TABLE `m_ekstrakurikuler`
  ADD CONSTRAINT `m_ekstrakurikuler_ibfk_1` FOREIGN KEY (`id_guru_pembimbing`) REFERENCES `m_pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD CONSTRAINT `m_kelas_ibfk_1` FOREIGN KEY (`id_wali_kelas`) REFERENCES `m_pegawai` (`id_pegawai`),
  ADD CONSTRAINT `m_kelas_ibfk_2` FOREIGN KEY (`id_tahun`) REFERENCES `m_tahun_ajaran` (`id_tahun`);

--
-- Ketidakleluasaan untuk tabel `m_pegawai`
--
ALTER TABLE `m_pegawai`
  ADD CONSTRAINT `m_pegawai_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_users` (`id_user`),
  ADD CONSTRAINT `m_pegawai_ibfk_2` FOREIGN KEY (`id_wilayah`) REFERENCES `ref_wilayah` (`id_wilayah`);

--
-- Ketidakleluasaan untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD CONSTRAINT `m_siswa_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_users` (`id_user`),
  ADD CONSTRAINT `m_siswa_ibfk_2` FOREIGN KEY (`id_wilayah`) REFERENCES `ref_wilayah` (`id_wilayah`);

--
-- Ketidakleluasaan untuk tabel `ref_wilayah`
--
ALTER TABLE `ref_wilayah`
  ADD CONSTRAINT `ref_wilayah_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `ref_wilayah` (`id_wilayah`);

--
-- Ketidakleluasaan untuk tabel `sys_log_aktivitas`
--
ALTER TABLE `sys_log_aktivitas`
  ADD CONSTRAINT `sys_log_aktivitas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `m_users` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `t_absensi`
--
ALTER TABLE `t_absensi`
  ADD CONSTRAINT `t_absensi_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id_siswa`),
  ADD CONSTRAINT `t_absensi_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `t_jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `t_anggota_ekskul`
--
ALTER TABLE `t_anggota_ekskul`
  ADD CONSTRAINT `t_anggota_ekskul_ibfk_1` FOREIGN KEY (`id_ekskul`) REFERENCES `m_ekstrakurikuler` (`id_ekskul`),
  ADD CONSTRAINT `t_anggota_ekskul_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id_siswa`);

--
-- Ketidakleluasaan untuk tabel `t_jadwal`
--
ALTER TABLE `t_jadwal`
  ADD CONSTRAINT `t_jadwal_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `m_kelas` (`id_kelas`),
  ADD CONSTRAINT `t_jadwal_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `m_mapel` (`id_mapel`),
  ADD CONSTRAINT `t_jadwal_ibfk_3` FOREIGN KEY (`id_guru`) REFERENCES `m_pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `t_nilai`
--
ALTER TABLE `t_nilai`
  ADD CONSTRAINT `t_nilai_ibfk_1` FOREIGN KEY (`id_reg`) REFERENCES `t_registrasi_kelas` (`id_reg`),
  ADD CONSTRAINT `t_nilai_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `m_mapel` (`id_mapel`);

--
-- Ketidakleluasaan untuk tabel `t_pelanggaran`
--
ALTER TABLE `t_pelanggaran`
  ADD CONSTRAINT `t_pelanggaran_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id_siswa`),
  ADD CONSTRAINT `t_pelanggaran_ibfk_2` FOREIGN KEY (`id_guru_pelapor`) REFERENCES `m_pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `t_pembayaran_spp`
--
ALTER TABLE `t_pembayaran_spp`
  ADD CONSTRAINT `t_pembayaran_spp_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id_siswa`);

--
-- Ketidakleluasaan untuk tabel `t_prestasi_siswa`
--
ALTER TABLE `t_prestasi_siswa`
  ADD CONSTRAINT `t_prestasi_siswa_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id_siswa`);

--
-- Ketidakleluasaan untuk tabel `t_registrasi_kelas`
--
ALTER TABLE `t_registrasi_kelas`
  ADD CONSTRAINT `t_registrasi_kelas_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `m_siswa` (`id_siswa`),
  ADD CONSTRAINT `t_registrasi_kelas_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `m_kelas` (`id_kelas`),
  ADD CONSTRAINT `t_registrasi_kelas_ibfk_3` FOREIGN KEY (`id_tahun`) REFERENCES `m_tahun_ajaran` (`id_tahun`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
