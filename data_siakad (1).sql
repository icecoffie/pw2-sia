SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Dumping data untuk tabel `m_tahun_ajaran`
--

INSERT INTO `m_tahun_ajaran` (`id_tahun`, `nama_tahun`, `semester`, `is_active`) VALUES
(1, '2025/2026', 'Ganjil', 1),
(2, '2025/2026', 'Genap', 0);

--
-- Dumping data untuk tabel `m_users`
--

INSERT INTO `m_users` (`id_user`, `username`, `password_hash`, `email`, `role`, `is_active`, `created_at`) VALUES
(1, 'admin1', 'admin1', 'admin@sekolah.sch.id', 'SuperAdmin', 1, '2026-04-12 23:29:32'),
(2, 'guru01', 'guru01', 'budi@guru.id', 'Guru', 1, '2026-04-12 23:29:32'),
(3, 'guru02', 'guru02', 'siti@guru.id', 'Guru', 1, '2026-04-12 23:29:32'),
(4, 'guru03', 'guru03', 'joko@guru.id', 'Guru', 1, '2026-04-12 23:29:32'),
(5, 'siswa01', 'siswa01', 'andi@siswa.id', 'Siswa', 1, '2026-04-12 23:29:32'),
(6, 'siswa02', 'siswa02', 'bunga@siswa.id', 'Siswa', 1, '2026-04-12 23:29:32'),
(7, 'siswa11', 'siswa11', 'siswa11@siakad.id', 'Siswa', 1, '2026-04-12 23:29:53'),
(8, 'siswa12', 'siswa12', 'siswa12@siakad.id', 'Siswa', 1, '2026-04-12 23:29:53'),
(9, 'siswa13', 'siswa13', 'siswa13@siakad.id', 'Siswa', 1, '2026-04-12 23:29:53'),
(10, 'siswa14', 'siswa14', 'siswa14@siakad.id', 'Siswa', 1, '2026-04-12 23:29:53'),
(11, 'siswa15', 'siswa15', 'siswa15@siakad.id', 'Siswa', 1, '2026-04-12 23:29:53'),
(12, 'siswa16', 'siswa16', 'siswa16@siakad.id', 'Siswa', 1, '2026-04-12 23:29:53'),
(13, 'siswa17', 'siswa17', 'siswa17@siakad.id', 'Siswa', 1, '2026-04-12 23:29:53'),
(14, 'siswa18', 'siswa18', 'siswa18@siakad.id', 'Siswa', 1, '2026-04-12 23:29:53'),
(15, 'siswa19', 'siswa19', 'siswa19@siakad.id', 'Siswa', 1, '2026-04-12 23:29:53'),
(16, 'siswa20', 'siswa20', 'siswa20@siakad.id', 'Siswa', 1, '2026-04-12 23:29:53'),
(17, 'guru07', 'guru07', 'hendrawan@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(18, 'guru08', 'guru08', 'animaryani@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(19, 'guru09', 'guru09', 'bambang@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(20, 'guru10', 'guru10', 'lusiapriani@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(21, 'guru11', 'guru11', 'ekaputra@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(22, 'guru12', 'guru12', 'mayasari@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(23, 'guru13', 'guru13', 'dodikurniawan@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(24, 'guru14', 'guru14', 'siskaamelia@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(25, 'guru15', 'guru15', 'arismunandar@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(26, 'guru16', 'guru16', 'fhandayani@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(27, 'guru17', 'guru17', 'yudapratama@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(28, 'guru18', 'guru18', 'nandarisky@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(29, 'guru19', 'guru19', 'kartikaputri@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(30, 'guru20', 'guru20', 'rezapahlevi@sekolah.id', 'Guru', 1, '2026-04-12 23:35:54'),
(31, 'siswa03', 'siswa03', 'siswa03@siakad.id', 'Siswa', 1, '2026-04-12 23:48:32'),
(32, 'siswa04', 'siswa04', 'siswa04@siakad.id', 'Siswa', 1, '2026-04-12 23:48:32'),
(33, 'siswa05', 'siswa05', 'siswa05@siakad.id', 'Siswa', 1, '2026-04-12 23:48:32'),
(34, 'siswa06', 'siswa06', 'siswa06@siakad.id', 'Siswa', 1, '2026-04-12 23:48:32'),
(35, 'siswa07', 'siswa07', 'siswa07@siakad.id', 'Siswa', 1, '2026-04-12 23:48:32'),
(36, 'siswa08', 'siswa08', 'siswa08@siakad.id', 'Siswa', 1, '2026-04-12 23:48:32'),
(37, 'siswa09', 'siswa09', 'siswa09@siakad.id', 'Siswa', 1, '2026-04-12 23:48:32'),
(38, 'siswa10', 'siswa10', 'siswa10@siakad.id', 'Siswa', 1, '2026-04-12 23:48:32'),
(42, 'guru45', 'guru45', 'guru45@sekolah.id', 'Guru', 1, '2026-04-09 23:35:54'),
(43, 'guru46', 'guru46', 'guru46@sekolah.id', 'Guru', 1, '2026-04-15 23:35:54'),
(44, 'guru50', 'guru50', 'guru50@sekolah.id', 'Guru', 1, '2026-04-10 23:35:54');

--
-- Dumping data untuk tabel `ref_wilayah`
--

INSERT INTO `ref_wilayah` (`id_wilayah`, `nama_wilayah`, `parent_id`) VALUES
('31', 'DKI Jakarta', NULL),
('31.71', 'Jakarta Selatan', '31'),
('31.71.01', 'Tebet', '31.71'),
('31.71.02', 'Setiabudi', '31.71'),
('31.71.03', 'Mampang Prapatan', '31.71'),
('32', 'Jawa Barat', NULL),
('32.01', 'Kab. Bogor', '32'),
('32.01.01', 'Cibinong', '32.01'),
('32.01.02', 'Gunung Putri', '32.01'),
('32.73', 'Kota Bandung', '32');

--
-- Dumping data untuk tabel `m_pegawai`
--

INSERT INTO `m_pegawai` (`id_pegawai`, `id_user`, `nip`, `nuptk`, `nik`, `nama_lengkap`, `jenis_kelamin`, `tgl_lahir`, `id_wilayah`, `no_hp`, `npwp`, `pendidikan_terakhir`, `tmt_pangkat`, `status_sertifikasi`) VALUES
(1, 2, '198001', '111', '320101', 'Budi Santoso, M.Pd', 'L', '1980-05-12', '32.01.01', '081223337191', '47.677.960.0-401.000', 'S2', '2023-01-02', 1),
(2, 3, '198202', '222', '320102', 'Siti Aminah, S.Pd', 'P', '1982-10-20', '32.01.01', '081287495772', '48.624.656.0-401.000', 'S1', '2023-01-02', 1),
(3, 4, '198503', '333', '320103', 'Joko Susilo, S.T', 'L', '1985-01-15', '32.01.01', '081240738270', '85.311.658.0-401.000', 'S1', '2023-01-02', 1),
(4, 42, '198704', '444', '320104', 'Rina Wijaya, S.Si', 'P', '1987-03-22', '32.01.01', '081246069980', '22.545.151.0-401.000', 'S1', '2023-01-02', 1),
(5, 43, '199005', '555', '320105', 'Ahmad Fauzi, M.Ag', 'L', '1990-07-07', '32.01.01', '081282204157', '84.806.472.0-401.000', 'S2', '2023-01-02', 1),
(6, 44, '199206', '666', '320106', 'Dewi Lestari, S.Pd', 'P', '1992-12-30', '32.01.01', '081274358676', '39.560.608.0-401.000', 'S1', '2023-01-02', 1),
(7, 17, '198807', '777', '320107', 'Hendrawan, M.Kom', 'L', '1988-08-18', '32.01.01', '081236490287', '78.984.636.0-401.000', 'S2', '2023-01-02', 1),
(8, 18, '199108', '888', '320108', 'Ani Maryani, S.Pd', 'P', '1991-04-05', '32.01.01', '081213116481', '44.826.901.0-401.000', 'S1', '2023-01-02', 1),
(9, 19, '198409', '999', '320109', 'Bambang Utomo, S.Pd', 'L', '1984-11-11', '32.01.01', '081213240681', '54.472.601.0-401.000', 'S1', '2023-01-02', 1),
(10, 20, '199310', '000', '320110', 'Lusi apriani, M.Pd', 'P', '1993-02-28', '32.01.01', '081259119443', '14.677.137.0-401.000', 'S2', '2023-01-02', 1),
(11, 21, '199411', '112', '320111', 'Eka Putra, S.Kom', 'L', '1994-04-12', '32.01.01', '081235474965', '35.640.223.0-401.000', 'S1', '2023-01-02', 1),
(12, 22, '198312', '122', '320112', 'Maya Sari, M.Hum', 'P', '1983-09-05', '32.01.01', '081289238955', '98.383.640.0-401.000', 'S2', '2023-01-02', 1),
(13, 23, '198913', '132', '320113', 'Dodi Kurniawan, S.Pd', 'L', '1989-11-22', '32.01.01', '081215490654', '54.391.204.0-401.000', 'S1', '2023-01-02', 1),
(14, 24, '199514', '142', '320114', 'Siska Amelia, S.E', 'P', '1995-02-14', '32.01.01', '081264939873', '72.711.366.0-401.000', 'S1', '2023-01-02', 1),
(15, 25, '198115', '152', '320115', 'Aris Munandar, M.Si', 'L', '1981-06-30', '32.01.01', '081249634384', '37.316.338.0-401.000', 'S2', '2023-01-02', 1),
(16, 26, '199016', '162', '320116', 'Fitri Handayani, S.Pd', 'P', '1990-08-18', '32.01.01', '081264464994', '30.400.981.0-401.000', 'S1', '2023-01-02', 1),
(17, 27, '198617', '172', '320117', 'Yuda Pratama, M.Pd', 'L', '1986-03-10', '32.01.01', '081291108757', '60.204.899.0-401.000', 'S2', '2023-01-02', 1),
(18, 28, '199218', '182', '320118', 'Nanda Risky, S.Stat', 'L', '1992-05-25', '32.01.01', '081218640389', '82.800.507.0-401.000', 'S1', '2023-01-02', 1),
(19, 29, '198419', '192', '320119', 'Kartika Putri, S.Pd', 'P', '1984-07-12', '32.01.01', '081293844921', '36.722.611.0-401.000', 'S1', '2023-01-02', 1),
(20, 30, '199620', '202', '320120', 'Reza Pahlevi, S.Pd', 'L', '1996-10-01', '32.01.01', '081278937484', '21.391.323.0-401.000', 'S1', '2023-01-02', 1);

--
-- Dumping data untuk tabel `m_siswa`
--

INSERT INTO `m_siswa` (`id_siswa`, `id_user`, `nisn`, `nis`, `nama_lengkap`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat_jalan`, `id_wilayah`, `nama_ayah`, `nik_ayah`, `nama_ibu`, `nik_ibu`, `no_hp_ortu`, `no_ijazah_smp`, `penerima_kps_kip`, `alat_transportasi`, `jarak_ke_sekolah_km`, `koordinat_rumah`, `deleted_at`) VALUES
(1, 5, '0011223301', '2526001', 'Andi Hermawan', 'L', 'Bogor', '2010-01-01', 'Jl. Mawar No. 1', '32.01.01', 'Supardi', '32013244588343', 'Sumiati', '32014472219719', '081295835739', 'DN-01/M-SMP/25/1001', 0, 'Motor', 20.90, NULL, NULL),
(2, 6, '0011223302', '2526002', 'Bunga Citra', 'P', 'Bogor', '2010-02-12', 'Jl. Mawar No. 2', '32.01.01', 'Anto', '32012718050462', 'Rika', '32017430221556', '081277200102', 'DN-01/M-SMP/25/1002', 0, 'Motor', 7.00, NULL, NULL),
(3, 31, '0011223303', '2526003', 'Candra Wijaya', 'L', 'Bogor', '2010-03-25', 'Jl. Mawar No. 3', '32.01.01', 'Heri', '32013479725118', 'Dewi', '32018316268953', '081286941188', 'DN-01/M-SMP/25/1003', 0, 'Motor', 1.19, NULL, NULL),
(4, 32, '0011223304', '2526004', 'Dina Anugrah', 'P', 'Bogor', '2010-04-10', 'Jl. Mawar No. 4', '32.01.01', 'Budi', '32011383700577', 'Siska', '32019632377537', '081277620418', 'DN-01/M-SMP/25/1004', 0, 'Motor', 3.34, NULL, NULL),
(5, 33, '0011223305', '2526005', 'Eko Prasetyo', 'L', 'Bogor', '2010-05-05', 'Jl. Mawar No. 5', '32.01.01', 'Dedi', '32013751635759', 'Yanti', '32012287782562', '081251567987', 'DN-01/M-SMP/25/1005', 0, 'Motor', 3.99, NULL, NULL),
(6, 34, '0011223306', '2526006', 'Fanya Syahra', 'P', 'Bogor', '2010-06-20', 'Jl. Mawar No. 6', '32.01.01', 'Roni', '32014731391007', 'Lina', '32014486910421', '081260566815', 'DN-01/M-SMP/25/1006', 0, 'Motor', 3.47, NULL, NULL),
(7, 35, '0011223307', '2526007', 'Gilang Ramadhan', 'L', 'Bogor', '2010-07-15', 'Jl. Mawar No. 7', '32.01.01', 'Agus', '32014984691308', 'Wati', '32013699959348', '081237411657', 'DN-01/M-SMP/25/1007', 0, 'Motor', 0.86, NULL, NULL),
(8, 36, '0011223308', '2526008', 'Hana Pertiwi', 'P', 'Bogor', '2010-08-30', 'Jl. Mawar No. 8', '32.01.01', 'Iwan', '32013506519481', 'Ratna', '32015646384595', '081296287376', 'DN-01/M-SMP/25/1008', 0, 'Motor', 3.73, NULL, NULL),
(9, 37, '0011223309', '2526009', 'Indra Kusuma', 'L', 'Bogor', '2010-09-09', 'Jl. Mawar No. 9', '32.01.01', 'Ujang', '32016976258510', 'Eneng', '32018013281233', '081226226705', 'DN-01/M-SMP/25/1009', 0, 'Motor', 4.52, NULL, NULL),
(10, 38, '0011223310', '2526010', 'Jaka Swara', 'L', 'Bogor', '2010-10-10', 'Jl. Mawar No. 10', '32.01.01', 'Maman', '32012828663320', 'Kokom', '32015198383403', '081226483111', 'DN-01/M-SMP/25/1010', 0, 'Motor', 3.61, NULL, NULL),
(11, 7, '0011223311', '2526011', 'Kiki Amelia', 'P', 'Bogor', '2010-11-11', 'Jl. Mawar No. 11', '32.01.01', 'Bambang', '32019154651946', 'Siti', '32018969799809', '081229344867', 'DN-01/M-SMP/25/1011', 0, 'Motor', 3.55, NULL, NULL),
(12, 8, '0011223312', '2526012', 'Lucky Perdana', 'L', 'Bogor', '2010-12-12', 'Jl. Mawar No. 12', '32.01.01', 'Eko', '32013923961167', 'Rini', '32019572351309', '081290158181', 'DN-01/M-SMP/25/1012', 0, 'Motor', 3.94, NULL, NULL),
(13, 9, '0011223313', '2526013', 'Mahendra Putra', 'L', 'Bogor', '2011-01-13', 'Jl. Mawar No. 13', '32.01.01', 'Yanto', '32011391945101', 'Dewi', '32019762786908', '081217323129', 'DN-01/M-SMP/25/1013', 0, 'Motor', 3.69, NULL, NULL),
(14, 10, '0011223314', '2526014', 'Nadia Safira', 'P', 'Bogor', '2011-02-14', 'Jl. Mawar No. 14', '32.01.01', 'Dedi', '32016596387456', 'Lusi', '32018275526115', '081279021370', 'DN-01/M-SMP/25/1014', 0, 'Motor', 0.88, NULL, NULL),
(15, 11, '0011223315', '2526015', 'Oki Setiawan', 'L', 'Bogor', '2011-03-15', 'Jl. Mawar No. 15', '32.01.01', 'Agus', '32017813416613', 'Wati', '32014719790268', '081251157643', 'DN-01/M-SMP/25/1015', 0, 'Motor', 3.98, NULL, NULL),
(16, 12, '0011223316', '2526016', 'Putri Salma', 'P', 'Bogor', '2011-04-16', 'Jl. Mawar No. 16', '32.01.01', 'Hendra', '32013694586808', 'Maya', '32013570519193', '081276341383', 'DN-01/M-SMP/25/1016', 0, 'Motor', 2.65, NULL, NULL),
(17, 13, '0011223317', '2526017', 'Qori Ananda', 'L', 'Bogor', '2011-05-17', 'Jl. Mawar No. 17', '32.01.01', 'Iwan', '32014356601775', 'Siska', '32015385143781', '081281326217', 'DN-01/M-SMP/25/1017', 0, 'Motor', 1.59, NULL, NULL),
(18, 14, '0011223318', '2526018', 'Raka Raynaldi', 'L', 'Bogor', '2011-06-18', 'Jl. Mawar No. 18', '32.01.01', 'Roni', '32017052949856', 'Yanti', '32019892334863', '081221241382', 'DN-01/M-SMP/25/1018', 0, 'Motor', 4.61, NULL, NULL),
(19, 15, '0011223319', '2526019', 'Sela Marsela', 'P', 'Bogor', '2011-07-19', 'Jl. Mawar No. 19', '32.01.01', 'Joko', '32015277129296', 'Tina', '32014874284301', '081268371207', 'DN-01/M-SMP/25/1019', 0, 'Motor', 3.63, NULL, NULL),
(20, 16, '0011223320', '2526020', 'Tio Nugroho', 'L', 'Bogor', '2011-08-20', 'Jl. Mawar No. 20', '32.01.01', 'Heri', '32015766482783', 'Ani', '32016600463684', '081240773168', 'DN-01/M-SMP/25/1020', 0, 'Motor', 2.61, NULL, NULL);

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`id_mapel`, `kode_mapel`, `nama_mapel`, `kelompok_mapel`, `kkm`, `is_praktek`) VALUES
(1, 'MTK', 'Matematika', 'Nasional', 75, 0),
(2, 'BIN', 'Bahasa Indonesia', 'Nasional', 75, 0),
(3, 'IPA', 'IPA Terpadu', 'Nasional', 70, 0);

--
-- Dumping data untuk tabel `m_kelas`
--

INSERT INTO `m_kelas` (`id_kelas`, `nama_kelas`, `tingkat`, `id_wali_kelas`, `id_tahun`) VALUES
(1, 'X-IPA-1', 10, 1, 1),
(2, 'X-IPA-2', 10, 2, 1),
(3, 'X-IPS-1', 10, 11, 1);

--
-- Dumping data untuk tabel `t_registrasi_kelas`
--

INSERT INTO `t_registrasi_kelas` (`id_reg`, `id_siswa`, `id_kelas`, `id_tahun`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 5, 1, 1),
(6, 6, 2, 1),
(7, 7, 2, 1),
(8, 8, 2, 1),
(9, 9, 2, 1),
(10, 10, 2, 1),
(11, 11, 3, 1),
(12, 12, 3, 1),
(13, 13, 3, 1),
(14, 14, 3, 1),
(15, 15, 3, 1),
(16, 16, 3, 1),
(17, 17, 3, 1),
(18, 18, 3, 1),
(19, 19, 3, 1),
(20, 20, 3, 1);

--
-- Dumping data untuk tabel `t_jadwal`
--

INSERT INTO `t_jadwal` (`id_jadwal`, `id_kelas`, `id_mapel`, `id_guru`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(1, 1, 1, 1, 'Senin', '07:00:00', '09:00:00'),
(2, 1, 2, 2, 'Senin', '09:30:00', '11:00:00');

--
-- Dumping data untuk tabel `t_absensi`
--

INSERT INTO `t_absensi` (`id_absensi`, `id_siswa`, `id_jadwal`, `tanggal`, `status_hadir`, `keterangan`) VALUES
(1, 1, 1, '2026-04-13', 'Hadir', NULL),
(2, 2, 1, '2026-04-13', 'Hadir', NULL),
(3, 3, 1, '2026-04-13', 'Hadir', NULL),
(4, 4, 1, '2026-04-13', 'Hadir', NULL),
(5, 5, 1, '2026-04-13', 'Hadir', NULL);

--
-- Dumping data untuk tabel `t_nilai`
--

INSERT INTO `t_nilai` (`id_nilai`, `id_reg`, `id_mapel`, `nilai_tugas`, `nilai_uts`, `nilai_uas`, `nilai_akhir`, `predikat`) VALUES
(1, 1, 1, 80.00, 75.00, 85.00, 80.00, 'B'),
(2, 2, 1, 90.00, 85.00, 95.00, 91.00, 'A');

--
-- Dumping data untuk tabel `t_pembayaran_spp`
--

INSERT INTO `t_pembayaran_spp` (`id_bayar`, `id_siswa`, `bulan_spp`, `tahun_spp`, `jumlah_bayar`, `tgl_bayar`, `metode`) VALUES
(1, 1, 1, 2026, 250000.00, '2026-04-12 23:29:32', 'Transfer'),
(2, 2, 1, 2026, 250000.00, '2026-04-12 23:29:32', 'Cash'),
(3, 11, 1, 2026, 250000.00, '2026-04-12 23:31:56', 'Cash'),
(4, 12, 1, 2026, 250000.00, '2026-04-12 23:31:56', 'Transfer'),
(5, 13, 1, 2026, 250000.00, '2026-04-12 23:31:56', 'Cash');

--
-- Dumping data untuk tabel `t_prestasi_siswa`
--

INSERT INTO `t_prestasi_siswa` (`id_prestasi`, `id_siswa`, `nama_lomba`, `jenis_prestasi`, `tingkat`, `juara_ke`, `tahun`, `sertifikat_path`) VALUES
(1, 1, 'Olimpiade Matematika', 'Sains', 'Kota', '1', 2025, NULL),
(2, 2, 'Lomba Baca Puisi', 'Seni', 'Provinsi', '2', 2025, NULL),
(3, 4, 'Turnamen Basket Pelajar', 'Olahraga', 'Nasional', '3', 2025, NULL),
(4, 6, 'Lomba Karya Tulis Ilmiah', 'Sains', 'Nasional', '1', 2026, NULL),
(5, 11, 'Kejuaraan Futsal Regional', 'Olahraga', 'Kota', '1', 2026, NULL),
(6, 12, 'Debat Bahasa Inggris', 'Seni', 'Provinsi', 'Harapan 1', 2025, NULL),
(7, 3, 'MTQ Pelajar', 'Keagamaan', 'Kecamatan', '1', 2025, NULL),
(8, 7, 'Lomba Fotografi', 'Seni', 'Kota', '2', 2026, NULL),
(9, 15, 'Olimpiade Fisika', 'Sains', 'Nasional', 'Harapan 3', 2026, NULL),
(10, 18, 'Pencak Silat Open', 'Olahraga', 'Internasional', '2', 2026, NULL);

--
-- Dumping data untuk tabel `m_ekstrakurikuler`
--

INSERT INTO `m_ekstrakurikuler` (`id_ekskul`, `nama_ekskul`, `id_guru_pembimbing`) VALUES
(1, 'Pramuka', 1),
(2, 'Paskibra', 2),
(3, 'Basket', 3),
(4, 'Futsal', 11),
(5, 'Karya Ilmiah Remaja', 4),
(6, 'Paduan Suara', 12),
(7, 'Rohani Islam', 5),
(8, 'English Club', 13),
(9, 'Palang Merah Remaja', 6),
(10, 'Seni Tari', 14);

--
-- Dumping data untuk tabel `m_ruangan`
--

INSERT INTO `m_ruangan` (`id_ruangan`, `kode_ruangan`, `nama_ruangan`, `tipe_ruangan`, `kapasitas`, `id_gedung`) VALUES
(1, 'R01', 'Kelas X-IPA-1', 'Kelas', 36, 1),
(2, 'R02', 'Kelas X-IPA-2', 'Kelas', 36, 1),
(3, 'R03', 'Kelas X-IPS-1', 'Kelas', 36, 1),
(4, 'LAB01', 'Laboratorium Fisika', 'Laboratorium', 30, 2),
(5, 'LAB02', 'Laboratorium Komputer', 'Laboratorium', 40, 2),
(6, 'LIB01', 'Perpustakaan Utama', 'Perpustakaan', 100, 2),
(7, 'AUL01', 'Aula Serbaguna', 'Aula', 500, 3),
(8, 'OFF01', 'Ruang Guru Utama', 'Kantor', 50, 1),
(9, 'OFF02', 'Ruang Kepala Sekolah', 'Kantor', 10, 1),
(10, 'OFF03', 'Ruang Tata Usaha', 'Kantor', 15, 1);

--
-- Dumping data untuk tabel `sys_log_aktivitas`
--

INSERT INTO `sys_log_aktivitas` (`id_log`, `id_user`, `aktivitas`, `endpoint_url`, `ip_address`, `created_at`) VALUES
(1, 1, 'Login Admin', '/auth/login', '192.168.1.10', '2026-04-12 23:33:02'),
(2, 1, 'Input Data Siswa Baru', '/siswa/store', '192.168.1.10', '2026-04-12 23:33:02'),
(3, 2, 'Input Nilai Matematika X-IPA-1', '/nilai/update', '192.168.1.15', '2026-04-12 23:33:02'),
(4, 3, 'Absensi Kelas X-IPA-2', '/absensi/store', '192.168.1.20', '2026-04-12 23:33:02'),
(5, 1, 'Konfigurasi Tahun Ajaran Baru', '/settings/ta', '192.168.1.10', '2026-04-12 23:33:02'),
(6, 11, 'Update Jadwal Ekskul Futsal', '/ekskul/jadwal', '192.168.1.25', '2026-04-12 23:33:02'),
(7, 1, 'Export Laporan Keuangan SPP', '/report/spp', '192.168.1.10', '2026-04-12 23:33:02'),
(8, 12, 'Input Pelanggaran Siswa', '/bk/pelanggaran', '192.168.1.30', '2026-04-12 23:33:02'),
(9, 4, 'Update Modul Mapel IPA', '/mapel/edit', '192.168.1.35', '2026-04-12 23:33:02'),
(10, 1, 'Backup Database', '/system/backup', '127.0.0.1', '2026-04-12 23:33:02');

--
-- Dumping data untuk tabel `t_anggota_ekskul`
--

INSERT INTO `t_anggota_ekskul` (`id_anggota`, `id_ekskul`, `id_siswa`, `jabatan`) VALUES
(1, 1, 1, 'Ketua'),
(2, 1, 2, 'Anggota'),
(3, 1, 3, 'Anggota'),
(4, 3, 4, 'Ketua'),
(5, 3, 5, 'Anggota'),
(6, 4, 11, 'Ketua'),
(7, 4, 12, 'Anggota'),
(8, 5, 6, 'Sekretaris'),
(9, 8, 7, 'Anggota'),
(10, 10, 8, 'Anggota');

--
-- Dumping data untuk tabel `t_pelanggaran`
--

INSERT INTO `t_pelanggaran` (`id_pelanggaran`, `id_siswa`, `tanggal`, `nama_pelanggaran`, `kategori_pelanggaran`, `poin_minus`, `tindakan_diambil`, `id_guru_pelapor`) VALUES
(1, 1, '2026-02-10', 'Terlambat Masuk Sekolah', 'Ringan', 5, 'Teguran Lisan', 1),
(2, 15, '2026-02-12', 'Tidak Memakai Atribut Lengkap', 'Ringan', 10, 'Hukuman Berdiri di Lapangan', 11),
(3, 20, '2026-02-15', 'Membawa HP ke Kelas tanpa Izin', 'Sedang', 25, 'Penyitaan HP selama 1 minggu', 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
