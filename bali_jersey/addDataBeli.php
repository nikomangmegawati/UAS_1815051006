<?php

    include 'conn.php';

    $idBarang = $_POST['idBarang'];
    $nama = $_POST['namaBarang'];
    $harga = $_POST['hargaBarang'];
    $jumlah = $_POST['jumlahBeli'];
    $ongkir = $_POST['ongkir'];

    // $total = $_POST['hargaBarang'];

    $total = ($harga*$jumlah)+$ongkir;
    $namaUser = $_POST['namaUser'];
    $emailUser = $_POST['emailUser'];
    $alamatUser = $_POST['alamatUser'];
    $gambar = $_POST['gambar'];

    $connect->query("INSERT INTO data_beli (id_barang,nama,harga,gambar,jumlah,total,namaUser,emailUser,alamat) VALUES ('".$idBarang."','".$nama."','".$harga."','".$gambar."','".$jumlah."','".$total."','".$namaUser."','".$emailUser."','".$alamatUser."')");



?>