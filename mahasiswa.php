<?php
session_start();
include 'koneksi.php';
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}
$query = "SELECT id_siswa, nis, nisn, nama_lengkap, jenis_kelamin FROM m_siswa ORDER BY id_siswa DESC";
$result = mysqli_query($koneksi, $query);
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Mahasiswa - SIAKAD</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            color: #333;
        }

        .navbar {
            background-color: #007BFF;
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar h2 {
            margin: 0;
            font-size: 20px;
        }
        .btn-logout {
            background-color: #dc3545;
            color: white;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 3px;
            font-size: 14px;
        }
        .btn-logout:hover {
            background-color: #c82333;
        }
        .container {
            max-width: 800px;
            margin: 30px auto;
            background: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .header-title {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .header-title h2 {
            font-size: 24px;
        }

        .btn {
            text-decoration: none;
            padding: 8px 12px;
            border-radius: 4px;
            color: white;
            font-size: 14px;
            display: inline-block;
        }

        .btn-add {
            background-color: #7c53c9;
        }

        .btn-add:hover {
            background-color: #6b46c1;
        }

        .btn-edit {
            background-color: #f59e0b;
        }

        .btn-delete {
            background-color: #ef4444;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f8f9fa;
            color: #555;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .text-center {
            text-align: center;
        }

        .text-muted {
            color: #777;
            font-size: 12px;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <h2>Sistem Informasi Akademik</h2>
        <a href="keluar.php" class="btn-logout">Keluar</a>
    </div>

    <main class="container">

        <div class="header-title">
            <h2>Data Mahasiswa</h2>
            <a href="tambah_mahasiswa.php" class="btn btn-add">+ Tambah Data</a>
        </div>

        <table>
            <thead>
                <tr>
                    <th class="text-center" style="width: 50px;">No</th>
                    <th>NISN / NIS</th>
                    <th>Nama Lengkap</th>
                    <th class="text-center" style="width: 80px;">L/P</th>
                    <th class="text-center" style="width: 150px;">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                if(mysqli_num_rows($result) > 0) {
                    while($row = mysqli_fetch_assoc($result)) {
                ?>
                <tr>
                    <td class="text-center"><?php echo $no++; ?></td>
                    <td>
                        <strong><?php echo htmlspecialchars($row['nis']); ?></strong><br>
                        <span class="text-muted"><?php echo htmlspecialchars($row['nisn']); ?></span>
                    </td>
                    <td><?php echo htmlspecialchars($row['nama_lengkap']); ?></td>
                    <td class="text-center"><?php echo htmlspecialchars($row['jenis_kelamin']); ?></td>
                    <td class="text-center">
                        <a href="edit_mahasiswa.php?id=<?php echo $row['id_siswa']; ?>" class="btn btn-edit">Edit</a>
                        <a href="hapus_mahasiswa.php?id=<?php echo $row['id_siswa']; ?>" onclick="return confirm('Yakin ingin hapus?');" class="btn btn-delete">Hapus</a>
                    </td>
                </tr>
                <?php
                    }
                } else {
                ?>
                <tr>
                    <td colspan="5" class="text-center" style="padding: 20px; color: #888;">Belum ada data mahasiswa.</td>
                </tr>
                <?php } ?>
            </tbody>
        </table>

    </main>

</body>
</html>
