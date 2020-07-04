<?php

    include 'conn.php';
    $id = $_POST['id'];
    $harga = $_POST['hargaBarang'];
    $jumlah = $_POST['jumlahBeli'];
    $alamat = $_POST['alamatUser'];
    $ongkir = $_POST['ongkir'];
    $total = ($harga*$jumlah)+$ongkir;

    $connect->query("UPDATE data_beli SET jumlah='".$jumlah."', total='".$total."', alamat='".$alamat."' WHERE id_beli='".$id."'");



?>