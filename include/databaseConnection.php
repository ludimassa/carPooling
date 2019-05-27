<?php
//Siccome si assume che il dbms mariadb lavora sulla porta standard non viene specificata la porta
$host="127.0.0.1";
$mysqli = new mysqli($host, 'root', '', 'carpooling');
?>