<?php
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'sia';
$koneksi = mysqli_connect($host, $username, $password, $database);
if (!$koneksi) {
    echo "Koneksi gagal: ";
}
