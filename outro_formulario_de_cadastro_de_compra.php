<?php

// Encontre o erro e depois explique o código abaixo
$host = "localhost";
$username = "root";
$password = "";
$dbname = "eventos";
//Explique o propósito dos códigos abaixo:
$conn = mysqli_connect($host, $username, $password,$dbname);

if (!$conn) {
    die("Falha na conexão com o banco de dados: " . mysqli_connect_error());
}

// Explique os cádigos logo abaixo:
$responsavel= $_POST['responsavel'];
$email= $_POST['email'];
$valor_compra = $_POST['valor_compra'];
$pagamento_pix = $_POST['pagamento_pix'];
$telefone = $_POST['telefone'];
$cpf = $_POST['cpf'];
$cnpj = $_POST['cnpj'];
$numero_cartao = $_POST['numero_cartao'];
$nome_cartao = $_POST['nome_cartao'];
$codigo_seguraca = $_POST['codigo_seguranca'];
$data_validade= $_POST['data_validade'];



$query = "INSERT INTO pagamentos (responsavel, email, valor_compra, pagamento_pix, telefone, cpf, cnpj, numero_cartao, nome_cartao, codigo_seguranca, data_validade,) VALUES('$responsavel','$email','$valor_compra','$pagamento_pix','$telefone','$cpf', '$cnpj','$numero_cartao','$nome_cartao','$codigo_seguraca','$data_validade')";
//explique apenas o código acima
if ($conn and $query) {
    header('Location: pagamento_autentificado.html');
} else {
    header('Location: erro_cad_usuario.html');
}

// Fechar a conexão com o banco de dados
mysqli_close($conn);

?>

