<?php
//preg_match("^" . $value . "", $row[$key_condition],PCRE_CASELESS)


$string = "hay un start por aqui que pasa con el start";
preg_match("/START(.*)/i", $string, $results);

echo "<pre>";
print_r($results);
?>
