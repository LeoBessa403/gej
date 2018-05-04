<?php
/**
 * @copyright (c) 2018, Leo Bessa
 */

$data['token'] ='538894ED307549EEA981CE4F5FC368FC';
$data['email'] = 'leodjx@hotmail.com';
$data['currency'] = 'BRL';
$data['itemId1'] = $_POST['co_inscricao'];
$data['itemQuantity1'] = '1';
$data['itemDescription1'] = 'Retiro Abastecimento Espiritual GEJ Dom Bosco';
$data['itemAmount1'] = '80.00';

$url = 'https://ws.pagseguro.uol.com.br/v2/checkout';

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
echo $xml->code;

?>