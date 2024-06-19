-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jun 2024 pada 12.58
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spmb_udb2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `formulir`
--

CREATE TABLE `formulir` (
  `no_daftar` varchar(10) NOT NULL,
  `id_periode` int(4) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` datetime NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `program_studi` varchar(10) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `formulir`
--

INSERT INTO `formulir` (`no_daftar`, `id_periode`, `id_user`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `program_studi`, `updated_at`, `created_at`) VALUES
('20230001', 2023, 12, 'Pendaftar', 'L', 'Surakarta', '2000-11-15 00:00:00', 'Surakarta', '0899976567', 'P0001', '2024-04-14 07:07:45', '2024-04-14 07:07:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode`
--

CREATE TABLE `periode` (
  `id` int(4) NOT NULL,
  `aktif` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode`
--

INSERT INTO `periode` (`id`, `aktif`, `created_at`, `updated_at`) VALUES
(2023, 1, '2023-05-19 03:08:48', '2023-05-19 03:08:48'),
(2024, 1, '2023-06-21 18:44:44', '2023-06-21 18:44:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Manage Periode', 'web', '2023-05-25 20:27:00', '2023-05-25 20:28:51'),
(2, 'Manage Pendaftaran', 'web', '2023-05-25 20:29:26', '2023-05-25 20:29:26'),
(3, 'Formulir Pendaftaran', 'web', '2023-05-25 20:30:27', '2023-05-25 20:30:27'),
(4, 'Manage User', 'web', '2023-05-25 20:30:54', '2023-05-25 20:30:54'),
(5, 'Manage Seleksi', 'web', '2023-05-25 20:31:11', '2023-05-25 20:31:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-05-25 20:31:37', '2023-05-25 20:31:37'),
(2, 'Pendaftar', 'web', '2023-05-25 20:31:46', '2023-05-25 20:31:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `seleksi`
--

CREATE TABLE `seleksi` (
  `id` bigint(20) NOT NULL,
  `id_periode` int(4) NOT NULL,
  `tahap` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `seleksi`
--

INSERT INTO `seleksi` (`id`, `id_periode`, `tahap`, `tanggal`, `keterangan`, `created_at`, `updated_at`) VALUES
(4, 1, '1', '2024-04-16', 'test', '2024-04-14 07:26:43', '2024-04-14 07:26:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `seleksi_peserta`
--

CREATE TABLE `seleksi_peserta` (
  `id` varchar(30) NOT NULL,
  `id_seleksi` bigint(20) NOT NULL,
  `id_formulir` varchar(8) NOT NULL,
  `hasil` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `seleksi_peserta`
--

INSERT INTO `seleksi_peserta` (`id`, `id_seleksi`, `id_formulir`, `hasil`, `created_at`, `updated_at`) VALUES
('4-20230001', 4, '20230001', 1, '2024-04-14 07:27:11', '2024-04-14 07:28:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'hasfi', 'muhasfi25@gmail.com', '2024-04-13 22:53:43', '$2y$10$94djUeF1SOd/ezaye9MAA.i0Bgupcbi1fvkdzidPvp3PwSbWDBs2.', NULL, '2024-04-13 21:56:48', '2024-04-13 23:47:53'),
(12, 'Pendaftar', '210101027@mhs.udb.ac.id', '2024-04-13 23:39:03', '$2y$10$r9COWwwYmKGQ14LiFlHu.uGpxQAKB.fL9jaTb9bXGIYEPNmyaAZKW', NULL, '2024-04-13 23:36:21', '2024-04-13 23:39:03');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_formulir_peserta`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_formulir_peserta` (
`no_daftar` varchar(10)
,`id_periode` int(4)
,`id_user` bigint(20)
,`nama` varchar(100)
,`jenis_kelamin` char(1)
,`tempat_lahir` varchar(100)
,`tanggal_lahir` datetime
,`alamat` varchar(255)
,`telp` varchar(100)
,`program_studi` varchar(10)
,`updated_at` datetime
,`created_at` datetime
,`id_seleksi` bigint(20)
,`hasil` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_seleksi_peserta`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_seleksi_peserta` (
`id` varchar(30)
,`id_seleksi` bigint(20)
,`id_periode` int(4)
,`tahap` varchar(100)
,`tanggal` date
,`no_daftar` varchar(10)
,`nama` varchar(100)
,`telp` varchar(100)
,`program_studi` varchar(10)
,`hasil` int(1)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_formulir_peserta`
--
DROP TABLE IF EXISTS `view_formulir_peserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_formulir_peserta`  AS SELECT `formulir`.`no_daftar` AS `no_daftar`, `formulir`.`id_periode` AS `id_periode`, `formulir`.`id_user` AS `id_user`, `formulir`.`nama` AS `nama`, `formulir`.`jenis_kelamin` AS `jenis_kelamin`, `formulir`.`tempat_lahir` AS `tempat_lahir`, `formulir`.`tanggal_lahir` AS `tanggal_lahir`, `formulir`.`alamat` AS `alamat`, `formulir`.`telp` AS `telp`, `formulir`.`program_studi` AS `program_studi`, `formulir`.`updated_at` AS `updated_at`, `formulir`.`created_at` AS `created_at`, `seleksi_peserta`.`id_seleksi` AS `id_seleksi`, `seleksi_peserta`.`hasil` AS `hasil` FROM (`formulir` left join `seleksi_peserta` on(`formulir`.`no_daftar` = `seleksi_peserta`.`id_formulir`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_seleksi_peserta`
--
DROP TABLE IF EXISTS `view_seleksi_peserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_seleksi_peserta`  AS SELECT `seleksi_peserta`.`id` AS `id`, `seleksi_peserta`.`id_seleksi` AS `id_seleksi`, `seleksi`.`id_periode` AS `id_periode`, `seleksi`.`tahap` AS `tahap`, `seleksi`.`tanggal` AS `tanggal`, `formulir`.`no_daftar` AS `no_daftar`, `formulir`.`nama` AS `nama`, `formulir`.`telp` AS `telp`, `formulir`.`program_studi` AS `program_studi`, `seleksi_peserta`.`hasil` AS `hasil` FROM ((`seleksi` join `seleksi_peserta` on(`seleksi`.`id` = `seleksi_peserta`.`id_seleksi`)) join `formulir` on(`seleksi_peserta`.`id_formulir` = `formulir`.`no_daftar`))  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`no_daftar`),
  ADD KEY `id_periode` (`id_periode`,`id_user`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `seleksi`
--
ALTER TABLE `seleksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `seleksi_peserta`
--
ALTER TABLE `seleksi_peserta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_seleksi` (`id_seleksi`,`id_formulir`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `seleksi`
--
ALTER TABLE `seleksi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
