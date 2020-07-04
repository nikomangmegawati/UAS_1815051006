<?php

    include 'conn.php';
    $id=$_POST['id'];

    $connect->query("DELETE FROM data_beli WHERE id_beli=".$id."");

?>