<b>
<?php 
echo date('r');
#phpinfo();
#<span style="color: blue;">

$host = 'localhost';
$dbname = 'my_database';
$username = 'db_user';
$password = 'super_secret_password123!'; // sample
$pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

?>
