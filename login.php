<?php
session_start();
if (isset($_SESSION['username'])) {
    header("Location: dashboard.php");
    exit();
}
$error = '';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 $username = $_POST['username'];
 $password = $_POST['password'];
 $valid_username = 'admin'; 
 $valid_password = 'admin';
 if ($username === $valid_username && $password === $valid_password) {
$_SESSION['username'] = $username;
header("Location: dashboard.php");
exit();
} else {
$error = "Username atau password salah";
    }           
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<style>
body { font-family: sans-serif; background-color: #f4f4f4; padding: 50px; }
login-box { background: #fff; max-width: 300px; margin: 0 auto; padding: 20px; border: 1px solid #ddd; border-radius: 5px; }
.form-group { margin-bottom: 15px; }
.form-group label { display: block; margin-bottom: 5px; }
.form-group input { width: 100%; padding: 8px; box-sizing: border-box; }
button { width: 100%; padding: 10px; background-color: #007BFF; color: white; border: none; cursor: pointer; border-radius: 3px; }
button:hover { background-color: #0056b3; }
.error { color: red; margin-bottom: 15px; text-align: center; font-size: 14px; }
</style>
</head>
<body>
<div class="login-box">
<h2 style="text-align: center;">Login</h2>
<?php if ($error != ""): ?>
<div class="error"><?php echo $error; ?></div>
<?php endif; ?>
<form method="POST" action="">
<div class="form-group">
<label for="username">Username:</label>
<input type="text" id="username" name="username" required>
</div>
<div class="form-group">
<label for="password">Password: </label>
<input type="password" id="password" name="password" required>
</div>
<button type="submit">Masuk</button>
</form>
</div>
</body>
</html>
