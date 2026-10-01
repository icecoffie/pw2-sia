<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard (Masih belum fix)</title>
    <style>
        body { font-family: sans-serif; background-color: #f4f4f4; padding: 50px; }
        .box { background: #fff; max-width: 400px; margin: 0 auto; padding: 20px; border: 1px solid #ddd; border-radius: 5px; text-align: center; }
        a { display: inline-block; margin-top: 10px; padding: 8px 16px; background-color: #dc3545; color: white; text-decoration: none; border-radius: 3px; }
    </style>
</head>
<body>

<div class="box">
    <h2>Selamat datang, <?php echo htmlspecialchars($_SESSION['username']); ?>!</h2>
    <p>Role: <?php echo htmlspecialchars($_SESSION['role']); ?></p>
    <a href="keluar.php">Keluar</a>
</div>

</body>
</html>
