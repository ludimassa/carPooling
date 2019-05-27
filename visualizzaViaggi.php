<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CarPooling</title>
    <link href="css/baseStyle.css" type="text/css" rel="stylesheet">
</head>
<body>
<?php
include "include/mainMenu.php";
include "include/databaseConnection.php";
include "include/utilyFunction.php";
?>
<h1>Visualizza viaggi disponibili</h1>
    <?php
    $q="SELECT * FROM viaggi";
    $result=$mysqli->query($q);
    echo "<table>";
    while($row=$result->fetch_row()){
        echoTableRow($row);
    }
    echo "</table>";
    ?>

<h2>Metodo alternativo</h2>

<?php
$q="SELECT * FROM viaggi";
$result=$mysqli->query($q);
echo "<table>";
while($row=$result->fetch_row()){
    echo "<tr>";
    for ($i=0;$i<9;$i++){
        if($i==7){
            $q2="SELECT nome FROM autisti WHERE idAutista=".$row[$i];
            $row2=$mysqli->query($q2)->fetch_row();
            echo "<td>";
            echo $row2[0];
            echo "</td>";
        }
        else{
            echo "<td>";
            echo $row[$i];
            echo "</td>";
        }
    }
    echo "</tr>";
}
echo "</table>";
?>
<h2>Metodo alternativo2</h2>

<?php
$q="SELECT * FROM viaggi";
$result=$mysqli->query($q);
echo "<table>";
while($row=$result->fetch_row()){
    echo "<tr>";
    for ($i=0;$i<9;$i++){
        if($i==7){
            $q2="SELECT CONCAT(nome,' ',cognome) FROM autisti WHERE idAutista=".$row[$i];
            $row2=$mysqli->query($q2)->fetch_row();
            echo "<td>";
            echo $row2[0];
            echo "</td>";
        }
        else{
            echo "<td>";
            echo $row[$i];
            echo "</td>";
        }
    }
    echo "</tr>";
}
echo "</table>";
?>
</body>
</html>