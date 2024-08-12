<?php

// Encontre o erro e depois explique o código abaixo
$host = "localhost";
$username = "root";
$password = "";
$dbname = "eventos";
//Explique o propósito dos códigos abaixo:
$conn = mysqli_connect($host, $username, $password, $dbname);

if (!$conn) {
    die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
}

// Explique os cádigos logo abaixo:
$nome = $_POST['nome'];
$senha = $_POST['senha'];



$check_query = "SELECT * FROM clientes WHERE nome = '$nome' And senha = '$senha'";
$query = mysqli_query($conn, $check_query);

if ($conn and $query){
    header('Location: perfil.html');
} else {
    header('Location: erro_cad_usuario.html');
}

// Fechar a conexão com o banco de dados
mysqli_close($conn);

?>
