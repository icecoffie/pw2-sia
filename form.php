<?php
include "koneksi.php";
if (isset($_POST["submit"])) {

    $nama = trim($_POST["nama_mahasiswa"]);
    $kelamin = $_POST["jenis_kelamin"];
    $handphone = trim($_POST["nomor_handphone"]);
    $alamat = trim($_POST["alamat"]);

    if (!preg_match("/^[a-zA-Z ]+$/", $nama)) {
        echo"<script>alert('Nama hanya boleh berisi Huruf!');</script>";
    }
    elseif (!preg_match("/^[0-9]+$/", $handphone)){
        echo"<script>alert('Nomor handphone hanya boleh berisi angka!');</script>";   
    }
    else {

        $sql = "INSERT INTO biodata
        (nama_mahasiswa, jenis_kelamin, nomor_handphone, alamat)
        VALUES
        ('$nama', '$kelamin', '$handphone', '$alamat')";

        if(mysqli_query($koneksi,$sql)) {
            echo "<script>
                alert('Data berhasil disimpan');
                window.location='form.php';
                </script>";
    }else{
        echo "<script>alert('Data gagal disimpan');</script>";
    }
}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>Input Biodata</title>

    <script>
        function validasiForm() {
            let nama = document.forms["formMahasiswa"]["nama_mahasiswa"].value;
            let hp   = document.forms["formMahasiswa"]["nomor_handphone"].value;

            //huruf dan spasi

            let regexNama = /^[a-zA-Z ]+$/;

            //angka
            let regexHP = /^[0-9]+$/;

            if (!regexNama.test(nama)) {
                alert("Nama hanya boleh berisi huruf!");
                return false;
            }
            if (!regexHP.test(hp)) {
                alert("Nomor handphone hanya boleh berisi angka!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h2>Input Biodata Mahasiswa</h2>
    <form action="" name="formMahasiswa" method="post" onsubmit="return validasiForm();">
        <div>
            <label>Nama Mahasiswa</label>
            <input type="text" name="nama_mahasiswa" placeholder="Masukan Nama" required>

        </div>
        <br>
        
        <div>
            <label >Jenis Kelamin</label>
            <select name="jenis_kelamin" required>
                <option value="">-- Pilih --</option>
                <option >Laki-laki</option>
                <option >Perempuan</option>
            </select>
        </div>

        <div>
            <label >Nomor Handphone</label>
            <input type="text" name="nomor_handphone" placeholder="08xxxxxxxxxx" required>

        </div>

        <br>

        <div>
            <label >Alamat</label>

            <textarea name="alamat" rows="4" cols="40" required></textarea>
        </div>

        <br>

        <button type="submit" name="submit">
            Simpan Data
        </button>
    </form>
</body>
</html>
