<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SPP ONLINE</title>
    <link rel="stylesheet" href="../src/style.css">
</head>

<body>
    <?php
    session_start();
    //cek apakah yang mengakses halaman ini sudah login
    if ($_SESSION['level'] == "") {
        header("location:index.php?pesan=gagal");
    }
    ?>

    <br><br>
    <!-- bagian header template -->
    <header>
        <h1 class="judul">PEMBAYARAN SPP ONLINE SMK NEGRI 3 BANJARBARU</h1>
    </header>

    <!-- akhir bagian header template -->

    <!-- bagian menu -->
    <div class="warp">
        <nav class="menu">
            <?php include "menu.php" ?>
        </nav>

        <!-- akhir bagian menu -->

        <!-- bagian sidebar website -->
        <aside class="sidebar">
            <div class="widget">
                <h2> SELAMAT DATANG, <?php echo strtoupper($_SESSION['level']); ?> (<?php echo $_SESSION['username'] ?? ''; ?>)</h2>
                <p>Selamat Datang aplikasi pembayaran SPP SMKN 3 Banjarbaru</p>
            </div>
        </aside>
        <!-- akhir bagian sidebar website -->

        <!-- bagian isi -->
        <div class="blog">
            <div class="conteudo">
                <?php include "buka_file.php"; ?>
            </div>
        </div>
        <!-- akhirbagian isi -->
    </div>
</body>

</html>