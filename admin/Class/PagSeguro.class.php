<?php
/**
 * @copyright (c) 2018, Leo Bessa
 */

$data['token'] = TOKEN_PAGSEGURO;
$data['email'] = EMAIL_PAGSEGURO;
$data['currency'] = MOEDA_PAGAMENTO;
$data['itemId1'] = $_POST['co_inscricao'];
$data['itemQuantity1'] = '1';
$data['itemDescription1'] = utf8_decode("Inscrição para o ".$_POST['dsInscricao']);
$data['itemAmount1'] = "'".$_POST['nuValorInscricao']."'";

$url = URL_PAGSEGURO;

$data = http_build_query($data);
$curl = curl_init($url);

curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
curl_setopt($curl, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
$xml= curl_exec($curl);

curl_close($curl);

$xml= simplexml_load_string($xml);
var_dump($xml->code);
exit;
?>