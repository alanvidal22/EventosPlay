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
$valor = $_POST['valor_compra'];
$pagamento = $_POST['pagamento_pix'];
$telefone = $_POST['telefone'];
$cpf = $_POST['cpf'];
$cnpj = $_POST['cnpj'];
$pagamentocartao = $_POST['pagamento_cartao'];
$numero = $_POST['numero_cartao'];
$nomecartao = $_POST['nome_cartao'];
$codigo= $_POST['codigo_seguranca'];
$data = $_POST['data_validade'];



// Explique o código abaixo:
$nomecartao = $_POST['nome_cartao'];
$responsavel= $_POST['responsavel'];
$responsavel= $_POST['responsavel'];
$valor = $_POST['valor_compra'];
$query = "INSERT INTO pagamentos (responsavel, email, valor_compra, pagamento_pix, telefone, cpf, cnpj, pagamento_cartao, numero_cartao, nome_cartao, codigo_seguranca, data_validade,) VALUES('$responsavel','$email','$valor','$cpf','$cnpj','$pagamentocartao', $numero','$nomecartao', $codigo','$data')";
//explique apenas o código acima
if ($conn and $query){
    header('Location:pagamento_autentificado.html');
} else {
    header('Location:pagamento_autentificado.html');
}

// Fechar a conexão com o banco de dados
mysqli_close($conn);

?>

curl --request POST \
     --url https://sandbox.api.pagseguro.com/orders \
     --header 'Authorization: Bearer <token>' \
     --header 'accept: application/json' \
     --header 'content-type: application/json'

     <?php

$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://sandbox.api.pagseguro.com/orders/order_id",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => [
    "Authorization: Bearer <token>",
    "accept: application/json"
  ],
]);

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}


$curl = curl_init();



$curl = curl_init();

curl_setopt_array($curl, [
  CURLOPT_URL => "https://sandbox.api.pagseguro.com/orders",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_HTTPHEADER => [
    "Authorization: Bearer <token>",
    "accept: application/json",
    "content-type: application/json"
  ],
]);

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}