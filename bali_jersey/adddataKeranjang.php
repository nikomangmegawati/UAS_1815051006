<?php

    include 'conn.php';

    $idBarang = $_POST['idBarang'];
    $nama = $_POST['namaBarang'];
    $harga = $_POST['hargaBarang'];
    $gambar = $_POST['gambarBarang'];

    $connect->query("INSERT INTO data_keranjang (id_barang,nama,harga,gambar) VALUES ('".$idBarang."','".$nama."','".$harga."','".$gambar."')");



?>