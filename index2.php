<?php
include "config.php";
$result = $db->rawQueryOne("SELECT content from ey_product");
echo $result['content'];