<?php

    include 'conn.php';
    $id=$_POST['id'];

    $connect->query("DELETE FROM data_keranjang WHERE id=".$id."");

?>