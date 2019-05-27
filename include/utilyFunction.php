<?php

function echoTableRow($row){
    echo "<tr>";

    foreach ($row as $cell){
        echo "<td>";
        echo $cell;
        echo "</td>";
    }
    echo "</tr>";

}