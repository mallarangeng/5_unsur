<?php  
include'class/class_5u.php';
$db = new Database();
$kelompok = new kelompok();
$user = new user();
$db->connectMySQL();
if($user->get_sesi()) {
  header("location:index.php");
}
if($_SERVER["REQUEST_METHOD"] == "POST") {
  $login=$user->cek_login($_POST['id_kelompok'], $_POST['password']);
  if($login) {
     // login sukses, arahkan ke file index.php
    header("location:index.php");
  }
  else {
  // login gagal, beri peringatan dan kembali ke file index.php
 header("location:login.php?r=error");

  }
}
?>


<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PPG Tangerang Barat</title>
<link id="favicon" rel="shortcut icon" href="images/favicon/favicon.png" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/source-sans-pro/source-sans-pro.css" rel="stylesheet" type="text/css" />
  <link href="bootstrap/css/custom.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap/js/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript"></script>
  	<link href="jquery/jquery-ui.css" rel="stylesheet" type="text/css" />  
	<script src="jquery/jquery-ui.js"></script>
 	<link href="images/logo.png" rel="shortcut icon" />
</head>


<body>
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <a href="index.php" class="navbar-brand"><font class="info_color">LOGIN LIMA UNSUR</font></a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
       
          </ul>

        </div>
      </div>
    </div>
      <!--BODY
      !-->
    
    <div class="container-fluid">
      <br>
<br>
<p>
  <h3></h3>

        <form role="form" action="?op=in" method="post" class="form-horizontal col-md-3">
  <div class="form-group">
    <label for="email">ID DESA / KELOMPOK <font color="#d44c48"> <?php if($_GET['r']=='error') { echo "USER / PASSWORD SALAH"; } ?></font></label>
    <input type="text" name="id_kelompok" class="form-control" id="id_kelomok">
  </div>
  <div class="form-group">
    <label for="pwd">PASSWORD</label>
    <input type="password" class="form-control" name="password" id="password"><br>
    <button type="submit" class="btn btn-info">Masuk</button>
  </div>

  
</form>

  </div>

      <footer>
      <div class="container-fluid">
        <hr>
        <div class="row">
          <div class="col-lg-12">
                 <strong><span class="navy">PPG Support</span></strong><br/>
                    Jika Mengalami masalah dan kendala silahkan hubungi kami
                    WhastApp / Telp&nbsp;<strong><abbr title="Phone">0857</abbr> 1588 7704</strong>
                </address>

          </div>
        </div>

      </footer> 
    </div>


</body>
</html>
