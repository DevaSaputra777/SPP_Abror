<html>
<head>
<title>Form Login</title>
<style>
body {
    margin: 0;
    min-height: 100vh;

    font-family: 'Open Sans', sans-serif;

    background-image: url("src/bgidx.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;

    display: flex;
    flex-direction: column;
    align-items: center;
}



h1 {
    color: white;
    margin-top: 74px;
    margin-bottom: 5px;
    font-size: 38px;
}

fieldset {
    margin: 100px 0 0 0;

    width: 320px;
    height: 400px;
    box-sizing: border-box;
    padding: 20px;

    position: relative;

    border: 2px solid white;
    border-radius: 10px;

    background: rgba(255, 255, 255, 0.15);
    backdrop-filter: blur(5px);
    -webkit-backdrop-filter: blur(5px);
}

label{
    font-family:tahoma;
    color:red;
}
img{
    border-radius: 50%;
    object-fit: cover;
}
input{
    position: center;
    margin:5px;
    padding:10px;
    width:300px;
    height:40px;
    border: 1px solid white;
    border-radius: 18px;
}

select{
    position: center;
    margin:5px;
    padding: 10px;
    width:300px;
    height:40px;
    border: 1px solid white;
    border-radius: 10px;
}

#submit
{
    color: white;
    background-color: #428df5;
}

#submit:hover {
    background-color: #246bce;
}


#input
{
    background-color: #c6cfc7;
}

a{
    display: inline-block;
    margin-top: 20px;
    font-size: 18px;
    color: #66D9FF;
    text-decoration: none;
}

a:hover {
    color: #FFFFFF;
    text-decoration: underline;
}
</style>
</head>
<body>

    <h1 align="center"> <b> SPP </b> ONLINE </h1>
    <form action="login_validasi.php" method="post">
    <fieldset>
    <?php
    
    if(isset($_GET['pesan'])){
        if($_GET['pesan']=="gagal"){
            echo "<div class='alert'>Username dan Password tidak sesuai !</div>";
        }
    }
    ?>
        <legend align="center"> <img src ="src/P1.jpeg" width="80" height="80"> </legend>
        <table >
            <p align="center"> <b>LOGIN</b></p>
            <tr> <td><input name="username" type="text" placeholder="Username" id="input"></td> </tr>
            <tr> <td><input name="password" type="password" placeholder="Password" id="input"></td></tr>
            <tr> <td><input name="login" type="submit" value="LOGIN" id="submit"></td></tr>
            <tr> <td align="center"> <a href="bayar.php">CEK PEMBAYARAN</a> </td></tr>
        </table>
    </fieldset>
    </form>
</body>
</html>