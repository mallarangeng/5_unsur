<?php  
error_reporting(0);
session_start();
include_once'class/class_5u.php';
// instance objek db dan user
$user = new User();
$db = new Database();
// koneksi ke MySQL via method
$db->connectMySQL();
// cek apakah user login atau tidak via method
if($user->get_sesi()) {
  header("location:index.php");
}
if($_SERVER["REQUEST_METHOD"] == "POST") {
  $login=$user->cek_login($_POST['id_kelompok'], $_POST['password']);
  if($login) {
     // login sukses, arahkan ke file index.php
    header("location:index.php?r=home&pg=home&thn=2016&bln=09");
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
<title>KBM PPG-TANGBAR</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/source-sans-pro/source-sans-pro.css" rel="stylesheet" type="text/css" />
  <link href="bootstrap/css/custom.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap/js/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript"></script>
  	<link href="jquery/jquery-ui.css" rel="stylesheet" type="text/css" />  
	<script src="jquery/jquery-ui.js"></script>
 	<!--<link href="images/logo.png" rel="shortcut icon" /> -->
</head>


<body>
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <a href="index.php" class="navbar-brand"><font class="info_color">LOGIN KBM PPG-TANGBAR</font></a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
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
<?php if($_GET['r']=='error') { echo'
<div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <span class="glyphicon glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span><strong>&nbsp;Warning&nbsp;</strong>User atau password salah !
</div>'
; } ?>

 <form role="form" action="?op=in" method="post" class="form-horizontal col-md-3">
  <div class="form-group">
    <label for="email">USER ID</label>
    <input type="text" name="id_kelompok" class="form-control" required>
  </div>
  <div class="form-group">
    <label for="pwd">PASSWORD</label>
    <input type="password" class="form-control" name="password" required><br>
    <button type="submit" class="btn btn-info">Masuk</button>
  </div>

  
</form>
  </div>
   <div class="well well-sm"><small>M5U-TB ver. 1.0 &copy; <a href="ppg-tangbar.com">ppg-tangbar.com</a>&nbsp;<?php echo date('Y'); ?> by ICT Team<br>Technical Support : 0857 1588 7704 (WhatsApp)</small></div>
     
</body>
</html>
