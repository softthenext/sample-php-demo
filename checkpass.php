<?php
include("inc/connect.php") ;
$p = md5("123");

$query=mysqli_query($db_connect,"update login set password='$p'")or die (mysqli_error($db_connect));


?>