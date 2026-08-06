<?php
$koneksi = mysqli_connect("localhost", "root", "123456", "db_spp_abror");

// Check connection
if (mysqli_connect_errno()){
    echo "Koneksi database gagal : " . mysqli_connect_error();
}
?>